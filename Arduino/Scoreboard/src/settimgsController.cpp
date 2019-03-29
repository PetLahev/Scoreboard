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
        bluetooth.print(msgSets); bluetooth.println(setsPerGame);
    }

    if ( strcmp(key, s_pointsPerSet) == 0 && isNumber(value)) {
        pointsPerSet = convertToNumber(value);
    }

    //12 Mar 2019 to be finished

}


/**
*  Reads the current settings and prints them out to bluetooth and serial monitor
**/
void settingsController::read() {

    bluetooth.print(msgSets);
    bluetooth.println(setsPerGame);
    Serial.print(msgSets);
    Serial.println(setsPerGame);

    bluetooth.print(msgPoints);
    bluetooth.println(pointsPerSet);
    Serial.print(msgPoints);
    Serial.println(pointsPerSet);

    bluetooth.print(msgDiff);
    bluetooth.println(winningPoints);
    Serial.print(msgDiff);
    Serial.println(winningPoints);

    bluetooth.print(msgServe);
    bluetooth.println(enableServers);
    Serial.print(msgServe);
    Serial.println(enableServers);

    bluetooth.print(msgDisplaySets);
    bluetooth.println(enableSets);
    Serial.print(msgDisplaySets);
    Serial.println(enableSets);

    bluetooth.print(msgTiebreakSupport);
    bluetooth.println(supportTiebreak);
    Serial.print(msgTiebreakSupport);
    Serial.println(supportTiebreak);

    bluetooth.print(msgTiebreakSet);
    bluetooth.println(tiebreakSet);
    Serial.print(msgTiebreakSet);
    Serial.println(tiebreakSet);

    bluetooth.print(msgTiebreakPoints);
    bluetooth.println(pointsTiebreak);
    Serial.print(msgTiebreakPoints);
    Serial.println(pointsTiebreak);

    bluetooth.print(msgTiebreakDifference);
    bluetooth.println(winningPointsTiebreak);
    Serial.print(msgTiebreakDifference);
    Serial.println(winningPointsTiebreak);
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