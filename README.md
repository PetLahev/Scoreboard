# Scoreboard
Scoreboard created with [LED strips](https://www.amazon.com/FAVOLCANO-Waterproof-Feet%EF%BC%885M%EF%BC%89-Flexible-Lighting/dp/B012FFZP70/ref=sr_1_28_sspa?keywords=LED+Strips+red&qid=1554275786&s=gateway&sr=8-28-spons&psc=1), [Arduino Nano](https://www.amazon.com/Arduino-A000005-ARDUINO-Nano/dp/B0097AU5OU/ref=sr_1_15?keywords=Arduino+Nano&qid=1554232867&s=gateway&sr=8-15) and some manual work. Handy for volleyball, table tennis, badminton, football etc.

![Scoreboard no LED strips](https://github.com/PetLahev/Scoreboard/blob/master/images/Scoreboard_small.jpg) ![Scoreboard powered](https://github.com/PetLahev/Scoreboard/blob/master/images/Scoreboard_powered_small.jpg) ![Motherboard PCB](https://github.com/PetLahev/Scoreboard/blob/master/images/Motherboard.png) ![Scorecontroller PCB](https://github.com/PetLahev/Scoreboard/blob/master/images/Scorecontroller_board.png)

* 50 x 70 cm (19.7 x 27.55 inch) height x width
* Each segment 10 cm (3.93 inch) length so 20 cm (7.9 inch) one number! (*for points*)
* Each LED strip controlled by its own transistor
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

    b=true
    WIll enable sets (the LEDs will be powered)

    s=2
    A team/player needs to win 2 sets to win the match

    e=11
    A team/player needs to win 11 points to win a set
    (The points difference setting will be considered here)

    d=2
    A set will be considered as finished when the score between the teams/players
    1, reach the minimum points to win a set (e.g. 11)
    AND
    2, the difference is equal to 2
    examples: 11:9 or 13:11 or 12:10 or 21:19 etc.

    t=true
    Tiebreak is enabled

    q=2
    The tiebreak set is the second set to win. In other words this will be the third set
    For the above example the tiebreak settings will be considered when sets are 1:1

    f=9
    A team/player needs to win 9 points to win the tiebreak set

    w=2
    The tiebreak will be considered as finished when the score between the teams/players
    1, reach the minimum points to win the tiebreak set (e.g. 9)
    AND
    2, the difference is equal to 2
    examples: 9:7 or 10:8 or 11:9 etc.
    
    r=true
    Will enable displaying player on service (The LEDs will be powered)
    Note: There are always 4 players pre-set, not configurable as of April 2019)

### Example of game settings
#### A free match (like football)
    b=false   ' disable sets
    s=0       ' no sets per match  
    e=99      ' set maximum of points
    t=false   ' tiebreak disabled
    r=false   ' disable displaying player on service

#### A beach volleyball match
    b=true    ' enable sets
    s=2       ' a team needs to win 2 sets to win a match
    e=21      ' a team needs to win 21 points to win a set
    d=2       ' the points difference between the two teams must be 2 to win a set
    t=enabled ' tiebreak enabled
    q=2       ' the tiebreak set is the second one to win. So the sets score is 1:1
    f=15      ' a team needs to win 15 points to win the tiebreak set
    w=2       ' the points difference between the two teams must be 2 to win the tiebreak set
    r=true    ' enable displaying a player who serves

## How to use
Once your game is set and you leave the settings mode (*by sending `!` flag*) your match can start. Based on the type of your match the scoreboard will control all the aspect of the match you will just increase or decrease number of points for the **Home** or **Away** team

Send  
`h` - to give a point to **Home** team  
`a` - to give a point to **Away** team

If you make a mistake (*we all do*) you can take a point back.  
Send  
`v` - to decrease points of **Home** team  
`m` - to decrease score of **Away** team

**Please note:** Taking point back may have an affect on number of sets played, match finished, player on service etc. The code as of April 2019 cares just about simple cases and supports returning all back just for *one* point so if you made a mistake and give a point in the middle of set to a wrong team, taking the point back will work but if you made the same mistake when the team you gave won a set/match then taking the point back will NOT have any affect. It's better to start a new match by resetting the match and setting the correct score by sending few `h` or `a`.

## How to build
OK if you get here you actually may want to build your own scoreboard and I do understand that, it's much more fun!

If you just want to take the code and change it be aware that I didn't use the official Arduino IDE as I didn't find it as good as it should be. This project is made by [Visual Studio Code](https://code.visualstudio.com/) and [Platform IO](https://platformio.org/) extension both free. Once installed you should be able to build the project as it has all the settings done so you will get the right versions of used libraries and everything else. Please check [platformio.ini](/Arduino/platformio.ini) file to see if I added your Arduino board to the environment configuration. As of April 2019 I have this configuration

    [platformio]
    env_default = uno

    [env:nanoatmega328]
    platform = atmelavr
    board = nanoatmega328
    framework = arduino

    [env:uno]
    platform = atmelavr
    framework = arduino
    board = uno

The `env_default = uno` specifies for which board Platform IO builds the code, in this case is Arduino Uno. Make sure you have the right one here otherwise the code won't work.  
Let me also make you aware that I'm not C++ guy and I found it pretty hard to learn so the code is probably all messy but working.

If you also want to build the scoreboard case check the [Tinkercad page](https://www.tinkercad.com/things/gNmK0jQ22qv). I tried to make it in 1:5 scale but again it was my first experience with 3D software. The [shield](https://www.tinkercad.com/things/9Don7XhJEvx) is there only for measurement purpose. I just wanted to see to what size all the LED strips will fit and how it will look like. Based on the size I designed the [case](https://www.tinkercad.com/things/gNmK0jQ22qv).  
In terms of material use whatever will fit you. My original plan was using plastic because I didn't want to make it heavy but still not too fragile. For the first version I ended up with a 5mm wood board you can buy in hobby markets asked a joiner to cut the board into pieces and let him actually figure out how to put it all together, it cost me just ~$10 then you just need to a drill and couple screws and put it all together
