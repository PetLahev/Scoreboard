/*
    Responsible for managing the display itself
*/

#include "globals.h"
#include "constants.h"
#include "displayController.h"

displayController::displayController() {
}

/**
 *  Displays score include sets and servers if enabled
 *  @params score1 - score for the team 1
 *          score2 - score for the team 2
 *          set1   - number of sets won by first team (if enabled)
 *          set2   - number of sets won by second team (if enabled) 
 *          player - player on service, supports value from 1- 4 (if enabled)
 **/
void displayController::score(uint8_t score1, uint8_t score2, uint8_t set1, uint8_t set2, uint8_t player) {
    
    // We are going from left (team1) to right (team2) 
    // so the first index of the array will be the very left segment on the scoreboard
    // the the last index will be the very right segment on the scoreboard
    //   __   __    __   __
    //  |__| |__|  |__| |__|
    //  |__| |__|  |__| |__|
    //   [0] [1]   [2]  [3]
    //  
    // All segments off by default
    uint8_t digits[4] = {digitOne[10], digitOne[10], digitOne[10], digitOne[10]};
        
    uint8_t remind = 0;
    uint8_t digit = 0;
    if (score1 > 9) {        
        remind = score1/10;
        digit = score1 % 10;
        digits[0] = digitOne[digit];
        digits[1] = digitOne[remind];
    }
    else {
        // the second segment from left will be set to the represent number from 0-9
        digits[1] = digitOne[score1];
    }

    if (score2 > 9) {
        remind = score2/10;
        digit = score2 % 10;
        digits[2] = digitOne[digit];
        digits[3] = digitOne[remind];
    }
    else {
        // the from segment from left will be set to the represent number from 0-9
        digits[3] = digitOne[score2];
    }

    // Write the bytes to the score output
    digitalWrite(SCORE_LATCH_PIN, LOW);
    for (uint8_t i = 0; i < 4; i++) {
         shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST,digits[i]);
    }        
    digitalWrite(SCORE_LATCH_PIN, HIGH);


    //TODO: write data for player on service
    //TODO: write data for sets

}

/**
 * Displays greetings on the display and blinks with it
 **/
void displayController::greetings() {

    for(uint8_t i = 0; i < 4; i++) {
        digitalWrite(SCORE_LATCH_PIN, LOW);
        for (uint8_t i = 0; i < 4; i++) {
            shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, AHOJ[i]);
        }        
        digitalWrite(SCORE_LATCH_PIN, HIGH);
        delay(700);

        digitalWrite(SCORE_LATCH_PIN, LOW);
        for (uint8_t i = 0; i < 4; i++) {
            shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        }        
        digitalWrite(SCORE_LATCH_PIN, HIGH);
        delay(300);
    }
}