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
const uint8_t BLUE_RX = A1;
const uint8_t BLUE_TX = A0;

/*
  Defines pins for wireless communication (433Mhz)
*/
const uint8_t RECEIVER_PIN = A3;

/*
  Defines pin for IR remote
*/
const uint8_t IR_PIN = 13;

/*
  All segments off
*/
const uint8_t SEGMENT_OFF = 0b00000000;

/*
  Defines pins for score controlles
*/
const uint8_t SCORE_LATCH_PIN = 12;  // RCLK (RCK) pin 12 74HC595
const uint8_t SCORE_CLK_PIN = 11;    // SRCLK (SCK) pin 11 74HC595
const uint8_t SCORE_DATA_PIN = 10;   // SER  pin 14 74HC595

/*
  Defines pins for sets controlles 
*/
const uint8_t SETS_LATCH_PIN = 6;     // RCLK (RCK) pin 12 74HC595
const uint8_t SETS_CLK_PIN = 5;       // SRCLK (SCK) pin 11 74HC595
const uint8_t SETS_DATA_PIN = 4;      // SER  pin 14 74HC595

/*
  Defines pins for players who should serve
*/
const uint8_t PLAYER_LATCH_PIN = 9;   // RCLK (RCK) pin 12 74HC595
const uint8_t PLAYER_CLK_PIN = 8;     // SRCLK (SCK) pin 11 74HC595
const uint8_t PLAYER_DATA_PIN = 7;    // SER  pin 14 74HC595


const char TEAM1_UP = 'h';
const char TEAM1_DOWN = 'v';
const char TEAM2_UP = 'a';
const char TEAM2_DOWN = 'm';
const char SET_SERVER = 'p';
const char SWAP_DISPLAY = '$';
const char RESET_ALL = '@';
const char SETTINGS = '!';
const uint8_t MAX_SCORE = 99;
const uint8_t TEAM1 = 1;
const uint8_t TEAM2 = 2;
#endif