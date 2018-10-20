
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
void blinkPoints();
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

void displayScore(uint8_t score1, uint8_t score2);
void displayWhoServer(uint8_t player);
void displaySets(uint8_t set1, uint8_t set2);

};

#endif