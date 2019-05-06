/*
  Uses a few buttons and 433 MHz transciever to communicate
  with the scoreboard. We can controll points, set player
  reset whole match and use pre-defined game settings
*/

#include <Arduino.h>
#include <EasyButton.h>
#include <VirtualWire.h> 

#define BTN_HOME_UP 2
#define BTN_HOME_DOWN 3
#define BTN_AWAY_UP 4
#define BTN_AWAY_DOWN 5
#define BTN_HOME_PLAYER 6
#define BTN_AWAY_PLAYER 7
#define BTN_RESET_ALL 8
#define BTN_GAME_1 A0
#define BTN_GAME_2 A1
#define BTN_GAME_3 A2
#define BTN_GAME_4 A3
#define COMMUNICATION_PIN 12

bool homePlayer = true;
bool awayPlayer = true;

// Instance of the button.
EasyButton btnHomeUp(BTN_HOME_UP);
EasyButton btnHomeDown(BTN_HOME_DOWN);
EasyButton btnAwayUp(BTN_AWAY_UP);  
EasyButton btnAwayDown(BTN_AWAY_DOWN);
EasyButton btnHomePlayer(BTN_HOME_PLAYER);
EasyButton btnAwayPlayer(BTN_AWAY_PLAYER);
EasyButton btnReset(BTN_RESET_ALL);
EasyButton btnGame1(BTN_GAME_1);
EasyButton btnGame2(BTN_GAME_2);
EasyButton btnGame3(BTN_GAME_3);
EasyButton btnGame4(BTN_GAME_4);

void sendMessage(char* message) {
  Serial.println("Sending message");
  digitalWrite(13, HIGH);  
  vw_send((uint8_t *)message, strlen(message));  
  vw_wait_tx();  
  delay(1000);
  digitalWrite(13, LOW);
}

// Callback functions 
void onHomeUpPressed() {	
  Serial.println("Home up pressed");
  sendMessage("h");
}

void onHomeDownPressed() {	
  Serial.println("Home down pressed");
  sendMessage("v");
}

void onAwayUpPressed() {	
  Serial.println("Away up pressed");
  sendMessage("a");
}

void onAwayDownPressed() {	
  Serial.println("Away down pressed");
  sendMessage("m");
}

void onHomePlayerPressed() {	
  Serial.println("Home player pressed");
  sendMessage("p");
  if (homePlayer) {
    sendMessage("1");
    homePlayer = false;
  }
  else {
    sendMessage("2");
    homePlayer = true;
  }
}

void onAwayPlayerPressed() {	
  Serial.println("Away player pressed");
  sendMessage("p");
  if (awayPlayer) {
    sendMessage("3");
    awayPlayer = false;
  }
  else {
    sendMessage("4");
    awayPlayer = true;
  }
}

void onGame1Pressed() {	
  Serial.println("Game 1 pressed");
  sendMessage("!");
  
  sendMessage("!");
}

void onGame2Pressed() {	
  Serial.println("Game 2 pressed");
}

void onGame3Pressed() {	
  Serial.println("Game 3 pressed");
}

void onGame4Pressed() {	
  Serial.println("Game 4 pressed");
}

void onResetPressed() {	
  Serial.println("Reset pressed");
  sendMessage("@");
}

void setup() {  

  Serial.begin(9600);
  Serial.println("Initializing");

  // set the type of communication
  vw_set_ptt_inverted(true);
  // the speed in bits per sec
  vw_setup(1000);  
  vw_set_tx_pin(COMMUNICATION_PIN);

  Serial.println("Communication set up");

  btnHomeUp.begin();
  btnHomeDown.begin();
  btnAwayUp.begin();
  btnAwayDown.begin();
  btnHomePlayer.begin();
  btnAwayPlayer.begin();
  btnReset.begin();
  btnGame1.begin();
  btnGame2.begin();
  btnGame3.begin();
  btnGame4.begin();

  btnHomeUp.onPressed(onHomeUpPressed);
  btnHomeDown.onPressed(onHomeDownPressed);
  btnAwayUp.onPressed(onAwayUpPressed);
  btnAwayDown.onPressed(onAwayDownPressed);
  btnHomePlayer.onPressed(onHomePlayerPressed);
  btnAwayPlayer.onPressed(onAwayPlayerPressed);  
  btnGame1.onPressed(onGame1Pressed);
  btnGame2.onPressed(onGame2Pressed);
  btnGame3.onPressed(onGame3Pressed);
  btnGame4.onPressed(onGame4Pressed);
  btnReset.onPressedFor(5000, onResetPressed);

  pinMode(13, OUTPUT);  
  Serial.println("Buttons initialized");
}

void loop() {
  btnHomeUp.read();
  btnHomeDown.read();
  btnAwayUp.read();
  btnAwayDown.read();
  btnHomePlayer.read();
  btnAwayPlayer.read();
  btnReset.read();
  btnGame1.read();
  btnGame2.read();
  btnGame3.read();
  btnGame4.read();
}