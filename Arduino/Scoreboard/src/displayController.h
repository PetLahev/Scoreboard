
#ifndef displayController_h
#define displayController_h

#include <stdint.h>

class displayController {
public:

/**
    Constructor
**/
displayController();

/**
 *  Displays score include sets and servers if enabled
 *  @params score1 - score for the team 1
 *          score2 - score for the team 2
 *          set1   - number of sets won by first team (if enabled)
 *          set2   - number of sets won by second team (if enabled) 
 *          player - player on service, supports value from 1- 4 (if enabled)
 **/
void score(uint8_t score1, uint8_t score2, uint8_t set1, uint8_t set2, uint8_t player);

/**
 * Blinks with the score segments only
 **/
void blinkScore();

/**
 * Blinks the whole display whatever was supplied as last information
 **/
void blink();

/**
 *  Displays greetings on the display and blinks with it
 **/
void greetings();

private:
// Each number represents a segment on 7-segment, the last 8bit is not used = always 0
// 1 means it's ON, 0 means it's OFF
// we use LSBFIRST option => Last Significat Bit FIRST so the zero from end of a byte will enter the
// shift register at first and will end up on the 'Q7' pin of the 74HC595 IO that is not used
const uint8_t AHOJ[4] = {0b11101110, 0b01101110, 0b11111100, 0b01111000 };
  
// This is the hex value of each number stored in an array by index num
// Last index (11) is not filled but represent no value at all so all segments are OFF (not lightening)
const uint8_t digitOne[11]= {0xFC, 0x60, 0xDA, 0xF2, 0x66, 0xB6, 0xBE, 0xE0, 0xFE, 0xF6};   

const uint8_t A = 0b11101110;
const uint8_t B = 0b11111110;
const uint8_t C = 0b10011100;
const uint8_t d = 0b01111010;
const uint8_t E = 0b10011110;
const uint8_t F = 0b10001110;
const uint8_t H = 0b01101110;
const uint8_t I = 0b01100000;
const uint8_t J = 0b01111000;
const uint8_t L = 0b00011100;
const uint8_t n = 0b00101010;
const uint8_t O = 0b11111100;
const uint8_t P = 0b11001110;
const uint8_t r = 0b00001010;
const uint8_t S = 0b10110110;
const uint8_t U = 0b01111100;

/**
 *  Converts the given score to 7-segment notation and displays it on the scoreboard
 *  @params score1 - score for the team 1
 *          score2 - score for the team 2
**/
void showScore(uint8_t score1, uint8_t score2);

/**
 *  Displays the given number as a player who will serve next ball
 *  The expected range is 1 - 4 that is converted to binary like
 *  1 - 0b10000000
 *  2 - 0b01000000
 *  3 - 0b00100000 - so the number is converted to 4
 *  4 - 0b00010000 - so the number is converted to 8
 *  @params player - on service, supports value from 1- 4 (if enabled)
 **/
void showWhoServe(uint8_t player);

/**
 * 
 *  @params set1 - number of sets won by first team (if enabled)
 *          set2 - number of sets won by second team (if enabled) 
 **/
void showSets(uint8_t set1, uint8_t set2);

/**
 * Stores dispayed data for later usage
 **/
struct displayData {
  uint8_t firstBigSegment;
  uint8_t secondBigSegment;
  uint8_t thirdBigSegment;
  uint8_t fourthdBigSegment;
  uint8_t flags;
  uint8_t firstSmallSegment;
  uint8_t secondSmallSegment;  
} data;

};

#endif