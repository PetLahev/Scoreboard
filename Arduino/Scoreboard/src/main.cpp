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
        data = bluetooth.read();
        if (data == SETTINGS)  {
            // if the first received char equals the flag for settings mode
            // it will toggle betwen the ON/OFF state
            inSettingsMode = !inSettingsMode;
            if (inSettingsMode) {
                bluetooth.println("In settings mode");
                Serial.write("In settings mode");                               
                // prints out current setting
                settings.read();                
            }
        }

        if (inSettingsMode) {
            // if required, change the settings here
            // when user wants to end the settings mode 
            // the SETTINGS constant needs to be sent
        }
        else {
            score.updateScore(data);
        }
    }

    // set the variable for receiver message, max length is 78 
    uint8_t message[VW_MAX_MESSAGE_LEN];
    uint8_t messageLen = 1;
    if (vw_get_message(message, &messageLen)) {
        // little hack here
        // we do not expect to get any more chars than exact one (not planning use it for settings) 
        // given the hardware implementation (just 4 buttons for updating score)
        // I'd be probably able to construct a string but I've heard it consumes lots of memory
        score.updateScore(message[0]);
    }
}