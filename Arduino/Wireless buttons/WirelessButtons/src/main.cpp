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
#define BTN_POWER_OFF 3
#define COMMUNICATION_PIN 2
#define BUZZER_PIN 13
#define POWER_LATCH_PIN 4


unsigned long lastActionMillis;
const unsigned long inactivityPeriod = 60000; //the value is a number of milliseconds here 10 minutes

bool homePlayer = true;
bool awayPlayer = true;

// Instance of the button.
EasyButton btnHomeUp(BTN_HOME_UP);
EasyButton btnHomeDown(BTN_HOME_DOWN);
EasyButton btnAwayUp(BTN_AWAY_UP);  
EasyButton btnAwayDown(BTN_AWAY_DOWN);
EasyButton btnSwapScore(BTN_SWAP);
EasyButton btnReset(BTN_RESET_ALL);
EasyButton btnPowerOff(BTN_POWER_OFF);

void sendMessage(char* message) {
  // to reset the last action counter for self shutdown
  lastActionMillis = millis();
  Serial.println("Sending message");
  digitalWrite(13, HIGH);  
  vw_send((uint8_t *)message, strlen(message));  
  vw_wait_tx();
  tone(BUZZER_PIN, 800);
  delay(1000);
  digitalWrite(13, LOW);
  noTone(BUZZER_PIN);
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
  if (millis() < 3000) {
    Serial.println("Reset was cancelled due to initialization code");
    return;
  }
  Serial.println("Reset pressed");
  sendMessage("@");
}

void onPowerPressed() {
  Serial.println("Power button pressed");
  tone(BUZZER_PIN, 1300);
  delay(400);
  noTone(BUZZER_PIN);
  delay(400);
  tone(BUZZER_PIN, 1300);
  delay(400);
  noTone(BUZZER_PIN);
  delay(400);
  tone(BUZZER_PIN, 1500);
  delay(600);
  noTone(BUZZER_PIN);
  // this will shut down the power
  digitalWrite(POWER_LATCH_PIN, LOW);
}

void onPowerOffPressed() {
  Serial.println("Power OFF button pressed");
  tone(BUZZER_PIN, 3500);
  delay(600);
  noTone(BUZZER_PIN);
}

void setup() {  
  
  pinMode(POWER_LATCH_PIN, OUTPUT);
  pinMode(BTN_POWER_OFF, INPUT);
  
  // Keeps the circuit on
  digitalWrite(POWER_LATCH_PIN, HIGH);

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
  btnPowerOff.begin();

  btnHomeUp.onPressed(onHomeUpPressed);
  btnHomeDown.onPressed(onHomeDownPressed);
  btnAwayUp.onPressed(onAwayUpPressed);
  btnAwayDown.onPressed(onAwayDownPressed);
  btnSwapScore.onPressed(onSwapScorePressed);  
  btnReset.onPressedFor(2000, onResetPressed);  
  btnPowerOff.onPressed(onPowerPressed);

  pinMode(13, OUTPUT);  
  tone(BUZZER_PIN, 1300);
  delay(600);
  noTone(BUZZER_PIN);

  Serial.println("Buttons initialized");
}

void loop() {
  btnHomeUp.read();
  btnHomeDown.read();
  btnAwayUp.read();
  btnAwayDown.read();  
  btnSwapScore.read();
  btnReset.read();  
  btnPowerOff.read();
  delay(50);

  // cut off the power if there was no activity for some time
  if ((millis() - lastActionMillis) >= inactivityPeriod) {
     onPowerPressed();
  }  

}