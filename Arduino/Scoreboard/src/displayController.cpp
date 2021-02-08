/*
    Responsible for managing the display itself
*/

#include "globals.h"
#include "constants.h"
#include "displayController.h"

displayController::displayController()
{
    Serial.println("Score controller created");
}

/**
 *  Displays score include sets and servers if enabled
 *  @params score1 - score for the team 1
 *          score2 - score for the team 2
 *          set1   - number of sets won by first team (if enabled)
 *          set2   - number of sets won by second team (if enabled)
 *          player - player on service, supports value from 1- 4 (if enabled)
 **/
void displayController::score(uint8_t score1, uint8_t score2, uint8_t set1, uint8_t set2, uint8_t player)
{
    showScore(score1, score2);
    showWhoServe(player);
    if (!setsAsMinute)
        showSets(set1, set2); // do not update the sets when it's beeing used for minutes
}

void displayController::showScore(uint8_t score1, uint8_t score2, bool displayLeadingZero = false)
{

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
    if (score1 > 9)
    {
        remind = score1 / 10;
        digit = score1 % 10;
        digits[0] = digitOne[remind];
        digits[1] = digitOne[digit];
    }
    else
    {
        // the second segment from left will be set to the represent number from 0-9
        if (displayLeadingZero)
        {
            digits[0] = digitOne[0];
        }
        digits[1] = digitOne[score1];
    }

    if (score2 > 9)
    {
        remind = score2 / 10;
        digit = score2 % 10;
        digits[2] = digitOne[remind];
        digits[3] = digitOne[digit];
    }
    else
    {
        // the from segment from left will be set to the represent number from 0-9
        if (displayLeadingZero)
        {
            digits[2] = digitOne[0];
        }
        digits[3] = digitOne[score2];
    }

    data.firstBigSegment = digits[0];
    data.secondBigSegment = digits[1];
    data.thirdBigSegment = digits[2];
    data.fourthdBigSegment = digits[3];

    // Write the bytes to the score output
    digitalWrite(SCORE_LATCH_PIN, LOW);
    for (uint8_t i = 0; i < 4; i++)
    {
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, digits[i]);
    }
    digitalWrite(SCORE_LATCH_PIN, HIGH);
}

/**
 * Blinks the whole display whatever was supplied as last information
 **/
void displayController::blink()
{

    Serial.println(F("Display blink start"));
    // It assumes the information is already displayed
    // turn everything off and then display again for 3 times
    for (uint8_t i = 0; i < 4; i++)
    {

        // turn everything off
        digitalWrite(SCORE_LATCH_PIN, LOW);
        digitalWrite(PLAYER_LATCH_PIN, LOW);
        digitalWrite(SETS_LATCH_PIN, LOW);

        for (uint8_t i = 0; i < 4; i++)
        {
            shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        }

        shiftOut(PLAYER_DATA_PIN, PLAYER_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, SEGMENT_OFF);

        digitalWrite(SCORE_LATCH_PIN, HIGH);
        digitalWrite(PLAYER_LATCH_PIN, HIGH);
        digitalWrite(SETS_LATCH_PIN, HIGH);
        delay(300);

        // and now everything on
        digitalWrite(SCORE_LATCH_PIN, LOW);
        digitalWrite(PLAYER_LATCH_PIN, LOW);
        digitalWrite(SETS_LATCH_PIN, LOW);

        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.firstBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.secondBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.thirdBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.fourthdBigSegment);
        shiftOut(PLAYER_DATA_PIN, PLAYER_CLK_PIN, LSBFIRST, data.flags);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.firstSmallSegment);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.secondSmallSegment);

        digitalWrite(SCORE_LATCH_PIN, HIGH);
        digitalWrite(PLAYER_LATCH_PIN, HIGH);
        digitalWrite(SETS_LATCH_PIN, HIGH);
        if (i < 3)
            delay(700); // wait just first two cycles, last one no need to wait
    }
    Serial.println(F("Display blink end"));
}

void displayController::blinkScore()
{
    Serial.println(F("Display score blink start"));
    // It assumes the information is already displayed
    // turn everything off and then display again for 3 times
    for (uint8_t i = 0; i < 4; i++)
    {

        // turn everything off
        digitalWrite(SCORE_LATCH_PIN, LOW);
        for (uint8_t i = 0; i < 4; i++)
        {
            shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        }
        digitalWrite(SCORE_LATCH_PIN, HIGH);
        delay(300);

        // and now everything on
        digitalWrite(SCORE_LATCH_PIN, LOW);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.firstBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.secondBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.thirdBigSegment);
        shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, data.fourthdBigSegment);
        digitalWrite(SCORE_LATCH_PIN, HIGH);
        if (i < 3)
            delay(700); // wait just first two cycles, last one no need to wait
    }
    Serial.println(F("Display score blink ends"));
}

void displayController::showWhoServe(uint8_t player)
{
    Serial.println(F("Display who is on service start"));
    // Checks if displaying who should serve is enabled
    if (enableServers)
    {
        Serial.println(F("Displaying player on service"));
        if (player >= 1 && player <= 4)
        {
            // here we don't use 7-segment display, just move the voltage to the correct pins
            // don't forget the shift register use just 7 bits!
            // The player 1 is segment 'G', player 2 is segment 'F' and so on
            // 128  64  32  16  8  4  2  1
            // N/A  0   0   0   0  0  0  0
            if (player == 1)
                data.flags = 0b01000000;
            if (player == 2)
                data.flags = 0b00100000;
            if (player == 3)
                data.flags = 0b00010000;
            if (player == 4)
                data.flags = 0b00001000;

            // here we use Most Significant Bit First not like in the other two controllers
            digitalWrite(PLAYER_LATCH_PIN, LOW);
            shiftOut(PLAYER_DATA_PIN, PLAYER_CLK_PIN, MSBFIRST, data.flags);
            digitalWrite(PLAYER_LATCH_PIN, HIGH);
        }
    }
    else
    {
        // turn the LED off if not enabled
        data.flags = 0b00000000;
        digitalWrite(PLAYER_LATCH_PIN, LOW);
        shiftOut(PLAYER_DATA_PIN, PLAYER_CLK_PIN, MSBFIRST, data.flags);
        digitalWrite(PLAYER_LATCH_PIN, HIGH);
    }

    Serial.println(F("Display who is on service ends"));
}

void displayController::showSets(uint8_t set1, uint8_t set2)
{
    Serial.println(F("Display sets start"));
    // Checks if displaying sets is enabled
    if (enableSets)
    {
        Serial.println(F("Displaying sets"));
        data.firstSmallSegment = digitOne[set1];
        data.secondSmallSegment = digitOne[set2];

        digitalWrite(SETS_LATCH_PIN, LOW);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.firstSmallSegment);
        shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.secondSmallSegment);
        digitalWrite(SETS_LATCH_PIN, HIGH);
    }
    else
    {
        // turn them all off if not enabled
        Serial.println(F("Sets disabled"));
        digitalWrite(SETS_LATCH_PIN, LOW);
        for (uint8_t i = 0; i < 4; i++)
        {
            shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, SEGMENT_OFF);
        }
        digitalWrite(SETS_LATCH_PIN, HIGH);
    }
    Serial.println(F("Display sets ends"));
}

void displayController::updateTime(uint8_t minutes)
{
    Serial.println(F("Updating minutes starts"));

    if (minutes < 0 && minutes > 9999)
    {
        showSets(0, 0);
        Serial.println(F("Minutes out of range"));
        return;
    }
    else if (minutes > 99 && minutes <= 999)
    {
        minutes = minutes - ((minutes / 100) * 100);
    }
    else if (minutes > 999 && minutes <= 9999)
    {
        minutes = minutes - ((minutes / 1000) * 1000);
    }

    if (minutes < 10)
    {
        showSets(0, minutes);
    }
    else
    {
        uint8_t remind = 0;
        uint8_t digit = 0;
        remind = minutes / 10;
        digit = minutes % 10;
        showSets(remind, digit);
    }

    Serial.println(F("Updating minutes ends"));
}

void displayController::updateTime(uint8_t hour, uint8_t minute, uint8_t second)
{
    Serial.println(F("Updating time starts"));

    Serial.print(hour, DEC);
    Serial.print(':');
    Serial.print(minute, DEC);
    Serial.print(':');
    Serial.print(second, DEC);
    Serial.println();

    showScore(hour, minute, true);
    if (second < 10)
    {
        showSets(0, second);
    }
    else
    {
        uint8_t remind = 0;
        uint8_t digit = 0;
        remind = second / 10;
        digit = second % 10;
        showSets(remind, digit);
    }

    Serial.println(F("Updating time ends"));
}

/**
 * Displays greetings on the display and blinks with it
 **/
void displayController::greetings()
{
    Serial.println(F("Display greetings start"));
    data.firstBigSegment = AHOJ[0];
    data.secondBigSegment = AHOJ[1];
    data.thirdBigSegment = AHOJ[2];
    data.fourthdBigSegment = AHOJ[3];
    data.firstSmallSegment = digitOne[0];
    data.secondSmallSegment = digitOne[0];

    for (uint8_t i = 0; i < 4; i++)
    {
        digitalWrite(SCORE_LATCH_PIN, LOW);
        for (uint8_t i = 0; i < 4; i++)
        {
            shiftOut(SCORE_DATA_PIN, SCORE_CLK_PIN, LSBFIRST, AHOJ[i]);
        }
        digitalWrite(SCORE_LATCH_PIN, HIGH);
    }

    digitalWrite(SETS_LATCH_PIN, LOW);
    shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.firstSmallSegment);
    shiftOut(SETS_DATA_PIN, SETS_CLK_PIN, LSBFIRST, data.secondSmallSegment);
    digitalWrite(SETS_LATCH_PIN, HIGH);

    delay(700);
    blink();
    Serial.println(F("Display greetings end"));
}