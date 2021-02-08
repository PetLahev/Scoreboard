/*
    Responsible for updating score based on message received from receivers
*/

#include "scoreController.h"
#include "globals.h"
#include "constants.h"
#include "displayController.h"

scoreController::scoreController()
{
}

/*
    Controlls the whole score logic so
    1, what is the score
    2, who servers
    3, sets
*/
void scoreController::updateScore(uint8_t message)
{

    // parse the input message
    switch (message)
    {
    case TEAM1_UP:
        if (score1 > MAX_SCORE)
            return;
        manageWhoServe(true);
        score1 += 1;
        break;
    case TEAM1_DOWN:
        if (score1 < 1)
            return;
        revertLastPointData(true); // supports just one point down
        score1 -= 1;
        break;
    case TEAM2_UP:
        if (score2 > MAX_SCORE)
            return;
        manageWhoServe(false);
        score2 += 1;
        break;
    case TEAM2_DOWN:
        if (score2 < 1)
            return;
        revertLastPointData(false); // supports just one point down
        score2 -= 1;
        break;
    default:
        bluetooth.println(F("Unknown command"));
        Serial.println(F("Unknown command"));
        break;
    }

    // check if a set has finished
    // if so, update set variables
    bool setDone = false;
    hasSetFinished(setDone);
    if (setDone)
    {
        Serial.println(F("A set has finished"));
        uint8_t setResult;
        team1WonSet(setResult);
        if (setResult == 1)
        {
            team1Sets += 1;
        }
        else if (setResult == 2)
        {
            team2Sets += 1;
        }
    }

    // update the scoreboard to reflect the latest result
    display.score(score1, score2, team1Sets, team2Sets, player);
    logGameResult();

    // check if a match has finished
    bool matchDone = false;
    hasMatchFinished(matchDone);
    if (matchDone)
    {
        Serial.println(F("Match has finished"));
        bluetooth.print(F("Match has finished "));
        bluetooth.print(team1Sets);
        bluetooth.print(F(":"));
        bluetooth.println(team2Sets);
        // if match is finished, just blink the whole display and write down the result
        delay(700);
        display.blink();
        reset();
    }
    else if (setDone)
    {
        // if a set is finished, blink with the whole display, write down the result and resets score
        Serial.println(F("Set has finished - blinking display and reseting score"));
        bluetooth.print(F("Set has finished "));
        bluetooth.print(team1Sets);
        bluetooth.print(F(":"));
        bluetooth.println(team2Sets);
        delay(700);
        display.blinkScore();
        resetGame();
        display.score(score1, score2, team1Sets, team2Sets, player);
    }
}

/**
 * Checks if at least one team has reached the maximum winning points per set
 * If the value of the variable 'pointsPerSet' is set to '0' then it's not match based on sets (like a football match)
 * @params &result - referenced result to be updated.
 *                   True if at least one team reached the global 'pointsPerSet' value
**/
void scoreController::hasSetFinished(bool &result)
{

    if (pointsPerSet == 0)
        return;

    // sets the initial values for point difference and pints per set
    uint8_t points = winningPoints;
    uint8_t pointsSet = pointsPerSet;

    if (supportTiebreak && team1Sets == (tiebreakSet - 1) && team2Sets == (tiebreakSet - 1))
    {
        // tiebreak section may have different points per set or the difference between score
        points = winningPointsTiebreak;
        pointsSet = pointsTiebreak;
    }

    // counts the difference between the two teams
    uint8_t pointsDiff = abs(score1 - score2);

    // check if the difference is enough to win a set
    // ie. when a set must be win by 2 points difference
    if (pointsDiff >= points)
    {
        // check if at least one team has reached the minimum score to win
        if (score1 >= pointsSet || score2 >= pointsSet)
        {
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
void scoreController::hasMatchFinished(bool &result)
{
    if (setsPerGame == 0)
        return;
    if (team1Sets >= setsPerGame || team2Sets >= setsPerGame)
    {
        result = true;
    }
}

/**
 *  Checks if a set has finished and if so, checks if team 1 won it
 *  &params &result - 0 => set has not finished yet
 *                    1 => team 1 won the set
 *                    2 => team 2 won the set
 **/
void scoreController::team1WonSet(uint8_t &result)
{
    bool setEnded;
    hasSetFinished(setEnded);
    if (!setEnded)
    {
        result = 0; // not finished yet
        return;
    }

    result = 2; // default is that team 2 won it
    if (score1 > score2)
    {
        result = 1;
    }
}

/**
 *  Checks if the match has finished and if so, checks if team 1 won it
 *  &params &result - 0 => match has not finished yet
 *                    1 => team 1 won the match
 *                    2 => team 2 won the match
 **/
void scoreController::team1WonMatch(uint8_t &result)
{
    bool matchEnded;
    hasMatchFinished(matchEnded);
    if (!matchEnded)
    {
        result = 0; // not finished yet
        return;
    }
    result = 2; //default is team 2 won the match

    if (team1Sets > team2Sets)
    {
        result = 1;
    }
}

/**
 *  Resets the game but the match continues
 **/
void scoreController::resetGame()
{
    Serial.println(F("Reseting game"));
    score1 = 0;
    score2 = 0;
    // if this is a match based on sets I set the next player to the team who lost previous set
    // this is different in almost every sport so I provide a way how to set it directly before each set
    uint8_t team1Won;
    team1WonMatch(team1Won);
    if (team1Won == 1)
    {
        whoWonLastPoint = TEAM2;
        team2Server1 = !team2Server1;
        player = 4;
        if (team2Server1)
            player = 3;
    }
    else
    {
        whoWonLastPoint = TEAM1;
        team1Server1 = !team1Server1;
        player = 2;
        if (team1Server1)
            player = 1;
    }
}

/**
 *  Resets all variables and display
 **/
void scoreController::reset()
{
    Serial.println(F("Reseting the whole match = Everything"));
    score1 = 0;
    score2 = 0;
    team1Sets = 0;
    team2Sets = 0;
    whoWonLastPoint = TEAM1;
    team1Server1 = true;
    team2Server1 = false; // the logic in the method will change it to true
    player = 1;
    display.score(score1, score2, team1Sets, team2Sets, player);
}

/*
    Swaps the score on the display
    Team1 becomes Team2 etc.
    Use when teams change sides after a set is finished
*/
void scoreController::swapScore()
{
    Serial.println(F("Swaping score"));

    uint8_t tmpScore2 = score2;
    uint8_t tmpTeam2Sets = team2Sets;

    score2 = score1;
    team2Sets = team1Sets;

    score1 = tmpScore2;
    team1Sets = tmpTeam2Sets;

    // like reset
    whoWonLastPoint = TEAM1;
    team1Server1 = true;
    team2Server1 = false; // the logic in the method will change it to true
    player = 1;

    display.score(score1, score2, team1Sets, team2Sets, player);
}

/**
 * Manages state of the player who will serve after a point was won
 * This is most for beach volleyball where the player on service changes after a ball is lost 
 **/
void scoreController::manageWhoServe(bool team1GoingUp)
{

    if (team1GoingUp)
    {
        if (whoWonLastPoint == TEAM2)
        {
            team1Server1 = !team1Server1;
            player = 2;
            if (team1Server1)
                player = 1;
            whoWonLastPoint = TEAM1;
        }
    }
    else
    {
        if (whoWonLastPoint == TEAM1)
        {
            team2Server1 = !team2Server1;
            player = 4;
            if (team2Server1)
                player = 3;
            whoWonLastPoint = TEAM2;
        }
    }
}

/**
 * When going down, eg. due to a mistake or referee changes the result, we need to update the data of the players
 * >>>>>>>>>> SUPPORTS JUST ONE STEP DOWN <<<<<<<<<< to not occupy Arduino memory with too much data
 * Score is not updated here, it's done in the calling method
 **/
void scoreController::revertLastPointData(bool team1GoingDown)
{
    // all the data - score, who should server, who won the last point - is already changed, now we need to revert
    if (team1GoingDown)
    {
        // team 1 lost their point  - score is updated in the main method
        // change the team server back to the previous state
        team1Server1 = !team1Server1;
        player = 2;
        if (team1Server1)
            player = 1;
        // revert back who won the last point
        whoWonLastPoint = TEAM2;
    }
    else
    {
        // team 2 lost their point - score is updated in the main method
        // change the team server back to the previous state
        team2Server1 = !team2Server1;
        player = 4;
        if (team2Server1)
            player = 3;
        // revert back who won the last point
        whoWonLastPoint = TEAM1;
    }
}

/**
 *  Sets the player who will serve and also sets the team who won last point
 *  to be able to determine how the server should change.
 **/
void scoreController::setPlayerServe(uint8_t data)
{

    Serial.print(F("Setting player on service: "));
    Serial.println(data);
    bool succeeded = false;
    switch (data)
    {
    case '1':
        team1Server1 = true;
        player = 1;
        whoWonLastPoint = TEAM1;
        succeeded = true;
        break;
    case '2':
        team1Server1 = false;
        player = 2;
        whoWonLastPoint = TEAM1;
        succeeded = true;
        break;
    case '3':
        team2Server1 = true;
        player = 3;
        whoWonLastPoint = TEAM2;
        succeeded = true;
        break;
    case '4':
        team2Server1 = false;
        player = 4;
        whoWonLastPoint = TEAM2;
        succeeded = true;
        break;
    default:
        bluetooth.println(F("Unknown player"));
        Serial.println(F("Unknown player"));
    }

    if (succeeded)
        display.score(score1, score2, team1Sets, team2Sets, player);
}

/**
 * Prints the score back to bluetooth device and serial monitor
 * TODO: Should create some loging class to support some standard ways
 **/
void scoreController::logGameResult()
{
    bluetooth.print(F("~Score updated|"));
    bluetooth.print(score1);
    bluetooth.print(F(":"));
    bluetooth.print(score2);
    bluetooth.println(F("~"));
    Serial.print(F("~Score updated|"));
    Serial.print(score1);
    Serial.print(F(":"));
    Serial.print(score2);
    Serial.println(F("~"));
}