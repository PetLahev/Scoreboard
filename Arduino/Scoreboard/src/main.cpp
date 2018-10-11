/*
    Description here
*/

#include <Arduino.h>
#include "constants.h"
#include "globals.h"
#include "NeoSWSerial.h"

void setup() {
    Serial.write("Initializing…");
    bluetooth.begin(9600);
    bluetooth.println("Bluetooth turned on");
}

void loop() {

    uint8_t data;
    if (bluetooth.available() > 0) {
        // read the data from bluetooth
        data = bluetooth.read();

    }
}