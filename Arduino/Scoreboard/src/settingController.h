#ifndef settingsController_h
#define settingsController_h

#include <stdint.h>
#include "NeoSWSerial.h"

class settingsController {
public:

    /**
     * 
     *  @params message - what the hell I meant by it?
     **/ 
    void set(uint8_t message);

    /**
     * Reads the current settings and prints them out to bluetooth and serial monitor
     **/
    void read();

private:
    // Defines constants for messages displayed to user
    // Would be better if it doesn't take that much memory but hey ..
    const char *msgSets = "Sets per game:";
    const char *msgPoints = "Points per set:";
    const char *msgDiff  = "Set points difference:";
    const char *msgServe = "Display player on service:"; // should it lights the player on serve bar?
    const char *msgDisplaySets = "Display sets:";
    const char *msgTiebreakSupport = "Supports tiebreak:"; 
    const char *msgTiebreakSet = "Tiebreak set:";
    const char *msgTiebreakPoints = "Points in tiebreak:";
    const char *msgTiebreakDiference = "Tiebreak points difference:";    
};

#endif