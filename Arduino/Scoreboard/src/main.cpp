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
#include "RTClib.h"

unsigned long startTime = 0;
unsigned long minutes = 0;
uint8_t lastDisplayedMinute = 1;
uint8_t lastDisplayedSecond = 0;
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

/**
 * Initializes real time clock DS3231 variable
**/
RTC_DS3231 rtc;

const int KEY_VALUE_PAIR_LEN = 30;
const int unsigned long minuteInMillis = 60000;

void resetProcedures();
void decodeIRSignal(unsigned long irCode);

void setup()
{

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

    if (!rtc.begin())
    {
        Serial.println("Couldn't find RTC");
        Serial.flush();
        abort();
    }

    if (rtc.lostPower())
    {
        // When time needs to be set on a new device, or after a power loss, the
        // following line sets the RTC to the date & time this sketch was compiled
        rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    }

    // When time needs to be re-set on a previously configured device, the
    // following line sets the RTC to the date & time this sketch was compiled
    // rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));

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

void loop()
{

    uint8_t data = 0;
    if (bluetooth.available() > 0)
    {
        // read the data from bluetooth
        if (!inSettingsMode)
            data = bluetooth.read();
        if (data == SETTINGS)
        {
            // if the first received char equals the flag for settings mode
            // it will toggle betwen the ON/OFF state
            inSettingsMode = !inSettingsMode;
            if (inSettingsMode)
            {
                bluetooth.println(F("In settings mode"));
                Serial.println(F("In settings mode"));
                // prints out current setting
                settings.read();
                Serial.println(data);
                return;
            }
        }

        if (inSettingsMode)
        {
            char keyValuePair[KEY_VALUE_PAIR_LEN];
            bool dataAvailable;
            // if required, change the settings here
            // when user wants to end the settings mode
            // the SETTINGS constant needs to be sent
            if (bluetooth.available() > 0)
            {
                data = bluetooth.read();
                if (data == SETTINGS)
                {
                    inSettingsMode = false;
                    startTime = millis();
                    bluetooth.println(F("Ended settings mode"));
                    Serial.println(F("Ended settings mode"));
                    return;
                }
                else
                {
                    keyValuePair[0] = data;
                    dataAvailable = true;
                }
            }

            for (size_t i = 1; i < KEY_VALUE_PAIR_LEN; i++) // apparently not that easy to calculate size of array in C++
            {
                // gets the settings data
                if (bluetooth.available() > 0)
                {
                    keyValuePair[i] = bluetooth.read();
                    dataAvailable = true;
                    delay(10);
                }
                else
                {
                    // write char for end of string
                    keyValuePair[i] = '\0';
                }
            }

            // if any data available for settings, calls the settings controller
            if (dataAvailable)
            {
                // always turn clock off
                // the clock is default setting when the scoreboard is powered up
                setsAsClock = false;
                settings.set(keyValuePair);
            }
        }
        else
        {
            // set the variable for receiver message, max length is 78
            Serial.println(data);

            if (data == RESET_ALL)
            {
                resetProcedures();
                return;
            }

            if (data != SWAP_DISPLAY)
            {

                if (data == SET_SERVER || inPlayerSettings)
                {
                    Serial.println(F("in player setting IF"));
                    if (!inPlayerSettings)
                    {
                        // let's wait for a number that represents the player who should serve
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println(F("Turning ON setting player mode"));
                    }
                    else
                    {
                        score.setPlayerServe(data);
                        // get out from the player settings mode
                        inPlayerSettings = !inPlayerSettings;
                        Serial.println(F("Turning OFF setting player mode"));
                    }
                }
                else
                {
                    score.updateScore(data);
                }
            }
            else
            {
                score.swapScore();
            }
        }
        return; // if bluethoot data processed do not check other channels
    }

    // This is for 433MHz receiver
    // set the variable for receiver message, max length is 78
    uint8_t message[VW_MAX_MESSAGE_LEN];
    uint8_t messageLen = 1;
    if (vw_get_message(message, &messageLen))
    {
        // little hack here
        // we do not expect to get any more chars than exact one (not planning use it for settings)
        // given the hardware implementation (just 4 buttons for updating score)
        // I'd be probably able to construct a string but I've heard it consumes lots of memory
        data = message[0];

        Serial.print(F("433Mhz channel - message: "));
        Serial.println((char)data);

        if (data == RESET_ALL)
        {
            resetProcedures();
            return;
        }

        if (data == SWAP_DISPLAY)
        {
            score.swapScore();
            return;
        }
        score.updateScore(message[0]);
    }

    // This is for IR Remote communication
    if (irRemote.decode(&irMessage))
    {
        decodeIRSignal(irMessage.value);
        delay(500);
        // continue to process IR commands
        irRemote.resume();
    }

    if (setsAsMinute && !setsAsClock && !inSettingsMode)
    {
        // updates the minute on the board
        // if the minute has changed from last captured time
        // the 'startTime' and 'lastDisplayedMinute' is reset when
        // - scoreboard is reset by user
        // - settings mode ends
        if (millis() - startTime >= minuteInMillis)
        {
            startTime = millis();
            display.updateTime(lastDisplayedMinute);
            lastDisplayedMinute += 1;
        }
    }

    if (setsAsClock && !inSettingsMode)
    {
        DateTime now = rtc.now();
        if (now.second() != lastDisplayedSecond)
        {
            lastDisplayedSecond = now.second();
            display.updateTime(now.hour(), now.minute(), now.second());
        }
    }

    delay(50);
}

void resetProcedures()
{
    score.reset();
    startTime = millis();
    display.updateTime(0);
    lastDisplayedMinute = 1;
    lastDisplayedSecond = 0;
}

void decodeIRSignal(unsigned long irCode)
{
    switch (irCode)
        {
        case 0xFFA25D: // key CH- (Home team down)
        case 0x69CE021D: // Volume down (Home team down)
            score.updateScore(TEAM1_DOWN);
            break;
        case 0xFFE21D: // key CH+ (Home team up)
        case 0x76EC43A2: // volume up (Home team up)
            score.updateScore(TEAM1_UP);
            break;
        case 0xFF22DD: // key PREV (Away team down)
        case 0xC5B4F5CF: // Prog down (Away team down)
            score.updateScore(TEAM2_DOWN);
            break;
        case 0xFFC23D: // key PLAY (Away team up)
        case 0x5105CA72: // Prog up (Away team up)
            score.updateScore(TEAM2_UP);
            break;
        case 0xFF9867: // 100
        case 0x15E972C1: // info
            score.swapScore();
            break;
        case 0xFFB04F: // 200
        case 0xA4A34BB: // Recall
            resetProcedures();
            break;
        case 0xCEF2A271: // red button
            setsAsMinute = true;
            setsAsClock = false;
            resetProcedures();
            break;
        case 0xD071A5F0: // green button

            break;
        case 0xEF7FB1A7: // yellow button

            break;
        case 0xF18403D5: // blue button

            break;
        case 0xDC10E3F6: // time button
            setsAsMinute = false;
            setsAsClock = true;
            resetProcedures();
            break;
        default:
            Serial.print("Unknow IR Remote button: ");
            Serial.println(irMessage.value, HEX);
        }
}