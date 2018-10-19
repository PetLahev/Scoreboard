/*
    Responsible for managing the display itself
*/

#include "globals.h"
#include "constants.h"
#include "displayController.h"

displayController::displayController() {
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