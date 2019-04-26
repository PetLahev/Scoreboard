
#ifndef scoreController_h
#define scoreController_h

#include <stdint.h>

class scoreController {
public:

/**
    Constructor
**/
scoreController();

/**
    Updates score based on given message
    @params message - a text that determines the score update
**/
void updateScore(uint8_t message);

/*
    Swaps the score on the display
    Team1 becomes Team2
*/
void swapScore();

 /**
    Resets all internal variables (starts the game from begining)
**/
void reset();

/**
 *  Sets a player who will be on service
 *  @params data - expected a number from 1 - 4 that will set the player on service
 **/ 
void setPlayerServe(uint8_t data);

private:

  uint8_t score1;
  uint8_t score2;
  uint8_t team1Sets;
  uint8_t team2Sets;
  bool team1Server1; // true means the first player server otherwise the second player
  bool team2Server1; // true means the first player server otherwise the second player
  uint8_t player; // 1 - 4 who is on service
  uint8_t whoWonLastPoint = 1; // 1 => team 1 won the last point, 2 => team 2 won the last point
  uint8_t whoStartedGame;// 1 => team 1 start serving, 2 => team 2 start serving

  void hasSetFinished(bool& result);
  void hasMatchFinished(bool& result);
  void team1WonSet(uint8_t& result);
  void team1WonMatch(uint8_t& result);
  void manageWhoServe(bool team1GoingUp);
  void revertLastPointData(bool team1GoingDown);  
  void resetGame();
  void logGameResult();
};

#endif