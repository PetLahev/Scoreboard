#include "settingController.h"
#include "globals.h"
#include <Arduino.h>

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

    bluetooth.println(msgTiebreakDiference + winningPointsTiebreak);    
    Serial.println(msgTiebreakDiference + winningPointsTiebreak);
}
