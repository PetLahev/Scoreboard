
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
    Swaps the score on the display but keeps the data untouched
    So Team1 is still Team1 etc.
*/
void swapScore();

 /**
    Resets all internal variables (starts the game from begining)
**/
void reset();
  
const char TEAM1_UP = 'h';
const char TEAM1_DOWN = 'v';
const char TEAM2_UP = 'a';
const char TEAM2_DOWN = 'm';

private:
  
  // If a team won three games then the team won the whole match
  const int gamesPerMatch = 3;
  int score1;
  int score2;
  int games;
  int gamesWon1;
  int gamesWon2;
  uint8_t data1[4];
  uint8_t data2[4];

  void displayScore();
  void updateScore(int& score, bool up);
  void playGoalTone();
  void playLoseTone();
  void resetGame();
  void logGameResult(const char* team);
  void gameWonTheme(bool team1Won);  
};

#endif