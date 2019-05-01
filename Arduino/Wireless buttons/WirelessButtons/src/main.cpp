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

// Instance of the button.
EasyButton button(BTN_HOME_UP);

// Callback function to be called when the button is pressed.
void onPressed() {
	
  char *message[128];  

  digitalWrite(13, true);  
  vw_send((uint8_t *)'h', 128);  
  vw_wait_tx();  
  digitalWrite(13, false);  
  delay(100);
}

void setup() {  

  // set the type of communication
  vw_set_ptt_inverted(true);
  // the speed in bits per sec
  vw_setup(1000);  
  vw_set_tx_pin(COMMUNICATION_PIN);

  button.begin();
  button.onPressed(onPressed);
}

void loop() {
  button.read();
}