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
    
    if ( strcmp(key, s_setsPerGame) == 0 && isdigit((unsigned char)value)) {
        setsPerGame = (unsigned char)value;
    }

    if ( strcmp(key, s_pointsPerSet) == 0 && isdigit((unsigned char)value)) {
        pointsPerSet = (unsigned char)value;
    }

    //12 Mar 2019 to be finished

}


/**
*  Reads the current settings and prints them out to bluetooth and serial monitor
**/
void settingsController::read() {

    bluetooth.println(msgSets + setsPerGame);
    Serial.println(msgSets + setsPerGame);

    bluetooth.println(msgPoints + pointsPerSet);
    Serial.println(msgPoints + pointsPerSet);

    bluetooth.println(msgDiff + winningPoints);
    Serial.println(msgDiff + winningPoints);

    bluetooth.println(msgServe + enableServers);
    Serial.println(msgServe + enableServers);

    bluetooth.println(msgDisplaySets + enableSets);
    Serial.println(msgDisplaySets + enableSets);

    bluetooth.println(msgTiebreakSupport + supportTiebreak);
    Serial.println(msgTiebreakSupport + supportTiebreak);

    bluetooth.println(msgTiebreakSet + tiebreakSet);
    Serial.println(msgTiebreakSet + tiebreakSet);

    bluetooth.println(msgTiebreakPoints + pointsTiebreak);
    Serial.println(msgTiebreakPoints + pointsTiebreak);

    bluetooth.println(msgTiebreakDifference + winningPointsTiebreak);
    Serial.println(msgTiebreakDifference + winningPointsTiebreak);
}
