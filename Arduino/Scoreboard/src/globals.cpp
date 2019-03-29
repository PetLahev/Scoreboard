/*
*  Provides access to globally available objects
*/

#include "globals.h"
#include "NeoSWSerial.h"
#include "constants.h"
#include "displayController.h"
#include "scoreController.h"

/**
*  Initializes bluetooth object with pins
*  This object will be accessible anywhere in the project
**/
NeoSWSerial bluetooth(BLUE_TX, BLUE_RX);

// Sets the points per set, can be overriden by the settings class
uint8_t pointsPerSet = 11;
// Sets the number of sets to win a match, can be overriden by the settings class
uint8_t setsPerGame = 2;
// Sets the minimum difference of points to win a set, can be overriden by the settings class
uint8_t winningPoints = 2;
// true if flags for servers should be displayed
bool enableServers = true;
// true if displaying sets is enabled
bool enableSets = true;
// true if the game supports tiebreak
bool supportTiebreak = true;
// the set that will be considered as tiebreak set, like 3
uint8_t tiebreakSet = 2;
// the number of points to win a tiebreak set
uint8_t pointsTiebreak = 9;
// the difference between points to win the tiebreak set
uint8_t winningPointsTiebreak = 2;