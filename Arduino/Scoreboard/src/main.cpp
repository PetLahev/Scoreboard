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

unsigned long startTime = 0;
unsigned long minutes = 0;
uint8_t lastDisplayedMinute = 1;
bool inSettingsMode;
bool inPlayerSettings;
scoreController score;
displayController display;
settingsController settings;
const int KEY_VALUE_PAIR_LEN = 30;
const int unsigned long minuteInMillis = 60000;

void setup() {
    
    Serial.println("Initializing…");

    // Initializing transmitter/receiver communication
    Serial.begin(9600);
    vw_set_ptt_inverted(true);
    vw_setup(1000);
    vw_set_rx_pin(RECEIVER_PIN);
    vw_rx_start();
    Serial.println("VirtualWire initialized");
    
    // Initializing bluetooth communication
    bluetooth.begin(9600);
    bluetooth.println("Bluetooth turned on");
    Serial.println("Bluetooth initialized");

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
                bluetooth.println("In settings mode");
                Serial.println("In settings mode");
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
                    bluetooth.println("Ended settings mode");
                    Serial.println("Ended settings mode");
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
                score.reset();
                startTime = millis();
                display.updateTime(0);
                lastDisplayedMinute = 1;
                return;
            }

            if (data != SWAP_DISPLAY)  {
             
                if (data == SET_SERVER || inPlayerSettings) {
                    Serial.println("in player setting IF");
                    if (!inPlayerSettings) {
                        // let's wait for a number that represents the player who should serve
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println("Turning ON setting player mode");
                    }
                    else {
                        score.setPlayerServe(data);
                        // get out from the player settings mode
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println("Turning OFF setting player mode");
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

        Serial.print("433Mhz channel - message: ");
        Serial.println((char)data);

        if (data == RESET_ALL) {
            score.reset();
            startTime = millis();
            display.updateTime(0);
            lastDisplayedMinute = 1;            
            return;
        }

        if (data == SWAP_DISPLAY) {
            score.swapScore();
            return;
        }        
        score.updateScore(message[0]);
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