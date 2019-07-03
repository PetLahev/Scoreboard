#ifndef settingsController_h
#define settingsController_h

#include <stdint.h>
#include "NeoSWSerial.h"

class settingsController {
public:

    /**
     *  Sets the given setting (key) with the provided value
     *  @params message - the key value pair of a setting. Must be in 
     *                    'key'='value' format (delimiter is the '=')
     *                    example: numOfSets=2  
     **/ 
    void set(char *keyValuePair);

    /**
     * Reads the current settings and prints them out to bluetooth and serial monitor
     **/
    void read();

    /**
     *  Enumeration for messages
     **/ 
    enum Messages { SetsPerGame, PointsPerSets, SetPointsDifference, Server, DisplaySets, SetsAsMinute , TieBreakSupport, TiebreakSet, PointsInTiebreak, PointsTiebreakDifference };

private:

    /**
     *  Checks if given array of chars is all numeric
     *  @params valueToCheck  - an array of chars to check
     **/ 
    bool isNumber(char* valueToCheck);

    /**
     *  Converts given array of characters to integer
     *  @params value  - the array of chars to convert
     **/ 
    int convertToNumber(char* value);

    /**
     *  Converts given array of characters to boolean
     *  @params value  - the array of chars to convert
     **/ 
    bool convertToBoolean(char* value);

    /**
     *  Prints message to the bluetooth device and Serial monitor 
     *  @params msg  - a value of the Messages enumeration to be displayed
     **/
    void printMessage(Messages msg);

    // Defines constants for messages displayed to user
    // Would be better if it doesn't take that much memory but hey ..    
    const char *msgSets = "Sets per game:";
    const char *msgPoints = "Points per set:";
    const char *msgDiff  = "Set points difference:";
    const char *msgServe = "Display player on service:"; // should it lights the player on serve bar?
    const char *msgDisplaySets = "Display sets:";
    const char *msgSetsAsMinute = "Sets segments turned to minute counter:";
    const char *msgTiebreakSupport = "Supports tiebreak:"; 
    const char *msgTiebreakSet = "Tiebreak set:";
    const char *msgTiebreakPoints = "Points in tiebreak:";
    const char *msgTiebreakDifference = "Tiebreak points difference:";
    const char *msgnotValidSetting = "Not valid setting";

    // Defines constants for settings values
    const char *s_setsPerGame = "s";
    const char *s_pointsPerSet = "e";
    const char *s_pointsDifference = "d";
    const char *s_enableServer = "r";
    const char *s_enableSets = "b";
    const char *s_supportTiebreak = "t";    
    const char *s_tiebreakSet = "q";
    const char *s_tiebreakPoints = "f";
    const char *s_tiebreakPointsDifference = "w";
    const char *s_setsAsMinutes = "u"; // this will turn the sets to be a minute timer
};

#endif