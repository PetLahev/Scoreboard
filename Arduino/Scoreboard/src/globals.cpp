/*
*  Provides access to globaly available objects
*/

#include "globals.h"
#include "NeoSWSerial.h"
#include "constants.h"

/**
*  Initializes bluetooth object with pins
*  This object will be accessible anywhere in the project
**/
NeoSWSerial bluetooth(BLUE_RX, BLUE_TX);

// Sets the points per set, can be overriden by the settings class
uint8_t pointsPerSet = 11;
// Sets the number of sets to win a match, can be overriden by the settings class
uint8_t setsPerGame = 2;
// Sets the minimum difference of points to win a set, can be overriden by the settings class
uint8_t winningPoints = 2;