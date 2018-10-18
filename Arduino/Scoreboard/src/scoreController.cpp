/*
    Responsible for updating score based on message received from receivers
*/

#include "scoreController.h"
#include "globals.h"
#include "constants.h"
#include "displayController.h"

scoreController::scoreController() {
}

/*
    Controlls the whole score logic so
    1, what is the score
    2, who servers
    3, sets
*/
void scoreController::updateScore(uint8_t message) {

    // parse the input message    
    switch (message) {
        case TEAM1_UP:
            if (score1 > MAX_SCORE) return;
            if (whoWonLastPoint == TEAM2) {
                team1Server1 = !team1Server1;
                whoWonLastPoint = TEAM1;
            }
            score1 +=1;
            break;
        case TEAM1_DOWN:
            if (score1 < 1) return;
            whoWonLastPoint = TEAM2;
            // TODO: need to figure out how to handle servers here
            score1 -=1;
            break;
        case TEAM2_UP:
            if (score2 > MAX_SCORE) return;
            if (whoWonLastPoint == TEAM1) {
                team2Server1 = !team2Server1;
                whoWonLastPoint = TEAM2;
            } 
            score2 +=1;
            break;
        case TEAM2_DOWN:
            if (score2 < 1) return;
            whoWonLastPoint = TEAM1;
            // TODO: need to figure out how to handle servers here
            score2 -=1;
            break;
        case SET_SERVER:
            //TODO: Need to finish the logic here, always the first player for a team will start serving
            team1Server1 = true;
            whoWonLastPoint = 1;
            break;
        default:
            bluetooth.write("Unknown command");
            Serial.println("Unknown command");
            break;
    }

    // check if a set has finished
    // if so, update set variables
    bool setDone;
    hasSetFinished(setDone);
    if(setDone) {
        // a set has finished
        uint8_t setResult;
        team1WonSet(setResult);
        if (setResult == 1) {
            team1Sets +=1;
        }
        else if(setResult == 2) {
            team2Sets +=1;
        }
    }


    // check if a match has finished
    bool matchDone;
    hasMatchFinished(matchDone);
    if(matchDone) {
        // if match is finished, just blink the whole display and write down the result

    }
    else if(setDone) {
        // if a set is finished, blink with the whole display, write down the result and resets score
        
        resetGame();
    }
    else {        
        logGameResult();
    }
}


/**
 * Checks if at least one team has reached the maximum winning points per set
 * If the value of the variable 'pointsPerSet' is set to '0' then it's not match based on sets (like a football match)
 * @params &result - referenced result to be updated.
 *                   True if at least one team reached the global 'pointsPerSet' value
**/
void scoreController::hasSetFinished(bool& result) {
    if (pointsPerSet == 0) return;
    // counts the difference between the two teams
    uint8_t pointsDiff = abs(score1 - score2);
    // check if the difference is enough to win a set 
    // ie. when a set must be win by 2 points difference
    if (pointsDiff >= winningPoints) {
        // check if at least one team has reached the minimum score to win
        if (score1 >= pointsPerSet || score2 >= pointsPerSet) {
            result = true;
        }
    }
    else
    {
        result = false;
    }
}

/**
 * Checks if at least one team has reached the maximum winning sets per match
 * If the value of the variable 'setsPerGame' is set to '0' then it's not a match based on sets (like a football match)
 * @params &result - referenced result to be updated.
 *                   True if at least one team reached the global 'setsPerGame' value
**/
void scoreController::hasMatchFinished(bool& result) {
    if (setsPerGame == 0) return;
    if (team1Sets >= setsPerGame || team2Sets >= setsPerGame) {
        result = true;
    }
}

/**
 *  Checks if a set has finished and if so, checks if team 1 won it
 *  &params &result - 0 => set has not finished yet
 *                    1 => team 1 won the set
 *                    2 => team 2 won the set
 **/ 
void scoreController::team1WonSet(uint8_t& result) {
    bool setEnded;
    hasSetFinished(setEnded);
    if (!setEnded) {
        result = 0; // not finished yet
        return;
    }
    
    result = 2; // default is that team 2 won it
    if (score1 > score2) {
        result = 1;
    }
}

/**
 *  Checks if the match has finished and if so, checks if team 1 won it
 *  &params &result - 0 => match has not finished yet
 *                    1 => team 1 won the match
 *                    2 => team 2 won the match
 **/ 
void scoreController::team1WonMatch(uint8_t& result) {
    bool matchEnded;
    hasMatchFinished(matchEnded);
    if (!matchEnded) {
        result = 0; // not finished yet
        return;
    }
    result = 2; //default is team 2 won the match

    if(team1Sets > team2Sets) {
        result = 1;
    }
}

/**
 *  Resets the game but the match continues 
 **/
void scoreController::resetGame() {
    score1 = 0;
    score2 = 0;
}

void scoreController::logGameResult() {
    bluetooth.write("~Score updated|");
    bluetooth.write(score1);
    bluetooth.write(score2);
    bluetooth.write("~");
    Serial.print("~Score updated|");
    Serial.print(score1);
    Serial.print(score2);
    Serial.println("~");
}