/*
    Description here
*/

#include <Arduino.h>
#include "constants.h"
#include "globals.h"
#include "NeoSWSerial.h"
#include "VirtualWire.h"

bool inSettingsMode;

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
}

void loop() {

    uint8_t data;
    if (bluetooth.available() > 0) {
        // read the data from bluetooth
        data = bluetooth.read();
        if (inSettingsMode) {
            
        }
        else {

        }
    }

    // set the variable for receiver message, max length is 78 
    uint8_t message[VW_MAX_MESSAGE_LEN];
    uint8_t messageLen = VW_MAX_MESSAGE_LEN;
    if (vw_get_message(message, &messageLen)) {

    }
}