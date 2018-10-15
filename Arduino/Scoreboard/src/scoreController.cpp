/*
    Responsible for updating score based on message received from receivers
*/

#include "scoreController.h"
#include "globals.h"


scoreController::scoreController() {
}

/*
    Controlls the whole score logic so
    1, what is the score
    2, who servers
    3, sets
*/
void scoreController::updateScore(uint8_t message) {
    
    bluetooth.write("Score updated");
}