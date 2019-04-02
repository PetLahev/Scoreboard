# Scoreboard
Scoreboard created with LED strips, [Arduino Nano](https://www.amazon.com/Arduino-A000005-ARDUINO-Nano/dp/B0097AU5OU/ref=sr_1_15?keywords=Arduino+Nano&qid=1554232867&s=gateway&sr=8-15) and some manual work. Handy for volleyball, table tennis, badminton, football etc.

![Scoreboard no LED strips](https://github.com/PetLahev/Scoreboard/blob/master/images/Scoreboard_small.jpg) ![Scoreboard powered](https://github.com/PetLahev/Scoreboard/blob/master/images/Scoreboard_powered_small.jpg)


* Controlled by bluetooth module ([HM-10 Bluetooth 4.0 BLE](https://www.amazon.com/DSD-TECH-Bluetooth-iBeacon-Arduino/dp/B06WGZB2N4/ref=sr_1_1_sspa?keywords=HM-10-Bluetooth&qid=1554232302&s=gateway&sr=8-1-spons&psc=1))
    * Also possible to control via an infra or 433MHz module (*code needs to be written though*)    
* You can use pre-defined setup for a game
* You can setup your own game
* Supports tiebreaks, sets and displaying players on service
* Score can be updated by buttons (either wired or wireless) - under development
* As of April 2019 a free Androind application is used for controlling the scoreboard - [Serial Bluetooth Terminal](https://play.google.com/store/apps/details?id=de.kai_morich.serial_bluetooth_terminal&hl=en_US) v1.17
* Eagle schematic and boards included
* The scoreboard case designed on thinkercad.com
    * [The box](https://www.tinkercad.com/things/gNmK0jQ22qv)
    * [The display board](https://www.tinkercad.com/things/9Don7XhJEvx) - just for measuring purpose

## Setting the Serial Bluetooth Terminal
Go to the `Settings - Send` and set the `Newline` option to **none**. On the main menu tap on the connect symbol. You should get a text saying "Connected to unnamed". (*Make sure you bluetooth module is powered and the indication LED is blinking*)

## Settings
You can setup your own game either in code - [globals.cpp](/Arduino/Scoreboard/src/globals.cpp) - or at runtime when sending the SETTING character via the Serial Bluetooth Terminal. The SETTING character is = `!` (*exclamation mark*). This behaves as a toggle switch so when send first time `!` the scoreboard will switch to 'setting mode' and will accept certain settings, when sending second time `!` it will ends the 'setting mode' and will be ready for a game!

You can setup
* Number of sets (up to 9)
* Sets support - enabled/disabled
    * Number of points per a set (up to 99)
* Points difference to win a set
* Tiebreak support - enabled/disabled
    * Points in tiebreak
    * Points difference to win a tiebreak set
    * The tiebreak set
        * Set a number that represents the set in the match considered as tiebreak set. *For example, in tennis you would set number `7` here*
* Display player on service (*pre-set 4 players*) - enabled/disabled

### Application settings
The code now (*April 2019*) understands certain `key=value` pairs. Listed below but always check [settingController](/Arduino/Scoreboard/src/settingController.h) header file for the latest settings
* Enable displaying sets = `b`
* Sets per match = `s`
* Points per set = `e`
* Points difference to win a set = `d`
* Support tiebreak = `t`    
* Set the tiebreak set = `q`
* Points in tiebreak = `f`
* Points difference to win a tiebreak = `w`
* Enable displaying a player on service = `r`

Examples of key-value setting

    `b=true`
    WIll enable sets (the LEDs will be powered)

    `s=2`
    A team/player needs to win 2 sets to win the match

    `e=11`
    A team/player needs to win 11 points to win a set
    (The points difference setting will be considered here)

    `d=2`
    A set will be considered as finished when the score between the teams/players
    1, reach the minimum points to win a set (e.g. 11)
    AND
    2, the difference is equal to 2
    examples: 11:9 or 13:11 or 12:10 or 21:19 etc.

    `t=true`
    Tiebreak is enabled

    `q=2`
    The tiebreak set is the second set to win. In other words this will be the third set
    For the above example the tiebreak settings will be considered when sets are 1:1

    `f=9`
    A team/player needs to win 9 points to win the tiebreak set

    `w=2`
    The tiebreak will be considered as finished when the score between the teams/players
    1, reach the minimum points to win the tiebreak set (e.g. 9)
    AND
    2, the difference is equal to 2
    examples: 9:7 or 10:8 or 11:9 etc.
    
    `r=true`
    Will enable displaying player on service (The LEDs will be powered)
    Note: There are always 4 players pre-set, not configurable as of April 2019)

### Example of game settings
#### A free match (like football)
    `b=false`   ' disable sets
    `s=0`       ' no sets per match  
    `e=99`      ' set maximum of points
    `t=false`   ' tiebreak disabled
    `r=false`   ' disable displaying player on service

#### A beach volleyball match
    `b=true`    ' enable sets
    `s=2`       ' a team needs to win 2 sets to win a match
    `e=21`      ' a team needs to win 21 points to win a set
    `d=2`       ' the points difference between the two teams must be 2 to win a set
    `t=enabled` ' tiebreak enabled
    'q=2`       ' the tiebreak set is the second one to win. So the sets score is 1:1
    `f=15`      ' a team needs to win 15 points to win the tiebreak set
    `w=2`       ' the points difference between the two teams must be 2 to win the tiebreak set
    `r=true`    ' enable displaying a player who serves