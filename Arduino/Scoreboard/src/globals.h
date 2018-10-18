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
// number of points to win a set, like 15
extern uint8_t pointsPerSet = 15;
// number of sets to win a match, like 3
extern uint8_t setsPerGame = 3;
// the difference between points to win a set, like 2 (e.g. final score 15:13)
extern uint8_t winningPoints = 2;
// true if flags for servers should be displayed
extern bool displayServers = true;

#endif