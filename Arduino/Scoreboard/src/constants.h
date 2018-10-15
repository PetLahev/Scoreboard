/*
  Contains all shared constatnts
  Note: Objects that need to be initialized are in globals.cpp
*/

#ifndef Constants_h
#define Constants_h

#include <stdint.h>
#include "NeoSWSerial.h"

/*
  Defines pins for the bluetooth communication
*/
const int BLUE_RX = A0;
const int BLUE_TX = A1;

/*
  Defines pins for wireless communication (433Mhz)
*/
const uint8_t RECEIVER_PIN = A5;

#endif