/*
    Description here
*/

#include <Arduino.h>
#include "constants.h"
#include "globals.h"
#include "NeoSWSerial.h"
#include "displayController.h"
#include "scoreController.h"
#include "VirtualWire.h"
#include "settingController.h"
#include "IRremote.h"

unsigned long startTime = 0;
unsigned long minutes = 0;
uint8_t lastDisplayedMinute = 1;
bool inSettingsMode;
bool inPlayerSettings;
scoreController score;
displayController display;
settingsController settings;

/**
*  Initializes IR remoteobject with pins
**/
IRrecv irRemote(IR_PIN);
decode_results irMessage;

const int KEY_VALUE_PAIR_LEN = 30;
const int unsigned long minuteInMillis = 60000;

void resetProcedures();

void setup() {
    
    Serial.println(F("Initializing…"));

    // Initializing transmitter/receiver communication
    Serial.begin(9600);
    vw_set_ptt_inverted(true);
    vw_setup(1000);
    vw_set_rx_pin(RECEIVER_PIN);
    vw_rx_start();
    Serial.println(F("VirtualWire initialized"));
    
    // Initialize IR Remote communication
    irRemote.enableIRIn();
    Serial.println(F("IR Remote communication initialized"));

    // Initializing bluetooth communication
    bluetooth.begin(9600);
    bluetooth.println(F("Bluetooth turned on"));
    Serial.println(F("Bluetooth initialized"));

    pinMode(SCORE_LATCH_PIN, OUTPUT);
    pinMode(SCORE_CLK_PIN, OUTPUT);
    pinMode(SCORE_DATA_PIN, OUTPUT);

    pinMode(SETS_LATCH_PIN, OUTPUT);
    pinMode(SETS_CLK_PIN, OUTPUT);
    pinMode(SETS_DATA_PIN, OUTPUT);

    pinMode(PLAYER_LATCH_PIN, OUTPUT);
    pinMode(PLAYER_CLK_PIN, OUTPUT);
    pinMode(PLAYER_DATA_PIN, OUTPUT);

    inPlayerSettings = false;
    inSettingsMode = false;
    display.greetings();
    score.reset();
}

void loop() {

    uint8_t data = 0;
    if (bluetooth.available() > 0) {
        // read the data from bluetooth
        if (!inSettingsMode) data = bluetooth.read();
        if (data == SETTINGS)  {
            // if the first received char equals the flag for settings mode
            // it will toggle betwen the ON/OFF state
            inSettingsMode = !inSettingsMode;
            if (inSettingsMode) {
                bluetooth.println(F("In settings mode"));
                Serial.println(F("In settings mode"));
                // prints out current setting
                settings.read();
                Serial.println(data);
                return;
            }
        }
        
        if (inSettingsMode) {
            char keyValuePair [KEY_VALUE_PAIR_LEN];
            bool dataAvailable;
            // if required, change the settings here
            // when user wants to end the settings mode 
            // the SETTINGS constant needs to be sent
            if (bluetooth.available() > 0)
            {                
                data = bluetooth.read();
                if (data == SETTINGS)  {
                    inSettingsMode = false;
                    startTime = millis();
                    bluetooth.println(F("Ended settings mode"));
                    Serial.println(F("Ended settings mode"));
                    return;
                }
                else {
                    keyValuePair[0] = data;
                    dataAvailable = true;
                }
            }

            for(size_t i = 1; i < KEY_VALUE_PAIR_LEN; i++) // apparently not that easy to calculate size of array in C++
            {                
                // gets the settings data
                if (bluetooth.available() > 0) {
                    keyValuePair[i] = bluetooth.read();
                    dataAvailable = true;
                    delay(10);
                }
                else {
                    // write char for end of string
                    keyValuePair[i] = '\0';
                }
            }

            // if any data available for settings, calls the settings controller
            if (dataAvailable) settings.set(keyValuePair);
            
        }
        else {
            // set the variable for receiver message, max length is 78
            Serial.println(data);

            if (data == RESET_ALL) {
                resetProcedures();
                return;
            }

            if (data != SWAP_DISPLAY)  {
             
                if (data == SET_SERVER || inPlayerSettings) {
                    Serial.println(F("in player setting IF"));
                    if (!inPlayerSettings) {
                        // let's wait for a number that represents the player who should serve
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println(F("Turning ON setting player mode"));
                    }
                    else {
                        score.setPlayerServe(data);
                        // get out from the player settings mode
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println(F("Turning OFF setting player mode"));
                    }
                }
                else {
                    score.updateScore(data);
                }
            }            
            else {
                score.swapScore();
            }
        }
        return; // if bluethoot data processed do not check other channels
    }    

    // This is for 433MHz receiver 
    // set the variable for receiver message, max length is 78 
    uint8_t message[VW_MAX_MESSAGE_LEN];
    uint8_t messageLen = 1;
    if (vw_get_message(message, &messageLen)) {

        // little hack here
        // we do not expect to get any more chars than exact one (not planning use it for settings) 
        // given the hardware implementation (just 4 buttons for updating score)
        // I'd be probably able to construct a string but I've heard it consumes lots of memory
        data = message[0];

        Serial.print(F("433Mhz channel - message: "));
        Serial.println((char)data);

        if (data == RESET_ALL) {
            resetProcedures();
            return;
        }

        if (data == SWAP_DISPLAY) {
            score.swapScore();
            return;
        }        
        score.updateScore(message[0]);
    }

    // This is for IR Remote communication
    if (irRemote.decode(&irMessage)) {
        switch(irMessage.value) {
            case 0xFFA25D:  // key CH- (Home team down)
                score.updateScore(TEAM1_DOWN);
                break;
            case 0xFFE21D:   // key CH+ (Home team up)
                score.updateScore(TEAM1_UP);
                break;
            case 0xFF22DD:  // key PREV (Away team down)
                score.updateScore(TEAM2_DOWN);
                break;
            case 0xFFC23D:  // key PLAY (Away team up)
                score.updateScore(TEAM2_UP);
                break;
            case 0xFF9867:  // 100
                score.swapScore();
                break;
            case 0xFFB04F:  // 200
                resetProcedures();
                break;
            default:                 
                Serial.print("Unknow IR Remote button: ");
                Serial.println(irMessage.value, HEX);
        }
        delay(500);
        // continue to process IR commands
        irRemote.resume();    
    }

    if (setsAsMinute && !inSettingsMode) {
        // updates the minute on the board 
        // if the minute has changed from last captured time
        // the 'startTime' and 'lastDisplayedMinute' is reset when
        // - scoreboard is reset by user
        // - settings mode ends
        if (millis() - startTime >= minuteInMillis) {
            startTime = millis();
            display.updateTime(lastDisplayedMinute);
            lastDisplayedMinute += 1;
        }
    }
    
    delay(50);
}

void resetProcedures() {
    score.reset();
    startTime = millis();
    display.updateTime(0);
    lastDisplayedMinute = 1;
}