/*
*  Provides access to globally available objects
*/

#ifndef GLOBALS_h
#define GLOBALS_h

#include "NeoSWSerial.h"
#include "displayController.h"

/**
*  A globally available reference to bluetooth object
**/
extern NeoSWSerial bluetooth;

/**
 * A globally available reference to the display controller class 
 **/
extern displayController display;

/*
  Settings - initial values
*/
// number of points to win a set, like 15
extern uint8_t pointsPerSet;
// number of sets to win a match, like 3
extern uint8_t setsPerGame;
// the difference between points to win a set, like 2 (e.g. final score 15:13)
extern uint8_t winningPoints;
// true if flags for servers should be displayed
extern bool enableServers;
// true if displaying sets is enabled
extern bool enableSets;
// true if sets should display length of a game in minutes
extern bool setsAsMinute;
// true if the scoreboard should be used as a clock
extern bool setsAsClock;
// true if the game supports tiebreak
extern bool supportTiebreak;
// the set that will be considered as tiebreak set, like 3
extern uint8_t tiebreakSet;
// the number of points to win a tiebreak set
extern uint8_t pointsTiebreak;
// the difference between points to win the tiebreak set
extern uint8_t winningPointsTiebreak;

#endif