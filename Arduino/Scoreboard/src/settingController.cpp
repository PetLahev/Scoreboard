#include "settingController.h"
#include "globals.h"
#include <ctype.h>
#include <Arduino.h>

/**
 *  Sets the given setting (key) with the provided value
 *  @params message - the key value pair of a setting. Must be in 
 *                    'key'='value' format (delimiter is the '=')
 *                    example: numOfSets=2  
 **/ 
void settingsController::set(char *keyValuePair) {

    Serial.print(F("Key-Value pair =>"));
    Serial.println(keyValuePair);

    // the correct setting string must have '=' between key and value
    char *foundChar = strchr(keyValuePair, '=');
    if (foundChar == NULL) {        
        bluetooth.println(msgnotValidSetting);
        Serial.println(msgnotValidSetting);
        return;
    }

    char *key = strtok (keyValuePair,"=");
    char *value =  strtok (NULL, "");
    
    if ( strcmp(key, s_setsPerGame) == 0 && isNumber(value)) {
        setsPerGame = convertToNumber(value);
        printMessage(SetsPerGame);
    }

    if ( strcmp(key, s_pointsPerSet) == 0 && isNumber(value)) {
        pointsPerSet = convertToNumber(value);
        printMessage(PointsPerSets);
    }

    if ( strcmp(key, s_pointsDifference) == 0 && isNumber(value)) {
        winningPoints = convertToNumber(value);
        printMessage(SetPointsDifference);
    }

    if ( strcmp(key, s_enableServer) == 0 ) {
        enableServers = convertToBoolean(value);
        printMessage(Server);
    }

    if ( strcmp(key, s_enableSets) == 0 ) {
        enableSets = convertToBoolean(value);
        printMessage(DisplaySets);
    }

    if ( strcmp(key, s_setsAsMinutes) == 0 ) {
        setsAsMinute = convertToBoolean(value);
        if (s_setsAsMinutes) enableSets = true;
        printMessage(SetsAsMinute);
    }

    if ( strcmp(key, s_supportTiebreak) == 0 ) {
        supportTiebreak = convertToBoolean(value);
        printMessage(TieBreakSupport);
    }

    if ( strcmp(key, s_tiebreakSet) == 0 && isNumber(value)) {
        tiebreakSet = convertToNumber(value);
        printMessage(TiebreakSet);
    }

    if ( strcmp(key, s_tiebreakPoints) == 0 && isNumber(value)) {
        pointsTiebreak = convertToNumber(value);
        printMessage(PointsInTiebreak);
    }

    if ( strcmp(key, s_tiebreakPointsDifference) == 0 && isNumber(value)) {
        winningPointsTiebreak = convertToNumber(value);
        printMessage(PointsTiebreakDifference);
    }
}


/**
*  Reads the current settings and prints them out to bluetooth and serial monitor
**/
void settingsController::read() {

    printMessage(SetsPerGame);
    printMessage(PointsPerSets);
    printMessage(SetPointsDifference);
    printMessage(Server);
    printMessage(DisplaySets);
    printMessage(SetsAsMinute);
    printMessage(TieBreakSupport);
    printMessage(TiebreakSet);
    printMessage(PointsInTiebreak);
    printMessage(PointsTiebreakDifference);
}

/**
 *  Prints message to the bluetooth device and Serial monitor 
 *  @params msg  - a value of the Messages enumeration to be displayed
**/
void settingsController::printMessage(Messages msg) {
    switch (msg)
    {
        case SetsPerGame :
            bluetooth.print(msgSets);
            bluetooth.println(setsPerGame);
            Serial.print(msgSets);
            Serial.println(setsPerGame);
            break;

        case PointsPerSets :
            bluetooth.print(msgPoints);
            bluetooth.println(pointsPerSet);
            Serial.print(msgPoints);
            Serial.println(pointsPerSet);
            break;

        case SetPointsDifference :
            bluetooth.print(msgDiff);
            bluetooth.println(winningPoints);
            Serial.print(msgDiff);
            Serial.println(winningPoints);
            break;

        case Server :
            bluetooth.print(msgServe);
            bluetooth.println(enableServers);
            Serial.print(msgServe);
            Serial.println(enableServers);
            break;

        case DisplaySets :
            bluetooth.print(msgDisplaySets);
            bluetooth.println(enableSets);
            Serial.print(msgDisplaySets);
            Serial.println(enableSets);
            break;
        
        case SetsAsMinute :
            bluetooth.print(msgSetsAsMinute);
            bluetooth.println(setsAsMinute);
            Serial.print(msgSetsAsMinute);
            Serial.println(setsAsMinute);
            break;

        case TieBreakSupport :
            bluetooth.print(msgTiebreakSupport);
            bluetooth.println(supportTiebreak);
            Serial.print(msgTiebreakSupport);
            Serial.println(supportTiebreak);
            break;

        case TiebreakSet :
            bluetooth.print(msgTiebreakSet);
            bluetooth.println(tiebreakSet);
            Serial.print(msgTiebreakSet);
            Serial.println(tiebreakSet);
            break;

        case PointsInTiebreak :
            bluetooth.print(msgTiebreakPoints);
            bluetooth.println(pointsTiebreak);
            Serial.print(msgTiebreakPoints);
            Serial.println(pointsTiebreak);
            break;

        case PointsTiebreakDifference :
            bluetooth.print(msgTiebreakDifference);
            bluetooth.println(winningPointsTiebreak);
            Serial.print(msgTiebreakDifference);
            Serial.println(winningPointsTiebreak);
            break;

        default:
            bluetooth.println(msgnotValidSetting);
            Serial.println(msgnotValidSetting);
            break;
    }
}

bool settingsController::isNumber(char* valueToCheck) {

    int arraySize = sizeof(valueToCheck)/sizeof(int);
    for(int i = 0; i < arraySize; i++) {
        if (!isdigit(valueToCheck[i])) return false;
    }
    return true;
}

int settingsController::convertToNumber(char* value) {
    if (!isNumber(value)) return 0;
    return strtol(value, NULL, 0);
}

bool settingsController::convertToBoolean(char* value) {
    if ( strcmp(value, "Y") == 0 ) return true;
    if ( strcmp(value, "y") == 0 ) return true;
    if ( strcmp(value, "true") == 0 ) return true;
    if ( strcmp(value, "TRUE") == 0) return true;
    return 0;
}