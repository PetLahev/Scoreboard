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

bool inSettingsMode;
scoreController score;
displayController display;
settingsController settings;
const int KEYVALUEPAIRLEN = 30;

void setup() {
    
    Serial.write("Initializing…");
    // Initializing bluetooth communication
    bluetooth.begin(9600);    
    bluetooth.println("Bluetooth turned on");
    Serial.write("Bluetooth initialized");

    // Initializing transmitter/receiver communication
    Serial.begin(9600);
    vw_set_ptt_inverted(true);
    vw_setup(1000);
    vw_set_rx_pin(RECEIVER_PIN);
    vw_rx_start();
    Serial.write("VirtualWire initialized");

    display.greetings();
}

void loop() {

    uint8_t data;
    if (bluetooth.available() > 0) {
        // read the data from bluetooth
        if (!inSettingsMode) data = bluetooth.read();
        if (data == SETTINGS)  {
            // if the first received char equals the flag for settings mode
            // it will toggle betwen the ON/OFF state
            inSettingsMode = !inSettingsMode;
            if (inSettingsMode) {
                bluetooth.println("In settings mode");
                Serial.write("In settings mode");
                // prints out current setting
                settings.read();
                return;
            }
        }
        
        if (inSettingsMode) {
            char keyValuePair [KEYVALUEPAIRLEN];
            bool dataAvailable;
            // if required, change the settings here
            // when user wants to end the settings mode 
            // the SETTINGS constant needs to be sent
            if (bluetooth.available() > 0)
            {                
                data = bluetooth.read();
                if (data == SETTINGS)  {
                    inSettingsMode = false;
                    bluetooth.println("Ended settings mode");
                    return;
                }
                else {
                    keyValuePair[0] = data;
                    dataAvailable = true;                    
                }
            }
                        
            for(size_t i = 1; i < KEYVALUEPAIRLEN; i++) // apparently not that easy to calculate size of array in C++
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
            score.updateScore(data);            
        }
        return; // if bluethoot data processed do not check other channels
    }    

    // This is for 433MHz receiver 
    // set the variable for receiver message, max length is 78 
    uint8_t message[VW_MAX_MESSAGE_LEN];
    uint8_t messageLen = 1;
    if (vw_get_message(message, &messageLen)) {
        Serial.write("433Mhz channel");
        // little hack here
        // we do not expect to get any more chars than exact one (not planning use it for settings) 
        // given the hardware implementation (just 4 buttons for updating score)
        // I'd be probably able to construct a string but I've heard it consumes lots of memory
        score.updateScore(message[0]);
    }

}