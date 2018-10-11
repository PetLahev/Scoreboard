/*
*  Provides access to globaly available objects
*/

#ifndef GLOBALS_h
#define GLOBALS_h

#include "NeoSWSerial.h"

/**
*  A globally available reference to bluetooth object
**/
extern NeoSWSerial bluetooth;

/*
  Settings - initial values
*/
extern uint8_t pointsPerSet;
extern uint8_t setsPerGame;
extern uint8_t winningPoints;

#endif