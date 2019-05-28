/*
  Uses a few buttons and 433 MHz transciever to communicate
  with the scoreboard. We can controll points, set player
  reset whole match and use pre-defined game settings
*/

#include <Arduino.h>
#include <EasyButton.h>
#include <VirtualWire.h> 

#define BTN_HOME_UP A2
#define BTN_HOME_DOWN A3
#define BTN_AWAY_UP A0
#define BTN_AWAY_DOWN A1
#define BTN_SWAP A4
#define BTN_RESET_ALL A5
#define COMMUNICATION_PIN 3

bool homePlayer = true;
bool awayPlayer = true;

// Instance of the button.
EasyButton btnHomeUp(BTN_HOME_UP);
EasyButton btnHomeDown(BTN_HOME_DOWN);
EasyButton btnAwayUp(BTN_AWAY_UP);  
EasyButton btnAwayDown(BTN_AWAY_DOWN);
EasyButton btnSwapScore(BTN_SWAP);
EasyButton btnReset(BTN_RESET_ALL);


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

void onSwapScorePressed() {	
  Serial.println("Swap score pressed");
  sendMessage("$");  
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
  btnSwapScore.begin();  
  btnReset.begin();  

  btnHomeUp.onPressed(onHomeUpPressed);
  btnHomeDown.onPressed(onHomeDownPressed);
  btnAwayUp.onPressed(onAwayUpPressed);
  btnAwayDown.onPressed(onAwayDownPressed);
  btnSwapScore.onPressed(onSwapScorePressed);  
  btnReset.onPressedFor(2000, onResetPressed);
  

  pinMode(13, OUTPUT);  
  Serial.println("Buttons initialized");
}

void loop() {
  btnHomeUp.read();
  btnHomeDown.read();
  btnAwayUp.read();
  btnAwayDown.read();  
  btnSwapScore.read();
  btnReset.read();  
}