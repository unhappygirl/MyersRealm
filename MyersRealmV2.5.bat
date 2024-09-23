@echo off
setlocal enabledelayedexpansion
title MyersRealm - Created by CRM and Moxane_
:entergame
mode con cols=60 lines=50
color 04
cls
echo.
type doh.txt
echo.
echo.
echo                What would you like to do?
echo.
echo                       1) Login
echo                       2) New User
echo.
echo.
set /p login=
if %login% GEQ 4 goto entergame
if %login% EQU 1 goto login
if %login% EQU 2 goto createuser
:createuser
mode con cols=80 lines=50
color 0f
cls
echo.
echo Set Username.
set /p username1= 
set savefile=%username1%.save.bat
if exist savefile goto usertaken
set v1f=0
:checkforspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" EQU " " (
echo.
echo.
echo You can't use spaces in your Username.
pause>nul
goto createuser
)
if NOT "!Letter%v1f%!" EQU "" (
set /a v1f=%v1f%+1
goto checkforspaces
)
echo.
echo Set Password.
set /p password1= 
cls
set retired=0
:sscolor
cls
echo.
echo Choose a Planetary Sign that best suits you.
echo Each sign represents a unique color-scheme for your game.
echo.
echo 1) Venus
echo 2) Jupiter
echo 3) Saturn
echo 4) Neptune
echo 5) Uranus
echo 6) Mars
echo 7) Earth
echo 8) Mercury
echo.
echo 9) Continue
echo.
set /p colorcho=
if %colorcho% EQU 9 goto cnnnh
if %colorcho% EQU 1 set cpick=0b
if %colorcho% EQU 2 set cpick=05
if %colorcho% EQU 3 set cpick=04
if %colorcho% EQU 4 set cpick=07
if %colorcho% EQU 5 set cpick=06
if %colorcho% EQU 6 set cpick=0c
if %colorcho% EQU 7 set cpick=0a
if %colorcho% EQU 8 set cpick=01
color %cpick%
goto sscolor
:cnnnh
cls
echo.
echo Pick a class, %username1%. It will decide much of your adventure.
echo.
echo 1) Mage    -Magic Perk
echo 2) Warrior -Damage Perk
echo 3) Brute   -Defense Perk
echo 4) Thief   -Thieving Perk
echo 5) Undead  -Death Perk
echo 6) Hoarder -Start Item Perk
echo 7) Beggar  -Start Gold Perk
echo.
set /p login=
set class=Humble
if %login% EQU 1 set class=Mage
if %login% EQU 2 set class=Warrior
if %login% EQU 3 set class=Brute
if %login% EQU 4 set class=Thief
if %login% EQU 5 set class=Undead
if %login% EQU 6 set class=Hoarder
if %login% EQU 7 set class=Beggar
cls
echo.
echo You have chosen the class %class%.
if %class% EQU Humble echo You have no class or perks.
if %class% EQU Mage echo You now have perks in magic.
if %class% EQU Warrior echo You now have perks in all damage.
if %class% EQU Brute echo You now have perks in all defense.
if %class% EQU Thief echo You now have perks in thieving.
if %class% EQU Unded echo You now lose nothing when you die.
if %class% EQU Hoarder echo You start the game with more items.
if %class% EQU Beggar echo You start the game with more gold.
echo.
pause
cls
echo.
echo   You, %username1% the %class%, aid to the king as a measly Jester.
echo Don't worry, for the Kingdom of Varrock has adventure around every corner^^! 
echo Although your house is in the Castle, fret not of wasting away time. 
echo The King has sent you on a quest to be something more^^! 
echo Perhaps even a Kingsman, one of his closest and most prestigious of royals. 
echo You have always been a great friend to the King,
echo but he believes that YOU are the one to bring greatness to Varrock^^!
echo So, go on your way, %username1%, this is only the start.
echo Wander into the world of MyersRealm and master your skills^^! 
echo Save money to buy common and legendary items, flow-magic, boats, and more.  
echo Slink around at night if you aren't the faint of heart. 
echo Gamble, battle, level and collect your way to stardom.
echo If you're the true chosen one, beat the dungeons and THE FINAL BOSS^^!^^!^^!^^!^^!
echo.
pause
cls
echo.
echo Good luck, %username1%. You'll need it in MyersRealm.
echo.
pause
cls
echo.
echo IMPORTANT:
echo.
echo   MyersRealm is a complex text-based RPG. Your decisions WILL matter.
echo You can heal, reset fatigue and change day/night by sleeping.   
echo You can save your game from your inventory. The game has a general autosave 
echo feature during some game events to prevent breaking of crashed data.
echo Many game events interchange, appear/disappear, advance or execute
echo based on your progress and actions.
echo.
goto DATA_VALUES
:usertaken
echo.
echo Username already taken.
echo.
pause>nul
goto createuser
:login
cls
mode con cols=80 lines=50
color 0f
set /p name1=Username: 
if not exist "%name1%.save.bat" (
echo That is not a valid Username.
pause>nul
goto entergame
)
set /p pass1=Password: 
call %name1%.save.bat
if not %password1% EQU %pass1% (
echo That is not a valid Password.
pause>nul
goto entergame
)
goto MENU

:DATA_VALUES
@echo off & Setlocal
set gdoll=0
set gflowers=0
set cclothes=0
set cring=0
set foxquest=0
set greenquest=0
set dquest=0
set childhappy=0
set towerwin=1
set oale=0
set ogem=0
set oring=0
set ofood=0
set hunterarmor=0
set lbean=0
set sleepingman=0
set cpick=%cpick%
set fhappy=0
set fkindle=0
set foundi=0
set foundh=0
set chappy=25
set nrep=0
set population=15
set rep=3
set rshard=0
set debris=0
set riddlesolved=0
set cavecrystal=0
set blockplacement=2
set CN1=1
set CN2=2
set CN3=3
set shrimp=0
set trout=0
set pcrab=10
set pshrimp=10
set ptrout=10
set wlvl=0
set boat1=0
set boat5=0
set boat6=0
set SPIECE=0
set bshard=0
set gshard=0
set pitem=0
set LIT=0
set deathcount=0
set Hcharm=0
set Hupgradee=None
set CROPP=0
set CHILD=0
set childname=None
set WNAME=None
set MARRIED=0
set pethappy=0
set WIFEHAPPY=0
set petowner=0
set class=%class% 
set N1=None
set N2=
set the=
set DOW=1
set snweather=0
set sweather=Sunny
set cjob=None
set wjob=0
set fjob=0
set sjob=0
set daycount=1
set yyear=1
set sseason=1
set FATIGUE=0
set daycountsum=1
set bricks=0
set crab=0
set sjewel=0
if %class% EQU Hoarder set sjewel=1
set rupee=0
set kingfish=0
set boatlvl=0
set moa=0
set maps=0
set aloy=0
set glass=0
set acc1g=0
set acc1m=Open
set acc2g=0
set acc2m=Open
set acc3g=0
set acc3m=Open
set acc4g=0
set acc4m=Open
set acc5g=0
set acc5m=Open
set days=Day
set cost=--
set cost1=--
set gcho=--
set echo=--
set e2cho=--
set e1=--
set dmgnpc=0
set ls1=0
set killcount=0
set ls2=0
set la1=0
set la2=0
set hp=100
set orighp=100
set armtype=No
set swordtype=Your
set skind=hand
set buyword1=hi
set buyword2=hi
set curlvl=1
set aan=a
set bankgold=0
set bankgold2=0
set destination=SAVE_GAME_FILES
set destination2=SAVE_GAME_FILES
set swordchoice=hi
set swordchoice2=hi
set swordchoice3=hi
set swordexist=hi
set sprice=0
set armchoice=hi
set armchoice2=Armor
set aprice=0
set playerxp=0
set xpuntil=500
set origxp=500
set money=1000000000
if %class% EQU Beggar set money=3000
set key=0
set damage=0
set dr=0
set gmail=0
if %class% EQU Hoarder set gmail=1
set hbone=0
set dhide=0
set rtab=0
set food=0
if %class% EQU Hoarder set food=2
set rfood=0
set bait=0
if %class% EQU Hoarder set bait=5
set ea=None
set potion=0
if %class% EQU Hoarder set potion=1
set ingot=0
set seed=0
if %class% EQU Hoarder set seed=5
set bow=0
set fur=0
set gem=0
set log=0
set ore=0
set upgradee=None
set morb=0
set arm1=0
set arm2=0
set arm3=0
set arm4=0
set arm5=0
set arm6=0
set arm7=0
set arm8=0
set arm9=0
set arm10=0
set arm11=0
set arm12=0
set ma1=0
set ma2=0
set ma3=0
set ma4=0
set ma5=0
set ma6=0
set ma7=0
set ma8=0
set ma9=0
set ma10=0
set ms1=0
set ms2=0
set ms3=0
set ms4=0
set ms5=0
set ms6=0
set ms7=0
set ms8=0
set ms9=0
set ms10=0
set FFLOW=0
if %class% EQU Mage set FFLOW=1
set WFLOW=0
if %class% EQU Mage set WFLOW=1
set sword1=0
set sword2=0
set sword3=0
set sword4=0
set sword5=0
set sword6=0
set sword7=0
set sword8=0
set sword9=0
set sword10=0
set sword11=0
set sword12=0
set sword16=0
set sword17=0
set sword18=0
set sword19=0
set sword20=0
set sword21=0
set sword22=0
set sword23=0
set sword24=0
set sword25=0
set axxx=0
set daycount=1
set TUMMY=0
set kingsman=0
set jester=0
set servant=0
set knight=0
set noble=0
set thane=0
set gmaster=0
set templar=0
set regal=0
set day=Day
set fish=0
set pgmail=250
set phbone=250
set pdhide=250
set prtab=250
set ppotion=200
set pfood=50
set pingot=200
set pseed=5
set prfood=25
set pbait=10
set pfur=50
set pore=50
set plog=20
set pgem=750
set pbow=150
set pmorb=1000
set Woodcuttinglvl=1
set Woodcuttingxpremain=100
set Woodcuttingxpgain=38
set Woodcuttingcurxp=0
set Woodcuttingxpleft=100
set Cooklvl=1
set Cookxpremain=100
set Cookxpgain=41
set Cookcurxp=0
set Cookxpleft=100
set Fishinglvl=1
set Fishingxpremain=100
set Fishingxpgain=30
set Fishingcurxp=0
set Fishingxpleft=100
set Mininglvl=1
set Miningxpremain=100
set Miningxpgain=35
set Miningcurxp=0
set Miningxpleft=100
set Smithinglvl=1
set Smithingxpremain=100
set Smithingxpgain=33
set Smithingcurxp=0
set Smithingxpleft=100
set Thievinglvl=1
if %class% EQU Thief set Thievinglvl=25 
set Thievingxpremain=100
set Thievingxpgain=36
set Thievingcurxp=0
set Thievingxpleft=100
set ttllvl=1
set loan=0
goto SAVE_GAME_FILES
@echo off
cls

:menuG
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
cls
echo. 
echo You sit down with the town kids to play.
echo. 
echo The littlest girl speaks as if in charge.
echo.
echo Girl: The more you win, the larger bet you can claim.
echo The game is simple. Guess a number between 0 and 9
echo for 3 rolls. (For example: 123, 456, 789, 111)
echo A dice will be rolled. If you guess the number, you get a
echo winning based on the amount of numbers guessed correctly.
echo .
echo 1 number is 2 times profit.
echo 2 numbers is 3 times profit.
echo 3 numbers is 4 times profit.
echo No numbers means you lost.
echo.
echo Wanna play?
echo.
echo 1) Yes
echo 2) No
echo.
set /p a5= 
if %a5% EQU 1 goto g1
if %a5% EQU 2 goto menu
goto menuG
:g1
set /a FATIGUE=%FATIGUE%+1
cls
echo.
    if %money% == 0 goto Bankrupt
echo Girl: Pick your first number, sir!
    set /p g1=
    goto g2
:g2
cls
echo.
echo Girl: Now pick your second number!
    set /p g2=
    goto g3
:g3
cls
echo.
echo Girl: Pick one more number!
    set /p g3=
    goto bet
:bet
cls
echo. 
echo Gold: %money%
echo Girl: Place your bet, sir.
    set /p bet=
    if %bet% GTR %money% (
    goto inf )
    goto num1
:inf
cls
echo.
echo Girl: You do not have enough Gold, silly!
echo.
pause
    goto MENU
:num1
cls
echo.
echo Girl: Ouuuu! I'm so excited.
    set /A g11=%random% %% 10
    goto num2
:num2
cls
echo.
echo Girl: Ouuuu! I'm so excited.
    set /A g22=%random% %% 10
    goto num3
:num3
cls
echo.
echo Girl: Ouuuu! I'm so excited.
    set /A g33=%random% %% 10
    goto results
:results
    if %g1%==%g11% if %g2%==%g22% if %g3%==%g33% goto w3
    if not %g1%==%g11% if %g2%==%g22% if %g3%==%g33% goto w2
    if %g1%==%g11% if not %g2%==%g22% if %g3%==%g33% goto w2
    if %g1%==%g11% if %g2%==%g22% if not %g3%==%g33% goto w2
    if not %g1%==%g11% if not %g2%==%g22% if %g3%==%g33% goto w1
    if not %g1%==%g11% if %g2%==%g22% if not %g3%==%g33% goto w1
    if %g1%==%g11% if not %g2%==%g22% if not %g3%==%g33% goto w1
    if not %g1%==%g11% if not %g2%==%g22% if not %g3%==%g33% goto Lose
:w3
cls
echo.
    set /a win=%bet%*4
    set /a money=%money%+%win%
echo Girl: Wow, sir! You guessed all 3!
echo the numbers were: %g11%%g22%%g33%!
echo .
echo You have won "%win%"!
echo .
echo You have a total of %money%.
echo .
echo Would you like to make another bet? 
echo 1) Yes
echo 2) No
set /p ha= 
    if %ha% == 1 goto g1
    if %ha% == 2 goto MENU
:w2
cls
echo.
    set /a win=%bet%*3
    set /a money=%money%+%win%
echo Girl: Wowowow!You got 2 numbers right!
echo the numbers were: %g11% %g22% %g33%!
echo Your numbers were %g1% %g2% %g3%
echo .
echo You have won "%win%"!
echo .
echo Now you have %money% gold!.
echo .
echo Would you like to make another bet? 
echo 1) Yes
echo 2) No
set /p ha= 
    if %ha% == 1 goto g1
    if %ha% == 2 goto MENU
goto MENUG
:w1
cls
echo.
    set /a win=%bet%*2
    set /a money=%money%+%win%
echo Girl: Hey, you got 1 correct, sir!
echo the numbers were: %g11% %g22% %g33%!
echo Your numbers were %g1% %g2% %g3%
echo .
echo You have won "%win%"!
echo .
echo That leaves you with a total of %money% gold.
echo .
echo Wanna try again? 
echo 1) Yes
echo 2) No
    set /p ha= 
    if %ha% == 1 goto g1
    if %ha% == 2 goto MENU
goto menuG
:lose
cls
echo.
    set /a money=%money%-%bet%
echo Girl: I am sorry but you did not guess any of the numbers correctly...
echo .
echo The numbers were: %g11% %g22% %g33%!
echo Your numbers were %g1% %g2% %g3%
echo .
echo You have lost %bet%...
echo .
echo You've gone down to %money% gold.
echo Maybe try again for better luck? 
echo 1) Yes
echo 2) No
    set /p ha= 
    if %ha% == 1 goto g1
    if %ha% == 2 goto MENU
goto menuG
:Bankrupt
cls
echo.
Echo Girl: I understand gold is an issue here...
Echo Have a great day!
echo 1) ...
echo 2) Okay
set /p ha= 
if %ha% == 1 goto menuG
if %ha% == 2 goto MENU
goto MENU

:HELLFLY
if %bshard% EQU 0 goto MENU
cls
echo.
echo You are sucked up by the Evil weather^^!
echo It swirles and spins until you are unconscious.
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
ping 192.0.2.0 -n 1 -w 3000 > nul
goto HELL

:MENU
color %cpick%
if %potion% LEQ 0 set potion=0
set /a FATIGUE=%FATIGUE%+1
if %FATIGUE% GTR 99 GOTO DFATIGUE
if %FATIGUE% GTR 90 GOTO D2FATIGUE
set /a RandE=%random%*200/32767+1
if %RandE% GEQ 150 if %sweather% EQU Stormy goto STORMDIE
if %RandE% GEQ 170 if %sweather% EQU Evil goto HELLFLY
if %RandE% GEQ 190 if %sweather% EQU Cloudy set sweather=Rainy
if %RandE% GEQ 190 if %sweather% EQU Moonlit set sweather=Creepy
if %RandE% GEQ 150 if %sweather% EQU Creepy if %bshard% EQU 0 goto NJJ
if %RandE% GEQ 150 if %sweather% EQU Creepy set sweather=Evil
if %RandE% GEQ 190 if %sweather% EQU Dark set sweather=Windy
if %RandE% GEQ 190 if %sweather% EQU Windy set sweather=Rainy
if %RandE% GEQ 190 if %sweather% EQU Rainy set sweather=Sunny
if %RandE% GEQ 196 if %sweather% EQU Sunny set sweather=Cloudy
echo It is a %sweather% %days%.
echo You are %fatigue%%% fatigued.
echo You have %HP% health.
:NJJ
if %RandE% EQU 1 goto 1RandE
if %RandE% EQU 20 goto 2RandE
if %RandE% EQU 30 goto 3RandE
if %RandE% EQU 40 goto 4RandE
if %RandE% EQU 50 goto 5RandE
if %RandE% EQU 60 goto 6RandE
if %RandE% EQU 70 goto 7RandE
if %RandE% EQU 80 goto 8RandE
if %RandE% EQU 90 goto 9RandE
if %RandE% EQU 100 goto 10RandE
if %RandE% EQU 110 goto 11RandE
if %RandE% EQU 120 goto 12RandE
set /a ttllvl=%Woodcuttinglvl%+%Cooklvl%+%Fishinglvl%+%Thievinglvl%+%Mininglvl%+%Smithinglvl%
cls
echo.
echo It is a %sweather% %days%.
echo You are %fatigue%%% fatigued.
echo You have %HP% health.
if %rshard% EQU 1 if %fkindle% LEQ 499 (
echo Flame Monsters are running around Varrock^^!
)
echo                              ͻ
echo   Where would you like to go   
echo   in the Kingdom of Varrock?   
echo.                             ͹
echo   North:                       		
echo   1) Leave Kingdom             
echo   2) Wepp's Weapons            
echo.  3) Armor Outlet              
echo   4) Legend's Store            
echo   East:                        
echo.  5) Trader Post               
echo   6) Colt's Wares              
echo.  7) Odd Smuggler              
echo.  8) Stronghold Dungeon        
echo   South:                       
echo   9)  Work                     
echo.  10) RealmBank                
echo   11) Quest Hall               
echo.  12) Magic Converter          
echo.  West:                        
echo.  13) Varrock Docks            
echo.  14) Biv's Casino             
echo   15) Playground               
echo   16) Warrior Arena            
echo.  Central:                     
echo   17) Varrock Castle/Home      
echo   Outskirts:                   
echo   18) Relaxing Peak            
echo   19) Peach's Pets             
echo   20) Champion's Rest          
if %rshard% EQU 1 if %fkindle% LEQ 499 echo   21) Flaming Hut              
echo.                             ͹
echo   96) Teleport Map             
echo   97) Inventory                
echo   98) Settings                 
echo   99) Save                     
echo                              ͼ
set /p x1=
if %x1% EQU 1 goto WORLDMAP
if %x1% EQU 2 goto weaponstore
if %x1% EQU 3 goto Armorstore
if %x1% EQU 4 goto legendsstore
if %x1% EQU 5 goto gstore
if %x1% EQU 6 goto maxshopclosed
if %x1% EQU 7 goto smuggler
if %x1% EQU 8 goto STR_WARN
if %x1% EQU 9 goto skillplot
if %x1% EQU 10 goto BANK
if %x1% EQU 11 goto QUEST_MASTER
if %x1% EQU 12 goto BANK2
if %x1% EQU 13 goto menuF
if %x1% EQU 14 goto menuC
if %x1% EQU 15 goto menuG
if %x1% EQU 16 goto Arena
if %x1% EQU 17 goto CASTLE
if %x1% EQU 18 goto RPEAK
if %x1% EQU 19 goto ADOPT
if %x1% EQU 20 goto BEATGAME
if %rshard% EQU 1 if %fkindle% LEQ 499 if %x1% EQU 21 goto FMHUT
if %x1% EQU 96 goto map
if %x1% EQU 97 goto checkitems
if %x1% EQU 98 goto settings
if %x1% EQU 99 goto entersavegame
if %x1% EQU GOTOHELL goto HELL
if %x1% EQU GOTOISLAND goto ISLAND
if %x1% EQU GIVEMEMONEY set /a money=%money%+10000
if %x1% EQU GIVEMEFULLHP set /a hp=%orighp%
goto MENU

:entersavegame
cls
echo.
echo Pick an option.
echo.
echo 1) Save
echo 2) Log Out
echo.
echo 3) Back
echo.
set /p x1=
if %x1% EQU 1 goto SAVE_GAME_FILES
if %x1% EQU 2 goto entergame
if %x1% EQU 3 goto MENU
goto entersavegame

:kstats
cls
if %money% GEQ 1000000 set rm=10
if %money% LEQ 199999 set rm=8
if %money% LEQ 19999 set rm=6
if %money% LEQ 1999 set rm=4
if %money% LEQ 999 set rm=2
if %money% LEQ 199 set rm=0
set /a rcl=%curlvl%
if %killcount% LEQ 144 set rk=40
if %killcount% LEQ 99 set rk=30
if %killcount% LEQ 69 set rk=20
if %killcount% LEQ 29 set rk=10
if %killcount% LEQ 9 set rk=0
if %killcount% GEQ 200 set rk=50
if %loan% LEQ 199999 set rl=16
if %loan% LEQ 99999 set rl=12
if %loan% LEQ 9999 set rl=6
if %loan% LEQ 999 set rl=4
if %loan% GEQ 1000000 set rl=20
if %loan% EQU 0 set rl=0
set /a rep=%rm%+%rcl%+%rk%-%rl%+3
if %rep% GEQ 101 set rep=100
set /a population=(%rep%*5/3)+%curlvl%+(%killcount%/2)+7
set /a rep=%rep%-%nrep%
if %population% GEQ 1001 set population=1000
echo.
if %rep% GEQ 67 set kresult=amazing
if %rep% LEQ 66 set kresult=well
if %rep% LEQ 33 set kresult=poorly
echo The Kingdom of Varrock is doing %kresult%.
echo Your Reputation: %rep%%%
echo Kingdom Population: %population%
echo Castle Upgrade: %upgradee%
echo.
pause>nul
goto MENU

:HELP
cls
echo.
echo What would you like info about?
echo.
echo 1) Battling/Dying
echo 2) Items/Shops
echo 3) Home/Sleeping
echo 4) Work/Skills
echo 5) Places/Stats
echo.
echo 6) Back
echo.
echo.
set /p login=
if %login% GEQ 7 goto HELP
if %login% EQU 1 goto HBATTLE
if %login% EQU 2 goto HITEM
if %login% EQU 3 goto HHOME
if %login% EQU 4 goto HWORK
if %login% EQU 5 goto HOT
if %login% EQU 6 goto settings

:HBATTLE
cls
echo.
echo Battling can happen a few ways.
echo You can battle in the Badlands,
echo the Stronghold and the Arena.
echo A few other exceptions may occur.
echo All battles have a turn based system.
echo However, the Arena allows no items 
echo and has a strike/breathe/block system,
echo as well as only regards your armor.
echo Whereas other battles use an 
echo item/attack/flee system regarding 
echo weapons and armor.
echo. 
echo Buying and equipping armor and weapons will
echo help in battle. If you have adopted a pet
echo they will help you in the Badlands^^!
echo Pets sometimes find items when they are in battle.
echo You can flee a battle anytime if you meet
echo your match. This will not negate you in any
echo way, however you will gain no rewards.
echo.
echo Dying from reaching 0 health will result in receiving
echo no battle rewards. You can also die from reaching
echo 100%% fatigue. Dying will cost you half your gold.
echo.
echo Picking a Mage, Brute or Warrior class will
echo help you in battles, changing your damage or 
echo defense stats with boosted perks.
echo Picking the Undead class will negate the effects
echo of losing half of your gold upon death.
echo.
pause
goto HELP

:HITEM
cls
echo.
echo Items can be kept track of from your inventory.
echo Some dungeon and quest items don't appear this way.
echo Items can be used in many events to create game changes
echo The possession of some items will trigger events to occur.
echo Many items can be consumed or turned into other items^^!
echo Items can include anything from armors, weapons, potions, keys
echo and much more. If you can't seem to progress through a game path you
echo want, or an event/quest seems unfulfilling, you probably don't have one or
echo more of the hidden/required items to do more with the event or game path.
echo Situations like these require common sense to solve.
echo.
echo Shops will sell you items, some will  buy, and some do both^^!
echo Many shops are open at specific times of the day,
echo and some shops are only available through choice events.
echo Check out every shop to see what you can get your hands on
echo for a price. A few items can ONLY be obtained from events or
echo trades. Every class has a chance to recieve every item. How they
echo are used or acquired may be different, however.
echo.
echo Money will be your most used and acquired item.
echo Money can be aqcuired many ways including battles, gambling and quests.
echo Use your money to buy many of the items in shops.
echo.
echo Picking a Hoarder or Beggar class will start your game
echo with either more money or more items.
echo.
pause
goto HELP

:HHOME
cls
echo.
echo Your home is one of the main hubs you will be using.
echo In your home, you will be able to see many details
echo about the time of year, weather, days played and
echo and your pet if you have adopted one.
echo.
echo Your home is accessed through your inventory
echo or by entering from the castle. You will at many points
echo be taken to your home depending on an event.
echo Sleeping at home changes the time by a half-day.
echo Sleeping is the only way to move time forward
echo other than serving time in jail.
echo Sleeping also changes the weather. Explore in all
echo weather types to find special events and locations^^!
echo.
echo You can interact with your adopted pet and your spouse in your home.
echo Keeping your pet and spouse happy is essential to their usefulness.
echo Always remember to give food to your pet and spouse.
echo They can't die but they will surely become resentful^^!
echo Your pet will battle with you in the Badlands
echo and often take items home from its journeys with you.
echo Your spouse will bare children with you if they are happy.
echo Keeping your home warm is essential to family happiness.
echo.
echo Use your home often to keep your game progressing.
echo You will be forced to sleep if over-fatuiged.
echo.
pause
goto HELP 

:HWORK
cls
echo.
echo Work is an essential set of tasks^^! Your work and your 
echo skills go hand-in-hand. Applying to a workforce will
echo give you perks in certain skills. These skills can be
echo advanced whether you are employed or not, but being
echo employed will give you bonuses all-around.
echo.
echo Working on a skill enough will not only grant you the
echo rewards of that skill, but also different supplies
echo upon each level and at max-level.
echo Work each skill up to level 100 to recieve the full
echo benefits of each skill.
echo.
echo Forgetting to move forward in a skill will stunt your
echo gameplay, and eventually cause you negative effects.  
echo.
echo The farm is part of the workforce and can help in many ways.
echo The farm can be used to grow food or kill animals for it,
echo and much more for boosting your character's happiness.
echo.
echo Picking the Thief class will give you many bonus perks
echo in the thieving skill.
echo.
pause
goto HELP

:HOT
cls
echo.
echo Dungeons are an important way to move forward in the game.
echo Meeting the evel requirement is mandatory to start a dungeon.
echo Shards are hiddin within these, protected by many troubling
echo puzzles and events, as well as a dungeon boss. 
echo.
echo Beating the dungeon will seal it, grant you a shard, and unlock the next one. 
echo Once all the shards are found, the last step is up to you to find out^^!
echo.
echo Many other secret locations exist in MyersRealm. Specific requirements
echo must be met to uncover these places. Once you have reached them,
echo they will be available to return to through Melmus in the Castle
echo or by triggering the requirement-met event again.
echo.
echo Finding these secret locations is integral to completing the
echo game and entering Champion's Rest. So be on the lookout for new places
echo to explore, and revisit old ones to see what changes as you progress.
echo.
echo Special Stats are important to keep track of during your journey.
echo Population and reputation can be found in the Kingdom Stats section
echo within the Kingdom of Varrock. These monitor your kingdom's success,
echo the kingdom's population and your personal reputation.
echo Raising these is crucial as the King believes you are Varrock's
echo closest hope to thriving. Negative things like deaths and arrests
echo stop affecting your reputation at the end of every season.
echo Positive attributes like money, monsters killed, current level
echo and helping people, will raise your reputation.
echo.
echo Your happiness, your spouse's happiness, and your pet's happiness
echo can all be viewed within your home. These stats help you understand
echo who you need to focus on in your home. Happiness can be changed many
echo ways, like feeding, or giving attention. Your happiness changes
echo in many more ways than the other's. You will have to experience all of
echo Varrock to see how you can make your character as happy as possible.
echo.
pause
goto HELP


:ADOPT
cls
if %armtype% GTR Explorer goto NEEDARM
if %armtype% LSS Explorer goto NEEDARM
if %petowner% EQU 1 goto HAVEPET
echo.
echo Peach: Welcome to the Pet Center^^!
echo Having a pet is a big responsibility^!
echo You can have a go at the Pet Randomizer.
echo There is an extra fee the first time you buy a pet.
echo So, that'll be 5000 gold.
echo.
echo 1) Pet Randomizer
echo 2) Back             
echo.
set /p x1=
if %x1% EQU 1 (
if %money% LEQ 4999 goto NOPETMON
)
if %x1% EQU 1 goto PETRAND
if %x1% EQU 1 set /a money=%money%-5000 
if %x1% EQU 2 goto MENU

:NOPETMON
cls
echo.
echo Peach: You don't have enough money. Next time^^!
echo.
pause>nul
goto MENU

:HAVEPET
cls
echo.
echo Hello, pet  owner!
echo My services will only be 3000 gold^^!
echo Would you like a new pet?
echo.
echo 1) Yes
echo 2) No
echo.
set /p x1=
if %x1% EQU 1 (
if %money% LEQ 2999 goto NOPETMON
)
if %x1% EQU 1 goto PETRAND
if %x1% EQU 1 set /a money=%money%-3000 
if %x1% EQU 2 goto MENU

:PETRAND
cls
echo.
echo Peach: Okay^^! Let's get you a random pet.
echo All of the pets are in need of a home.
echo.
pause
cls
set N1=%RandN3%
set N2=%RandN2%
set the=the
set /a RandN3=%random%*30/32767+1
if %RandN3% EQU 1 set N1=Lemons
if %RandN3% EQU 2 set N1=Koodle
if %RandN3% EQU 3 set N1=FrumpFrump
if %RandN3% EQU 4 set N1=Biglunch
if %RandN3% EQU 5 set N1=Coych
if %RandN3% EQU 6 set N1=Luna
if %RandN3% EQU 7 set N1=Popop
if %RandN3% EQU 8 set N1=Krikket
if %RandN3% EQU 9 set N1=Seafish
if %RandN3% EQU 10 set N1=Ugh
if %RandN3% EQU 11 set N1=Nerp
if %RandN3% EQU 12 set N1=Keplin
if %RandN3% EQU 13 set N1=Wazzup
if %RandN3% EQU 14 set N1=Cootie
if %RandN3% EQU 15 set N1=Lil
if %RandN3% EQU 16 set N1=Fork
if %RandN3% EQU 17 set N1=Osmosis
if %RandN3% EQU 18 set N1=Kingly
if %RandN3% EQU 19 set N1=Jibb
if %RandN3% EQU 20 set N1=Ugly
if %RandN3% EQU 21 set N1=Calvin
if %RandN3% EQU 22 set N1=Nappa
if %RandN3% EQU 23 set N1=Smallmouth
if %RandN3% EQU 24 set N1=Dangler
if %RandN3% EQU 25 set N1=Pepe
if %RandN3% EQU 26 set N1=Paul
if %RandN3% EQU 27 set N1=Ently
if %RandN3% EQU 28 set N1=Dublin
if %RandN3% EQU 29 set N1=Longneck
if %RandN3% EQU 30 set N1=PACCA

set /a RandN2=%random%*30/32767+1
if %RandN2% EQU 1 set N2=Horse
if %RandN2% EQU 2 set N2=Fish
if %RandN2% EQU 3 set N2=Imp
if %RandN2% EQU 4 set N2=Lizard
if %RandN2% EQU 5 set N2=Kitten
if %RandN2% EQU 6 set N2=Puppy
if %RandN2% EQU 7 set N2=Monkey
if %RandN2% EQU 8 set N2=Gnome
if %RandN2% EQU 9 set N2=Dwarf
if %RandN2% EQU 10 set N2=Bird
if %RandN2% EQU 11 set N2=Turtle
if %RandN2% EQU 12 set N2=Frog
if %RandN2% EQU 13 set N2=Harpy
if %RandN2% EQU 14 set N2=Sasquach
if %RandN2% EQU 15 set N2=Bear
if %RandN2% EQU 16 set N2=Pig
if %RandN2% EQU 17 set N2=Hound
if %RandN2% EQU 18 set N2=Snake
if %RandN2% EQU 19 set N2=Goat
if %RandN2% EQU 20 set N2=Cow
if %RandN2% EQU 21 set N2=Hamster
if %RandN2% EQU 22 set N2=Llama
if %RandN2% EQU 23 set N2=Kangaroo
if %RandN2% EQU 24 set N2=Lemming
if %RandN2% EQU 25 set N2=Lynx
if %RandN2% EQU 26 set N2=Wardog
if %RandN2% EQU 27 set N2=Scorpion
if %RandN2% EQU 28 set N2=Skunk
if %RandN2% EQU 29 set N2=Squid
if %RandN2% EQU 30 set N2=Possum
cls
echo.
echo Peach: Wow, it's the perfect one for you^^!
echo It's %N1% %the% %N2%^^!
echo I can tell it likes you. It will live in your home.
echo.
set petowner=1
pause
goto MENU 

:PetOptions
cls
echo.
if %petowner% EQU 0 goto GGETPET
echo What would you like to do with
echo %N1% %the% %N2%?
echo.
if %pethappy% GEQ 101 set pethappy=100
if %pethappy% LEQ 0 set pethappy=0
echo %N1%'s Happiness: %pethappy%
echo.
echo 1) Pet %N1%
echo 2) Feed %N1%
echo 3) Check %N1%'s Items
echo.
echo 4) Back            
echo.
set /p x1=
if %x1% EQU 1 goto PPETPET
if %x1% EQU 2 goto FFEEDPET
if %x1% EQU 3 goto PETITEM
if %x1% EQU 4 goto HOME
goto HOME

:PETITEM
if %pitem% EQU 0 goto NOPITEM
set /a RandN3=%random%*5/32767+1
set pitem=0
if %RandN3% EQU 1 set pitem2=potion
if %RandN3% EQU 1 set /a potion=%potion%+1
if %RandN3% EQU 2 set pitem2=food
if %RandN3% EQU 2 set /a food=%food%+1
if %RandN3% EQU 3 set pitem2=key
if %RandN3% EQU 3 set /a key=%key%+1
if %RandN3% EQU 4 set pitem2=rupee
if %RandN3% EQU 4 set /a rupee=%rupee%+1
if %RandN3% EQU 5 goto NOPITEM
set pitem=0
cls
echo.
echo %N1% has a %pitem2%^^!
echo You take it from %N1%.
echo.
pause
goto PetOptions

:NOPITEM
cls
echo.
echo %N1% hasn't found anything.
echo.
pause
goto PetOptions

:WifeOptions
cls
if %CHILD% EQU 1 goto POPOP1
if %MARRIED% EQU 0 goto GGETWIFE
:POPOP1
echo.
echo What would you like to do with your family?
echo.
if %MARRIED% GEQ 1 echo %WNAME%'s Happiness: %WIFEHAPPY%
if %CHILD% GEQ 1 echo %childname%'s Happiness: %childhappy%
set ttlgifts=0
set /a ttlgifts=%gdoll%+%gflowers%+%cring%+%cclothes%+%oring%+%oale%+%ogem%+%ofood%
echo Gifts: %ttlgifts%
if %WIFEHAPPY% GEQ 101 set WIFEHAPPY=100
if %WIFEHAPPY% LEQ 0 set WIFEHAPPY=0
if %childhappy% GEQ 101 set childhappy=100
if %childhappy% LEQ 0 set childhappy=0
echo.
if %MARRIED% GEQ 1 echo 1) Give %WNAME% a Gift
if %CHILD% GEQ 1 echo 2) Give %childname% a Gift
if %CHILD% GEQ 1 echo 3) Play with %childname%
echo.
echo 4) Back            
echo.
set /p x1=
if %MARRIED% GEQ 1 if %x1% EQU 1 goto WIFEGIFT
if %CHILD% GEQ 1 if %x1% EQU 3 goto PPETCHILD
if %CHILD% GEQ 1 if %x1% EQU 2 goto CHILDGIFT
if %x1% EQU 4 goto COMMONROOM
goto COMMONROOM


:PPETCHILD
cls
echo.
set /a RandN3=%random%*5/32767+1
set pitem=0
if %RandN3% EQU 1 set game=hide and seek
if %RandN3% EQU 2 set game=peekaboo
if %RandN3% EQU 3 set game=tag
if %RandN3% EQU 4 set game=tic tac toe
if %RandN3% EQU 5 set game=catch
echo You play %game% with %childname%.
echo They like it very much.
echo.
set /a childhappy=%childhappy%+1
set /a chappy=%chappy%+1
set /a FATIGUE=%FATIGUE%+1
pause
goto WifeOptions


:CHILDGIFT
cls
echo.
if %gdoll% GEQ 1 (
echo You give %childname% a horse doll.
set /a childhappy=%childhappy%+20
echo They love it^^!
set /a gdoll=%gdoll%-1
echo.
pause
goto wifeoptions
)
if %gflowers% GEQ 1 (
echo You give %childname% flowers.
set /a childhappy=%childhappy%+25
echo They love it^^!
set /a gflowers=%gflowers%-1
echo.
pause
goto wifeoptions
)
if %cclothes% GEQ 1 (
echo You give %childname% some fancy clothes.
set /a childhappy=%childhappy%+30
echo They love it^^!
set /a cclothes=%cclothes%-1
echo.
pause
goto wifeoptions
)
if %cring% GEQ 1 (
echo You give %childname% a ring.
set /a childhappy=%childhappy%+50
echo They love it^^!
set /a cring=%cring%-1
echo.
pause
goto wifeoptions
)
if %oale% GEQ 1 (
echo You give %childname% an Osmarian Diamond.
set /a childhappy=%childhappy%+50
echo They love it^^!
set /a oale=%oale%-1
echo.
pause
goto wifeoptions
)
if %ogem% GEQ 1 (
echo You give %childname% an Osmarian Gem.
set /a childhappy=%childhappy%+100
echo They love it^^!
set /a ogem=%ogem%-1
echo.
pause
goto wifeoptions
)
if %oring% GEQ 1 (
echo You give %childname% an Osmarian Ring.
set /a childhappy=%childhappy%+100
echo They love it^^!
set /a oring=%oring%-1
echo.
pause
goto wifeoptions
)
if %ofood% GEQ 1 (
echo You give %childname% an Osmarian Stone.
set /a childhappy=%childhappy%+75
echo They love it^^!
set /a ofood=%ofood%-1
echo.
pause
goto wifeoptions
)
if %lbean% GEQ 1 (
echo You give %childname% a Looma Bean.
set /a childhappy=%childhappy%+100
echo They love it^^!
set /a ofood=%ofood%-1
echo.
pause
goto wifeoptions
)
echo You don't have any gifts to give %childname%.
echo Find gifts on your journeys outside of Varrock.
echo.
pause
goto wifeoptions

:WIFEGIFT
cls
echo.
if %gdoll% GEQ 1 (
echo You give %WNAME% a horse doll.
set /a WIFEHAPPY=%WIFEHAPPY%+20
echo They love it^^!
set /a gdoll=%gdoll%-1
echo.
pause
goto wifeoptions
)
if %gflowers% GEQ 1 (
echo You give %WNAME% flowers.
set /a WIFEHAPPY=%WIFEHAPPY%+25
echo They love it^^!
set /a gflowers=%gflowers%-1
echo.
pause
goto wifeoptions
)
if %cclothes% GEQ 1 (
echo You give %WNAME% some fancy clothes.
set /a WIFEHAPPY=%WIFEHAPPY%+30
echo They love it^^!
set /a cclothes=%cclothes%-1
echo.
pause
goto wifeoptions
)
if %cring% GEQ 1 (
echo You give %WNAME% a ring.
set /a WIFEHAPPY=%WIFEHAPPY%+50
echo They love it^^!
set /a cring=%cring%-1
echo.
pause
goto wifeoptions
)

if %oale% GEQ 1 (
echo You give %WNAME% an Osmarian Diamond.
set /a WIFEHAPPY=%WIFEHAPPY%+50
echo She loves it^^!
set /a oale=%oale%-1
echo.
pause
goto wifeoptions
)
if %ogem% GEQ 1 (
echo You give %WNAME% an Osmarian Gem.
set /a WIFEHAPPY=%WIFEHAPPY%+100
echo They love it^^!
set /a ogem=%ogem%-1
echo.
pause
goto wifeoptions
)
if %oring% GEQ 1 (
echo You give %WNAME% an Osmarian Ring.
set /a WIFEHAPPY=%WIFEHAPPY%+100
echo They love it^^!
set /a oring=%oring%-1
echo.
pause
goto wifeoptions
)
if %ofood% GEQ 1 (
echo You give %WNAME% an Osmarian Stone.
set /a WIFEHAPPY=%WIFEHAPPY%+75
echo They love it^^!
set /a ofood=%ofood%-1
echo.
pause
goto wifeoptions
)
if %lbean% GEQ 1 (
echo You give %WNAME% a Looma Bean.
set /a WIFEHAPPY=%WIFEHAPPY%+100
echo They love it^^!
set /a ofood=%ofood%-1
echo.
pause
goto wifeoptions
)
echo You don't have any gifts to give %WNAME%.
echo Find gifts on your journeys outside of Varrock.
echo.
pause
goto wifeoptions


:GGETPET
cls
echo.
echo You need to adopt a pet first^^!
echo.
pause
goto COMMONROOM

:GGETWIFE
cls
echo.
echo You need to find a spouse first^^!
echo.
pause
goto COMMONROOM

:GETSSS
cls
echo.
echo You need to find a spouse first^^!
echo.
pause
goto BEDROOM

:PPETPET
cls
echo.
echo You pet %N1% %the% %N2%.
echo They like it very much.
echo.
set /a pethappy=%pethappy%+1
set /a chappy=%chappy%+1
pause
goto PetOptions

:PPETWIFE
if %MARRIED% LEQ 0 goto GETSSS
cls
if %CHILD% GEQ 1 goto PPETWIFE2
echo.
set /a chappy=%chappy%+1
echo You copulate with %WNAME%.
@set DelayInSeconds=4
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You both liked it very much.
echo.
pause
if %WIFEHAPPY% GEQ 50 goto XCHILD
set /a WIFEHAPPY=%WIFEHAPPY%+1
goto BEDROOM

:PPETWIFE2
cls
set /a chappy=%chappy%+1
echo.
echo You copulate with %WNAME%.
@set DelayInSeconds=4
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You both liked it very much.
echo.
set /a WIFEHAPPY=%WIFEHAPPY%+1
set /a FATIGUE=%FATIGUE%+1
pause
goto BEDROOM

:XCHILD
cls
echo.
echo %WNAME% and you bore a child^^! So beautiful^^!
echo %WNAME% decides to name it %username1% Jr.
echo What a wonderful event...
echo.
pause
set childname=%username1% Jr.
set CHILD=1
cls
goto BEDROOM

:FFEEDPET
cls
if %food% EQU 0 goto NOPFOOD
set /a food=%food%-1
echo.
echo You feed %N1% %the% %N2%.
echo They eat all their food.
echo.
set /a pethappy=%pethappy%+2
pause
goto PetOptions

:FFEEDWIFE
cls
if %MARRIED% GEQ 1 goto dofeedd
if %CHILD% GEQ 1 goto dofeedd
echo.
echo You need a spouse or child first.
echo.
goto KITCHEN
:dofeedd
if %food% EQU 0 goto NOPFOOD2
set /a food=%food%-1
echo.
if %MARRIED% EQU 0 if %CHILD% EQU 1 echo You made food for %childname%.
if %MARRIED% EQU 0 if %CHILD% EQU 1 set /a childhappy=%childhappy+2
if %MARRIED% EQU 1 if %CHILD% EQU 0 echo You made food for %Wname%.
if %MARRIED% EQU 1 if %CHILD% EQU 0 set /a WIFEHAPPY=%WIFEHAPPY%+2
if %MARRIED% EQU 1 if %CHILD% EQU 1 echo You made food for %WNAME% and %childname%.
if %MARRIED% EQU 1 if %CHILD% EQU 1 set /a childhappy=%childhappy+2
if %MARRIED% EQU 1 if %CHILD% EQU 1 set /a WIFEHAPPY=%WIFEHAPPY%+2
echo They enjoy the food you made.
echo.
pause
goto KITCHEN

:NOPFOOD
cls
echo.
echo You don't have any food.
echo.
pause
goto PetOptions

:NOPFOOD2
cls
echo.
echo You don't have any food.
echo.
pause
goto KITCHEN

:BEATGAME
if %armtype% GTR Explorer goto NEEDARM
if %armtype% LSS Explorer goto NEEDARM
if %Hcharm% LEQ 0 goto NOBEAT
if %curlvl% LEQ 36 goto NOBEAT
if %money% LEQ 4999999 goto NOBEAT
if %boatlvl% LEQ 4 goto NOBEAT
if %moa% EQU 0 goto NOBEAT
if %woodcuttinglvl% LEQ 99 goto NOBEAT
if %cooklvl% LEQ 99 goto NOBEAT
if %fishinglvl% LEQ 99 goto NOBEAT
if %mininglvl% LEQ 99 goto NOBEAT
if %smithinglvl% LEQ 99 goto NOBEAT
if %thievinglvl% LEQ 99 goto NOBEAT
if %yyear% LEQ 4 goto NOBEAT
if %kingsman% EQU 0 goto NOBEAT
cls
echo.
echo You meet all the requirements to finish
echo the game^^! Are you sure you'd like to
echo go to win screen? Doing so will retire
echo this game save and set this savefile
echo back to day 1.
echo.
echo   1) I'd like to play longer
echo   2) Win Screen              
echo.
set /p x1=
if %x1% EQU 1 goto menu
if %x1% EQU 2 goto winscreen

:NOBEAT
cls
echo.
echo To enter and beat the game, you need:
set /a totalmax=%cooklvl%+%fishinglvl%+%mininglvl%+%smithinglvl%+%thievinglvl%+%woodcuttinglvl%
echo.
echo -to be level 37:  %curlvl%
echo -to have 5000000 gold:  %money%
echo -to have a boat level of 5: %boatlvl%
echo -to have the Medal of Achievement: %moa%
echo -to have max level in all skills: %totalmax%/600
echo -to be a kingsman: %kingsman%
echo -to have played 5 in-game years: %yyear%
echo -to have obtained the Hell Charm: %Hcharm%
echo.
pause
goto MENU

:winscreen
cls
echo You, %username1% have beaten MyersRealm^^!
echo Congratulations^^! Your gamesave will now
echo be reset as a fresh game with the same
echo name. You can restart your adventure or 
echo manually delete the file called %username1%.save.bat.
echo.
pause
cls
echo Credits:
echo.
echo Development: CRM
echo              Moxane_
echo              M0RK
echo              Scooby
echo.
echo Base Coding: CRM
echo              Moxane_
echo.
echo Bug Fixes:   CRM
echo              Moxane_
echo.
echo Events:      CRM
echo              M0RK 
echo.
echo Testers:     Bra.d.
echo              kelly97
echo              M0RK
echo              scullyo
echo.
echo Scripts:     CRM
echo              M0RK
echo              scullyo
echo.
echo Addons:      Moxane_
echo.
echo Balanced
echo Items:       CRM
echo              Moxane_
echo.
echo.
echo Original
echo Concept:     Brian
echo.    
echo ASCII
echo Source:      ascii.co.uk
echo              asciiart.eu
echo.
pause
set retired=1
goto sscolor

:MAP
if %maps% EQU 0 goto NOMAP
cls
echo.
echo Teleport to a special location you've found?
echo.
if %foundi% LEQ 0 if %foundh% LEQ 0 echo No special locations found yet.
if %foundi% LEQ 0 if %foundh% LEQ 0 echo.
if %foundi% EQU 1 echo 1) Teleport to Sailing Island
if %foundh% EQU 1 echo 2) Teleport to Kingdom of Hell
echo.
echo 3) Back
set /p Choice6=
if %Choice6%==3 goto MENU
if %foundi% EQU 1 if %Choice6%==1 (
cls
echo.
echo You use the map as a Teleport Map.
set /a maps=%maps%-1
echo.
pause
goto ISLAND
)
if %foundh% EQU 1 if %Choice6%==2 (
cls
echo.
echo You use the map as a Teleport Map.
set /a maps=%maps%-1
echo.
pause
goto HELL
)
goto MAP

:NOMAP
cls
echo.
echo You need a map first to use it as a Teleport Map.
echo.
pause
goto MENU

:STORMDIE
cls
echo.
echo The STORMY weather sucks you up^^!
echo.
pause
goto DIE

:1RandE
cls
if %curlvl% LEQ 1 goto MENU
echo.
echo A guard approaches you.
echo.
echo Guard: I've had a bad day, and you'll pay for it^^!
ping 192.0.2.0 -n 1 -w 3000 > nul
if %money% GEQ 200 goto GGMONEY
set /a RandN3=%random%*2/32767+1
if RandN3 EQU 1 goto GGMONEY
echo Off to the jail with you^^!
set /a chappy=%chappy%-1
pause
goto jail

:GGMONEY
echo I'll be taking 100 gold from you^^!
echo.
set /a chappy=%chappy%-1
set /a money=%money%-100
pause
goto MENU


:2RandE
cls
echo.
echo A mugger approaches you.
echo.
echo Mugger: Gimme your gold, punk^^!
set /a money=%money%*2/3
set /a chappy=%chappy%-1
echo.
echo The mugger took gold from you!
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto menu

:3RandE
cls
echo.
echo A strange woman approaches you.
echo.
echo Strange Woman: You^^! I need your help quick^^!
echo Take this jewe^^l! I must go!
echo.
echo The strange woman ran off^^!
set /a sjewel=%sjewel%+1
set /a chappy=%chappy%+1
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto menu

:4RandE
cls
echo.
echo Oh no^^! You suddenly feel sick^^!
set /a chappy=%chappy%-5
echo Better head to bed.
set /a fatigue=%fatigue%+75
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto home

:5RandE
cls
echo.
echo The village is being attacked^^!
echo You rush  to help.
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto picknpc

:6RandE
cls
echo.
echo A mage approaches you.
echo.
echo Mage: I've had a bad day, you look like you have too^^!
echo Let me give you some potions.
set /a chappy=%chappy%+1
set /a potion=%potion%+3
echo.
echo The mage wanders away.
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto menu

:7RandE
cls
echo.
echo The King approaches you.
echo.
echo King: Hurry inside, %username1%, STORMY weather is coming^^!
set sweather=Stormy
echo.
set /a chappy=%chappy%-1
ping 192.0.2.0 -n 1 -w 3000 > nul
echo The King runs with you back to the castle.
echo.
pause
goto CASTLE

:8RandE
cls
echo.
echo A sad child approaches you.
echo.
set /a chappy=%chappy%-5
echo Sad Child: Oh, how I hate Terrible weather...
echo Nothing is worse than this...
set sweather=Terrible
echo.
echo The sad child walks away.
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto menu

:9RandE
cls
echo.
echo A small man approaches you.
echo.
echo Small Man: You^^! You look like you can weild this sword better than I^^!
echo Please take it. I come across them often.
set /a chappy=%chappy%+1
set /a sword2=%sword2%+1
echo.
echo The small man walks away.
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto menu

:10RandE
cls
echo.
set /a chappy=%chappy%+5
echo You've come across some gold on the ground^^!
set /a money=%money%+150
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
pause
goto MENU

:11RandE
cls
echo.
if %MARRIED% EQU 1 goto MENU
echo Bella: Oh, sir, I have watched you from afar!
echo Would you take me as your wife?
echo I desire it so.
pause>nul
echo.
echo 1) That would be lovely, Bella.
echo 2) Let me think about that...
echo.
set /p p1=
if %p1% EQU 1 goto YES_B
if %p1% EQU 2 goto NO_B
if %p1% GEQ 3 goto NO_B
goto 11RandE

:12RandE
cls
if %MARRIED% EQU
 1 goto MENU
echo Barret: Hello %username1%, you have struck my attention^^!
echo Would you take me as your husband?
echo I desire it so.
pause>nul
echo.
echo 1) That would be lovely, Barret.
echo 2) Let me think about that...
echo.
set /p p1=
if %p1% EQU 1 goto YES_AB
if %p1% EQU 2 goto NO_AB
if %p1% GEQ 3 goto NO_AB
goto 12RandE

:YES_B
cls
echo.
echo Bella: Oh wow^^! That makes me happy^^!
echo I will be at your home^^!
echo.
set MARRIED=1
set WNAME=Bella
set /a chappy=%chappy%+5
pause
goto MENU

:NO_B
cls
echo.
echo Bella: I see...
echo.
pause
goto MENU

:YES_AB
cls
echo.
echo Barret: Oh wow^^! That makes me happy^^!
echo I will be at your home^^!
echo.
set MARRIED=1
set WNAME=Barret
set /a chappy=%chappy%+5
pause
goto MENU

:NO_AB
cls
echo.
echo Barret: I see...
echo.
pause
goto MENU

:Jail
set /a jdow=%dow%
set /a jsseason=%sseason%
set /a jyyear=%yyear%
set jcount=0
echo.
echo Guard: You are to spend a year in jail for your crime,
echo You will be fed, and given a bed to rest.
echo.
pause
goto jcell

:LEAVEJ
cls
echo.
echo Guard: You have served your year.
set jcount=0
echo.
pause
goto MENU

:jcell
cls
if %yyear% GTR %jyyear% (
if %sseason% EQU %jsseason% if %dow% EQU %jdow% goto LEAVEJ
)
cls
set /a nrep=%nrep%+1
set /a FATIGUE=%FATIGUE%=0
cls
echo.
echo.
echo Days in Jail: %jcount%
echo                              ͻ
echo   What would you like to do    
echo   in jail?                     
echo.                             ͹
echo   1) Escape                    		
echo   2) Eat                       
echo.  3) Sleep                     
echo.  4) Bribe                     
echo.  5) Serve Time                
echo.                             ͹

echo.
set /p p1=
if %p1% EQU 1 goto ESCAPEJ1
if %p1% EQU 2 goto EATJ
if %p1% EQU 3 goto SLEEPJ
if %p1% EQU 4 goto BRIBEJ
if %p1% EQU 5 goto SERVEJ
goto jcell


:BRIBEJ
cls
if %rupee% EQU 0 goto jcell
echo.
echo Guard: I'll let you go, but it's costing you that rupee.
echo.
set /a rupee=%rupee%-1
pause
goto MENU

:EATJ
cls
echo.
echo You eat some jail food. Yuck.
ping localhost -n 2 >nul
set /a chappy=%chappy%+1
set /a hpheal=%random%*500/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
goto jcell

:SLEEPJ
cls
if %CROPP% GEQ 1 set /a CROPP=%CROPP%+1
echo.
set days=Day
set /a daycount=%daycount%+1
set /a jcount=%jcount%+1
set /a dow=%dow%+1
set /a weather=%random%*3/32767+1
set /a chappy=%chappy%-5
if %DOW% EQU 16 set /a sseason=%sseason%+1
if %DOW% GEQ 15 set nrep=0
if %sseason% EQU 5 set /a yyear=%yyear%+1
if %sseason% EQU 4 set /a snweather=%random%*3/32767+1
if %weather% EQU 1 set sweather=Sunny
if %weather% EQU 2 set sweather=Cloudy
if %weather% EQU 3 set sweather=Windy
if %snweather% EQU 1 set sweather=Snowy
if %snweather% EQU 2 set sweather=Windy
if %snweather% EQU 3 set sweather=Cloudy
echo.
set LIT=0
echo You lay in your cot and close your eyes
set /a dow=%dow%+1
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
ping 192.0.2.0 -n 1 -w 3000 > nul
echo You dream of nothing.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
@echo You had a horrible sleep.
if %DOW% EQU 16 set /a DOW=1
if %sseason% EQU 5 set /a sseason=1
echo Day: %DOW%   Season: %sseason%   Year: %yyear%
echo.
pause
goto jcell

:SERVEJ
cls
echo.
echo You spend your dreary year staring out the barred window.
echo.
@set DelayInSeconds=15
@rem Use ping to wait
:SSJJ
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
@echo Such a long wait...
echo.
pause
set /a yyear=%yyear%+1
set /a daycount=%daycount%+60
goto LEAVEJ

:ESCAPEJ1
cls
echo.
echo Looking forward, there are two doors.
echo You can go in the left or the right door.
echo.
echo 1) Left
echo 2) Right
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto ESCAPEJ2
if %s1% EQU 2 goto ESCAPEJ3
if %s1% EQU 3 goto jcell

:ESCAPEJ2
set /a RANDJ=%random%*5/32767+1
if %RandJ% EQU 1 goto CAUGHTJ
cls
echo.
echo Looking forward, there is a ladder and a hole.
echo You can go up the ladder or in the hole.
echo.
echo 1) Ladder
echo 2) Hole
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto ESCAPEJ3
if %s1% EQU 2 goto ESCAPEJ4
if %s1% EQU 3 goto jcell

:ESCAPEJ3
set /a RANDJ=%random%*4/32767+1
if %RandJ% EQU 1 goto CAUGHTJ
cls
echo.
echo Looking forward there is a window and a door.
echo You can go out the window or through the door.
echo.
echo 1) Window
echo 2) Door
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto ESCAPEJ1
if %s1% EQU 2 goto ESCAPEJ4
if %s1% EQU 3 goto jcell

:ESCAPEJ4
set /a RANDJ=%random%*3/32767+1
if %RandJ% EQU 1 goto CAUGHTJ
cls
echo.
echo Looking forward there is a rope and a ledge.
echo You can go up the rope or down the ledge.
echo.
echo 1) Rope
echo 2) Ledge
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto ESCAPEJ2
if %s1% EQU 2 goto ESCAPEJ5
if %s1% EQU 3 goto jcell

:ESCAPEJ5
set /a RANDJ=%random%*2/32767+1
if %RandJ% EQU 1 goto CAUGHTJ
cls
echo.
echo Looking forward there is crevice and a trapdoor.
echo You can go through the crevice or down the drapdoor.
echo.
echo 1) Crevice
echo 2) Trapdoor
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto ESCAPEJ3
if %s1% EQU 2 goto ESCAPEJ6
if %s1% EQU 3 goto jcell

:ESCAPEJ6
cls
echo.
set /a RANDJ=%random%*3/32767+1
if %RandJ% EQU 1 goto CAUGHTJ
echo You have escaped the jail!
echo You run back home
set jcount=0
echo.
pause
goto HOME

:CAUGHTJ
cls
if %class% EQU Thief goto ESCAPEJ6
echo.
echo A passing patrol of guards sees you.
echo They send you back to your cell.
set /a nrep=%nrep%+1
echo.
pause
goto jcell

:ARRESTED
echo.
echo You were arrested by a guard.
echo.
pause
goto JAIL

:CRPEAK
cls
echo.
echo This location is closed during this season.
echo.
pause
goto MENU

:NEEDARM
cls
echo.
echo You need Explorer Armor to go into the outskirts.
echo.
pause
goto MENU

:RPEAK
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
if %armtype% GTR Explorer goto NEEDARM
if %armtype% LSS Explorer goto NEEDARM
if %sseason% EQU 4 goto CRPEAK
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo What would you like to do?
echo.
echo 1) Sit
echo 2) Jebub's Hut
echo.
echo 3) Back
echo.
echo.
set /p login=
if %login% EQU 1 goto RPEAK4
if %login% EQU 2 goto RPEAK2
if %login% EQU 3 goto MENU
goto RPEAK

:top2
cls
echo.
echo Jebub: Try again.
goto top

:RPEAK2 
set guessnum=0
set answer=%RANDOM%
set variable77=Bwab1234
cls
echo.
echo Jebub: Ah, someone like me, that likes to have a little fun^^!?
echo Try to guess the number I'm thinking. We can have fun after that.
:top
echo.
echo E) Exit
echo.
set /p guess=
set variable77=Bwab1234
echo.
if %guess%==E goto RPEAK
if %guess% GTR %answer% ECHO Jebub: Lower, bucko.
if %guess% GTR %answer% pause>nul
if %guess% LSS %answer% ECHO Jebub: Higher, bucko.
if %guess% LSS %answer% pause>nul
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable77% ECHO Boo you, no fun, the answer is: %answer%...
if %guess%==%variable77% pause>nul
goto top2
:equal
cls
echo.
echo Jebub: Oh sheesh, you guessed right^^!^^!^^! It took you %guessnum% guesses.
if %guessnum% GEQ 101 goto TOOBAD
echo Not too shabby, bucko. And as I promised, now a little fun^^!
echo.
pause.
goto PQUIZ

:TOOBAD
echo Ha! How about you get it in under 100 guesses and we'll
echo see about some fun.
echo Poor you, never stood a chance with Jebub...
echo.
pause
goto RPEAK

:PQUIZ
echo.
cls
set /a cake=0
set /a weat=0
set /a adve=0
set /a fact=0
set /a rage=0
set /a spac=0
set /a curi=0
set /a mort=0
echo.
echo Jebub: Great^^! Let's start. I'm gonna read you. 
echo It's fun^^! Before we begin, make sure you clear 
echo your head and think about your MyersRealm life.
echo.
pause
cls
echo.
echo Jebub: So, question 1.
echo What is your favourite colour out of these options?
echo.
echo 1) Blood Red
echo 2) Grass Green
echo 3) Ocean Blue
echo 4) Do black or white count?
choice /c:1243 /n >nul
if errorlevel 4 set /a curi=%curi%+1
goto q2
if errorlevel 3 set /a cake=%cake%+1
goto q2
if errorlevel 2 set /a adve=%adve%+1
goto q2
if errorlevel 1 set /a rage=%rage%+1
:q2
cls
echo.
echo Jebub: Next is question 2.
echo Which of these best describes the type of hero you are?
echo.
echo 1) Smart and proud
echo 2) Adventerous and brave 
echo 3) Helpful but dumb
echo 4) Quiet and peaceful
choice /c:1243 /n >nul
if errorlevel 4 set /a mort=%mort%+1
goto q3
if errorlevel 3 set /a weat=%weat%+1
goto q3
if errorlevel 2 set /a adve=%adve%+1
goto q3
if errorlevel 1 set /a fact=%fact%+1
:q3
cls
echo.
echo Jebub: Alright, question 3.
echo Are you enjoying the quiz?
echo.
echo 1) Ugh^^! I hate it
echo 2) This is a quiz?
echo 3) I'd prefer to jump off the dock...
echo 4) Gbyurvsdgkj...
choice /c:1243 /n >nul
if errorlevel 4 set /a mort=%mort%+1
goto q4
if errorlevel 3 set /a spac=%spac%+1
goto q4
if errorlevel 2 set /a curi=%curi%+1
goto q4
if errorlevel 1 set /a rage=%rage%+1
:q4
cls
echo.
echo Jebub: And now, question 4.
echo Which job would you want to have most?
echo.
echo 1) Wizard
echo 2) Explorer
echo 3) Cook
echo 4) I'm too smart to have a job
choice /c:1243 /n >nul
if errorlevel 4 set /a fact=%fact%+1
goto q5
if errorlevel 3 set /a cake=%cake%+1
goto q5
if errorlevel 2 set /a adve=%adve%+1
goto q5
if errorlevel 1 set /a spac=%spac%+1
:q5
cls
echo.
echo Jebub: Good, let's do question 5.
echo An Eagle is flying towards you at full speed. What do you do?
echo.
echo 1) "Hello Eagle! Can you please slow down? You might hurt me..."
echo 2) "What do I do? What do I do? What am I doing here?!"
echo 3) "BRING IT ON! RAAAAAAAAAAAA!!!"
echo 4) Silently embrace for the last moment of my life.
choice /c:1243 /n >nul
if errorlevel 4 set /a mort=%mort%+1
goto q6
if errorlevel 3 set /a rage=%rage%+1
goto q6
if errorlevel 2 set /a curi=%curi%+1
goto q6
if errorlevel 1 set /a weat=%weat%+1
:q6
cls
echo.
echo Jebub: Moving on, question 6.
echo. Which one of the following is truest to you?
echo.
echo 1) There are many cake-shaped ingredients in fish
echo 2) I'm never wrong, and I'm always accurate
echo 3) I am not a moron
echo 4) MyersRealm is the best place
choice /c:1243 /n >nul
if errorlevel 4 set /a spac=%spac%+1
goto q7
if errorlevel 3 set /a weat=%weat%+1
goto q7
if errorlevel 2 set /a fact=%fact%+1
goto q7
if errorlevel 1 set /a cake=%cake%+1
:q7
cls
echo.
echo Jebub: Curious. Question 7.
echo If you had a day where you could do anything, what would you do?
echo.
echo 1) Overload my brain with all possible information
echo 2) Go on an adventure
echo 3) Travel into the unknown
echo 4) Spread my interesting knowledge to all the lands
choice /c:1243 /n >nul
if errorlevel 4 set /a fact=%fact%+1
goto q8
if errorlevel 3 set /a spac=%spac%+1
goto q8
if errorlevel 2 set /a adve=%adve%+1
goto q8
if errorlevel 1 set /a curi=%curi%+1
:q8
cls
echo.
echo Jebub: You're doing great, bucko^^! Question 8.
echo Which of these do you hate the most?
echo.
echo 1) The name Jebub, this quiz, everything...
echo 2) People who don't like MyersRealm
echo 3) Nothing
echo 4) People who call me stupid
choice /c:1243 /n >nul
if errorlevel 4 set /a weat=%weat%+1
goto q9
if errorlevel 3 set /a mort=%mort%+1
goto q9
if errorlevel 2 set /a cake=%cake%+1
goto q9
if errorlevel 1 set /a rage=%rage%+1
:q9
cls
echo.
echo Jebub: Exciting stuff. And question 9.
echo If you could control an entire Kingdom, what would you do?
echo.
echo 1) Boast about my power
echo 2) Mass produce dragon eggs
echo 3) Create a MyersRealm 2
echo 4) What's a Kingdom again?
choice /c:1243 /n >nul
if errorlevel 4 set /a curi=%curi%+1
goto q10
if errorlevel 3 set /a cake=%cake%+1
goto q10
if errorlevel 2 set /a spac=%spac%+1
goto q10
if errorlevel 1 set /a weat=%weat%+1
:q10
cls
echo.
echo Jebub: Getting there. Question 10.
echo What are you best at?
echo.
echo 1) Knowing all
echo 2) Scaring monsters
echo 3) Being shy
echo 4) Complimenting others
choice /c:1243 /n >nul
if errorlevel 4 set /a adve=%adve%+1
goto q11
if errorlevel 3 set /a mort=%mort%+1
goto q11
if errorlevel 2 set /a rage=%rage%+1
goto q11
if errorlevel 1 set /a fact=%fact%+1
:q11
cls
echo.
echo Jebub: No wrong answers here. Question 11.
echo In 20 seasons' time, which of these will you most likely be doing?
echo.
echo 1) Cooking fish
echo 2) Dying in a cave
echo 3) Walking under the moon
echo 4) How long is that? Where will I be? Who am I now?
choice /c:1243 /n >nul
if errorlevel 4 set /a curi=%curi%+1
goto q12
if errorlevel 3 set /a spac=%spac%+1
goto q12
if errorlevel 2 set /a rage=%rage%+1
goto q12
if errorlevel 1 set /a cake=%cake%+1
:q12
cls
echo.
echo Jebub: Hmmm. Question 12
echo What is your preferred type?
echo.
echo 1) Regal Rich
echo 2) Rough Adventurous
echo 3) Fast-pased and Precise
echo 4) Dead. I prefer them dead
choice /c:1243 /n >nul
if errorlevel 4 set /a mort=%mort%+1
goto q13
if errorlevel 3 set /a fact=%fact%+1
goto q13
if errorlevel 2 set /a adve=%adve%+1
goto q13
if errorlevel 1 set /a weat=%weat%+1
:q13
cls
echo.
echo This one's a big one, question 13.
echo If you met me some other way, what would you do?
echo.
echo 1) Ask if you needed help
echo 2) Kept silent
echo 3) Ask you questions about yourself
echo 4) Tell you facts and other things I know
echo 5) Ask you to take me away from here
echo 6) Tell you to step back
echo 7) Threaten you
echo 8) Tell you about MyersRealm
choice /c:12345678 /n >nul
if errorlevel 8 set /a cake=%cake%+1
if errorlevel 7 set /a rage=%rage%+1
if errorlevel 6 set /a adve=%adve%+1
if errorlevel 5 set /a spac=%spac%+1
if errorlevel 4 set /a fact=%fact%+1
if errorlevel 3 set /a curi=%curi%+1
if errorlevel 2 set /a mort=%mort%+1
if errorlevel 1 set /a weat=%weat%+1
:done
cls
ping localhost -n 3 >nul
if %cake% GTR %weat% set /a weat=0
if %cake% GTR %rage% set /a rage=0
if %cake% GTR %adve% set /a adve=0
if %cake% GTR %mort% set /a mort=0
if %cake% GTR %fact% set /a fact=0
if %cake% GTR %spac% set /a spac=0
if %cake% GTR %curi% set /a curi=0
if %weat% GTR %cake% set /a cake=0
if %weat% GTR %rage% set /a rage=0
if %weat% GTR %adve% set /a adve=0
if %weat% GTR %mort% set /a mort=0
if %weat% GTR %fact% set /a fact=0
if %weat% GTR %spac% set /a spac=0
if %weat% GTR %curi% set /a curi=0
if %rage% GTR %cake% set /a cake=0
if %rage% GTR %weat% set /a weat=0
if %rage% GTR %adve% set /a adve=0
if %rage% GTR %mort% set /a mort=0
if %rage% GTR %fact% set /a fact=0
if %rage% GTR %spac% set /a spac=0
if %rage% GTR %curi% set /a curi=0
if %adve% GTR %cake% set /a cake=0
if %adve% GTR %weat% set /a weat=0
if %adve% GTR %rage% set /a rage=0
if %adve% GTR %mort% set /a mort=0
if %adve% GTR %fact% set /a fact=0
if %adve% GTR %spac% set /a spac=0
if %adve% GTR %curi% set /a curi=0
if %mort% GTR %cake% set /a cake=0
if %mort% GTR %weat% set /a weat=0
if %mort% GTR %rage% set /a rage=0
if %mort% GTR %adve% set /a adve=0
if %mort% GTR %fact% set /a fact=0
if %mort% GTR %spac% set /a spac=0
if %mort% GTR %curi% set /a curi=0
if %fact% GTR %cake% set /a cake=0
if %fact% GTR %weat% set /a weat=0
if %fact% GTR %rage% set /a rage=0
if %fact% GTR %adve% set /a adve=0
if %fact% GTR %mort% set /a mort=0
if %fact% GTR %spac% set /a spac=0
if %fact% GTR %curi% set /a curi=0
if %spac% GTR %cake% set /a cake=0
if %spac% GTR %weat% set /a weat=0
if %spac% GTR %rage% set /a rage=0
if %spac% GTR %adve% set /a adve=0
if %spac% GTR %mort% set /a mort=0
if %spac% GTR %fact% set /a fact=0
if %spac% GTR %curi% set /a curi=0
if %curi% GTR %cake% set /a cake=0
if %curi% GTR %weat% set /a weat=0
if %curi% GTR %rage% set /a rage=0
if %curi% GTR %adve% set /a adve=0
if %curi% GTR %mort% set /a mort=0
if %curi% GTR %fact% set /a fact=0
if %curi% GTR %spac% set /a spac=0
if %cake% GTR %weat% set /a weat=0
if %cake% GTR %rage% set /a rage=0
if %cake% GTR %adve% set /a adve=0
if %cake% GTR %mort% set /a mort=0
if %cake% GTR %fact% set /a fact=0
if %cake% GTR %spac% set /a spac=0
if %cake% GTR %curi% set /a curi=0
if %weat% GTR %cake% set /a cake=0
if %weat% GTR %rage% set /a rage=0
if %weat% GTR %adve% set /a adve=0
if %weat% GTR %mort% set /a mort=0
if %weat% GTR %fact% set /a fact=0
if %weat% GTR %spac% set /a spac=0
if %weat% GTR %curi% set /a curi=0
if %rage% GTR %cake% set /a cake=0
if %rage% GTR %weat% set /a weat=0
if %rage% GTR %adve% set /a adve=0
if %rage% GTR %mort% set /a mort=0
if %rage% GTR %fact% set /a fact=0
if %rage% GTR %spac% set /a spac=0
if %rage% GTR %curi% set /a curi=0
if %adve% GTR %cake% set /a cake=0
if %adve% GTR %weat% set /a weat=0
if %adve% GTR %rage% set /a rage=0
if %adve% GTR %mort% set /a mort=0
if %adve% GTR %fact% set /a fact=0
if %adve% GTR %spac% set /a spac=0
if %adve% GTR %curi% set /a curi=0
if %mort% GTR %cake% set /a cake=0
if %mort% GTR %weat% set /a weat=0
if %mort% GTR %rage% set /a rage=0
if %mort% GTR %adve% set /a adve=0
if %mort% GTR %fact% set /a fact=0
if %mort% GTR %spac% set /a spac=0
if %mort% GTR %curi% set /a curi=0
if %fact% GTR %cake% set /a cake=0
if %fact% GTR %weat% set /a weat=0
if %fact% GTR %rage% set /a rage=0
if %fact% GTR %adve% set /a adve=0
if %fact% GTR %mort% set /a mort=0
if %fact% GTR %spac% set /a spac=0
if %fact% GTR %curi% set /a curi=0
if %spac% GTR %cake% set /a cake=0
if %spac% GTR %weat% set /a weat=0
if %spac% GTR %rage% set /a rage=0
if %spac% GTR %adve% set /a adve=0
if %spac% GTR %mort% set /a mort=0
if %spac% GTR %fact% set /a fact=0
if %spac% GTR %curi% set /a curi=0
if %curi% GTR %cake% set /a cake=0
if %curi% GTR %weat% set /a weat=0
if %curi% GTR %rage% set /a rage=0
if %curi% GTR %adve% set /a adve=0
if %curi% GTR %mort% set /a mort=0
if %curi% GTR %fact% set /a fact=0
if %curi% GTR %spac% set /a spac=0
if %cake% EQU %weat% goto even
if %cake% EQU %rage% goto even
if %cake% EQU %adve% goto even
if %cake% EQU %mort% goto even
if %cake% EQU %fact% goto even
if %cake% EQU %spac% goto even
if %cake% EQU %curi% goto even
if %weat% EQU %rage% goto even
if %weat% EQU %adve% goto even
if %weat% EQU %mort% goto even
if %weat% EQU %fact% goto even
if %weat% EQU %spac% goto even
if %weat% EQU %curi% goto even
if %rage% EQU %adve% goto even
if %rage% EQU %mort% goto even
if %rage% EQU %fact% goto even
if %rage% EQU %spac% goto even
if %rage% EQU %curi% goto even
if %adve% EQU %mort% goto even
if %adve% EQU %fact% goto even
if %adve% EQU %spac% goto even
if %adve% EQU %curi% goto even
if %mort% EQU %fact% goto even
if %mort% EQU %spac% goto even
if %mort% EQU %curi% goto even
if %fact% EQU %spac% goto even
if %fact% EQU %curi% goto even
if %spac% EQU %curi% goto even
if %cake% GTR 0 goto cake
if %weat% GTR 0 goto weat
if %rage% GTR 0 goto rage
if %adve% GTR 0 goto adve
if %mort% GTR 0 goto mort
if %fact% GTR 0 goto fact
if %spac% GTR 0 goto spac
if %curi% GTR 0 goto curi
:even
cls
echo.
echo Jebub: I've calculated 2 tying results.
echo So let's try one last question to get you a better result.
echo.
pause
:finalq
cls
echo.
echo Jebub: Last one. Question 14.
echo If you had to choose one of the following, which one would you prefer?
echo.
if %cake% GTR 0 echo 1) A lifetime supply of rupees
if %weat% GTR 0 echo 2) A Kingdom that's all mine
if %rage% GTR 0 echo 3) The ability to destroy all monsters
if %adve% GTR 0 echo 4) Being the hero of this quest I'm on
if %mort% GTR 0 echo 5) Instantly solve all Varrock's problems
if %fact% GTR 0 echo 6) Become the most famous warrior
if %spac% GTR 0 echo 7) Own a house on an island
if %curi% GTR 0 echo 8) Discover everything, literally
choice /c:12345678 /n >nul
if errorlevel 8 goto curicheck
if errorlevel 7 goto spaccheck
if errorlevel 6 goto factcheck
if errorlevel 5 goto mortcheck
if errorlevel 4 goto advecheck
if errorlevel 3 goto ragecheck
if errorlevel 2 goto weatcheck
if errorlevel 1 goto cakecheck
:curicheck
if %curi% EQU 0 goto finalq
goto curi
:spaccheck
if %spac% EQU 0 goto finalq
goto spac
:factcheck
if %fact% EQU 0 goto finalq
goto fact
:mortcheck
if %mort% EQU 0 goto finalq
goto mort
:advecheck
if %adve% EQU 0 goto finalq
goto adve
:ragecheck
if %rage% EQU 0 goto finalq
goto rage
:weatcheck
if %weat% EQU 0 goto finalq
goto weat
:cakecheck
if %cake% EQU 0 goto finalq
goto cake
:cake
cls
echo.
echo YOU ARE A STRANGE ONE^^!
echo.
echo You have a strong passion for much but show little emotion.
echo You have the ability to do many tasks, even though
echo they might be unusual and unreliablle ones.
echo.
pause
goto RPEAK3
:weat
cls
echo.
echo YOU ARE AN INTELLECTUAL ONE^^!
echo.
echo You are a useful warrior and a helpful friend, but severely evil
echo when granted massive power. You shine when paired with your allies, 
echo however you are smarter than most.
echo.
pause
goto RPEAK3
:rage
cls
echo.
echo YOU ARE AN ANGRY ONE^^!
echo.
echo You are always angry and will battle any monster^^!
echo Your hostile behaviour is threatening. You are also very emotional,
echo however you only experience anger.
echo.
pause
goto RPEAK3
:adve
cls
echo.
echo YOU ARE AN ADVENTUROUS ONE^^!
echo.
echo You are the adventurous, daring kind with a taste for lust and war.
echo Sometimes you overestimate yourself, but you are always prepared to do so.
echo.
pause
goto RPEAK3
:mort
cls
echo.
echo YOU ARE A MORAL ONE^^!
echo.
echo You are a silent, innocent person with a peaceful attitude.
echo You don't say much, but without your type, destruction is eminent.
echo.
pause
goto RPEAK3
:fact
cls
echo.
echo YOU ARE A FACTUAL ONE^^!
echo.
echo You are a quick-talking, quick-moving adventurer that will say
echo almost infinite facts. You often boast about your intelligence
echo and accomplishments, even though not always being true.
echo.
pause
goto RPEAK3
:spac
cls
echo.
echo YOU ARE A FANTASY ONE^^!
echo.
echo You have a severe and unhealthy obsession for fantasy.
echo Every thought in your mind is to do with swords and monsters.
echo Others find it annoying, but you really don't care.
echo.
pause
goto RPEAK3
:curi
cls
echo.
echo YOU ARE A CURIOUS ONE^^!
echo.
echo You are constantly asking questions, even small basic ones.
echo You have a very strong urge to know about everything,
echo and will ask anyone you meet. Sometimes people get fed up of this.
echo.
pause
goto RPEAK3

:RPEAK3
cls
echo.
echo Jebub: Well that's it^^! Thanks for having fun, bucko^^!
echo I wish I had something to give, but for now you've got
echo my undying gratitude. Come back again^^!
set rpcount=%daycount%
echo.
pause
goto RPEAK

:RPEAK4
cls
echo.
echo You find yourself very sleepy.
echo You fall asleep on Relaxing Peak.
echo.
set /a maps=%maps%+1
set /a rtab=%rtab%-1
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
ping 192.0.2.0 -n 1 -w 3000 > nul
cls
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto MENU

:D2FATIGUE
cls
echo.
echo You're getting pretty dizzy...
echo Your fatigue level is too high!
echo You'd better head to sleep now.
echo.
pause
goto HOME 

:DFATIGUE
cls
set /a FATIGUE=50
cls
echo.
echo You collapse from fatigue...
echo.
pause
goto DIE2

:CASTLE
set /a ttllvl=%Woodcuttinglvl%+%Cooklvl%+%Fishinglvl%+%Thievinglvl%+%Mininglvl%+%Smithinglvl%
if %FATIGUE% GTR 99 GOTO DFATIGUE
if %FATIGUE% GTR 90 GOTO D2FATIGUE
cls
set /a FATIGUE=%FATIGUE%+1
cls
echo.
if %upgradee% EQU None echo The small castle is cold, with low ceilings,
if %upgradee% EQU Quaint echo The quaint castle is damp, with low ceilings,
if %upgradee% EQU Pretty echo The pretty castle is humid, with high ceilings,
if %upgradee% EQU Fierce echo You fierce castle is bright, with massive ceilings,
echo huge doors, and a few people standing about.
echo.
echo                              ͻ
echo   Where would you like to go   
echo   in the castle?               
echo.                             ͹
echo   1) Chubby's Discounts        		
echo   2) King's Loanshark          
echo.  3) Throneroom                
echo.  4) Beg for Gold              
echo.  5) Melmus the Wizard         
echo.  6) Your Castle Home          
echo.  7) Basement                  
echo.  8) View Castle               
echo.  9) Sewer Dungeon               
if %gshard% GEQ 1 echo.  10) Belabond's Nook                    
echo.                             ͼ
echo Castle Upgrade: %upgradee%    
echo.                                       ͻ
echo   97) Inventory                          
echo   98) Castle Rank                        
echo   99) Town                               
echo                                        ͼ
echo.
set /p x1=
if %x1% EQU 1 goto Armory
if %x1% EQU 2 goto Bank_Loan
if %x1% EQU 3 goto KINGG
if %x1% EQU 4 goto Beg
if %x1% EQU 5 goto MELMUS
if %x1% EQU 6 goto HOME
if %x1% EQU 7 goto DRAGON
if %x1% EQU 8 goto 2viewC
if %x1% EQU 9 goto SEWER
if %gshard% GEQ 1 if %x1% EQU 10 goto BFRIEND
if %x1% EQU 97 goto checkitems
if %x1% EQU 98 goto CastleRank
if %x1% EQU 99 goto MENU
goto MENU

:BFRIEND
cls
echo.
echo Belabond: Hello, %username1%. You have made me a humble man.
echo Can I interest you in some food? Maybe a potion? Just a chat?
echo.
if %fhappy% LEQ 0 set fhappy=0
if %fhappy% GEQ 101 set fhappy=100
echo Belabond's Happiness: %fhappy%
echo.
echo 1) Eat Food
echo 2) Take Potion
echo 3) Chat
echo.
echo 4) Back
echo.
set /p login=
if %login% EQU 1 goto BFEATFOOD
if %login% EQU 2 goto BFPOTION
if %login% EQU 3 goto BFCHAT
if %login% EQU 4 goto CASTLE
goto BFRIEND

:BFEATFOOD
set /a chappy=%chappy%+1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto BFRIEND

:BFPOTION
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto BFRIEND

:BFCHAT
set /a BFA=%random%*20/32767+1
if %BFA% EQU 1 set BFAN=cow
if %BFA% EQU 2 set BFAN=mage
if %BFA% EQU 3 set BFAN=dragon
if %BFA% EQU 4 set BFAN=chicken
if %BFA% EQU 5 set BFAN=shadow
if %BFA% EQU 6 set BFAN=ghost
if %BFA% EQU 7 set BFAN=Fire Monster
if %BFA% EQU 8 set BFAN=gorgon
if %BFA% EQU 9 set BFAN=squid
if %BFA% EQU 10 set BFAN=cat
if %BFA% EQU 11 set BFAN=eel
if %BFA% EQU 12 set BFAN=ranger
if %BFA% EQU 13 set BFAN=king
if %BFA% EQU 14 set BFAN=guard
if %BFA% EQU 15 set BFAN=shopkeeper
if %BFA% EQU 16 set BFAN=demon
if %BFA% EQU 17 set BFAN=ant
if %BFA% EQU 18 set BFAN=bird
if %BFA% EQU 19 set BFAN=spouse
if %BFA% EQU 20 set BFAN=kid
set /a BFA2=%random%*20/32767+1
if %BFA2% EQU 1 set BFAN2=key
if %BFA2% EQU 2 set BFAN2=monkey
if %BFA2% EQU 3 set BFAN2=cat
if %BFA2% EQU 4 set BFAN2=tasty meal
if %BFA2% EQU 5 set BFAN2=potato
if %BFA2% EQU 6 set BFAN2=soup pot
if %BFA2% EQU 7 set BFAN2=mushroom
if %BFA2% EQU 8 set BFAN2=gift
if %BFA2% EQU 9 set BFAN2=horse
if %BFA2% EQU 10 set BFAN2=kitten
if %BFA2% EQU 11 set BFAN2=lemon tart
if %BFA2% EQU 12 set BFAN2=finger
if %BFA2% EQU 13 set BFAN2=treasure
if %BFA2% EQU 14 set BFAN2=bat
if %BFA2% EQU 15 set BFAN2=bee swarm
if %BFA2% EQU 16 set BFAN2=cave
if %BFA2% EQU 17 set BFAN2=crab
if %BFA2% EQU 18 set BFAN2=rupee
if %BFA2% EQU 19 set BFAN2=gold piece
if %BFA2% EQU 20 set BFAN2=baby bear
set /a BFGBO=%random%*10/32767+1
if %BFGBO% EQU 1 set BFGB=great
if %BFGBO% EQU 2 set BFGB=bad
if %BFGBO% EQU 3 set BFGB=decent
if %BFGBO% EQU 4 set BFGB=terrible
if %BFGBO% EQU 5 set BFGB=shabby
if %BFGBO% EQU 6 set BFGB=terrific
if %BFGBO% EQU 7 set BFGB=splendid
if %BFGBO% EQU 8 set BFGB=good
if %BFGBO% EQU 9 set BFGB=horrible
set /a BFCONVO=%random%*20/32767+1
cls
echo.
if %BFCONVO% EQU 1 echo Belabond: I feel that %BFAN%s are %BFGB% compared to %BFAN2%s. Am I right?
if %BFCONVO% EQU 2 echo Belabond: Hmmm, %sweather% weather is %BFGB%. No?
if %BFCONVO% EQU 3 echo Belabond: Say, %BFAN%s are %BFGB%. Do you agree with that?
if %BFCONVO% EQU 4 echo Belabond: A %BFAN2% is better than most %BFAN%s. Right? No?
if %BFCONVO% EQU 5 echo Belabond: Owning a %BFAN% is %BFGB%. What do you think?
if %BFCONVO% EQU 6 echo Belabond: Night time makes me feel %BFGB%. Do you agree?
if %BFCONVO% EQU 7 echo Belabond: Most %BFAN%s usually smell %BFGB%. Similar to %BFAN2%s. What about you?
if %BFCONVO% EQU 8 echo Belabond: MyersRealm is a %BFGB% game for %BFAN%s. Ya think?
if %BFCONVO% EQU 9 echo Belabond: Do I look like I'd be a %BFGB% %BFAN%?
if %BFCONVO% EQU 10 echo Belabond: Are %BFAN%s %BFGB%?
if %BFCONVO% EQU 11 echo Belabond: Is it %BFGB% to lay in bed and ponder about %BFAN2%s?
if %BFCONVO% EQU 12 echo Belabond: Is it %BFGB% to kiss %BFAN%s?
if %BFCONVO% EQU 13 echo Belabond: If a %BFAN%-filled kingdom existed, would that be %BFGB%?
if %BFCONVO% EQU 14 echo Belabond: Are cold seasons %BFGB% for %BFAN%s?
if %BFCONVO% EQU 15 echo Belabond: Would you save a %BFAN2% from a %BFAN%?
if %BFCONVO% EQU 16 echo Belabond: Would a %BFAN% make a %BFGB% friend?
if %BFCONVO% EQU 17 echo Belabond: Would you sacrifice a %BFAN2% for a %BFAN%?
if %BFCONVO% EQU 18 echo Belabond: I think that %BFAN2%s are %BFGB%. Do you think so?
if %BFCONVO% EQU 19 echo Belabond: Maybe %BFAN2%s are similar to %BFAN%s. You feel the same?
if %BFCONVO% EQU 20 echo Belabond: If there are %BFAN%s after death, would that be %BFGB%?
echo.
echo 1) Yes
echo 2) Unsure
echo 3) No
echo.
echo 4) Back
echo.
set /p login=
if %login% EQU 1 set /a fhappy=%fhappy%+1
if %login% EQU 1 GOTO BFCHAT
if %login% EQU 2 GOTO BFCHAT 
if %login% EQU 3 set /a fhappy=%fhappy%-1
if %login% EQU 3 GOTO BFCHAT
if %login% EQU 4 goto BFRIEND
goto BFRIEND

:CastleUpgrade
set /a FATIGUE=%FATIGUE%+1
cls
echo.
set /a supplies=%brick%+%glass%+%aloy%
echo.
echo                                         
echo   Supplies: %supplies% 
echo   Castle Upgrade: %upgradee% 
echo                                         
echo.
echo.
echo                                               ͻ
echo   1) Upgrade 1 (QUAINT):   100 Supplies         
echo   2) Upgrade 2 (PRETTY):   200 Supplies         
echo   3) Upgrade 3 (FIERCE):   300 Supplies         
echo   4) View Castle                                
echo                                                  
echo   5) Back                                       
echo                                               ͼ
echo.
echo.
set /p bj=
if %bj% EQU 1 (
set /a sprice=100
if %supplies% LEQ 19 goto NOBUY
set upgradee=QUAINT
set supplies=0 )
if %bj% EQU 2 (
set /a sprice=200
if %supplies% LEQ 39 goto NOBUY
set upgradee=PRETTY
set %supplies%=0 )
if %bj% EQU 3 (
set /a sprice=300
if %supplies% LEQ 59 goto NOBUY
set upgradee=FIERCE
set supplies=0 )
if %bj% EQU 5 (
goto HOME )
if %bj% EQU 4 (
goto VIEWC )
goto buycastle

:NOBUY
cls
echo.
echo You don't have enough supplies.
echo.
pause
goto CastleUpgrade

:buycastle
if %supplies% LSS %sprice% goto noSmoney
set /a supplies=%supplies%-%sprice%
echo.
echo.
echo Upgrade purchased. Your current upgrade is %upgradee%.
pause>nul
goto HOME

:noSmoney
cls
echo.
echo You don't have enough supplies.
echo.
pause
goto CastleUpgrade

:2VIEWC
cls
if %upgradee% EQU Quaint goto VIEW1
if %upgradee% EQU Pretty goto VIEW2
if %upgradee% EQU Fierce goto VIEW3
if %upgradee% EQU None goto VIEW4
goto CASTLE

:VIEWC
cls
if %upgradee% EQU Quaint goto VIEW1
if %upgradee% EQU Pretty goto VIEW2
if %upgradee% EQU Fierce goto VIEW3
if %upgradee% EQU None goto VIEW4
goto CastleUpgrade

:VIEW1
cls
echo.
echo You stare at the quaint castle. 
echo It has low roofs and 2 towers, and is made of iron.
echo It has a deep moat, a small drawbridge,
echo and 10 guards to defend it.
echo.
pause
goto Castle

:VIEW4
cls
echo.
echo You stare at the basic castle. 
echo It has a cracked roof, 1 tower, and is made of stone. 
echo It has a tiny moat, a little bridge,
echo and 2 guards to defend it.
echo.
pause
goto Castle

:VIEW2
cls
echo.
echo You stare at the pretty castle. 
echo It has high roofs, 4 towers and is made of iron.
echo It has a deep moat, a sturdy drawbridge,
echo and a watchtower with 50 guards to defend it.
echo.
pause
goto Castle

:VIEW3
cls
echo.
echo You stare at the fierce castle. 
echo It has massive roofs, 6 towers and is made of steel.
echo It has a wide moat, a huge drawbridge,
echo and 100 guards patroling around 3 watchtowers to defend it.
echo.
pause
goto Castle

:HOME
cls
if %DOW% EQU 16 set /a sseason=%sseason%+1
if %DOW% GEQ 15 set nrep=0
if %sseason% EQU 5 set /a yyear=%yyear%+1
echo   _________________________ 
echo  /                         \
echo /___________________________\
echo  What would you like to do
echo  in your home?        
echo  ''''''''''''''''''''''''''] 
echo 1) Kitchen            __   ]
echo 2) Bedroom           {[]}  ]
echo 3) Commonroom        {  }  ]o o                        
echo 4) Cellar____________{__}__oV/V//o
echo ///////////////////////////V/////V
echo.
if %chappy% GEQ 101 set chappy=100
if %chappy% LEQ 0 set chappy=0
echo Happiness: %chappy%
echo Fatigue: %FATIGUE% 
echo Health: %HP%
echo -------------------------------
echo Spouse: %WNAME%
echo Child: %childname%
echo Pet: %N1% %the% %N2%
echo -------------------------------
if %DOW% EQU 16 set /a DOW=1
if %sseason% EQU 5 set /a sseason=1
echo Weather: %sweather% %days%  
echo Day: %DOW%   Season: %sseason%   Year: %yyear%
echo Days Played: %daycount%                          
echo -------------------------------
echo 97) Inventory
echo 98) Castle Rank
echo 99) Castle                                                     
echo.                                        
set /p x1=
if %x1% EQU 1 goto KITCHEN
if %x1% EQU 2 goto BEDROOM
if %x1% EQU 3 goto COMMONROOM
if %x1% EQU 4 goto CastleUpgrade
if %x1% EQU 97 goto checkitems
if %x1% EQU 98 goto castlerank
if %x1% EQU 99 goto CASTLE
goto HOME

:LBBB
if %lbean% LEQ 0 goto boBEAN
cls
echo.
echo You eat a Looma Bean. It tastes very bad.
echo But you start to feel very energetic^^!
echo.
pause
set /a lbean=%lbean%-1
set FATIGUE=0
set /a dow=%dow%+1
pause
goto BEDROOM

:boBEAN
cls
echo.
echo You don't have any Looma Beans.
echo.
pause
goto BEDROOM


:KITCHEN
cls
echo.
if %upgradee% EQU None echo You stand in a small, stone kitchen with a stove,
if %upgradee% EQU Quaint echo You stand in a small wood kitchen with a stove,
if %upgradee% EQU Pretty echo You stand in a large brick kitchen with a stove,
if %upgradee% EQU Fierce echo You stand in a large steel kitchen with a stove,
echo freezer and a table next to a big window.
echo.
echo What would you like to do?
echo.
echo 1) Cook food
echo 2) Eat food
echo 3) Feed family
echo.
echo 4) Back
echo.
set /p x1=
if %x1% EQU 1 goto COOKHOME
if %x1% EQU 2 goto EATHOME
if %x1% EQU 3 goto FFEEDWIFE
if %x1% EQU 4 goto HOME

:BEDROOM
cls
echo.
if %upgradee% EQU None echo You stand in a small, dusty bedroom with a little bed,
if %upgradee% EQU Quaint echo You stand in a small, cluttered bedroom with a medium bed,
if %upgradee% EQU Pretty echo You stand in a large, neat bedroom with a big bed,
if %upgradee% EQU Fierce echo You stand in a huge, tidy bedroom with a giant bed,
echo and a little window. A little box for Looma Beans is in the corner.
echo.
echo What would you like to do?
echo.
echo 1) Sleep
echo 2) Copulate with spouse
echo 3) Eat Looma Bean
echo.
echo 4) Back
echo.
set /p x1=
if %x1% EQU 1 goto SLEEPHOME
if %x1% EQU 2 goto PPETWIFE
if %x1% EQU 3 goto LBBB
if %x1% EQU 4 goto HOME


:COMMONROOM
cls
echo.
if %upgradee% EQU None echo You stand in a small, messy commonroom with some stools,
if %upgradee% EQU Quaint echo You stand in a small, cluttered commonroom with some chairs,
if %upgradee% EQU Pretty echo You stand in a large, neat commonroom with a lounge
if %upgradee% EQU Fierce echo You stand in a huge, tidy commonroom with a couch, 
echo a fireplace and a few little windows.
echo.
echo What would you like to do?
echo.
echo 1) Warm home
echo 2) See family
echo 3) See pet
echo.
echo 4) Back
echo.
set /p x1=
if %x1% EQU 1 goto WARMHOUSE
if %x1% EQU 2 goto wifeoptions
if %x1% EQU 3 goto petoptions
if %x1% EQU 4 goto HOME
goto COMMONROOM

:warmhouse
cls
if %LIT% GEQ 1 goto LIT
if %log% LEQ 0 goto NOLOG
echo.
echo You place a log in your fireplace to warm your home.
echo.
set /a LIT=%LIT%+1
set /a log=%log%-1
if %MARRIED% GEQ 1 set /a WIFEHAPPY=%WIFEHAPPY%+10
if %petowner% GEQ 1 set /a pethappy=%pethappy%+10
pause
goto COMMONROOM

:LIT
cls
echo.
echo A fire is already lit in your fireplace.
echo.
pause
goto COMMONROOM

:NOLOG
cls
echo.
echo You don't have any logs to light a fire and warm your home.
echo.
pause
goto COMMONROOM

:cookhome
cls
echo.
echo Cooking level: %Cooklvl%
echo Current EXP: %Cookcurxp%
echo Remainder: %Cookxpleft%
echo Raw Food: %rfood%
echo Cooked Food: %food%
echo.
echo.
echo 1) Cook
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Cookbow2
if %f1% EQU 2 goto KITCHEN

:Cookbow2
cls
if %rfood% LEQ 0 goto noitem2
echo.
set /a FATIGUE=%FATIGUE%+1
echo You Cook some food.
@set DelayInSeconds=4
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
set /a rfood=%rfood%-1
set /a food=%food%+1
set /a Cookxpleft=%Cookxpleft%-%Cookxpgain%
set /a Cookcurxp=%Cookcurxp%+%Cookxpgain%
if %Cookxpleft% LEQ 0 goto Cooklevelup2
echo.
pause>nul
goto KITCHEN

:Cooklevelup2
cls
set /a Cooklvl=%Cooklvl%+1
if %Cooklvl% GTR 100 set /a Cooklvl=100
if %Cooklvl% GEQ 100 set /a Cookxpleft=0
if %Cooklvl% GEQ 100 goto maxlvl
set /a Cookxpremain=%Cookxpremain%+100
set /a Cookxpleft=%Cookxpleft%+%Cookxpremain%
echo.
echo Congratulations, You have now reached level %Cooklvl%.
echo.
pause>nul
goto KITCHEN

:noitem2
cls
echo.
echo.
echo You do not have enough food to do that.
echo.
pause>nul
goto KITCHEN

:Sleephome
set FATIGUE=0
cls
if %days% EQU Day goto SleephomeN
set LIT=0
echo.
echo You lay in your bed and close your eyes.
set /a DOW=%DOW%+1
set /a daycount=%daycount%+1
if %DOW% EQU 16 set /a sseason=%sseason%+1
if %DOW% EQU 16 set nrep=0
if %DOW% EQU 16 set sleepingman=0
if %sseason% EQU 5 set /a yyear=%yyear%+1
set /a chappy=%chappy%-5
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
echo You dream of dragons.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
@echo You had a wonderful sleep!
echo You've slept until daytime.
set /a WIFEHAPPY=%WIFEHAPPY%-1
set /a pethappy=%pethappy%-1
if %pethappy% LEQ 0 set pethappy=0
if %WIFEHAPPY% LEQ 0 set WIFEHAPPY=0
if %CROPP% GEQ 1 set /a CROPP=%CROPP%+1
echo.
set /a hp=%orighp%
set days=Day
echo Health: %HP%
echo Fatigue: %fatigue%
set /a weather=%random%*5/32767+1
if %sseason% EQU 4 set /a snweather=%random%*5/32767+1

if %weather% EQU 1 set sweather=Sunny
if %weather% EQU 2 set sweather=Cloudy
if %weather% EQU 3 set sweather=Windy
if %weather% EQU 4 set sweather=Dark
if %weather% EQU 5 set sweather=Rainy

if %snweather% EQU 1 set sweather=Snowy
if %snweather% EQU 2 set sweather=Windy
if %snweather% EQU 3 set sweather=Cloudy
if %snweather% EQU 4 set sweather=Rainy
if %snweather% EQU 5 set sweather=Snowy
echo.
set LIT=0
echo It is now a %sweather% %days%.
if %DOW% EQU 16 set DOW=1
if %sseason% EQU 5 set /a sseason=1
echo Day: %DOW%   Season: %sseason%   Year: %yyear%
echo.
pause
goto BEDROOM

:SleephomeN
set /a FATIGUE=0
cls
echo.
echo You lay in your bed and close your eyes
echo.
ping 192.0.2.0 -n 1 -w 3000 > nul
echo You dream of damsels.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
set /a chappy=%chappy%-5
echo.
@echo You had a wonderful sleep!
echo You slept until nightime.
echo.
set /a hp=%orighp%
set days=Night
echo Health: %HP%
echo Fatigue: %fatigue%
set /a weather=%random%*5/32767+1
set LIT=0
if %sseason% EQU 4 set /a snweather=%random%*5/32767+1
if %weather% EQU 1 set sweather=Moonlit
if %weather% EQU 2 set sweather=Foggy
if %weather% EQU 3 set sweather=Windy
if %weather% EQU 4 set sweather=Creepy
if %weather% EQU 5 set sweather=Rainy

if %snweather% EQU 1 set sweather=Snowy
if %snweather% EQU 2 set sweather=Windy
if %snweather% EQU 3 set sweather=Creepy
if %snweather% EQU 4 set sweather=Rainy
if %snweather% EQU 5 set sweather=Snowy

echo.
echo It is now a %sweather% %days%.
if %DOW% EQU 16 set /a DOW=1
if %sseason% EQU 5 set /a sseason=1
echo Day: %DOW%   Season: %sseason%   Year: %yyear%
echo.
pause
goto BEDROOM

:eathome
set /a FATIGUE=%FATIGUE%+2
if %food% LEQ 0 goto no_food
set /a food=%food%-1
cls
cls
echo.
echo You eat some food.
set /a chappy=%chappy%+1
ping localhost -n 2 >nul
set /a hpheal=%random%*500/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto KITCHEN

:MELMUS
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo An old man waddles to you.
echo.
echo Melmus: Whhaat wwwould you likkke? Flowsss?
echo I'mm tthe onnly onee whho sellls themm...
echo.
echo Gold: %money%
echo Fireflow: %FFLOW%
echo Waterflow: %FFLOW%
echo.
echo 1) Fire Flow: 2000 gold
echo 2) Water Flow: 2000 gold
echo.
echo 3) Back
set /p Choice6=
if %Choice6%==1 goto MK
if %Choice6%==2 goto MR
if %Choice6%==3 goto CASTLE
goto CASTLE

:MK
cls
echo.
if %money% GEQ 2000 set FFLOW=%FFLOW%+1
if %money% GEQ 2000 set /a money=%money%-2000
echo Melmus: Hmmmmm...
pause
goto MELMUS
:MR
cls
echo.
if %money% GEQ 2000 set WFLOW=%WFLOW%+1
if %money% GEQ 2000 set /a money=%money%-2000
echo Melmus: Hmmmmm...
pause
goto MELMUS

:KINGG
cls
echo.
if %upgradee% EQU None echo The throneroom is small with a wood throne
if %upgradee% EQU Quaint echo The throneroom is big with a stone throne
if %upgradee% EQU Pretty echo The throneroom is large with a steel throne
if %upgradee% EQU Fierce echo The throneroom is huge with a dragonskin throne
echo where the King is sitting.
echo.
echo What would you like to do with the king?
echo.
echo.
echo 1) Talk
echo 2) Rob
echo.
echo 3) Back
echo.
set /p k1=
if %k1% EQU 1 goto throne_room
if %k1% EQU 2 goto ROBK
if %k1% EQU 3 goto Castle

:ROBK
cls
if %Thievinglvl% LEQ 5 goto NOROBK
echo.
echo You rob the king blind!
echo.
if %class% EQU Thief set /a money=%money%+100
set /a money=%money%+1000
set /a RandE=%random%*5/32767+1
if %RandE% EQU 2 goto KINGROBJ
pause
goto castle

:NOROBK
cls
echo.
echo You don't have a high enough thieving level.
echo.
pause
goto throne_room

:KINGROBJ
cls
echo.
echo You were caught by the king!
echo He sends you to the jail.
echo.
pause
goto JAIL

:NOKINGG
cls
echo.
echo The King travels to another land during this season.
echo Come back next season.
echo.
pause
goto CASTLE

:throne_room
if %sseason% EQU 3 goto NOKINGG
set /a FATIGUE=%FATIGUE%+2
if %curlvl% GEQ 1 set jester=1
if %curlvl% GEQ 5 set servant=1
if %curlvl% GEQ 10 set knight=1
if %curlvl% GEQ 15 set noble=1
if %curlvl% GEQ 20 set thane=1
if %curlvl% GEQ 25 set gmaster=1
if %curlvl% GEQ 30 set templar=1
if %curlvl% GEQ 36 set regal=1
if %curlvl% GEQ 37 set kingsman=1
cls
if %kingsman% GEQ 1 goto throne_room2
if %gmaster% GEQ 1 goto throne_room4
if %knight% GEQ 1 goto throne_room3
echo.
echo The King approaches you.
echo.
echo King: It's good to see you, Jester %username1% .
echo Here, have an apple!
set /a hp=%orighp%
echo You are now back to %hp% health.
echo.
echo The King bids you farewell.
echo.
pause>nul
goto CASTLE
:throne_room2
set /a FATIGUE=%FATIGUE%+2
cls
echo.
echo The King approaches you.
echo.
echo King: I'm glad you are well, Kingsman %username1%.
echo May you bring greatness to Varrock.
set /a hp=%orighp%
echo I'll see to it that you are set back to %hp% health.
echo.
echo The King bids you farewell.
pause
goto CASTLE

:throne_room3
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo The King approaches you.
echo.
echo King: You look happy, Knight %username1%.
echo You are bringing much good for us in Varrock.
set /a hp=%orighp%
echo  Let me set you back to %hp% health.
echo.
echo The King bids you farewell.
pause
goto CASTLE

:throne_room4
cls
echo.
if %MARRIED% EQU 1 goto THRONE_ROOM5 
echo The King approaches you.
echo.
echo King: Always a sight for sore eyes, Grandmaster %username1%.
echo Would you like to marry my daughter, Bruna?
echo She has asked for you by name, %username1%.
echo.
echo 1) It would be my honor, King.
echo 2) Let me think about that...
echo.
set /p p1=
if %p1% EQU 1 goto YES_M
if %p1% EQU 2 goto NO_M
goto CASTLE

:THRONE_ROOM5
echo.
echo The King approaches you.
echo.
echo King: Always a sight for sore eyes, Grandmaster %username1%.
echo I appreciate all that you do. Let me heal you
echo.
pause
set /a hp=%orighp%
goto CASTLE

:YES_M
cls
echo.
echo King: Splendid^^! I will send her to your home at once.
echo You have made her happy and that makes me happy.
echo.
set MARRIED=1
set WNAME=Bruna
pause
goto CASTLE

:NO_M
cls
echo.
echo King: I see...
echo.
pause
goto CASTLE

:CastleRank
if %curlvl% GEQ 1 set jester=1
if %curlvl% GEQ 3 set servant=1
if %curlvl% GEQ 8 set knight=1
if %curlvl% GEQ 14 set noble=1
if %curlvl% GEQ 22 set thane=1
if %curlvl% GEQ 30 set gmaster=1
if %curlvl% GEQ 35 set templar=1
if %curlvl% GEQ 36 set regal=1
cls
echo.
echo.
echo Unlocked Ranks:
echo _______________
echo.
echo Jester:      %jester%
echo Servant:     %servant%
echo Knight:      %knight%
echo Noble:       %noble%
echo Thane:       %thane%
echo Grandmaster: %gmaster%
echo Templar:     %templar%
echo Regal:       %regal%
echo ===============
if %regal% EQU 1 set kingsman=1
echo Kingsman:    %kingsman%
echo _______________ 
echo.
pause
goto CASTLE


:Bank_Loan
set /a FATIGUE=%FATIGUE%+1
cls
if %loan% LEQ 0 set Loan_Timer=0
if %Loan_Timer% GEQ 1 set /a Loan_Timer=%Loan_Timer%-1
if %Loan_Timer%==0 set /a Money=%Money%-%loan% & set loan=0
cls
echo.
echo Loanshark: Get what you need done quickly.
echo.
echo Gold: %money%
echo Current loans: %loan%
echo.
echo 1) Pay Loan
echo 2) Take Loan
echo.
echo 3) Back
set /p Bank_Choice_2=
if %Bank_Choice_2%==1 goto Bank_Loan1
if %Bank_Choice_2%==2 goto Bank_Loan2
if %Bank_Choice_2%==3 goto CASTLE
goto Bank_Loan
:Bank_Loan1
cls
echo.
echo Loanshark: How many loans would you like to pay?
set /p Pay_Amount=
if %Pay_Amount% GEQ %loan% set /a loan=%loan%-%money% & set money=0 & goto CASTLE
set /a loan=%loan%-%Pay_Amount% & set /a money=%money%-%Pay_Amount%
if %loan% LEQ -1 set /a money=%money%-%loan%
if %loan% GEQ 1 set /a loan=%loan%-1
goto CASTLE
:Bank_Loan2
cls
if %loan% GEQ 1 goto Loan_Error
cls
echo.
echo Loanshark: How many loans would you like to take?
set /p loan=
set /a money=%money%+%loan% & set Loan_Timer=241
set /a loan=%loan%+1
cls
goto CASTLE

pause>nul
set /a loan=%loan%+1
set /a money=%money%+1
goto Game Code Menu
:Loan_Error
echo.
echo Loanshark: You need to pay back %loan% gold first.
echo Pay your current loan to get a new loan.
pause>nul
goto CASTLE

:Armory
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo A chubby salesman waves to you.
echo.
echo Chubby: What would you like to buy?
echo.
echo Gold: %money%
echo.
echo 1) Wooden Sword: 200 gold
echo 2) Crystal Sword: 9000 gold
echo 3) Runic Sword: 49000 gold
echo.
echo 4) Back
set /p Choice6=
if %Choice6%==1 goto BK
if %Choice6%==2 goto BR
if %Choice6%==3 goto BG
if %Choice6%==4 goto CASTLE
goto Armory

:BK
cls
if %money% GEQ 200 set sword1=%sword1%+1
if %money% GEQ 200 set /a money=%money%-200
echo.
echo Chubby: Have a good day.
goto Armory
:BR
cls
if %money% GEQ 9000 set sword7=%sword7%+1
if %money% GEQ 9000 set /a money=%money%-9000
goto Armory
:BG
cls
if %money% GEQ 49000 set sword9=%sword9%+1
if %money% GEQ 49000 set /a money=%money%-49000
echo.
echo Chubby: Have a good day.
goto Armory

:Beg
set /a FATIGUE=%FATIGUE%+3
cls
echo.
echo You beg for gold at the castle gate.
echo.
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo You get some gold.
if %upgradee% EQU None set /a money=%money%+20
if %upgradee% EQU Quaint set /a money=%money%+50
if %upgradee% EQU Pretty set /a money=%money%+100
if %upgradee% EQU Fierce set /a money=%money%+150
echo.
pause
goto CASTLE

:menuC
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
@echo off
MyersRealm Casino
set /a FATIGUE=%FATIGUE%+1
cls
set /a slot1=0
set /a slot2=0
set /a slot3=0
echo.
echo You enter into bright and vivid lights.
echo.
echo You sit at a table across from the House dealer.
echo.
echo House Dealer: Make a bet, and hope for 3 matches.
echo If you get 3 matches, your reward will be 10x your bet.
echo If you don't get 3 matches, you lose your bet.
echo.
pause>nul
goto gameC

:gameC
cls
echo.
echo House Dealer: How much would you like to bet?
echo.
echo Slot 1:   Slot 2:   Slot 3:
echo    %slot1%         %slot2%         %slot3%
echo.
echo.
echo Gold: %money%
echo.
echo E) Exit
set /p bet=
echo.
if %bet% EQU E goto Menu
if %bet% LEQ %money% goto moneycheckcomplete
if %bet% GTR %money% goto nomoney

:moneycheckcomplete
set /a money=%money%-%bet%
echo Put %bet% gold against the House Dealer. Gold decreased to %money%.
echo. 
echo Press any key to roll.
pause>nul
goto roll

:roll
set /a slot1=%random%*5/32767+1
set /a slot2=%random%*5/32767+1
set /a slot3=%random%*5/32767+1
goto gameC2

:nomoney
echo.
echo House Dealer: You do not have enough money. 
echo Would you like to change your bet?
echo.
echo 1) Yes
echo 2) No
set /p reset=
if %reset% EQU 1 goto gameC
if %reset% EQU 2 goto menu

:gameC2
cls
echo.
echo.
echo Slot 1:   Slot 2:   Slot 3:
echo    %slot1%         %slot2%         %slot3%
echo.
echo.
echo Gold: $%money%
echo.

if %slot1% EQU 1 goto s21
if %slot1% EQU 2 goto s23
if %slot1% EQU 3 goto s25
if %slot1% EQU 4 goto s27
if %slot1% EQU 5 goto s29
:s21
if %slot2% EQU 1 goto s31
if %slot2% NEQ 1 goto gameC
:s23
if %slot2% EQU 2 goto s33
if %slot2% NEQ 2 goto gameC
:s25
if %slot2% EQU 3 goto s35
if %slot2% NEQ 3 goto gameC
:s27
if %slot2% EQU 4 goto s37
if %slot2% NEQ 4 goto gameC
:s29
if %slot2% EQU 5 goto s39
if %slot2% NEQ 5 goto gameC
:s31
if %slot3% EQU 1 goto gain1
if %slot3% NEQ 1 goto gameC
:s33
if %slot3% EQU 2 goto gain3
if %slot3% NEQ 2 goto gameC
:s35
if %slot3% EQU 3 goto gain5
if %slot3% NEQ 3 goto gameC
:s37
if %slot3% EQU 4 goto gain7
if %slot3% NEQ 4 goto gameC
:s39
if %slot3% EQU 5 goto gain9
if %slot3% NEQ 5 goto gameC
:gain1
set /a moneygain=%bet%*10
set /a money=%money%+%moneygain%
echo House Dealer: You bet $%bet% so you gain $%moneygain%.
echo.
pause
goto gameC

:gain3
set /a moneygain=%bet%*25
set /a money=%money%+%moneygain%
echo House Dealer: You bet $%bet% so you gain $%moneygain%.
echo.
pause
goto gameC
:gain5
set /a moneygain=%bet%*10
set /a money=%money%+%moneygain%
echo House Dealer: You bet $%bet% so you gain $%moneygain%.
echo.
pause
goto gameC
:gain7
set /a moneygain=%bet%*50
set /a money=%money%+%moneygain%
echo House Dealer: You bet $%bet% so you gain $%moneygain%.
echo.
pause
goto gameC
:gain9
set /a moneygain=%bet%*10
set /a money=%money%+%moneygain%
echo House Dealer: You bet $%bet% so you gain $%moneygain%.
echo.
pause
goto gameC

:BOATING
cls
if %boat1% GEQ 1 goto vNOSAILING
if %boat5% GEQ 1 goto vNOSAILING
if %boat6% GEQ 1 goto vNOSAILING
if %boatlvl% GEQ 1 goto vNOSAILING
if %sweather% EQU Windy GOTO SAILING
echo.
echo You can only take your boat out on a WINDY DAY.
echo.
pause
cls
goto menuF

:vNOSAILING
cls
echo.
echo It needs to be windy to sail.
echo.
pause
goto menuF

:NOSAILING
cls
echo.
echo You need to own a boat to sail.
echo.
pause
goto menuF

:SAILING
cls
echo.
echo You take your boat sailing.
set /a boatlvl=%boatlvl%+1
ping localhost -n 2 >nul
set /a v=%random%*10/32767+1
if %v% EQU 1 goto island2
if %v% EQU 2 if %maps% GEQ 1 goto SAILTR
ping localhost -n 2 >nul
echo You caught some fish, crabs, a kingfish, and you relaxed.
set /a fish=%fish%+4
set /a kingfish=%kingfish%+1
set /a crab=%crab%+2
set /a FATIGUE=%FATIGUE%+5
echo.
pause
goto menuF

:SAILTR
cls
echo.
echo A map from your inventory led you to treasure^^!
set /a tr=%random%*5/32767+1
if %tr% EQU 1 /a set money=%money%+1000
if %tr% EQU 1 echo You looted 1000 gold^^!
if %tr% EQU 2 /a set money=%money%+2000
if %tr% EQU 2 echo You looted 2000 gold^^!
if %tr% EQU 3 /a set money=%money%+3000
if %tr% EQU 3 echo You looted 3000 gold^^!
if %tr% EQU 4 /a set money=%money%+4000
if %tr% EQU 4 echo You looted 4000 gold^^!
if %tr% EQU 5 /a set money=%money%+5000
if %tr% EQU 5 echo You looted 5000 gold^^!
set /a maps=%maps%-1
pause
goto MENUF

:island2
cls
echo.
echo The wind blows you to an island^^!
echo.
pause
goto ISLAND

:ISLAND
cls
set /a foundi=1
echo.
echo Where would you like to go on the island?
echo.
echo 1) Pretty Cove
echo 2) Island Shop
echo 3) Class Changer
echo 4) Bagle the Explorer
echo 5) Cave Dungeon
echo 6) Your Boat
echo.
set /p input=
if %input% == 1 goto fight2
if %input% == 2 goto shop2
if %input% == 3 goto CLASSCHANGE
if %input% == 4 goto BAGLE
if %input% == 5 goto CAVE01
if %input% == 6 goto BACKMENUF
goto ISLAND

:BAGLE
cls
if %curlvl% LEQ 19 goto NOTYET
echo.
echo Bagle: Ah, hello. Good to see you.
echo It's me, Bagle, holder of Explorer Armor.
:BAGLE2
echo.
echo Equip the Explorer Armor to explore special places.
echo Those places are yours to find.
echo The armor set has no damage or defense bonuses.
echo.
echo 1) Equip Explorer Armor
echo 2) Remove Explorer Armor
echo.
echo 3) Back
echo.
echo.
set /p login=
if %login% EQU 1 goto EQBAGLE
if %login% EQU 2 goto RBAGLE
if %login% EQU 3 goto ISLAND
goto BAGLE2

:NOTYET
cls
echo.
echo This location is closed at the moment.
echo.
pause
goto ISLAND

:EQBAGLE
if %armtype% EQU Explorer goto EQBHAVE
cls
echo.
echo Bagle: It looks great on you.
echo.
set armtype=Explorer
pause
cls
goto BAGLE2

:EQBHAVE
cls
echo.
echo Bagle: You're already wearing it...
echo.
pause
cls
goto BAGLE2

:RBAGLE
if %armtype% EQU Explorer goto RBAGLE2
cls
echo.
echo Bagle: You aren't wearing it...
echo.
pause
cls
goto BAGLE2

:RBAGLE2
cls
echo.
echo Bagle: Thank you for returning it.
echo.
set armtype=No
pause
cls
goto BAGLE2

:BACKMENUF
cls
echo.
echo You sail back to the Kingdom of Varrock.
ping localhost -n 2 >nul
echo.
pause
goto MENUF

:CLASSCHANGE
cls
echo.
echo Bermus: I can change your class for you any time you come to the island.
echo Hoarder and Beggar aren't available since you already started the game.
if %class% EQU Hoarder echo So your current class Hoarder won't be available again.
if %class% EQU Beggar echo So your current class Beggar won't be available again.
echo.
echo Current class: %class%
echo.
echo 1) Mage
echo 2) Warrior
echo 3) Brute
echo 4) Thief
echo 5) Undead
echo 6) Humble
echo.
echo 7) Back
echo.
set /p login=
set class=Humble
if %login% EQU 1 set class=Mage
if %login% EQU 2 set class=Warrior
if %login% EQU 3 set class=Brute
if %login% EQU 4 set class=Thief
if %login% EQU 5 set class=Undead
if %login% EQU 6 set class=Humble
if %login% EQU 7 goto ISLAND
cls
echo.
echo You have chosen the %class% class.
if %class% EQU Humble echo You have no class or perks.
if %class% EQU Thief echo You now have perks in thieving.
if %class% EQU Mage echo You now have perks in magic.
if %class% EQU Warrior echo You now have perks in all damage.
if %class% EQU Brute echo You now have perks in all defense.
if %class% EQU Undead echo You now lose nothing when you die.
echo.
pause
goto CLASSCHANGE

:GORGON
cls
echo.
echo Gorgon: Gorgon think you so strong.
echo You make Gorgon your husband?
echo Make Gorgon happy?
ping 192.0.2.0 -n 1 -w 3000 > nul
echo.
echo 1) Absolutely, Gorgon.
echo 2) How about later...?
echo.
set /p p1=
if %p1% EQU 1 goto YES_GB
if %p1% EQU 2 goto NO_GB
goto Gorgon

:YES_GB
cls
echo.
echo Gorgon: Yay^^! That make me happy^^!
echo Gorgon be at your home^^!
echo.
set MARRIED=1
set WNAME=GORGON
pause
goto ISLAND
:NO_GB
cls
echo.
echo Gorgon: Gorgon understand...
echo.
pause
goto ISLAND

:GORGONGONE
cls
echo.
echo The cove is now abandoned.
echo.
pause
goto ISLAND

:fight2
if %MARRIED% LEQ 0 if %curlvl% GEQ 20 goto GORGON
if %MARRIED% GEQ 1 if %curlvl% GEQ 20 goto GORGONGONE
cls
set enhealth=70
echo.
echo The cove is bright and filled with small trees.
echo.
pause>nul
cls
echo.
echo A Gorgon charges at you^^!
pause
:fightRe2
if %hp% LSS 1 goto DIE
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** Gorgon's Health: %enhealth% ****
echo.                                                         
echo.
echo 1) Attack
echo 2) Drink Potion
echo 3) Flee
echo.
set /p input=

if %input% == 1 goto attack2
if %input% == 2 goto potion2
if %input% == 3 goto flee2
goto fight

:attack2
set num=%random:~-2%
if %num% LSS 0 set num=0
if %num% == 00 set num=0
if %num% == 01 set num=1
if %num% == 02 set num=2
if %num% == 03 set num=3
if %num% == 04 set num=4
if %num% == 05 set num=5
if %num% == 06 set num=6
if %num% == 07 set num=7
if %num% == 08 set num=0
if %num% == 09 set num=7
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** Gorgon's Health: %enhealth% ****
echo.                                                         
echo.
echo You take %num% health from the Gorgon.
pause >nul
set /a enhealth= %enhealth% - %num%
goto enattack

:enattack
cls
if %enhealth% LSS 1 goto win2
set num=%random:~-1%
if %num% GTR 7 goto enattack
if %num% LSS 0 goto enattack
if %num% LSS 0 set num=0
echo.
echo.                                                         
echo **** Your Health: %hp% ***** Gorgon's Health: %enhealth% ****
echo.                                                        
echo.
echo The Gorgon attacks you.
echo.
pause>nul
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** Gorgon's Health: %enhealth% ****
echo.                                                         
echo.
echo The Gorgon takes %num% health from you.
set /a HP= %HP% - %num%
if %hp% LSS 1 goto DIE
pause >nul
if %hp% LSS 1 goto DIE
goto fightRe2

:win2
set num=%random:~-2%
if %num% GTR 35 goto win2
if %num% LSS 15 goto win2
cls
echo.
echo Congratulations, you killed the Gorgon^^!
set /a killcount=%killcount%+1
echo.
echo You recieved %num% gold and a rupee^^!
pause >nul
set /a money= %money%+(%num%*10)
set /a rupee= %rupee%+1
goto ISLAND


:potion2
cls
echo.
echo 1) Drink Potion
echo 2) Back
echo.
set /p input=Enter:
if %input% == 2 goto fight2
if %potion% LSS 1 set goto 2nopots
if %input% == 1 set hp=%hp%
if %input% == 1 set /a potion= %potion% - 1
if %input% == 1 set /a hp= %hp% + 35
if %input% == 1 goto enattack
goto potion2

:2nopots
cls
echo.
echo You have no potions ^^!
pause >nul
goto fight2

:flee2
cls
echo.
echo You run away back to the island dock^^!
echo.
pause >nul
goto ISLAND

:shop2
cls
echo.
echo Islander: Hello, stranger.
echo Need potions?
echo.
echo.
echo ----------------------------
echo Gold: %money%
echo ----------------------------
echo Potions: %potion%
echo.
echo 1) Potion:  30 Gold
echo 2) Back
echo.
set /p input=

if %input% == 2 goto ISLAND
if %money% LSS 30 goto nofunds
if %input% == 1 set /a money= %money% - 30
if %input% == 1 set /a potion=%potion%+1
if %input% == 1 goto shop2
goto shop2

:nofunds
cls
echo.
echo You don't have enough gold to purchase this.
pause >nul
goto shop2

:menuF
set /a FATIGUE=%FATIGUE%+1
set pcrab=25
set pkingfish=3
set pfish=7
cls
echo.
if %bshard% EQU 1 echo Baby squid play in the water by the Castle drainpipe.
if %bshard% EQU 1 echo.
echo Dockman: Good to see you. Always a nice day for the dock.
echo What would you like to do here?
echo.
echo 1) Boat Shop
echo 2) Bet on Tide
echo 3) Fish Market
echo 4) Fish Inventory
echo 5) Rich Store
echo 6) Sail Boat
echo.
echo 7) Back
set /p x1=
if %x1% == 1 goto boatstore
if %x1% == 2 goto gamble1
if %x1% == 3 goto market1
if %x1% == 4 goto checkitemsF
if %x1% == 5 goto richstore
if %x1% == 6 goto BOATING
if %x1% == 7 goto MENU
goto menuF

:boatstore
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo Gold: %money%
echo Boat Level: %boatlvl%
echo.
echo Boater: What can I do for you today?
echo.
echo 1) Sail Boat:  -Level: %boat1%
echo.                Cost: 2,000 Gold.
echo 2) Pro Boat:   -Level: %boat5%
echo.                Cost: 500,000 Gold.
echo 3) Dream Boat: -Level: %boat6%
echo                 Cost: 1,000,000 Gold.
echo.
echo 4) Back
set /p v1=
if %v1% == 1 goto boat1
if %v1% == 2 goto boat5
if %v1% == 3 goto boat6
if %v1% == 4 goto menuF
goto boatstore

:boat1
cls
if %money% leq 1999 (
echo.
echo Boater: You don't have enough Gold.
pause >nul
goto boatstore
)
set /a money=%money% - 2000
set /a boat1=%boat1%+1
set /a boatlvl=%boatlvl%+1
echo.
echo Boater: Enjoy your Sail Boat.
pause >nul
goto boatstore

:boat5
cls
if %boat1% LEQ 9 goto NOBOATLVL
if %money% leq 499999 (
echo.
echo Boater: You don't have enough Gold.
pause >nul
goto boatstore
)
set /a money=%money% - 500000
set /a boat5=%boat5%+1
set /a boatlvl=%boatlvl%+1
echo.
echo Boater: Enjoy your Pro Boat.
pause >nul
goto boatstore

:boat6
cls
if %boat5% LEQ 9 goto NOBOATLVL
if %money% leq 999999 (
echo.
echo Boater: You don't have enough Gold.
pause >nul
goto boatstore
)
set /a money=%money% - 1000000
set /a boat6=%boat6%+1
set /a boatlvl=%boatlvl%+1
echo.
echo Boater: Enjoy your Dream Boat.
pause >nul
goto boatstore

:NOBOATLVL
cls
echo.
echo You need to level up the boat before this
echo to at least level 10 to buy this boat.
echo.
pause >nul
goto boatstore

:gamble1
set /a FATIGUE=%FATIGUE%+3
cls
call :gamble1display
if %money% equ 0 (
echo Dockman: You lost all your gold.
pause >nul
goto menuF
)
goto bet1

:bet1
call :gamble1display
cls
echo.
echo Dockman: How much gold do you wager? 
echo.
echo Gold: %money%
echo.
echo E) Exit
set /p gamb=
if %gamb% equ E goto menuF
if not %gamb% leq %money% (
cls
echo.
echo Gold Left: %money%
cls
echo.
echo Dockman: You better get some more gold.
pause >nul
goto gamble1
)
set r1=%random%
set r2=%r1%
set /a r1= %r1% / 2
set /a r1= %r1% * 2
if %r1%==%r2% (
set /a money=%money%-%gamb%
call :gamble1display
echo.
echo Dockman: The tides weren't in your favour.
echo You lost %gamb% gold.
echo.
pause
goto gamble1
) else (
set /a money=%money%+%gamb%
call :gamble1display
echo.
echo Dockman: You read the tides well.
echo You won %gamb% gold.
echo.
pause
goto gamble1
)

:gamble1display
cls
echo.
echo Gold Left: %money%
goto :eof

:market1
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo Fisher: Welcome to my Fish Market.
set counter1=1
set pcrab=%pkingfish%
set pkingfish=%pkingfish%
set pfish=%pkingfish%
set r1=%random%
set r2=%r1%
set /a r1= %r1% / 2
set /a r1= %r1% * 2
if %r1%==%r2% (
set changep=nochange
) else (
set changep=change
)
if %changep% equ nochange (
call :market1display
goto buyfish
)
if %changep% equ change (
goto changeps
)
goto menuF

:market1display
echo What can I help you with?
set pcrab=10
set pfish=5
set pkingfish=15
echo.
echo Gold: %money%
echo.
echo Price of crab:      %pcrab%
echo Price of kingfish:  %pkingfish%
echo Price of fish:      %pfish%
echo.
goto :eof

:changeps
set r1=%random%
set r2=%r1%
set /a r1= %r1% / 2
set /a r1= %r1% * 2
if %r1%==%r2% (
set /a pfish%counter1%=!pfish%counter1%!+1
) else (
set /a pfish%counter1%=!pfish%counter1%!-1
)
if !pfish%counter1%! leq 0 (
set /a pfish%counter1%=!pfish%counter1%!+1
)
set /a counter1=%counter1%+1
if not %counter1% geq 7 (
goto changeps
)
set pcrab=%pcrab%
set pkingfish=%pkingfish%
set pfish=%pfish%
call :market1display
goto buyfish

:buyfish
echo 1) Buy Fish
echo 2) Sell Fish
echo.
echo 3) Back
echo.
set /p aw1=
if not %aw1% leq 3 goto market1
if %aw1% equ 3 goto menuF
if %aw1% equ 2 goto sellfishz
cls
echo.
echo Fisher: What type do you wish to buy? Kingfish, crab or fish?
echo.
echo 1) Back
set /p fc4=
if %fc4% equ crab goto buyfishz
if %fc4% equ kingfish goto buyfishz
if %fc4% equ fish goto buyfishz
if %fc4% equ 1 goto menuF
goto market1

:buyfishz
cls
echo.
echo Fisher: How many %fc4% do you wish to buy?
set /a maxf=%money%/!p%fc4%!
set /a pprice=%maxf%*!p%fc4%!
echo You can buy up to %maxf% %fc4%. (cost %pprice%)
set /p x1w=
set /a price=!p%fc4%!*%x1w%
if %price% gtr %money% (
echo  You don't have enough gold.
pause >nul
goto market1
)
set /a %fc4%=!%fc4%! + %x1w%
set /a money=%money% - %price%
echo Fisher: You bought %x1w% %fc4% for %price% gold.
pause >nul
goto market1

:sellfishz
cls
echo.
echo Fisher: What type of fish do you wish to sell? Kingfish, crab or fish?
echo.
echo 1) Back
echo.
set /p fc4=
if %fc4% equ crab goto sellfish
if %fc4% equ kingfish goto sellfish
if %fc4% equ fish goto sellfish
if %fc4% equ 1 goto menuF
goto market1

:sellfish
cls
echo.
echo Fisher: How many %fc4% do you wish to sell?
set /a gg2=!%fc4%!*!p%fc4%!
echo You have !%fc4%! %fc4%. (worth %gg2% gold.)
set /p x1w=
if !%fc4%! lss %x1w% (
echo Fisher: You don't have that much...
pause >nul
goto market1
)
set /a price=!p%fc4%!*%x1w%
set /a money=%price% + %money%
set /a %fc4%=!%fc4%!-%x1w%
echo Fisher: You sold %x1w% %fc4% for %price%  gold.
pause >nul
goto market1

:checkitemsF
cls
echo.
echo Boat Level:  %boatlvl%
echo.
echo Kingfish:    %kingfish%
echo Crab:        %crab%
echo Fish:        %fish%
echo.
echo Sail Boat Level:    %boat1%
echo Pro Boat Level:     %boat5%
echo Dream Boat Level:   %boat6%
echo.
pause >nul
goto menuF

:richstore
set /a FATIGUE=%FATIGUE%+2
cls
echo.
echo Snoot: You wanna buy a Boat Medal?
echo Only the best have them.
echo.
echo Fish:                %fish%
echo Crabs:               %crab%
echo Kingfish:            %kingfish%
echo.
echo Medal of Achievement:%moa%
echo.                           
echo 1) Boat Medal:     1000 Fish
echo                    100 Kingfish
echo                    100 Crabs
echo.                  
echo 2) Exit
set /p rxx=
if %rxx% equ 1 goto buymedal
if %rxx% equ 2 goto menuF
goto menuF

:buysq
echo.
echo 1) Buy this with fish.
set /p sqb=
if %sqb% equ 1 goto bbbuysq
goto richstore

:bbbuysq
if %fish% lss 500
echo Snoot: You don't have enough fish.
pause >nul
goto richstore
if %fish% GEQ 500
set /a fish=%fish%-500
set /a boatlvl=%boatlevel%=5
goto richstore

:buygsq
echo.
echo 1) Buy this with Kingfish.
set /p sqb=
if %sqb% equ 1 goto bbbuygsq
goto richstore

:bbbuygsq
if %kingfish% lss 10 (
echo Snoot: You don't have enough Kingfish.
pause >nul
goto richstore
if %kingfish% GEQ 10
set /a kingfish=%kingfish%-10
set /a money=%money%+10000
goto richstore

:buygws
if %crab% lss 50 
echo Snoot: You don't have enough crabs.
pause >nul
goto richstore
if %crab% GEQ 50
set /a crab=%crab%-50
set /a rupee=%rupee%+1
goto richstore

:buymedal
if %fish% lss 1000 (
echo Snoot: You cannot afford this yet..
pause >nul
goto richstore
)
if %kingfish% lss 100 (
echo Snoot: You cannot afford this yet..
pause >nul
goto richstore
)
if %crab% lss 100 (
echo Snoot: You cannot afford this yet..
pause >nul
goto richstore
)
set /a fish=%fish%-1000
set /a kingfish=%kingfish%-100
set /a crab=%crab%-100
set /a moa+=1
cls
echo.
echo Snoot: Glad to do business with you.
echo.
pause
goto richstore

:CRAINY
cls
echo.
echo This location is closed due to rain.
echo.
pause
goto MENU

:Arena
if %days% EQU Day goto CLOSED1
if %sweather% EQU RAINY goto CRAINY
cls
:menu1
cls
set /a ammo=0
set /a opammo=0
echo.
echo You walk into the well lit Arena...
echo The crowd chants your name.
echo.
echo %username1%^^! %username1%^^! %username1%^^! %username1%^^! %username1%^^!^^!^^!
echo.
echo Arena Master: The Arena is a rewarding game mode.
echo Win 3 consecutive fights to earn your rewards.
echo You can win fights by killing a Warrior. 
echo To Swing you must Breathe first. Block to avoid death^^!
echo.
echo Armor: %armtype% Armor
echo Weapon: %swordtype% %skind%
echo.
echo 1) Fight
echo 2) Back
echo.
set /p a5= 
if %a5% EQU 1 goto game
if %a5% EQU 2 goto menu

:game
set /a FATIGUE=%FATIGUE%+2
cls
echo.
echo       Wins: %wins%
echo.
echo  Your Breath: %ammo%
echo Warrior Breath: %opammo%
echo.
echo What would you like to do?
echo.
echo 1) Block
echo 2) Breathe
echo 3) Swing
echo.
set /p choice=

:cpuchoice
set /a v=%random%*3/32767+1
if %v% EQU 1 goto defend
if %v% EQU 2 goto reload
if %v% EQU 3 goto shoot
goto cpuchoice

:defend
if %choice% EQU 1 goto defenddefend
if %choice% EQU 2 goto reloaddefend
if %choice% EQU 3 goto shootdefend
:reload
if %choice% EQU 1 goto defendreload
if %choice% EQU 2 goto reloadreload
if %choice% EQU 3 goto shootreload
:shoot
if %choice% EQU 1 goto defendshoot
if %choice% EQU 2 goto reloadshoot
if %choice% EQU 3 goto shootshoot

:defenddefend
cls
echo.
echo.
echo Both you and the Warrior blocked.
echo.
echo Defensive move on both ends.
echo.
echo.
pause
goto game

:reloaddefend
cls
set /a ammo=%ammo%+1
echo.
echo.
echo You take a moment to breathe while the Warrior blocks.
echo.
echo Good use of his idiocy.
echo.
echo.
pause
goto game

:shootdefend
if %ammo% GEQ 1 goto shootdefend1
if %ammo% EQU 0 goto noammo

:shootdefend1
cls
set /a ammo=%ammo%-1
echo.
echo.
echo You swing at the Warrior and he blocks.
echo.
echo You better catch your breath!
echo.
echo.
pause
goto game

:defendreload
cls
set /a opammo=%opammo%+1
echo.
echo.
echo You block while the Warrior breathes.
echo.
echo Such a good chance wasted!
echo.
echo.
pause
goto game

:reloadreload
cls
set /a ammo=%ammo%+1
set /a opammo=%opammo%+1
echo.
echo.
echo Both you and the Warrior take a moment to breathe.
echo.
echo Each of you has an equal advantage.
echo.
echo.
pause
goto game

:shootreload
if %ammo% GEQ 1 goto shootreload1
if %ammo% EQU 0 goto noammo

:shootreload1
cls
set /a wins=%wins%+1
set /a ammo=%ammo%-1
set /a opammo=0
echo.
echo.
echo You swung at the Warrior while he was taking a breath.
echo.
echo You've beat him!
echo.
echo.
set /a sjewel=%sjewel%+1
set /a money=%money%+1000
set /a playerxp=%playerxp%+300
pause
if %wins% EQU 3 goto winarena
if %wins% LEQ 3 goto game

:defendshoot
if %opammo% GEQ 1 goto defendshoot1
if %opammo% EQU 0 goto cpuchoice

:defendshoot1
cls
set /a opammo=%opammo%-1
echo.
echo.
echo You block as the Warrior swings.
echo.
echo Good job forseeing that one!
echo.
echo.
pause
goto game

:reloadshoot
if %opammo% GEQ 1 goto reloadshoot1
if %opammo% EQU 0 goto cpuchoice

:reloadshoot1
cls
set /a loss=%loss%+1
set /a opammo=%opammo%-1
set /a ammo=0
echo.
echo.
echo The Warrior strikes you while you're breathing!
echo.
echo You've been killed!
echo.
echo.
set /a money=%money%-500
set /a wins=0
pause
goto die

:shootshoot
if %opammo% GEQ 1 goto shootshoot1
if %opammo% EQU 0 goto cpuchoice

:shootshoot1
if %ammo% GEQ 1 goto shootshoot2
if %ammo% EQU 0 goto noammo

:shootshoot2
set /a ammo=0
set /a opammo=0
cls
echo.
echo.
echo You and the Warrior swing mightily.
echo.
echo You both end up killing eachother!
echo.
echo.
set /a money=%money%-500
set /a wins=0
pause
goto die

:noammo
echo.
echo.
echo You need to take a breath!
echo.
echo.
pause
goto game

:winarena
cls
set /a sjewel=%sjewel%+1
set /a money=%money%+10000
set /a killcount=%killcount%+3
Echo.
Echo Arena Master: You've won some excruciating battles!
Echo You have been rewarded 10,000 gold and 1 strange jewel.
echo Come back any time to test your luck again!
set /a opammo=0
set /a ammo=0
set /a wins=0
pause>nul
goto MENU

:QUEST_MASTER
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo Quest Master: Welcome to the Quest Hall^^!
echo This is a log of your quests.
echo.
echo Quests:
set qmoa=0
set qboat=0
set killquest=0
set swlw=0
set qkingsman=0 
set newfriend=0
set shardss=0
set qarmorq=0
set dddquest=0
set qtowerq=0
set qfkq=0
set gfquest=0
set gfquest=0
set qchild=0
set wquest=0
set pquest=0
set bequest=0
set mmaquest=0
set skquest=0
set mquestm=0
set yquest=0
set qrepq=0
set huquest=0
set cuquest=0
if %TUMMY% GEQ 1 set /a swlw=1
if %killcount% GEQ 400 set /a killquest=1
if %boatlvl% GEQ 1 set /a qboat=1
if %moa% GEQ 1 set /a qmoa=1
if %kingsman% GEQ 1 set /a qkingsman=1
if %fhappy% GEQ 100 set /a newfriend=1
if %bshard% EQU 1 if %gshard% EQU 1 if %rshard% EQU 1 set /a shardss=1
if %hunterarmor% GEQ 1 set /a qarmorq=1
if %dquest% GEQ 5 set /a dddquest=1
if %towerwin% GEQ 4 set /a qtowerq=1
if %fkindle% GEQ 500 set /a qfkq=1
if %greenquest% GEQ 9 set /a gfquest=1
if %foxquest% GEQ 9 set /a gfquest=1
if %CHILD% EQU 1 set /a qchild=1
if %MARRIED% EQU 1 set /a wquest=1
if %petowner% EQU 1 set /a pquest=1
if %boatlvl% GEQ 100 set /a bequest=1
if %curlvl% GEQ 30 set /a mmaquest=1
if %ttllvl% GEQ 90 set /a skquest=1
if %money% GEQ 100000000 /a set mquestm=1
if %daycount% GEQ 180 set /a yquest=1
if %rep% GEQ 90 set /a qrepq=1
if %Hupgradee% EQU "Hell's Atourney" set /a huquest=1 
if %upgradee% EQU FIERCE set /a cuquest=1
set /a numquests=%cuquest%+%huquest%+%yquest%+%qrepq%+%mquestm%+%skquest%+%foundi%+%foundh%+%qboat%+%swlw%+%qmoa%+%qkingsman%+%killquest%+%newfriend%+%shardss%+%qarmor%+%dddquest%+%qtowerq%+%qfkq%+%gfquest%+%qchild%+%wquest%+%pquest%+%bequest%+%mmaquest%
set /a questleft=25-%numquests%
echo - Own a boat:               %qboat%
echo - Buy Medal of Achievement: %qmoa%
echo - Get swallowed:            %swlw% 
echo - Get a pet:                %pquest%
echo - Find a spouse:            %wquest%
echo - Have a child:             %qchild%
echo - Play to year 4:           %yquest%
echo - Become a Kingsman:        %qkingsman%
echo - Befriend a warlord:       %newfriend%
echo - Help a hunter:            %qarmorq% 
echo - Rescue a damsel:          %dddquest%
echo - Save a burning kingdom:   %qfkq%
echo - Solve the forest problem: %gfquest%
echo - Find special location 1:  %foundi%
echo - Find special location 2:  %foundh%
echo - Beat all dungeons:        %shardss%
echo - Beat 3 towers:            %qtowerq%
echo - Be a strong adventurer:   %mmaquest%
echo - Be a skilled adventurer:  %skquest%
echo - Be a rich adventurer:     %mquestm%
echo - Be a loved adventurer:    %qrepq%
echo - Be a savage adventurer:   %killquest%
echo - Be a sea adventurer:      %bequest%
echo - Be a hellish adventurer:  %huquest%
echo - Be a lavish adventurer:   %cuquest%
echo.
echo Remaining Quests: %questleft%
echo Completed Quests: %numquests%
pause>nul
goto MENU

:BANK2
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
if %days% EQU Night goto CLOSED1
set /a FATIGUE=%FATIGUE%+2
set destination1=BANK2
cls
echo.
echo Mage: This amazing place converts Flows.
echo Put whatever kind in and convert it to either kind...
echo 500 gold per withdraw...
echo.
echo.                                
echo  You have %FFLOW% Fireflow.
echo  You have %WFLOW% Waterflows.			
echo.                               
set /a TFLOW=%FFLOW%+%WFLOW%			
echo       Total Flows: %TFLOW%	
echo       Jewels Ready: %bankgold2%						
echo.                                
echo 1) Convert
echo 2) Back
set /p a5=
if %a5% EQU 1 goto depositwithdraw2
if %a5% EQU 2 goto MENU
goto depositwithdraw2

:depositwithdraw2
cls
echo.
echo Would you like to deposit or withdraw flows?
echo.
echo 1) Deposit
echo 2) Withdraw
set /p am= 
if %am% EQU 1 goto depositgoldintobank2
if %am% EQU 2 goto withdrawgoldfrombank2

:depositgoldintobank2
cls
echo.
echo What kind of flow?
echo.
echo 1) Fire Flow
echo 2) Water Flow
echo 3) Back
echo.
set /p a3=
if %a3% EQU 3 goto BANK2
if %a3% EQU 1 goto POKJ
if %a3% EQU 2 goto POKK

:POKJ
pause<nul
cls
echo.
echo How many would you like to deposit?
echo.
set /p a6=
if %a6% LEQ 0 goto BANK2
if %a6% GTR %FFLOW% goto notenoughmoney
set /a bankgold2=%bankgold2%+%a6%
set /a FFLOW=%FFLOW%-%a6%
set /a bankgold2=%a6%+%bankgold2%
goto BANK2

:POKK
pause<nul
cls
echo.
echo How many would you like to deposit?
echo.
set /p a6=
if %a6% LEQ 0 goto BANK2
if %a6% GTR %WFLOW% goto notenoughmoney
set /a bankgold2=%bankgold2%+%a6%
set /a WFLOW=%WFLOW%-%a6%
set /a bankgold2=%a6%+%bankgold2%
goto BANK2

:withdrawgoldfrombank2
cls
echo.
echo What kind of Flow would you like to take?
echo.
echo 1) Fire Flow
echo.
echo 2) Water Flow
echo.
echo 3) Back
set /p a7=
if %money% LEQ 499 goto FLOWNO
if %a7% LEQ 0 goto BANK2
if %a7% EQU 1 (
if %bankgold2% LEQ 0 goto notenoughmoney
set /a fflow=%fflow%+%bankgold2%
set /a bankgold2-1 )
if %a7% EQU 2 (
if %bankgold2% LEQ 0 goto notenoughmoney
set /a wflow=%wflow%+%bankgold2%
set /a bankgold2-1 )
if %a7% EQU 3 goto BANK2
goto BANK2

:FLOWNO
cls
echo.
echo You don't have enough money to withdraw a flow...
echo.
pause>nul
goto BANK2

:BANK
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
if %days% EQU Night goto CLOSED1
set /a FATIGUE=%FATIGUE%+2
set destination1=BANK
cls
echo.
echo Mage: Each account can hold 1B gold.
echo.
echo                                
echo  You have %money% gold.			
echo.                               
echo       Account 1: %acc1m%			
echo          - Gold: %acc1g%				
echo.					
echo       Account 2: %acc2m%			
echo          - Gold: %acc2g%				
echo.					
echo       Account 3: %acc3m%			
echo          - Gold: %acc3g%				
echo.					
echo       Account 4: %acc4m%			
echo          - Gold: %acc4g%				
echo.					
echo       Account 5: %acc5m%			
echo          - Gold: %acc5g%				
echo                                
echo.
echo 6) Back
echo.
set /p a5=Access account number: 
if %a5% EQU 1 (
set bankgold=acc1g
set bankfull=acc1m )
if %a5% EQU 2 (
set bankgold=acc2g
set bankfull=acc2m )
if %a5% EQU 3 (
set bankgold=acc3g
set bankfull=acc3m )
if %a5% EQU 4 (
set bankgold=acc4g
set bankfull=acc4m )
if %a5% EQU 5 (
set bankgold=acc5g
set bankfull=acc5m )
if %a5% EQU 6 goto MENU
goto depositwithdraw

:depositwithdraw
echo.
set /p a8=Deposit or withdraw [d/w]: 
if %a8% EQU d goto depositgoldintobank
if %a8% EQU w goto withdrawgoldfrombank

:depositgoldintobank
echo.
set /p a6=Amount of gold you would like to deposit: 
if %a6% LEQ 0 goto BANK
if %a6% EQU all (
set /a %bankgold%=!%bankgold%!+%money%
if !%bankgold%! GEQ 1000000000 (
set /a money=!%bankgold%!-1000000000+%money%
set /a %bankgold%=1000000000
set %bankfull%=Closed )
set /a money=0
goto BANK )
if %a6% GTR %money% goto notenoughmoney
set /a %bankgold%=!%bankgold%!+%a6%
if !%bankgold%! GEQ 1000000000 (
set /a money=!%bankgold%!-1000000000+%money%
set /a %bankgold%=1000000000
set %bankfull%=Closed
goto BANK )
set /a money=%money%-%a6%
goto BANK

:withdrawgoldfrombank
echo.
set /p a7=Amount of gold you would like to withdraw: 
if %a7% LEQ 0 goto BANK
if %a7% EQU all (
set /a money=%money%+!%bankgold%!
set /a %bankgold%=0
set %bankfull%=Open
goto BANK )
if %a7% GTR !%bankgold%! goto notenoughmoney
set /a %bankgold%=!%bankgold%!-%a7%
set /a money=%money%+%a7%
if !%bankgold%! LSS 1000000000 set %bankfull% EQU Open
goto BANK

:1DLOCK
cls
echo.
echo Guard: You need to reach level 5 to enter this dungeon^^!
echo.
pause
goto MENU

:STR_WARN
if %curlvl% LEQ 4 goto 1DLOCK
if %gshard% EQU 1 goto 1DCLOSED
cls
echo.
echo Guard: This dungeon is very dangerous. 
echo You will DIE if you aren't ready...
echo Fleeing and items are only available
echo when you reach the dungeon boss...
echo.
echo Are you sure you wish to continue? 
echo.
echo 1) I'm ready
echo 2) I'll be back
set streakkill=0
echo.
set /p str1=
if %str1% EQU 1 goto STR_KC
if %str1% EQU 2 goto MENU

:1DCLOSED
cls
echo.
echo The dungeon is sealed shut.
echo.
pause
goto MENU

:STR_KC
set /a FATIGUE=%FATIGUE%+10
set /a npc=%random% %% 3+1
if %npc% EQU 1 goto goblinstr
if %npc% EQU 2 goto giantstr
if %npc% EQU 3 goto ratstr

:goblinstr
set npctype=Werewolf
set /a level=11
set /a health=150
set /a xp=1000
goto FS1_STR

:ratstr
set npctype=Ranger
set /a level=9
set /a health=140
set /a xp=1000
goto FS1_STR

:giantstr
set npctype=Warrior
set /a level=10
set /a health=145
set /a xp=1000
goto FS1_STR

:FS1_STR
if %streakkill% GEQ 6 goto BOSS_FIGHT
cls
echo.
echo You continue into the Stronghold...
echo.
ping localhost -n 2 >nul
echo You encounter a level %level% %npctype%.
echo.
ping localhost -n 2 >nul
goto ATK_STR

:ATK_STR
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%.
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
if %health% LEQ 0 goto CHECKFORLVL_STR
if %xpuntil% LEQ 0 set destination=FS3_STR
if %xpuntil% LEQ 0 goto levelup
if %petowner% EQU 1 goto 11Patk
goto FS3_STR

:11Patk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto Fs3_STR
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
goto FS3_STR

:FS3_STR
if %npctype% EQU Werewolf set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Ranger set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Warrior set /a dmgnpc=%random%*30/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %dmgnpc% LEQ 0 set /a dmgnpc=0
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo The %npctype% attacks.
if %dmgnpc% LEQ 0 (
set /a v=%random%*85/32767+1
set /a dmgnpc=%dmgnpc%+%v% )
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
ping localhost -n 2 >nul
goto ATK_STR

:CHECKFORLVL_STR
if %xpuntil% LEQ 0 set destination=FS3_STR
if %xpuntil% LEQ 0 goto levelup

:WIN_STR
set /a goldgain=%random%*1000/32767+1
set /a goldgain=%goldgain%+1000
set /a money=%money%+%goldgain%
cls
echo.
echo You won the battle against the %npctype%.
echo.
echo You gain %goldgain% gold.
echo.
pause>nul
set /a streakkill=%streakkill%+1
set /a hp=%orighp%
goto STR_KC

:BOSS_FIGHT
set /a hp=%orighp%
set npctype=Belabond
set /a level=25
set /a health=390
set /a xp=5000
goto FS1_STR_B

:FS1_STR_B
cls
echo.
echo You enter Belabond's throne room...
echo.
ping localhost -n 2 >nul
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You encounter %npctype%, a level %level% War Commander.
echo.
ping localhost -n 2 >nul
goto ATK_STR_3

:ATK_STR_3
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p login=
if %login% EQU 2 goto 1stFIGHTINGINVENTORY
if %login% EQU 3 goto 1stFLEE
cls
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to %npctype%.
echo.
echo He now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
pause
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %health% LEQ 0 goto CHECKFORLVL_STR_B
if %xpuntil% LEQ 0 set destination=FS_STR_3
if %xpuntil% LEQ 0 goto levelup
if %petowner% EQU 1 goto 22Patk
goto FS_STR_3

:1stFIGHTINGINVENTORY
cls
set destination2=fightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%          EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________		 	 			 	 
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	         Gemstones: %gem%
echo   Seeds: %seed%	         Magic Orbs: %morb%
echo   Furs: %fur%	         Raw Food: %rfood%
echo   Ore: %ore%	         Huge Bones: %hbone%
echo   Logs: %log%	         Dragon Hides: %dhide%
echo   Food: %food%	         Runic Tablets: %rtab%
echo   Ingots: %ingot%	         Goblin Mails: %gmail%
echo   Potions: %potion%             Bows: %bow%
echo   Crabs: %crab%               Kingfish: %kingfish%
echo                                                  
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key%  
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
set /p invencho=
if %invencho% EQU 1 goto ATK_STR_3
if %invencho% EQU 2 goto 1stBATTLEITEMS
if %invencho% EQU 3 goto 1steatfood

:1stBATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Inventory
set /p invencho=
if %invencho% EQU 2 goto 1stfightinginventory
if %invencho% EQU 1 goto 1stdrinkpotion
goto 1stBATTLEITEMS

:1stdrinkpotion
if %potion% LEQ 0 goto 1stnopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto FS_STR_3

:1stnopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto 1stBATTLEITEMS

:1steatfood
if %food% LEQ 0 goto 1stnofood
set /a FATIGUE=%FATIGUE%+2
set /a food=%food%-1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto FS_STR_3

:1stnofood
echo.
echo You don't have any food.
echo.
pause>nul
goto 1stfightinginventory

:22Patk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto FS_STR_3
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
if %health% LEQ 0 goto :CHECKFORLVL_STR_B
goto FS_STR_3

:FS_STR_3
if %npctype% EQU Belabond set /a dmgnpc=%random%*45/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a damage=%damage%-10
if %dmgnpc% LEQ 0 set /a dmgnpc=0
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %npctype% attacks.
echo.
if %dmgnpc% LEQ 50 (
set dmgnpc=49
set /a v=%random%*85/32767+1
set /a dmgnpc=%dmgnpc%+%v% )
ping localhost -n 2 >nul
echo %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
ping localhost -n 2 >nul
pause
goto ATK_STR_3

:CHECKFORLVL_STR_B
if %xpuntil% LEQ 0 set destination=FS_STR_3
if %xpuntil% LEQ 0 goto levelup

:WIN_STR_B
cls
echo.
echo You won the battle against %npctype%.
echo.
echo You recieved an Omega Maul.
echo You recieved Runic Armor.
echo You recieved the Green Shard.
echo You have gained %xp% Experience.
set /a sword11=%sword11%+1
set /a arm9=%arm9%+1
set /a killcount=%killcount%+1
set /a playerxp=%playerxp%+%xp%
set /a xpuntil=%xpuntil%-%xp%
set gshard=1
echo.
pause>nul
set /a hp=%orighp%
if %xpuntil% LEQ 0 set destination=MENU
if %xpuntil% LEQ 0 goto levelup
goto MENU

:DRAGON
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo At the bottom of the steps, there are 2 large doors.
echo You can go in the left or the right door.
echo.
echo 1) Left
echo 2) Right
echo.
echo 3) Back
echo.
set /p s1=
if %s1% EQU 1 goto DAMSEL
if %s1% EQU 2 goto BOSS_FIGHT2
if %s1% EQU 3 goto CASTLE

:DQGONE
cls
echo.
echo The room is empty.
echo.
pause
goto DRAGON

:DAMSEL
cls
if %key% GEQ 1 goto DSSS
if %key% LEQ 0 set key=0
if %key% LEQ 0 goto DAMSELSLEEP
if %days% EQU Night goto DAMSELSLEEP
:DSSS
set /a key=%key%-1
echo.
echo You use a key to enter.
echo.
pause
if %dquest% GEQ 5 goto DQGONE
cls
echo.
echo The room is dark. You see a beautiful damsel. She is crying!
echo.
:22DAMSEL
echo Damsel: Help, please help^^! I need 5 strange
echo jewels for my collection. My collection is at level %dquest%...
echo Will you help me? I will give you a rupee in return.
echo.
ping localhost -n 2 >nul
echo 1) Yes
echo 2) No
echo.
set /p s1=
if %s1% EQU 1 goto HELPDAMSEL
cls
echo.
echo Damsel: Oh...
echo.
pause
goto dragon

:HELPDAMSEL
cls
if %sjewel% LEQ 4 goto NOJEWEL
set /a sjewel=%sjewel%-5
set /a rupee=%rupee%+1
set /a dquest=%dquest%+1
echo.
echo Damsel: Oh thank you, %username1%^^!
echo My collection looks amazing^^! For now.
set /a chappy=%chappy%+5
echo.
pause
goto dragon

:NOJEWEL
cls
echo.
echo Damsel: You don't have 5 Strange Jewels...
echo.
pause
cls
goto 22DAMSEL

:DAMSELSLEEP
cls
echo.
echo The door is locked. Find a key or come back later.
echo.
pause
goto dragon

:BOSS_FIGHT2
if %key% GEQ 1 goto DSL
if %key% LEQ 0 set key=0
if %key% LEQ 0 goto DAMSELSLEEP
if %days% EQU Day goto DAMSELSLEEP
:DSL
set /a key=%key%-1
echo.
echo You use a key to enter.
echo.
pause
cls
echo.
echo It is very dark in this area...
echo.
pause
cls
echo.
echo A Dragon lunges at you^^!
set /a hp=%orighp%
set npctype=Elder Dragon
set /a level=741
set /a health=3780
set /a xp=5000
echo.
goto FS1_STR_B2

:FS1_STR_B2
cls
echo.
echo You enter the Elder Dragon's lair...
echo.
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You encounter %npctype%, a level %level% dragon.
echo.
ping localhost -n 2 >nul
goto ATK_STR_32

:ATK_STR_32
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%.
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
ping localhost -n 2 >nul
ping localhost -n 2 >nul
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %health% LEQ 0 goto CHECKFORLVL_STR_B2
if %xpuntil% LEQ 0 set destination=FS_STR_32
if %xpuntil% LEQ 0 goto levelup
goto FS_STR_32

:FS_STR_32
cls
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo.
echo The Elder Dragon takes one look at you and eats you!
ping localhost -n 2 >nul
ping localhost -n 2 >nul
goto DTUMMY

:DTUMMY
cls
echo.
echo You are in the Elder Dragon's tummy!
echo Can it get any worse?
echo I guess you'll have to wait...
echo.
pause
goto 2TUMMY

:2TUMMY
set /a FATIGUE=%FATIGUE%+20
set /a daycount=%daycount%+4
cls
echo.
echo A day or so passes...
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo.
pause
cls
echo.
echo Another day or so passes...
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo.
pause
cls
echo.
echo And another day or so passes...
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo.
pause
cls
echo.
echo The days blur together...
echo You are close to dying.
ping localhost -n 2 >nul
ping localhost -n 2 >nul
echo.
pause
if %rupee% GEQ 1 goto DRUPEE
goto OUTTUMMY

:DRUPEE
cls
echo.
echo A rupee in your inventory begins to glow^^!
echo It causes your vision to grey and you feel woozy.
ping localhost -n 2 >nul
set /a rupee=%rupee%-1
echo You pass out inside the dragon.
echo.
pause
goto home

:OUTTUMMY
set /a TUMMY=%TUMMY%+1
echo.
goto die

:DLearned
cls
echo.
echo You better not head back that way...
echo.
pause
goto DRAGON

:smuggler
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
if %days% EQU Day goto CLOSED1
set /a FATIGUE=%FATIGUE%+2
cls
echo.
echo Smuggler: Hello, %username1%, what can I do fer ya?
echo.
ping localhost -n 2 >nul
echo 1) Trade
echo.
echo 2) Back
echo.
set /p s1=
if %s1% EQU 1 goto tradesmuggler
if %s1% EQU 2 goto MENU


:tradesmuggler
cls
set /a numArmor=%arm1%+%arm2%+%arm3%+%arm4%+%arm5%+%arm6%+%arm7%+%arm8%+%arm9%+%arm10%+%arm11%+%arm12%
set /a numswords=%sword1%+%sword2%+%sword3%+%sword4%+%sword5%+%sword6%+%sword7%+%sword8%+%sword9%+%sword10%+%sword11%+%sword12%+%sword16%+%sword17%+%sword18%+%sword19%+%sword20%+%sword21%+%sword22%+%sword23%+%sword24%+%sword25%
echo.
echo You currently have %numswords% swords.
echo You currently have a %swordtype% %skind% equipped.
echo You currently have %numArmor% pieces of Armor.
echo You currently have %armtype% Armor equipped.
echo.
echo Smuggler: I'll buy weapons and armor... What have you got?
echo.
echo s1) Wooden Sword: %sword1%
echo s2) Stone Sword: %sword2%
echo s3) Bronze Sword: %sword3%
echo s4) Iron Sword: %sword4%
echo s5) Steel Sword: %sword5%
echo s6) Gold Sword: %sword6%
echo s7) Crystal Sword: %sword7%
echo s8) Sacred Blade: %sword8%
echo s9) Runic Sword: %sword9%
echo s10) Infernal Rapier: %sword10%
echo s11) Omega Maul: %sword11%
echo s12) Chaotic Spear: %sword12%
echo s13) Mythical Godsword: %ls1%
echo s14) Alydril Godsword: %ls2%
echo s16) Wooden Katana: %sword16%
echo s17) Evil Mace: %sword17%
echo s18) Shining Axe: %sword18%
echo s19) Shadow Spear: %sword19%
echo s20) Godess Sword: %sword20%
echo s21) Moon Saber: %sword21%
echo s22) Sun Knife: %sword22%
echo s23) Cannon: %sword23%
echo s24) Spiked Club: %sword24%
echo s25) Brass Knuckles: %sword25%
echo a1) Cloth Armor: %arm1%
echo a2) Chain Armor: %arm2%
echo a3) Bronze Armor: %arm3%
echo a4) Iron Armor: %arm4%
echo a5) Steel Armor: %arm5%
echo a6) Gold Armor: %arm6%
echo a7) Crystal Armor: %arm7%
echo a8) Sacred Armor: %arm8%
echo a9) Runic Armor: %arm9%
echo a10) Infernal Armor: %arm10%
echo a11) Omega Armor: %arm11%
echo a12) Chaotic Armor: %arm12%
echo a13) Mythical Amour: %la1%
echo a14) Alydril Armor: %la2%
echo.
echo 99) Leave
echo.
set /p s2=
if %s2% EQU s1 set swordchoice=Wooden
if %s2% EQU s1 set swordchoice2=Sword
if %s2% EQU s2 set swordchoice=Stone
if %s2% EQU s2 set swordchoice2=Sword
if %s2% EQU s3 set swordchoice=Bronze
if %s2% EQU s3 set swordchoice2=Sword
if %s2% EQU s4 set swordchoice=Iron
if %s2% EQU s4 set swordchoice2=Sword
if %s2% EQU s5 set swordchoice=Steel
if %s2% EQU s5 set swordchoice2=Sword
if %s2% EQU s6 set swordchoice=Gold
if %s2% EQU s6 set swordchoice2=Sword
if %s2% EQU s7 set swordchoice=Crystal
if %s2% EQU s7 set swordchoice2=Sword
if %s2% EQU s8 set swordchoice=Sacred
if %s2% EQU s8 set swordchoice2=Blade
if %s2% EQU s9 set swordchoice=Runic
if %s2% EQU s9 set swordchoice2=Sword
if %s2% EQU s10 set swordchoice=Infernal
if %s2% EQU s10 set swordchoice2=Rapier
if %s2% EQU s11 set swordchoice=Omega
if %s2% EQU s11 set swordchoice2=Maul
if %s2% EQU s12 set swordchoice=Chaotic
if %s2% EQU s12 set swordchoice2=Spear
if %s2% EQU s13 set swordchoice=Mythical
if %s2% EQU s13 set swordchoice2=Godsword
if %s2% EQU s14 set swordchoice=Alydril
if %s2% EQU s14 set swordchoice2=Godsword
if %s2% EQU s16 set swordchoice=Wooden
if %s2% EQU s16 set swordchoice2=Katana
if %s2% EQU s17 set swordchoice=Evil
if %s2% EQU s17 set swordchoice2=Mace
if %s2% EQU s18 set swordchoice=Shining
if %s2% EQU s18 set swordchoice2=Axe
if %s2% EQU s19 set swordchoice=Shadow
if %s2% EQU s19 set swordchoice2=Spear
if %s2% EQU s20 set swordchoice=Godess
if %s2% EQU s20 set swordchoice2=Sword
if %s2% EQU s21 set swordchoice=Moon
if %s2% EQU s21 set swordchoice2=Saber
if %s2% EQU s22 set swordchoice=Sun
if %s2% EQU s22 set swordchoice2=Knife
if %s2% EQU s23 set swordchoice=Cannon
if %s2% EQU s23 set swordchoice2=
if %s2% EQU s24 set swordchoice=Spiked
if %s2% EQU s24 set swordchoice2=Club
if %s2% EQU s25 set swordchoice=Brass
if %s2% EQU s25 set swordchoice2=Knuckles

if %s2% EQU s1 set swordexist=%sword1%
if %s2% EQU s2 set swordexist=%sword2%
if %s2% EQU s3 set swordexist=%sword3%
if %s2% EQU s4 set swordexist=%sword4%
if %s2% EQU s5 set swordexist=%sword5%
if %s2% EQU s6 set swordexist=%sword6%
if %s2% EQU s7 set swordexist=%sword7%
if %s2% EQU s8 set swordexist=%sword8%
if %s2% EQU s9 set swordexist=%sword9%
if %s2% EQU s10 set swordexist=%sword10%
if %s2% EQU s11 set swordexist=%sword11%
if %s2% EQU s12 set swordexist=%sword12%
if %s2% EQU s13 set swordexist=%ls1%
if %s2% EQU s14 set swordexist=%ls2%
if %s2% EQU s16 set swordexist=%sword16%
if %s2% EQU s17 set swordexist=%sword17%
if %s2% EQU s18 set swordexist=%sword18%
if %s2% EQU s19 set swordexist=%sword19%
if %s2% EQU s20 set swordexist=%sword20%
if %s2% EQU s21 set swordexist=%sword21%
if %s2% EQU s22 set swordexist=%sword22%
if %s2% EQU s23 set swordexist=%sword23%
if %s2% EQU s24 set swordexist=%sword24%
if %s2% EQU s25 set swordexist=%sword25%
if %s2% EQU s1 set swordexist2=sword1
if %s2% EQU s2 set swordexist2=sword2
if %s2% EQU s3 set swordexist2=sword3
if %s2% EQU s4 set swordexist2=sword4
if %s2% EQU s5 set swordexist2=sword5
if %s2% EQU s6 set swordexist2=sword6
if %s2% EQU s7 set swordexist2=sword7
if %s2% EQU s8 set swordexist2=sword8
if %s2% EQU s9 set swordexist2=sword9
if %s2% EQU s10 set swordexist2=sword10
if %s2% EQU s11 set swordexist2=sword11
if %s2% EQU s12 set swordexist2=sword12
if %s2% EQU s13 set swordexist2=ls1
if %s2% EQU s14 set swordexist2=ls2
if %s2% EQU s16 set swordexist2=sword16
if %s2% EQU s17 set swordexist2=sword17
if %s2% EQU s18 set swordexist2=sword18
if %s2% EQU s19 set swordexist2=sword19
if %s2% EQU s20 set swordexist2=sword20
if %s2% EQU s21 set swordexist2=sword21
if %s2% EQU s22 set swordexist2=sword22
if %s2% EQU s23 set swordexist2=sword23
if %s2% EQU s24 set swordexist2=sword24
if %s2% EQU s25 set swordexist2=sword25

if %s2% EQU 99 goto declinesmug
if %swordchoice% EQU Wooden set /a sprice=50
if %swordchoice% EQU Stone set /a sprice=125
if %swordchoice% EQU Bronze set /a sprice=250
if %swordchoice% EQU Iron set /a sprice=500
if %swordchoice% EQU Steel set /a sprice=1250
if %swordchoice% EQU Gold set /a sprice=2500
if %swordchoice% EQU Crystal set /a sprice=5000
if %swordchoice% EQU Sacred set /a sprice=12500
if %swordchoice% EQU Runic set /a sprice=25000
if %swordchoice% EQU Infernal set /a sprice=25000
if %swordchoice% EQU Evil set /a sprice=60000
if %swordchoice% EQU Shining set /a sprice=60000
if %swordchoice% EQU Shadow set /a sprice=65000
if %swordchoice% EQU Godess set /a sprice=70000
if %swordchoice% EQU Moon set /a sprice=80000
if %swordchoice% EQU Sun set /a sprice=90000
if %swordchoice% EQU Cannon set /a sprice=100000
if %swordchoice% EQU Spiked set /a sprice=100000
if %swordchoice% EQU Brass set /a sprice=100000
if %swordchoice% EQU Omega set /a sprice=25000
if %swordchoice% EQU Chaotic set /a sprice=25000
if %swordchoice% EQU Mythical set /a sprice=750000
if %swordchoice% EQU Alydril set /a sprice=1500000
if %s2% EQU a1 set swordchoice=Cloth
if %s2% EQU a1 set swordchoice2=Armor
if %s2% EQU a2 set swordchoice=Chain
if %s2% EQU a2 set swordchoice2=Armor
if %s2% EQU a3 set swordchoice=Bronze
if %s2% EQU a3 set swordchoice2=Armor
if %s2% EQU a4 set swordchoice=Iron
if %s2% EQU a4 set swordchoice2=Armor
if %s2% EQU a5 set swordchoice=Steel
if %s2% EQU a5 set swordchoice2=Armor
if %s2% EQU a6 set swordchoice=Gold
if %s2% EQU a6 set swordchoice2=Armor
if %s2% EQU a7 set swordchoice=Crystal
if %s2% EQU a7 set swordchoice2=Armor
if %s2% EQU a8 set swordchoice=Sacred
if %s2% EQU a8 set swordchoice2=Armor
if %s2% EQU a9 set swordchoice=Runic
if %s2% EQU a9 set swordchoice2=Armor
if %s2% EQU a10 set swordchoice=Infernal
if %s2% EQU a10 set swordchoice2=Armor
if %s2% EQU a11 set swordchoice=Omega
if %s2% EQU a11 set swordchoice2=Armor
if %s2% EQU a12 set swordchoice=Chaotic
if %s2% EQU a12 set swordchoice2=Armor
if %s2% EQU a13 set swordchoice=Mythical
if %s2% EQU a13 set swordchoice2=Armor
if %s2% EQU a14 set swordchoice=Alydril
if %s2% EQU a14 set swordchoice2=Armor
if %s2% EQU a1 set swordexist=%arm1%
if %s2% EQU a2 set swordexist=%arm2%
if %s2% EQU a3 set swordexist=%arm3%
if %s2% EQU a4 set swordexist=%arm4%
if %s2% EQU a5 set swordexist=%arm5%
if %s2% EQU a6 set swordexist=%arm6%
if %s2% EQU a7 set swordexist=%arm7%
if %s2% EQU a8 set swordexist=%arm8%
if %s2% EQU a9 set swordexist=%arm9%
if %s2% EQU a10 set swordexist=%arm10%
if %s2% EQU a11 set swordexist=%arm11%
if %s2% EQU a12 set swordexist=%arm12%
if %s2% EQU a13 set swordexist=%la1%
if %s2% EQU a14 set swordexist=%la2%
if %s2% EQU a1 set swordexist2=arm1
if %s2% EQU a2 set swordexist2=arm2
if %s2% EQU a3 set swordexist2=arm3
if %s2% EQU a4 set swordexist2=arm4
if %s2% EQU a5 set swordexist2=arm5
if %s2% EQU a6 set swordexist2=arm6
if %s2% EQU a7 set swordexist2=arm7
if %s2% EQU a8 set swordexist2=arm8
if %s2% EQU a9 set swordexist2=arm9
if %s2% EQU a10 set swordexist2=arm10
if %s2% EQU a11 set swordexist2=arm11
if %s2% EQU a12 set swordexist2=arm12
if %s2% EQU a13 set swordexist2=la1
if %s2% EQU a14 set swordexist2=la2
if %swordchoice2% EQU Armor goto sellarmtosmug
goto selltosmug

:sellarmtosmug
if %swordchoice% EQU Cloth set /a sprice=75
if %swordchoice% EQU Chain set /a sprice=150
if %swordchoice% EQU Bronze set /a sprice=400
if %swordchoice% EQU Iron set /a sprice=750
if %swordchoice% EQU Steel set /a sprice=1500
if %swordchoice% EQU Gold set /a sprice=2500
if %swordchoice% EQU Crystal set /a sprice=5000
if %swordchoice% EQU Sacred set /a sprice=7500
if %swordchoice% EQU Runic set /a sprice=12500
if %swordchoice% EQU Infernal set /a sprice=20000
if %swordchoice% EQU Omega set /a sprice=40000
if %swordchoice% EQU Chaotic set /a sprice=50000
if %swordchoice% EQU Mythical set /a sprice=1000000
if %swordchoice% EQU Alydril set /a sprice=1750000
goto selltosmug

:selltosmug
if %swordexist% EQU 0 goto donthaveitem
cls
echo.
echo Smuggler: Ah, the %swordchoice% %swordchoice2%. Thats a nice piece of weaponry. Tell ya what.
echo I'll buy it off of ya for %sprice% gold. Deal?
echo.
ping localhost -n 2 >nul
echo 1) Deal.
echo 2) No thanks.
set /p s3=
if %s3% EQU 1 goto accepttradesmug
if %s3% EQU 2 goto declinesmug

:accepttradesmug
set /a %swordexist2%=%swordexist%-1
set /a money=%money%+%sprice%
cls
echo.
echo.
echo You sell the %swordchoice% %swordchoice2% for %sprice% gold.
echo.
pause>nul
cls
echo.
echo Smuggler: It's a pleasure doin' business with ya.
echo.
pause>nul
goto smuggler

:declinesmug
cls
echo.
echo Smuggler: Maybe next time, eh?
echo.
pause>nul
goto MENU

:donthaveitem
echo.
echo.
echo Smuggler: You don't have that item.
echo.
pause>nul
goto tradesmuggler

:picknpc
set /a FATIGUE=%FATIGUE%+12
set /a npc=%random% %% 25+1
if %npc% EQU 1 set npctype=Goblin
if %npc% EQU 2 set npctype=Giant
if %npc% EQU 3 set npctype=Dragon
if %npc% EQU 4 set npctype=Mage
if %npc% EQU 5 set npctype=Sorcerer
if %npc% EQU 6 set npctype=Human
if %npc% EQU 7 set npctype=Farmer
if %npc% EQU 8 set npctype=Bear
if %npc% EQU 9 set npctype=Rockbeast
if %npc% EQU 10 set npctype=Ent
if %npc% EQU 11 set npctype=Theif
if %npc% EQU 12 set npctype=Elemental
if %npc% EQU 13 set npctype=Rat
if %npc% EQU 14 set npctype=Madman
if %npc% EQU 15 set npctype=Wort
if %npc% EQU 16 set npctype=Skeleton
if %npc% EQU 17 set npctype=Succubus
if %npc% EQU 18 set npctype=Ghost
if %npc% EQU 19 set npctype=Scorpion
if %npc% EQU 20 set npctype=Eagle
if %npc% EQU 21 set npctype=Mutant
if %npc% EQU 22 set npctype=Cow
if %npc% EQU 23 set npctype=Unicorn
if %npc% EQU 24 set npctype=Shadow
if %npc% EQU 25 set npctype=Legend

:BATTLE_VARIABLES
set health=0
if %curlvl% LEQ 2 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 2 + 1
goto F_START )
if %curlvl% LEQ 5 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 6 + 1
goto F_START )
if %curlvl% LEQ 10 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 14 + 1
goto F_START )
if %curlvl% LEQ 15 (
set /a health=%random% %% 100 + 350
set /a level=%random% %% 6 + 10
goto F_START )
if %curlvl% LEQ 20 (
set /a health=%random% %% 100 + 500
set /a level=%random% %% 5 + 15
goto F_START )
if %curlvl% LEQ 25 (
set /a health=%random% %% 100 + 625
set /a level=%random% %% 7 + 20
goto F_START )
if %curlvl% LEQ 30 (
set /a health=%random% %% 100 + 750
set /a level=%random% %% 10 + 25
goto F_START )
if %curlvl% LEQ 37 (
set /a health=%random% %% 100 + 900
set /a level=%random% %% 15 + 30
goto F_START )

:F_START
cls
echo.
ping localhost -n 2 >nul
echo You encounter a level %level% %npctype%.
ping localhost -n 2 >nul
goto fs1

:fs1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p atkcho=
if %atkcho% EQU 1 goto atk
if %atkcho% EQU 2 goto fightinginventory
if %atkcho% EQU 3 goto flee

:atk
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*680/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*710/32767+1
if %swordtype% EQU Godess set /a damage=%random%*720/32767+1
if %swordtype% EQU Moon set /a damage=%random%*730/32767+1
if %swordtype% EQU Sun set /a damage=%random%*740/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*750/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*750/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack^^!
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
pause>nul
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %health% LEQ 0 goto checkiflvlup
if %xpuntil% LEQ 0 set destination=fs3
if %xpuntil% LEQ 0 goto levelup
if %petowner% EQU 1 goto Patk
goto fs3

:Patk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto fs3
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
if %health% LEQ 0 goto checkiflvlup
goto fs3

:fs3
if %npctype% EQU Madman set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Wort set /a dmgnpc=%random%*60/32767+1
if %npctype% EQU Skeleton set /a dmgnpc=%random%*90/32767+1
if %npctype% EQU Succubus set /a dmgnpc=%random%*120/32767+1
if %npctype% EQU Ghost set /a dmgnpc=%random%*150/32767+1
if %npctype% EQU Scorpion set /a dmgnpc=%random%*50/32767+1
if %npctype% EQU Eagle set /a dmgnpc=%random%*85/32767+1
if %npctype% EQU Mutant set /a dmgnpc=%random%*183/32767+1
if %npctype% EQU Cow set /a dmgnpc=%random%*240/32767+1
if %npctype% EQU Unicorn set /a dmgnpc=%random%*300/32767+1
if %npctype% EQU Shadow set /a dmgnpc=%random%*330/32767+1
if %npctype% EQU Legend set /a dmgnpc=%random%*360/32767+1
if %npctype% EQU Rat set /a dmgnpc=%random%*53/32767+1
if %npctype% EQU Goblin set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Giant set /a dmgnpc=%random%*60/32767+1
if %npctype% EQU Dragon set /a dmgnpc=%random%*90/32767+1
if %npctype% EQU Mage set /a dmgnpc=%random%*120/32767+1
if %npctype% EQU Sorcerer set /a dmgnpc=%random%*150/32767+1
if %npctype% EQU Human set /a dmgnpc=%random%*50/32767+1
if %npctype% EQU Farmer set /a dmgnpc=%random%*85/32767+1
if %npctype% EQU Bear set /a dmgnpc=%random%*183/32767+1
if %npctype% EQU Rocktor set /a dmgnpc=%random%*240/32767+1
if %npctype% EQU Ent set /a dmgnpc=%random%*300/32767+1
if %npctype% EQU Theif set /a dmgnpc=%random%*330/32767+1
if %npctype% EQU Elemental set /a dmgnpc=%random%*360/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a dmgnpc=%dmgnpc%-15
if %dmgnpc% LEQ 1 set /a dmgnpc=1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo The %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
pause>nul
goto fs1

:checkiflvlup
if %xpuntil% LEQ 0 set destination=dropitem
if %xpuntil% LEQ 0 goto levelup

:dropitem
if %npctype% EQU Goblin goto goblindrop
if %npctype% EQU Giant goto giantdrop
if %npctype% EQU Dragon goto dragondrop
if %npctype% EQU Mage goto magedrop
if %npctype% EQU Sorcerer goto sorcererdrop
if %npctype% EQU Human goto humandrop
if %npctype% EQU Farmer goto farmerdrop
if %npctype% EQU Bear goto beardrop
if %npctype% EQU Rockbeast goto rockbeastdrop
if %npctype% EQU Ent goto entdrop
if %npctype% EQU Theif goto theifdrop
if %npctype% EQU Elemental goto elementaldrop
if %npctype% EQU Rat goto beardrop
if %npctype% EQU Madman goto madmandrop
if %npctype% EQU Wort goto wortdrop
if %npctype% EQU Skeleton goto dragondrop
if %npctype% EQU Succubus goto magedrop
if %npctype% EQU Ghost goto sorcererdrop
if %npctype% EQU Mutant goto humandrop
if %npctype% EQU Eagle goto eagledrop
if %npctype% EQU Cow goto beardrop
if %npctype% EQU Unicorn goto rockbeastdrop
if %npctype% EQU Shadow goto theifdrop
if %npctype% EQU Legend goto elementaldrop

:wortdrop
set word=a
set /a crab=%crab%+1
set drop=Crab
goto win

:eagledrop
set word=a
set /a kingfish=%kingfish%+1
set drop=Kingfish
goto win

:madmandrop
set word=a
set /a maps=%maps%+1
set drop=Map
goto win

:goblindrop
set word=a
set /a gmail=%gmail%+1
set drop=Goblin Mail
goto win

:giantdrop
set word=3
set /a hbone=%hbone%+3
set drop=Huge Bones
goto win

:dragondrop
set word=3
set /a dhide=%dhide%+3
set drop=Dragon Hides
goto win

:magedrop
set word=2
set /a rtab=%rtab%+2
set drop=Runic Tablets
goto win

:sorcererdrop
set word=2
set /a potion=%potion%+2
set drop=Potions
goto win

:humandrop
set word=2
set /a food=%food%+2
set drop=Food
goto win

:farmerdrop
set word=4
set /a seed=%seed%+4
set drop=Seeds
goto win

:beardrop
set word=5
set /a fur=%fur%+5
set drop=Fur
goto win

:rockbeastdrop
set word=6
set /a ore=%ore%+6
set drop=Ore
goto win

:entdrop
set word=10
set /a log=%log%+10
set drop=Logs
goto win

:theifdrop
set word=5
set /a gem=%gem%+5
set drop=Gemstones
goto win

:elementaldrop
set word=5
set /a morb=%morb%+5
set drop=Magic Orbs
goto win

:levelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto %destination%

:win
cls
echo.
echo You won the battle against the %npctype%.
echo.
echo You recieved %word% %drop% and gold.
set /a killcount=%killcount%+1
set /a money=%money%+(%curlvl%/2*100)
echo.
pause>nul
goto MOUNTAINS

:die
cls
echo.
set /a chappy=%chappy%-2
set /a nrep=%nrep%+1
echo You died from losing all health.
echo.
pause>nul
set hp=50
set ammo=0
set opammo=0
set wins=0
set fatigue=50
set /a deathcount=%deathcount%+500
if %class% EQU Undead goto HOME
set /a money=%money%/2
set /a fatigue=%fatigue%/2
goto HOME

:die2
cls
echo.
set /a chappy=%chappy%-2
set /a nrep=%nrep%+1
echo You died from high fatigue.
echo.
pause>nul
set hp=50
set ammo=0
set opammo=0
set wins=0
set fatigue=50
set /a deathcount=%deathcount%+500
if %class% EQU Undead HOME
set /a money=%money%/2
set /a fatigue=%fatigue%/2
goto HOME

:flee
cls
echo.
echo.
echo You run from battle like a coward.
echo.
pause>nul
goto MOUNTAINS

:1stflee
cls
echo.
echo.
echo You run from the dungeon like a coward.
echo.
pause>nul
goto MENU

:hflee
cls
echo.
echo.
echo You run from battle like a coward.
echo.
pause>nul
goto HELL

:fightinginventory
set destination2=fightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________
echo   Items:	         Fish: %fish%
echo   Bait: %bait%	        Gemstones: %gem%
echo   Seeds: %seed%	        Magic Orbs: %morb%
echo   Furs: %fur%	        Raw Food: %rfood%
echo   Ore: %ore%	        Huge Bones: %hbone%
echo   Logs: %log%	        Dragon Hides: %dhide%
echo   Food: %food%	        Runic Tablets: %rtab%
echo   Ingots: %ingot%	        Goblin Mails: %gmail%
echo   Potions: %potion%            Bows: %bow%
echo   Crabs: %crab%              Kingfish: %kingfish%
echo                                                                     
echo   Weapons:               Sp Weapons:            Armor:
echo   Wooden Sword: %sword1%        Wooden Katana: %sword16%       Cloth Armor: %arm1%
echo   Stone Sword: %sword2%         Evil Mace: %sword17%           Chain Armor: %arm2%
echo   Bronze Sword: %sword3%        Shining Axe: %sword18%         Bronze Armor: %arm3%
echo   Iron Sword: %sword4%          Shadow Spear: %sword19%        Iron Armor: %arm4%
echo   Steel Sword: %sword5%         Goddess Sword: %sword20%       Steel Armor: %arm5%
echo   Gold Sword: %sword6%          Moon Saber: %sword21%          Gold Armor: %arm6%
echo   Crystal Sword: %sword7%       Sun Knife: %sword22%           Crystal Armor: %arm7%
echo   Sacred Blade: %sword8%        Cannon: %sword23%              Sacred Armor: %arm8%
echo   Runic Sword: %sword9%         Spiked Club: %sword24%         Runic Armor: %arm9%
echo   Infernal Rapier: %sword10%     Brass Knuckles: %sword25%      Infernal Armor: %arm10%
echo   Omega Maul: %sword11%          WaterFlow: %WFLOW%           Omega Armor: %arm11%
echo   Chaotic Spear: %sword12%       FireFlow: %FFLOW%            Chaotic Armor: %arm12%
echo   Mythical Godsword: %ls1%                          Mythical Armor: %la1%
echo   Alydril Godsword: %ls2%                           Alydril Armor: %la2%
echo                                                                     
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
echo 4) Change Weapon
echo 5) Change Armor
set /p invencho=
if %invencho% EQU 4 set destination=weaponselect
if %invencho% EQU 5 set destination=Armorselect
if %invencho% EQU 1 goto fs1
if %invencho% EQU 2 goto BATTLEITEMS
if %invencho% EQU 3 goto eatfood
if %invencho% EQU 4 goto weaponselect
if %invencho% EQU 5 goto Armorselect

:hfightinginventory
set destination2=fightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________		 	 			 	 
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	         Gemstones: %gem%
echo   Seeds: %seed%	         Magic Orbs: %morb%
echo   Furs: %fur%	         Raw Food: %rfood%
echo   Ore: %ore%	         Huge Bones: %hbone%
echo   Logs: %log%	         Dragon Hides: %dhide%
echo   Food: %food%	         Runic Tablets: %rtab%
echo   Ingots: %ingot%	         Goblin Mails: %gmail%
echo   Potions: %potion%             Bows: %bow%
echo   Crabs: %crab%               Kingfish: %kingfish%
echo                                                  
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
set /p invencho=
if %invencho% EQU 1 goto hfs1
if %invencho% EQU 2 goto hBATTLEITEMS
if %invencho% EQU 3 goto heatfood

:BATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Strange Jewel
echo 3) Rupee
echo 4) Inventory
set /p invencho=
if %invencho% EQU 4 goto fightinginventory
if %invencho% EQU 1 goto drinkpotion
if %invencho% EQU 2 goto battlesjewel
if %invencho% EQU 3 goto battlerupee
goto BATTLEITEMS

:battlesjewel
if %sjewel% LEQ 0 goto nobsjewel
set /a FATIGUE=%FATIGUE%+1
set /a sjewel=%sjewel% - 1
cls
echo.
echo Throwing the Strange Jewel kills the %npctype%.
ping localhost -n 2 >nul
echo.
pause>nul
goto DROPITEM

:nobsjewel
echo.
echo You don't have any Strange Jewels.
echo.
pause>nul
goto BATTLEITEMS

:battlerupee
if %rupee% LEQ 0 goto nobrupee
set /a FATIGUE=%FATIGUE%+1
set /a rupee=%rupee% - 1
set /a sword3=%sword3% + 1
cls
echo.
echo Eating the Rupee gave you a sword to equip^^!
ping localhost -n 2 >nul
echo.
pause>nul
goto fs3

:nobrupee
echo.
echo You don't have any Rupees.
echo.
pause>nul
goto BATTLEITEMS

:hBATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Strange Jewel
echo 3) Rupee
echo 4) Inventory
set /p invencho=
if %invencho% EQU 4 goto hfightinginventory
if %invencho% EQU 1 goto hdrinkpotion
if %invencho% EQU 2 goto hbattlesjewel
if %invencho% EQU 3 goto hbattlerupee
goto hBATTLEITEMS

:hbattlesjewel
if %sjewel% LEQ 0 goto hnobsjewel
set /a FATIGUE=%FATIGUE%+1
set /a sjewel=%sjewel% - 1
cls
echo.
echo Throwing the Strange Jewel kills the %npctype%.
ping localhost -n 2 >nul
echo.
pause>nul
goto hDROPITEM

:hnobsjewel
echo.
echo You don't have any Strange Jewels.
echo.
pause>nul
goto hBATTLEITEMS

:hbattlerupee
if %rupee% LEQ 0 goto hnobrupee
set /a FATIGUE=%FATIGUE%+1
set /a rupee=%rupee% - 1
set /a sword3=%sword3% + 1
cls
echo.
echo Eating the Rupee gave you a sword to equip^^!
ping localhost -n 2 >nul
echo.
pause>nul
goto hfs3

:hnobrupee
echo.
echo You don't have any Rupees.
echo.
pause>nul
goto hBATTLEITEMS

:drinkpotion
if %potion% LEQ 0 goto nopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto fs3

:nopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto BATTLEITEMS

:hdrinkpotion
if %potion% LEQ 0 goto hnopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto hfs3

:hnopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto hBATTLEITEMS

:eatfood
if %food% LEQ 0 goto nofood
set /a FATIGUE=%FATIGUE%+2
set /a food=%food%-1
set /a chappy=%chappy%+1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto fs3

:nofood
echo.
echo You don't have any food.
echo.
pause>nul
goto fightinginventory

:seatfood
if %food% LEQ 0 goto snofood
set /a FATIGUE=%FATIGUE%+2
set /a food=%food%-1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto sfs3

:snofood
echo.
echo You don't have any food.
echo.
pause>nul
goto sfightinginventory

:heatfood
if %food% LEQ 0 goto hnofood
set /a FATIGUE=%FATIGUE%+2
set /a food=%food%-1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto hfs3

:hnofood
echo.
echo You don't have any food.
echo.
pause>nul
goto hfightinginventory

:no_food
cls
echo.
echo You don't have any food.
echo.
pause>nul
goto KITCHEN

:weaponselect
set destination=weaponselect
set /a FATIGUE=%FATIGUE%+1
set /a numswords=%FFLOW%+%WFLOW%+%sword1%+%sword2%+%sword3%+%sword4%+%sword5%+%sword6%+%sword7%+%sword8%+%sword9%+%sword10%+%sword11%+%sword12%+%sword16%+%sword17%+%sword18%+%sword19%+%sword20%+%sword21%+%sword22%+%sword23%+%sword24%+%sword25%
cls
echo.
echo You currently have %numswords% swords.
echo You currently have a %swordtype% %skind% equipped.
echo.
echo Select a weapon to equip, or return to battle.
echo.
echo 1) Wooden Sword: %sword1%
echo 2) Stone Sword: %sword2%
echo 3) Bronze Sword: %sword3%
echo 4) Iron Sword: %sword4%
echo 5) Steel Sword: %sword5%
echo 6) Gold Sword: %sword6%
echo 7) Crystal Sword: %sword7%
echo 8) Sacred Blade: %sword8%
echo 9) Runic Sword: %sword9%
echo 10) Infernal Rapier: %sword10%
echo 11) Omega Maul: %sword11%
echo 12) Chaotic Spear: %sword12%
echo 13) Mythical Godsword: %ls1%
echo 14) Alydril Godsword: %ls2%
echo 16) Wooden Katana: %sword16%
echo 17) Evil Mace: %sword17%
echo 18) Shining Axe: %sword18%
echo 19) Shadow Spear: %sword19%
echo 20) Godess Sword: %sword20%
echo 21) Moon Saber: %sword21%
echo 22) Sun Knife: %sword22%
echo 23) Cannon: %sword23%
echo 24) Spiked Club: %sword24%
echo 25) Brass Knuckles: %sword25%
echo 26) FullFireflow: %FFLOW%
echo 27) FullWaterflow: %WFLOW%
echo.
echo 15) Back
echo.
set /p wepsel=
if %wepsel% EQU 1 goto equips1
if %wepsel% EQU 2 goto equips2
if %wepsel% EQU 3 goto equips3
if %wepsel% EQU 4 goto equips4
if %wepsel% EQU 5 goto equips5
if %wepsel% EQU 6 goto equips6
if %wepsel% EQU 7 goto equips7
if %wepsel% EQU 8 goto equips8
if %wepsel% EQU 9 goto equips9
if %wepsel% EQU 10 goto equips10
if %wepsel% EQU 11 goto equips11
if %wepsel% EQU 12 goto equips12
if %wepsel% EQU 13 goto equips13
if %wepsel% EQU 14 goto equips14
if %wepsel% EQU 16 goto equips16
if %wepsel% EQU 17 goto equips17
if %wepsel% EQU 18 goto equips18
if %wepsel% EQU 19 goto equips19
if %wepsel% EQU 20 goto equips20
if %wepsel% EQU 21 goto equips21
if %wepsel% EQU 22 goto equips22
if %wepsel% EQU 23 goto equips23
if %wepsel% EQU 24 goto equips24
if %wepsel% EQU 25 goto equips25
if %wepsel% EQU 26 goto equips26
if %wepsel% EQU 27 goto equips27
if %wepsel% EQU 15 goto %destination2%

:equips1
if %sword1% EQU 0 goto nosword
if %swordtype% EQU Wooden goto alreadyequip
set swordtype=Wooden
set skind=Sword
set aan=a
goto confirmequip

:equips2
if %sword2% EQU 0 goto nosword
if %swordtype% EQU Stone goto alreadyequip
set swordtype=Stone
set skind=Sword
set aan=a
goto confirmequip

:equips3
if %sword3% EQU 0 goto nosword
if %swordtype% EQU Bronze goto alreadyequip
set swordtype=Bronze
set skind=Sword
set aan=a
goto confirmequip

:equips4
if %sword4% EQU 0 goto nosword
if %swordtype% EQU Iron goto alreadyequip
set swordtype=Iron
set skind=Sword
set aan=a
goto confirmequip

:equips5
if %sword5% EQU 0 goto nosword
if %swordtype% EQU Steel goto alreadyequip
set swordtype=Steel
set skind=Sword
set aan=a
goto confirmequip

:equips6
if %sword6% EQU 0 goto nosword
if %swordtype% EQU Gold goto alreadyequip
set swordtype=Gold
set skind=Sword
set aan=a
goto confirmequip

:equips7
if %sword7% EQU 0 goto nosword
if %swordtype% EQU Crystal goto alreadyequip
set swordtype=Crystal
set skind=Sword
set aan=a
goto confirmequip

:equips8
if %sword8% EQU 0 goto nosword
if %swordtype% EQU Sacred goto alreadyequip
set swordtype=Sacred
set skind=Blade
set aan=a
goto confirmequip

:equips9
if %sword9% EQU 0 goto nosword
if %swordtype% EQU Runic goto alreadyequip
set swordtype=Runic
set skind=Sword
set aan=a
goto confirmequip

:equips10
if %sword10% EQU 0 goto nosword
if %swordtype% EQU Infernal goto alreadyequip
set swordtype=Infernal
set skind=Rapier
set aan=an
goto confirmequip

:equips11
if %sword11% EQU 0 goto nosword
if %swordtype% EQU Omega goto alreadyequip
set swordtype=Omega
set skind=Maul
set aan=an
goto confirmequip

:equips12
if %sword12% EQU 0 goto nosword
if %swordtype% EQU Chaotic goto alreadyequip
set swordtype=Chaotic
set skind=Spear
set aan=a
goto confirmequip

:equips13
if %ls1% EQU 0 goto nosword
if %swordtype% EQU Mythical goto alreadyequip
set swordtype=Mythical
set skind=Godsword
set aan=an
goto confirmequip

:equips14
if %ls2% EQU 0 goto nosword
if %swordtype% EQU Alydril goto alreadyequip
set swordtype=Alydril
set skind=Godsword
set aan=an
goto confirmequip

:equips16
if %sword16% EQU 0 goto nosword
if %swordtype% EQU Wooden goto alreadyequip
set swordtype=Wooden
set skind=Katana
set aan=a
goto confirmequip

:equips17
if %sword17% EQU 0 goto nosword
if %swordtype% EQU Evil goto alreadyequip
set swordtype=Evil
set skind=Mace
set aan=an
goto confirmequip

:equips18
if %sword18% EQU 0 goto nosword
if %swordtype% EQU Shining goto alreadyequip
set swordtype=Shining
set skind=Axe
set aan=a
goto confirmequip

:equips19
if %sword19% EQU 0 goto nosword
if %swordtype% EQU Shadow goto alreadyequip
set swordtype=Shadow
set skind=Spear
set aan=a
goto confirmequip

:equips20
if %sword20% EQU 0 goto nosword
if %swordtype% EQU Godess goto alreadyequip
set swordtype=Godess
set skind=Sword
set aan=a
goto confirmequip

:equips21
if %sword21% EQU 0 goto nosword
if %swordtype% EQU Moon goto alreadyequip
set swordtype=Moon
set skind=Saber
set aan=a
goto confirmequip

:equips22
if %sword22% EQU 0 goto nosword
if %swordtype% EQU Sun goto alreadyequip
set swordtype=Sun
set skind=Knife
set aan=a
goto confirmequip

:equips23
if %sword23% EQU 0 goto nosword
if %swordtype% EQU Cannon goto alreadyequip
set swordtype=Cannon
set skind=
set aan=a
goto confirmequip

:equips24
if %sword24% EQU 0 goto nosword
if %swordtype% EQU Spiked goto alreadyequip
set swordtype=Spiked
set skind=Club
set aan=a
goto confirmequip

:equips25
if %sword25% EQU 0 goto nosword
if %swordtype% EQU Brass goto alreadyequip
set swordtype=Brass
set skind=Knuckles
set aan=a
goto confirmequip

:equips26
if %FFLOW% EQU 0 goto nosword
if %FFLOW% EQU Fire goto alreadyequip
set swordtype=Fire
set skind=Flow
set aan=magic
goto confirmequip

:equips27
if %WFLOW% EQU 0 goto nosword
if %WFLOW% EQU Water goto alreadyequip
set swordtype=Water
set skind=Flow
set aan=magic
goto confirmequip

:confirmequip
echo You have equipped %aan% %swordtype% %skind%.
echo.
pause>nul
goto %destination%

:nosword
echo You don't have that weapon.
echo.
pause>nul
goto %destination%

:alreadyequip
echo You already have that weapon equipped.
echo.
pause>nul
goto %destination%

:Armorselect
set destination=Armorselect
set /a FATIGUE=%FATIGUE%+1
set /a numArmor=%arm1%+%arm2%+%arm3%+%arm4%+%arm5%+%arm6%+%arm7%+%arm8%+%arm9%+%arm10%+%arm11%+%arm12%
cls
echo.
echo You currently have %numArmor% pieces of Armor.
echo You currently have %armtype% Armor equipped.
echo.
echo Select an Armor set to wear, or return to battle.
echo.
echo 1) Cloth Armor: %arm1%
echo 2) Chain Armor: %arm2%
echo 3) Bronze Armor: %arm3%
echo 4) Iron Armor: %arm4%
echo 5) Steel Armor: %arm5%
echo 6) Gold Armor: %arm6%
echo 7) Crystal Armor: %arm7%
echo 8) Sacred Armor: %arm8%
echo 9) Runic Armor: %arm9%
echo 10) Infernal Armor: %arm10%
echo 11) Omega Armor: %arm11%
echo 12) Chaotic Armor: %arm12%
echo 13) Mythical Amour: %la1%
echo 14) Alydril Armor: %la2%
echo.
echo 15) Back
echo.
set /p armsel=
if %armsel% EQU 1 goto equipa1
if %armsel% EQU 2 goto equipa2
if %armsel% EQU 3 goto equipa3
if %armsel% EQU 4 goto equipa4
if %armsel% EQU 5 goto equipa5
if %armsel% EQU 6 goto equipa6
if %armsel% EQU 7 goto equipa7
if %armsel% EQU 8 goto equipa8
if %armsel% EQU 9 goto equipa9
if %armsel% EQU 10 goto equipa10
if %armsel% EQU 11 goto equipa11
if %armsel% EQU 12 goto equipa12
if %armsel% EQU 13 goto equipa13
if %armsel% EQU 14 goto equipa14
if %armsel% EQU 15 goto %destination2%

:equipa1
if %arm1% EQU 0 goto noarm
if %armtype% EQU Cloth goto alreadyequiparm
set armtype=Cloth
goto confirmequiparm

:equipa2
if %arm2% EQU 0 goto noarm
if %armtype% EQU Chain goto alreadyequiparm
set armtype=Chain
goto confirmequiparm

:equipa3
if %arm3% EQU 0 goto noarm
if %armtype% EQU Bronze goto alreadyequiparm
set armtype=Bronze
goto confirmequiparm

:equipa4
if %arm4% EQU 0 goto noarm
if %armtype% EQU Iron goto alreadyequiparm
set armtype=Iron
goto confirmequiparm

:equipa5
if %arm5% EQU 0 goto noarm
if %armtype% EQU Steel goto alreadyequiparm
set armtype=Steel
goto confirmequiparm

:equipa6
if %arm6% EQU 0 goto noarm
if %armtype% EQU Gold goto alreadyequiparm
set armtype=Gold
goto confirmequiparm

:equipa7
if %arm7% EQU 0 goto noarm
if %armtype% EQU Crystal goto alreadyequiparm
set armtype=Crystal
goto confirmequiparm

:equipa8
if %arm8% EQU 0 goto noarm
if %armtype% EQU Sacred goto alreadyequiparm
set armtype=Sacred
goto confirmequiparm

:equipa9
if %arm9% EQU 0 goto noarm
if %armtype% EQU Runic goto alreadyequiparm
set armtype=Runic
goto confirmequiparm

:equipa10
if %arm10% EQU 0 goto noarm
if %armtype% EQU Infernal goto alreadyequiparm
set armtype=Infernal
goto confirmequiparm

:equipa11
if %arm11% EQU 0 goto noarm
if %armtype% EQU Omega goto alreadyequiparm
set armtype=Omega
goto confirmequiparm

:equipa12
if %arm12% EQU 0 goto noarm
if %armtype% EQU Chaotic goto alreadyequiparm
set armtype=Chaotic
goto confirmequiparm

:equipa13
if %la1% EQU 0 goto noarm
if %armtype% EQU Mythical goto alreadyequiparm
set armtype=Mythical
goto confirmequiparm

:equipa14
if %la2% EQU 0 goto noarm
if %armtype% EQU Alydril goto alreadyequiparm
set armtype=Alydril
goto confirmequiparm

:confirmequiparm
echo You have equipped %armtype% Armor.
echo.
pause>nul
goto %destination%

:noarm
echo You don't have that Armor.
echo.
pause>nul
goto Armorselect

:alreadyequiparm
echo You already have that Armor equipped.
echo.
pause>nul
goto Armorselect

:CLOSED1
cls
echo.
echo This location is closed at this time.
echo Sleep to change between night and day.
echo.
pause
goto MENU

:weaponstore
if %days% EQU Night goto CLOSED1
set /a FATIGUE=%FATIGUE%+1
set destination1=weaponstore
cls
echo.
echo Wep: How may I serve you, sir?
echo.
echo Gold: %money%
echo.
echo.
echo 1) Wooden Sword:   Costs 100 gold.
echo. 		   Owned: %sword1%   

echo 2) Stone Sword:    Costs 250 gold.
echo.		   Owned: %sword2%

echo 3) Bronze Sword:   Costs 500 gold.
echo.		   Owned: %sword3%

echo 4) Iron Sword:     Costs 1,000 gold.
echo.		   Owned: %sword4%   

echo 5) Steel Sword:    Costs 2,500 gold.
echo. 		   Owned: %sword5%   

echo 6) Gold Sword:     Costs 5,000 gold.
echo.		   Owned: %sword6%   

echo 7) Crystal Sword:  Costs 10,000 gold.
echo. 		   Owned: %sword7%   

echo 8) Sacred Blade:   Costs 25,000 gold.
echo. 		   Owned: %sword8%  
echo.
echo 9) Next Page
echo.
echo 16) Back
echo.
echo.
echo		  Page 1
set /p w1=
if %w1% EQU 1 (
set /a sprice=100
set swordchoice=Wooden
set swordchoice2=Sword
set /a att=100
set swordexist=sword1
set swordexist2=%sword1%
set levelneeded=1 )
if %w1% EQU 2 (
set /a sprice=125
set swordchoice=Stone
set swordchoice2=Sword
set /a att=100
set swordexist=sword2
set swordexist2=%sword2%
set levelneeded=1 )
if %w1% EQU 3 (
set /a sprice=500
set swordchoice=Bronze
set swordchoice2=Sword
set /a att=150
set swordexist=sword3
set swordexist2=%sword3%
set levelneeded=5 )
if %w1% EQU 4 (
set /a sprice=1000
set swordchoice=Iron
set swordchoice2=Sword
set /a att=175
set swordexist=sword4
set swordexist2=%sword4%
set levelneeded=5 )
if %w1% EQU 5 (
set /a sprice=2500
set swordchoice=Steel
set swordchoice2=Sword
set /a att=200
set swordexist=sword5
set swordexist2=%sword5%
set levelneeded=10 )
if %w1% EQU 6 (
set /a sprice=5000
set swordchoice=Gold
set swordchoice2=Sword
set /a att=225
set swordexist=sword5
set swordexist2=%sword6%
set levelneeded=10 )
if %w1% EQU 7 (
set /a sprice=10000
set swordchoice=Crystal
set swordchoice2=Sword
set /a att=250
set swordexist=sword7
set swordexist2=%sword7%
set levelneeded=15 )
if %w1% EQU 8 (
set /a sprice=25000
set swordchoice=Sacred
set swordchoice2=Blade
set /a att=275
set swordexist=sword8
set swordexist2=%sword8%
set levelneeded=15 )
if %w1% EQU 9 goto weaponstorep2
if %w1% EQU 16 goto MENU
goto buynow

:weaponstorep2
set destination1=weaponstorep2
cls
echo.
echo You currently have %money% Gold.
echo.
echo.
echo 1) Runic Sword:     Costs 50,000 gold.
echo. 		    Owned: %sword9%   
echo 2) Infernal Rapier: Costs 50,000 gold.
echo.		    Owned: %sword10%
echo 3) Omega Maul:	    Costs 50,000 gold.
echo.		    Owned: %sword11%
echo 4) Chaotic Spear:   Costs -50,000 gold.
echo.		    Owned: %sword12% 
echo 5) Wooden Katana:     Costs Sold Out.
echo. 		    Owned: %sword16%   
echo 6) Evil Mace:      Costs 60,000 gold.
echo.		    Owned: %sword17%
echo 7) Shining Axe:      Costs 60,000 gold.
echo.		    Owned: %sword18%
echo 8) Shadow Spear:   Costs 65,000 gold.
echo.		    Owned: %sword19%   
echo 9) Goddess Sword:     Costs 70,000 gold.
echo. 		    Owned: %sword20%   
echo 10) Moon Saber: Costs 80,000 gold.
echo.		    Owned: %sword21%
echo 11) Sun Knife:	    Costs 90,000 gold.
echo.		    Owned: %sword22%
echo 12) Cannon:   Costs 100,000 gold.
echo.		    Owned: %sword23%   
echo 13) Spiked Club:   Costs 100,000 gold.
echo.		    Owned: %sword24%   
echo 14) Brass Knuckles:   Costs 100,000 gold.
echo.		    Owned: %sword25%   
echo.
echo 15) Previous Page
echo.
echo 16) Back
echo.
echo.
echo		  Page 2
set /p w1=
if %w1% EQU 1 (
set /a sprice=50000
set swordchoice=Runic
set swordchoice2=Sword
set /a att=300
set swordexist=sword9
set swordexist2=%sword9%
set levelneeded=20 )
if %w1% EQU 2 (
set /a sprice=50000
set swordchoice=Infernal
set swordchoice2=Rapier
set /a att=300
set swordexist=sword10
set swordexist2=%sword10%
set levelneeded=20 )
if %w1% EQU 3 (
set /a sprice=50000
set swordchoice=Omega
set swordchoice2=Maul
set /a att=300
set swordexist=sword11
set swordexist2=%sword11%
set levelneeded=20 )
if %w1% EQU 4 (
set /a sprice=50000
set swordchoice=Chaotic
set swordchoice2=Spear
set /a att=300
set swordexist=sword12
set swordexist2=%sword12%
set levelneeded=20 )
if %w1% EQU 5 (
set /a sprice=50000
set swordchoice=Wooden
set swordchoice2=Katana
set /a att=300
set swordexist=sword16
set swordexist2=%sword16%
set levelneeded=10 )
if %w1% EQU 6 (
set /a sprice=60000
set swordchoice=Evil
set swordchoice2=Mace
set /a att=320
set swordexist=sword17
set swordexist2=%sword17%
set levelneeded=10 )
if %w1% EQU 7 (
set /a sprice=60000
set swordchoice=Shining
set swordchoice2=Axe
set /a att=330
set swordexist=sword18
set swordexist2=%sword18%
set levelneeded=10 )
if %w1% EQU 8 (
set /a sprice=650000
set swordchoice=Shadow
set swordchoice2=Spear
set /a att=340
set swordexist=sword19
set swordexist2=%sword19%
set levelneeded=10 )
if %w1% EQU 9 (
set /a sprice=70000
set swordchoice=Godess
set swordchoice2=Sword
set /a att=350
set swordexist=sword20
set swordexist2=%sword20%
set levelneeded=10 )
if %w1% EQU 10 (
set /a sprice=80000
set swordchoice=Moon
set swordchoice2=Saber
set /a att=360
set swordexist=sword21
set swordexist2=%sword21%
set levelneeded=10 )
if %w1% EQU 11 (
set /a sprice=90000
set swordchoice=Sun
set swordchoice2=Knife
set /a att=370
set swordexist=sword22
set swordexist2=%sword22%
set levelneeded=10 )
if %w1% EQU 12 (
set /a sprice=100000
set swordchoice=Cannon
set swordchoice2=
set /a att=380
set swordexist=sword23
set swordexist2=%sword23%
set levelneeded=10 )
if %w1% EQU 13 (
set /a sprice=100000
set swordchoice=Spiked
set swordchoice2=Club
set /a att=390
set swordexist=sword24
set swordexist2=%sword24%
set levelneeded=10 )
if %w1% EQU 14 (
set /a sprice=100000
set swordchoice=Brass
set swordchoice2=Knuckles
set /a att=399
set swordexist=sword25
set swordexist2=%sword25%
set levelneeded=10 )
if %w1% EQU 15 goto weaponstore
if %w1% EQU 16 goto MENU
goto buynow

:Armorstore
if %days% EQU Night goto CLOSED1
set /a FATIGUE=%FATIGUE%+1
set destination1=armorstore
cls
echo.
echo Armm: What you lookin' for today?
echo.
echo Gold: %money%
echo.
echo.
echo 1) Cloth Armor:    Costs 150 gold.
echo. 		    Owned: %arm1%   
echo.
echo 2) Chain Armor:    Costs 300 gold.
echo.		    Owned: %arm2%
echo.
echo 3) Bronze Armor:   Costs 750 gold.
echo.		    Owned: %arm3%
echo.
echo 4) Iron Armor:     Costs 1,500 gold.
echo.		    Owned: %arm4%   
echo.
echo 5) Steel Armor:    Costs 3,000 gold.
echo. 		    Owned: %arm5%   
echo.
echo 6) Gold Armor:     Costs 5,000 gold.
echo.		    Owned: %arm6%   
echo.
echo 7) Crystal Armor:  Costs 10,000 gold.
echo. 		    Owned: %arm7%   
echo.
echo 8) Sacred Armor:   Costs 15,000 gold.
echo. 		    Owned: %arm8%  
echo.
echo 9) Next Page
echo.
echo 10) Back
echo.
echo.
echo		  Page 1
set /p w1=
if %w1% EQU 1 (
set /a sprice=150
set swordchoice=Cloth
set swordchoice2=Armor
set /a att=10
set swordexist=arm1
set swordexist2=%arm1% )
if %w1% EQU 2 (
set /a sprice=300
set swordchoice=Chain
set swordchoice2=Armor
set /a att=20
set swordexist=arm2
set swordexist2=%arm2% )
if %w1% EQU 3 (
set /a sprice=750
set swordchoice=Bronze
set swordchoice2=Armor
set /a att=40
set swordexist=arm3
set swordexist2=%arm3% )
if %w1% EQU 4 (
set /a sprice=1500
set swordchoice=Iron
set swordchoice2=Armor
set /a att=65
set swordexist=arm4
set swordexist2=%arm4% )
if %w1% EQU 5 (
set /a sprice=3000
set swordchoice=Steel
set swordchoice2=Armor
set /a att=100
set swordexist=arm5
set swordexist2=%arm5% )
if %w1% EQU 6 (
set /a sprice=5000
set swordchoice=Gold
set swordchoice2=Armor
set /a att=120
set swordexist=arm5
set swordexist2=%arm6% )
if %w1% EQU 7 (
set /a sprice=10000
set swordchoice=Crystal
set swordchoice2=Armor
set /a att=145
set swordexist=arm7
set swordexist2=%arm7% )
if %w1% EQU 8 (
set /a sprice=15000
set swordchoice=Sacred
set swordchoice2=Blade
set /a att=175
set swordexist=arm8
set swordexist2=%arm8% )
if %w1% EQU 9 goto Armorstorep2
if %w1% EQU 10 goto MENU
goto buynow

:Armorstorep2
set destination1=armorstorep2
cls
echo.
echo You currently have %money% Gold.
echo.
echo.
echo 1) Runic Armor:    Costs 25,000 gold.
echo. 		    Owned: %arm9%   
echo.
echo 2) Infernal Armor: Costs 40,000 gold.
echo.		    Owned: %arm10%
echo.
echo 3) Omega Armor:    Costs 75,000 gold.
echo.		    Owned: %arm11%
echo.
echo 4) Chaotic Armor:  Costs 100,000 gold.
echo.		    Owned: %arm12%   
echo.
echo 5) Previous Page
echo.
echo 10) Back
echo.
echo.
echo		  Page 2
set /p w1=
if %w1% EQU 1 (
set /a sprice=25000
set swordchoice=Runic
set swordchoice2=Armor
set /a att=200
set swordexist=arm9
set swordexist2=%arm9% )
if %w1% EQU 2 (
set /a sprice=40000
set swordchoice=Infernal
set swordchoice2=Armor
set /a att=215
set swordexist=arm10
set swordexist2=%arm10% )
if %w1% EQU 3 (
set /a sprice=75000
set swordchoice=Omega
set swordchoice2=Armor
set /a att=235
set swordexist=arm11
set swordexist2=%arm11% )
if %w1% EQU 4 (
set /a sprice=100000
set swordchoice=Chaotic
set swordchoice2=Armor
set /a att=250
set swordexist=arm12
set swordexist2=%arm12% )
if %w1% EQU 5 goto Armorstore
if %w1% EQU 10 goto MENU
goto buynow

:legendsstore
if %days% EQU Night goto CLOSED1
set /a FATIGUE=%FATIGUE%+1
set destination1=legendsstore
cls
echo.
echo Legend: Hello mighty traveler. Welcome to my store.
echo.
echo                                  ͻ
echo   You currently have %money% gold.  
echo                                  ͼ
echo.
echo.
echo                                               ͻ
echo   1) Mythical Godsword:  Costs 50 Magic Orbs.   
echo. 		    	 Owned: %ls1%               
echo.                                                
echo   2) Alydril Godsword:   Costs 100 Magic Orbs.  
echo. 		    	 Owned: %ls2%               
echo.                                                
echo   3) Mythical Armor:	 Costs 65 Magic Orbs.   
echo. 		         Owned: %la1%               
echo.                                                
echo   4) Alydril Armor:   	 Costs 120 Magic Orbs.  
echo. 		   	 Owned: %la2%               
echo.                                                
echo   5) Wooden Katana:   	 Costs 1 Magic Orb.  
echo. 		   	 Owned: %sword16%               
echo                                               ͼ
echo.
echo.
echo 6) Back
echo.
set /p w1=
if %w1% EQU 1 (
set /a sprice=50
set swordchoice=Mythical
set swordchoice2=Godsword
set /a att=450
set swordexist=ls1
set swordexist2=%ls1% )
if %w1% EQU 5 (
set /a sprice=1
set swordchoice=Wooden
set swordchoice2=Katana
set /a att=300
set swordexist=sword16
set swordexist2=%sword16% )
if %w1% EQU 2 (
set /a sprice=100
set swordchoice=Alydril
set swordchoice2=Godsword
set /a att=600
set swordexist=ls2
set swordexist2=%ls2% )
if %w1% EQU 3 (
set /a sprice=65
set swordchoice=Mythical
set swordchoice2=Armor
set /a att=275
set swordexist=la1
set swordexist2=%la1% )
if %w1% EQU 4 (
set /a sprice=120
set swordchoice=Alydril
set swordchoice2=Armor
set /a att=300
set swordexist=la2
set swordexist2=%la2% )
if %w1% EQU 6 goto MENU
goto buylegends

:buylegends
if %morb% LSS %sprice% goto nomoney
if %swordexist2% GEQ 1 goto alreadyown
set /a morb=%morb%-%sprice%
set /a %swordexist%=%swordexist2%+1
echo.
echo.
echo %swordchoice% %swordchoice2% purchased. 
echo You have a damage bonus of up to %att% with this item.
pause>nul
goto %destination1%

:maxshopclosed
if %ttllvl% GEQ 250 goto maxshopopen
cls
echo.
echo Colt's shop is only open to those with a total level over 250.
echo.
pause>nul
goto MENU

:maxshopopen
set /a FATIGUE=%FATIGUE%+2
set /a ms1=0
cls
echo.
echo.
echo Colt: What are you in need of?
echo.
echo 1) Buy Weapons
echo 2) Buy Armor
echo.
echo 3) Back
echo.
set /p m1=
if %m1% EQU 1 goto buymaxwep
if %m1% EQU 2 goto buymaxarm
if %m1% EQU 3 goto MENU

:buymaxwep
set destination1=buymaxwep
cls
echo.
echo Gold: %money%
echo sians baxe: %ms1%
echo swordexist: %swordexist%
echo.
echo Weapons:
echo.
echo 1) Elysian Blade       1
echo 2) Arcane Blade          1724521345
echo 3) Spectral Blade     769123123
echo.
echo 4) Back
set /p w1=
if %w1% EQU 1 (
set /a sprice=3000000
set swordchoice=Elysian
set swordchoice2=Blade
set /a att=750
set swordexist=%ms1% )
if %w1% EQU 2 (
set /a sprice=400000
set swordchoice=Spectral
set swordchoice2=Blade
set /a att=850
set swordchoice3=%ms2% )
if %w1% EQU 3 (
set /a sprice=5000000
set swordchoice=Arcane
set swordchoice2=Blade
set /a att=1000
set swordchoice3=%ms3% )
if %w1% EQU 4 goto MENU
goto buynow

:buynow
if %money% LSS %sprice% goto nomoney
if %swordexist2% GEQ 1 goto alreadyown
set /a money=%money%-%sprice%
set /a %swordexist%=%swordexist2%+1
echo.
echo.
echo %swordchoice% %swordchoice2% purchased. 
echo You have a damage bonus of up to %att% with this item.
pause>nul
goto %destination1%

:nomoney
echo.
echo.
echo You don't have enough money.
echo.
pause>nul
goto %destination1%

:alreadyown
echo.
echo.
echo Colt: You already own this item.
echo.
pause>nul
goto %destination1%

:NEEDLVL
echo.
echo Colt: You are not a high enough level to buy this item. 
echo You need to be at least level %levelneeded%.
echo.
pause>nul
goto %destination1%

:FMCLOSE
cls
set /a RandF=%random%*10/32767+1
echo.
if %RandF% LEQ 8 echo You can't enter this location as it is being repaired
if %RandF% GEQ 9 echo You can't enter this location as it is up in flames
echo due to the Flame Monster's ongoing interference.
echo.
pause
goto MENU

:gstore
set destination1=gstore
set /a FATIGUE=%FATIGUE%+1
cls
echo.
echo Wibly: Welcome, wanderer. Need something?
echo.
echo Gold: %money%
echo.
echo Your Items:			Prices:
echo.
echo 1) Seeds: %seed%			%pseed%
echo 2) Bait: %bait%           		%pbait%
echo 3) Logs: %log%			%plog%
echo 4) Raw Food: %rfood%  		%prfood%
echo 5) Food: %food%			%pfood%
echo 6) Fur: %fur%			%pfur%
echo 7) Ore: %ore%			%pore%
echo 8) Bows: %bow%			%pbow%
echo 9) Ingots: %ingot%     		%pingot%
echo 10) Goblin Mails: %gmail%		%pgmail%
echo 11) Huge Bones: %hbone%		%phbone%
echo 12) Dragon Hides: %dhide%		%pdhide%
echo 13) Runic Tablets: %rtab%		%prtab%
echo 14) Potions: %potion%			%ppotion%
echo 15) Gemstones: %gem%		%pgem%
echo 16) Magic Orbs: %morb%		%pmorb%
echo.
echo 17) Back
echo.
set /p g1=
if %g1% EQU 1 set gcho=seed
if %g1% EQU 2 set gcho=bait
if %g1% EQU 3 set gcho=log
if %g1% EQU 4 set gcho=rfood
if %g1% EQU 5 set gcho=food
if %g1% EQU 6 set gcho=fur
if %g1% EQU 7 set gcho=ore
if %g1% EQU 8 set gcho=bow
if %g1% EQU 9 set gcho=ingot
if %g1% EQU 10 set gcho=gmail
if %g1% EQU 11 set gcho=hboan
if %g1% EQU 12 set gcho=dhide
if %g1% EQU 13 set gcho=rtab
if %g1% EQU 14 set gcho=potion
if %g1% EQU 15 set gcho=gem
if %g1% EQU 16 set gcho=morb
if %g1% EQU 17 goto MENU
goto buysell

:buysell
echo.
set /p g2=Would you like to buy or sell that item, or go back? 
if %g2% EQU buy goto buyitem
if %g2% EQU sell goto sellitem
if %g2% EQU back goto gstore

:buyitem
cls
echo.
set /p g3=Enter the amount you would like to purchase: 
if %g3% LSS 0 goto gstore
set /a cost=%g3%*!p%gcho%!
if %cost% GTR %money% goto notenoughmoney
set /a money=%money%-%cost%
set /a %gcho%=!%gcho%!+%g3%
echo.
echo Wibly: You bought %g3% of that item for %cost%.
echo.
pause>nul
goto gstore

:sellitem
echo.
set /p g4=Enter the amount of that item you would like to sell, 
echo or type "all" to sell all: 
if %g4% EQU all goto sellallitem
if %g4% LSS 0 goto gstore
if %g4% GTR !%gcho%! goto sellallitem
set /a price=%g4%*!p%gcho%!
set /a money=%money%+%price%
set /a %gcho%=!%gcho%!-%g4%
echo.
echo Wibly: You sold %g4% of that item for %price%.
echo.
pause>nul
goto gstore

:sellallitem
set /a price=!%gcho%!*!p%gcho%!
set /a money=%money%+%price%
echo.
echo Wibly: You sold !%gcho%! of that item for %price%.
set /a %gcho%=0
echo.
pause>nul
goto gstore

:notenoughmoney
echo.
echo You do not have enough.
echo.
pause>nul
goto %destination1%

:checkitems
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
set destination2=checkitems
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	        Gemstones: %gem%
echo   Seeds: %seed%	        Magic Orbs: %morb%
echo   Furs: %fur%	        Raw Food: %rfood%
echo   Ore: %ore%	        Huge Bones: %hbone%
echo   Logs: %log%	        Dragon Hides: %dhide%
echo   Food: %food%	        Runic Tablets: %rtab%
echo   Ingots: %ingot%	        Goblin Mails: %gmail%
echo   Potions: %potion%            Bows: %bow%
echo   Crabs: %crab%              Kingfish: %kingfish%
echo.                                                                     
echo   Weapons:               Sp Weapons:            Armor:
echo   Wooden Sword: %sword1%        Wooden Katana: %sword16%       Cloth Armor: %arm1%
echo   Stone Sword: %sword2%         Evil Mace: %sword17%           Chain Armor: %arm2%
echo   Bronze Sword: %sword3%        Shining Axe: %sword18%         Bronze Armor: %arm3%
echo   Iron Sword: %sword4%          Shadow Spear: %sword19%        Iron Armor: %arm4%
echo   Steel Sword: %sword5%         Goddess Sword: %sword20%       Steel Armor: %arm5%
echo   Gold Sword: %sword6%          Moon Saber: %sword21%          Gold Armor: %arm6%
echo   Crystal Sword: %sword7%       Sun Knife: %sword22%           Crystal Armor: %arm7%
echo   Sacred Blade: %sword8%        Cannon: %sword23%              Sacred Armor: %arm8%
echo   Runic Sword: %sword9%         Spiked Club: %sword24%         Runic Armor: %arm9%
echo   Infernal Rapier: %sword10%     Brass Knuckles: %sword25%      Infernal Armor: %arm10%
echo   Omega Maul: %sword11%          WaterFlow: %WFLOW%           Omega Armor: %arm11%
echo   Chaotic Spear: %sword12%       FireFlow: %FFLOW%            Chaotic Armor: %arm12%
echo   Mythical Godsword: %ls1%                          Mythical Armor: %la1%
echo   Alydril Godsword: %ls2%                           Alydril Armor: %la2%
echo.                                                                     
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Go to Town
echo 2) Go Home
echo 3) Change Weapon
echo 4) Change Armor
echo 5) View Levels
echo 6) Check Kingdom Stats
set /p invencho1=
if %invencho1% EQU 1 goto MENU
if %invencho1% EQU 2 goto Home
if %invencho1% EQU 3 goto weaponselect
if %invencho1% EQU 4 goto Armorselect
if %invencho1% EQU 5 goto viewlvls
if %invencho1% EQU 6 goto kstats
goto checkitems

:heal
set /a FATIGUE=%FATIGUE%+3
cls
echo.
set /a hp=%orighp%
echo You have been healed back to full health.
echo.
pause>nul
goto checkitems

:viewlvls
cls
echo.
echo Total Skill: %ttllvl%
echo Levels:
echo.
echo Woodcutting level: %Woodcuttinglvl%
echo Cooking level: %Cooklvl%
echo Fishing level: %Fishinglvl%
echo Thieving level: %Thievinglvl%
echo Mining level: %Mininglvl%
echo Smithing level: %Smithinglvl%
echo.
pause>nul
goto checkitems

:HIRE
cls
echo.
echo What job would you like to apply for?
echo.
echo Current job: %cjob%
echo.
echo 1) Smith                    
echo 2) Fisher                          
echo 3) Woodsman 
echo 4) Quit Job
echo.
echo 5) Back                         
echo.
set /p x1=
if %x1% EQU 1 goto HIRE1
if %x1% EQU 2 goto HIRE2
if %x1% EQU 3 goto HIRE3
if %x1% EQU 4 goto QUITJOB
if %x1% EQU 5 goto skillplot

:QUITJOB
if %cjob% EQU None goto 0JOB 
cls
echo.
echo You quit your job as a %cjob%.
echo You will recieve no bonuses.
echo.
set /a sjob=0
set /a fjob=0
set /a wjob=0
set cjob=None
pause
goto HIRE

:0JOB
cls
echo.
echo You aren't employed.
echo.
pause
goto HIRE

:1JOB
cls
echo.
echo You already have that job.
echo.
pause
goto HIRE

:HIRE1
if %cjob% EQU Smith goto 1JOB
cls
echo.
echo You've been accepted as a Smith.
echo You will recieve bonuses in Smithing and Mining.
echo.
set /a sjob=3
set /a fjob=0
set /a wjob=0
set cjob=Smith
pause
goto HIRE

:HIRE2
if %cjob% EQU Fisher goto 1JOB
cls
echo.
echo You've been accepted as a Fisher.
echo You will recieve bonuses in Fishing and Cooking.
echo.
set /a sjob=0
set /a fjob=3
set /a wjob=0
set cjob=Fisher
pause
goto HIRE

:HIRE3
if %cjob% EQU Woodsman goto 1JOB
cls
echo.
echo You've been accepted as a Woodsman.
echo You will recieve bonuses in Woodcutting and Pickpocketing.
echo.
set /a sjob=0
set /a fjob=0
set /a wjob=3
set cjob=Woodsman
pause
goto HIRE

:skillplot
if %rshard% EQU 1 if %fkindle% LEQ 499 goto FMCLOSE
cls
echo.
echo Job: %cjob%
echo.
echo.
echo 1) Cut Wood
echo 2) Cook Food
echo 3) Fish
echo 4) Mine Ore
echo 5) Smith Armor
echo 6) Pickpocket
echo 7) Jobforce
echo 8) Go to Farm
echo.
echo 9) Back
set /p f2=
if %f2% EQU 1 goto Woodcuttingmenu
if %f2% EQU 2 goto Cookingmenu
if %f2% EQU 3 goto Fishingmenu
if %f2% EQU 4 goto Miningmenu
if %f2% EQU 5 goto Smithingmenu
if %f2% EQU 6 goto Thievingmenu
if %f2% EQU 7 goto Hire
if %f2% EQU 8 goto FARM
if %f2% EQU 9 goto MENU
goto skillplot

:Cookingmenu
cls
echo.
echo You enter the kitchen with your skillet.
echo.
echo Cooking level: %Cooklvl%
echo Current EXP: %Cookcurxp%
echo Remainder: %Cookxpleft%
echo Raw Food: %rfood%
echo Cooked Food: %food%
echo.
echo.
echo 1) Cook
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Cookbow
if %f1% EQU 2 goto skillplot

:Cookbow
if %Cooklvl% EQU 100 goto instacook
if %rfood% LEQ 0 goto noitem
set /a FATIGUE=%FATIGUE%+2
set /a money=%money%+%fjob%+%fjob%+%fjob%+1
echo.
echo You start cooking.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You cooked some food.
set /a rfood=%rfood%-1
set /a food=%food%+%fjob%+1
set /a Cookxpleft=%Cookxpleft%-%Cookxpgain%
set /a Cookcurxp=%Cookcurxp%+%Cookxpgain%
if %Cookxpleft% LEQ 0 goto Cooklevelup
echo.
pause>nul
goto Cookingmenu

:Cooklevelup
set /a Cooklvl=%Cooklvl%+1
if %Cooklvl% GTR 100 set /a Cooklvl=100
if %Cooklvl% GEQ 100 set /a Cookxpleft=0
if %Cooklvl% GEQ 100 goto maxlvl
set /a Cookxpremain=%Cookxpremain%+100
set /a Cookxpleft=%Cookxpleft%+%Cookxpremain%
echo.
echo Congratulations, You have now reached level %Cooklvl%.
echo.
pause>nul
goto Cookingmenu

:Fishingmenu
cls
echo.
echo You sit at the dock with your rod.
echo.
echo Fishinging level: %Fishinglvl%
echo Current EXP: %Fishingcurxp%
echo Remainder: %Fishingxpleft%
echo Raw Fish: %rfood%
echo Bait: %bait%
echo.
echo.
echo 1) Fish
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Fishingbow
if %f1% EQU 2 goto skillplot

:Fishingbow
if %Fishinglvl% EQU 100 goto instafish
if %bait% LEQ 0 goto noitem
set /a FATIGUE=%FATIGUE%+2
set /a money=%money%+%fjob%+%fjob%+%fjob%+1
echo.
echo You start to fish.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You caught some fish.
set /a bait=%bait%-1
set /a rfood=%rfood%+%fjob%+1
set /a fish=%fish%+3
set /a Fishingxpleft=%Fishingxpleft%-%Fishingxpgain%
set /a Fishingcurxp=%Fishingcurxp%+%Fishingxpgain%
if %Fishingxpleft% LEQ 0 goto Fishinglevelup
echo.
pause>nul
goto Fishingmenu

:Fishinglevelup
set /a Fishinglvl=%Fishinglvl%+1
if %Fishinglvl% GTR 100 set /a Fishinglvl=100
if %Fishinglvl% GEQ 100 set /a Fishingxpleft=0
if %Fishinglvl% GEQ 100 goto maxlvl
set /a Fishingxpremain=%Fishingxpremain%+100
set /a Fishingxpleft=%Fishingxpleft%+%Fishingxpremain%
echo.
echo Congratulations, You have now reached level %Fishinglvl%.
echo.
pause>nul
goto Fishingmenu

:Miningmenu
cls
echo.
echo You enter the cave with your tools.
echo.
echo Mining level: %Mininglvl%
echo Current EXP: %Miningcurxp%
echo Remainder: %Miningxpleft%
echo Ore: %ore%
echo.
echo.
echo 1) Mine
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Miningbow
if %f1% EQU 2 goto skillplot

:Miningbow
if %Mininglvl% EQU 100 goto instamine
set /a FATIGUE=%FATIGUE%+2
set /a money=%money%+%sjob%+%sjob%+%sjob%+1
set /a glass=%glass%+%sjob%+1
echo.
echo You start mining some ore.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You mined some ore.
set /a ore=%ore%+%sjob%+1
set /a Miningxpleft=%Miningxpleft%-%Miningxpgain%
set /a Miningcurxp=%Miningcurxp%+%Miningxpgain%
if %Miningxpleft% LEQ 0 goto Mininglevelup
echo.
pause>nul
goto Miningmenu

:Mininglevelup
set /a Mininglvl=%Mininglvl%+1
if %Mininglvl% GTR 100 set /a Mininglvl=100
if %Mininglvl% GEQ 100 set /a Miningxpleft=0
if %Mininglvl% GEQ 100 goto maxlvl
set /a Miningxpremain=%Miningxpremain%+100
set /a Miningxpleft=%Miningxpleft%+%Miningxpremain%
echo.
echo Congratulations, You have now reached level %Mininglvl%.
echo.
pause>nul
goto Miningmenu

:Smithingmenu
cls
echo.
echo You go to the armory with your hammer.
echo.
echo Smithing level: %Smithinglvl%
echo Current EXP: %Smithingcurxp%
echo Remainder: %Smithingxpleft%
echo Ore: %ore%
echo Ingots: %ingot%
echo.
echo.
echo 1) Smith
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Smithingbow
if %f1% EQU 2 goto skillplot

:Smithingbow
if %Smithinglvl% EQU 100 goto instasmith
if %ore% EQU 0 goto noitem
set /a FATIGUE=%FATIGUE%+2
set /a money=%money%+%sjob%+%sjob%+%sjob%+1
set /a aloy=%aloy%+%sjob%+1
echo.
echo You start smithing.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
if %ingot% GTR 4 echo You smith your ingots into armor.
if %ingot% LEQ 4 echo You smith an ore into an ingot.
set /a ore=%ore%-1
set /a ingot=%ingot%+%sjob%+1
if %ingot% EQU 5 set /a arm1+1
if %ingot% GEQ 5 set /a ingot=0
set /a Smithingxpleft=%Smithingxpleft%-%Smithingxpgain%
set /a Smithingcurxp=%Smithingcurxp%+%Smithingxpgain%
if %Smithingxpleft% LEQ 0 goto Smithinglevelup
echo.
pause>nul
goto Smithingmenu

:Smithinglevelup
set /a Smithinglvl=%Smithinglvl%+1
if %Smithinglvl% GTR 100 set /a Smithinglvl=100
if %Smithinglvl% GEQ 100 set /a Smithingxpleft=0
if %Smithinglvl% GEQ 100 goto maxlvl
set /a Smithingxpremain=%Smithingxpremain%+100
set /a Smithingxpleft=%Smithingxpleft%+%Smithingxpremain%
echo.
echo Congratulations, You have now reached level %Smithinglvl%.
echo.
pause>nul
goto Smithingmenu

:Thievingmenu
cls
echo.
echo You sneak into the castle with your stashbag.
echo.
echo Thieving level: %Thievinglvl%
echo Current EXP: %Thievingcurxp%
echo Remainder: %Thievingxpleft%
echo Gold: %money%
echo.
echo.
echo 1) Pickpocket
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Thievingbow
if %f1% EQU 2 goto skillplot

:Thievingbow
if %Thievinglvl% EQU 100 goto instathieve
set /a RandE=%random%6/32767+1
if %RandE% EQU 1 goto ARRESTED
set /a FATIGUE=%FATIGUE%+2
echo.
echo You start walking through the streets for
echo a victim to pickpocket.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You steal some gold.
set /a money=%money%+%wjob%+%wjob%+%wjob%+%wjob%+%wjob%+10
set /a Thievingxpleft=%Thievingxpleft%-%Thievingxpgain%
set /a Thievingcurxp=%Thievingcurxp%+%Thievingxpgain%
if %Thievingxpleft% LEQ 0 goto Thievinglevelup
echo.
pause>nul
goto Thievingmenu

:Thievinglevelup
set /a Thievinglvl=%Thievinglvl%+1
if %class% EQU Thief set /a Thievinglvl=%Thievinglvl%+1
if %Thievinglvl% GTR 100 set /a Thievinglvl=100
if %Thievinglvl% GEQ 100 set /a Thievingxpleft=0
if %Thievinglvl% GEQ 100 goto maxlvl
set /a Thievingxpremain=%Thievingxpremain%+100
set /a Thievingxpleft=%Thievingxpleft%+%Thievingxpremain%
echo.
echo Congratulations, You have now reached level %Thievinglvl%.
echo.
pause>nul
goto Thievingmenu

:Woodcuttingmenu
cls
echo.
echo You walk to the peak with your axe.
echo.
echo Woodcutting level: %Woodcuttinglvl%
echo Current EXP: %Woodcuttingcurxp%
echo Remainder: %Woodcuttingxpleft%
echo Logs: %log%
echo.
echo.
echo 1) Woodcut
echo 2) Back
set /p f1=
if %f1% EQU 1 goto Woodcuttingbow
if %f1% EQU 2 goto skillplot

:Woodcuttingbow
if %Woodcuttinglvl% EQU 100 goto instawc
set /a FATIGUE=%FATIGUE%+2
set /a money=%money%+%wjob%+%wjob%+%wjob%+1
set /a bricks=%bricks%+%wjob%+1
echo.
echo You begin to prepare a log for chopping.
echo.
@set DelayInSeconds=3
@rem Use ping to wait
@ping 192.0.2.0 -n 1 -w %DelayInSeconds%000 > nul
cls
echo.
echo You cut the log.
set /a log=%log%+%wjob%+1
set /a Woodcuttingxpleft=%Woodcuttingxpleft%-%Woodcuttingxpgain%
set /a Woodcuttingcurxp=%Woodcuttingcurxp%+%Woodcuttingxpgain%
if %Woodcuttingxpleft% LEQ 0 goto Woodcuttinglevelup
echo.
pause>nul
goto Woodcuttingmenu

:Woodcuttinglevelup
set /a Woodcuttinglvl=%Woodcuttinglvl%+1
if %Woodcuttinglvl% GTR 100 set /a Woodcuttinglvl=100
if %Woodcuttinglvl% GEQ 100 set /a Woodcuttingxpleft=0
if %Woodcuttinglvl% GEQ 100 goto maxlvl
set /a Woodcuttingxpremain=%Woodcuttingxpremain%+100
set /a Woodcuttingxpleft=%Woodcuttingxpleft%+%Woodcuttingxpremain%
echo.
echo Congratulations, You have now reached level %Woodcuttinglvl%.
echo.
pause>nul
goto Woodcuttingmenu

:noitem
echo.
echo.
echo You do not have enough of the required materials to do this work.
echo.
pause>nul
goto skillplot

:maxlvl
echo.
set /a glass=%glass%+15
set /a aloy=%aloy%+15
set /a bricks=%bricks%+15
echo Congratulations, you have reached the maximum level in this skill.
echo Your profiency grants you many Glass, Aloy and Bricks.
echo.
pause>nul
goto skillplot

:instacook
if %rfood% EQU 0 goto noitem
set /a food=%food%+%rfood%
set /a rfood=%rfood%=0
set /a money=%money%+10
set /a food=%food%+10
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly cook all of your food.
echo.
pause>nul
goto Cookmenu

:instafish
if %bait% EQU 0 goto noitem
set /a rfood=%rfood%+%bait%
set /a bait=0
set /a money=%money%+10
set /a fish=%fish%+10
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly use up all of your bait.
echo.
pause>nul
goto Fishingmenu

:instamine
set /a ore=%ore%+100
set /a money=%money%+10
set /a glass=%glass%+10
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly mine 100 ore at a time.
echo.
pause>nul
goto Miningmenu

:instasmith
if %ore% EQU 0 goto noitem
set /a ingot=%ingot%+%ore%
set /a ore=0
set /a money=%money%+10
set /a aloy=%aloy%+10
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly smelt all of your ore.
echo.
pause>nul
goto Smithingmenu

:instathieve
set /a money=%money%+1000
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly steal 10,000 coins at a time.
echo.
pause>nul
goto Thievingmenu

:instawc
set /a log=%log%+100
set /a money=%money%+10
set /a bricks=%bricks%+10
echo.
echo.
echo Because you are a master at this skill, 
echo you instantly cut 100 logs at a time.
echo.
pause>nul
goto Woodcuttingmenu

:SAVE_GAME_FILES
(
echo cls
echo echo.
echo set username1=%username1%
echo set password1=%password1%
echo echo Data has been successfully translated.
:DATA_VALUES
echo set retired=%retired%
echo set gdoll=%gdoll%
echo set gflowers=%gflowers%
echo set cclothes=%cclothes%
echo set cring=%cring%
echo set foxquest=%foxquest%
echo set greenquest=%greenquest%
echo set dquest=%dquest%
echo set childhappy=%childhappy%
echo set towerwin=%towerwin%
echo set oale=%oale%
echo set ogem=%ogem%
echo set oring=%oring%
echo set ofood=%ofood%
echo set hunterarmor=%hunterarmor%
echo set lbean=%lbean%
echo set sleepingman=%sleepingman%
echo set cpick=%cpick%
echo set fhappy=%fhappy%
echo set fkindle=%fkindle%
echo set foundi=%foundi%
echo set foundh=%foundh%
echo set chappy=%chappy%
echo set nrep=%nrep%
echo set population=%population%
echo set rep=%rep%
echo set rshard=%rshard%
echo set debris=%debris%
echo set riddlesolved=%riddlesolved%
echo set cavecrystal=%cavecrystal%
echo set blockplacement=%blockplacement%
echo set CN1=%CN1%
echo set CN2=%CN2%
echo set CN3=%CN3%
echo set wlvl=%wlvl%
echo set SPIECE=%SPIECE%
echo set bshard=%bshard%
echo set gshard=%gshard%
echo set pitem=%pitem%
echo set LIT=%LIT%
echo set deathcount=%deathcount%
echo set Hcharm=%Hcharm%
echo set Hupgradee=%Hupgradee%
echo set CROPP=%CROPP%
echo set CHILD=%CHILD%
echo set childname=%childname%
echo set WNAME=%WNAME%
echo set pethappy=%pethappy%
echo set WIFEHAPPY=%WIFEHAPPY%
echo set MARRIED=%MARRIED%
echo set class=%class%
echo set petowner=%petowner%
echo set N1=%N1%
echo set N2=%N2%
echo set the=%the%
echo set sweather=%sweather%
echo set snweather=%snweather%
echo set cjob=%cjob%
echo set wjob=%wjob%
echo set fjob=%fjob%
echo set sjob=%sjob%
echo set daycount=%daycount%
echo set daycountsum=%daycountsum%
echo set yyear=%yyear%
echo set sseason=%sseason%
echo set acc1g=%acc1g%
echo set acc1m=%acc1m%
echo set acc2g=%acc2g%
echo set acc2m=%acc2m%
echo set acc3g=%acc3g%
echo set acc3m=%acc3m%
echo set acc4g=%acc4g%
echo set acc4m=%acc4m%
echo set acc5g=%acc5g%
echo set acc5m=%acc5m%
echo set cost1=%cost1%
echo set cost=%cost%
echo set gcho=%gcho%
echo set echo=%echo%
echo set e2cho=%e2cho%
echo set e1=%e1%
echo set dmgnpc=%dmgnpc%
echo set ea=%ea%
echo set ls1=%ls1%
echo set ls2=%ls2%
echo set la1=%la1%
echo set la2=%la2%
echo set armtype=%armtype%
echo set hp=%hp%
echo set orighp=%orighp%
echo set swordtype=%swordtype%
echo set skind=%skind%
echo set curlvl=%curlvl%
echo set origxp=%origxp%
echo set playerxp=%playerxp%
echo set xpuntil=%xpuntil%
echo set destination=%destination%
echo set destination2=%destination2%
echo set swordchoice=%swordchoice%
echo set swordchoice2=%swordchoice2%
echo set swordchoice3=%swordchoice3%
echo set swordexist=%swordexist%
echo set sprice=%sprice%
echo set armchoice=%armchoice%
echo set armchoice2=%armchoice2%
echo set aprice=%aprice%
echo set money=%money%
echo set loan=%loan%
echo set key=%key%
echo set damage=%damage%
echo set killcount=%killcount%
echo set dr=%dr%
echo set def=%def%
echo set def2=%def2%
echo set def3=%def3%
echo set def4=%def4%
echo set def5=%def5%
echo set def6=%def6%
echo set def7=%def7%
echo set def8=%def8%
echo set def9=%def9%
echo set def10=%def10%
echo set def11=%def11%
echo set def12=%def12%
echo set gmail=%gmail%
echo set hbone=%hbone%
echo set dhide=%dhide%
echo set rtab=%rtab%
echo set food=%food%
echo set rfood=%rfood%
echo set potion=%potion%
echo set bait=%bait%
echo set seed=%seed%
echo set fur=%fur%
echo set gem=%gem%
echo set ingot=%ingot%
echo set log=%log%
echo set bow=%bow%
echo set ore=%ore%
echo set aan=%aan%
echo set bankgold=%bankgold%
echo set bankgold2=%bankgold2%
echo set morb=%morb%
echo set arm1=%arm1%
echo set arm2=%arm2%
echo set arm3=%arm3%
echo set arm4=%arm4%
echo set arm5=%arm5%
echo set arm6=%arm6%
echo set arm7=%arm7%
echo set arm8=%arm8%
echo set arm9=%arm9%
echo set arm10=%arm10%
echo set arm11=%arm11%
echo set arm12=%arm12%
echo set ma1=%ma1%
echo set ma2=%ma2%
echo set ma3=%ma3%
echo set ma4=%ma4%
echo set ma5=%ma5%
echo set ma6=%ma6%
echo set ma7=%ma7%
echo set ma8=%ma8%
echo set ma9=%ma9%
echo set ma10=%ma10%
echo set ms1=%ms1%
echo set ms2=%ms2%
echo set ms3=%ms3%
echo set ms4=%ms4%
echo set ms5=%ms5%
echo set ms6=%ms6%
echo set ms7=%ms7%
echo set ms8=%ms8%
echo set ms9=%ms9%
echo set ms10=%ms10%
echo set jester=%jester%
echo set servant=%servant%
echo set knight=%knight%
echo set noble=%noble%
echo set thane=%thane%
echo set gmaster=%gmaster%
echo set templar=%templar%
echo set regal=%regal%
echo set kingsman=%kingsman%
echo set TUMMY=%TUMMY%
echo set upgradee=%upgradee%
echo set days=%days%
echo set FFLOW=%FFLOW%
echo set WFLOW=%WFLOW%
echo set sword1=%sword1%
echo set sword2=%sword2%
echo set sword3=%sword3%
echo set sword4=%sword4%
echo set sword5=%sword5%
echo set sword6=%sword6%
echo set sword7=%sword7%
echo set sword8=%sword8%
echo set sword9=%sword9%
echo set sword10=%sword10%
echo set sword11=%sword11%
echo set sword12=%sword12%
echo set sword16=%sword16%
echo set sword17=%sword17%
echo set sword18=%sword18%
echo set sword19=%sword19%
echo set sword20=%sword20%
echo set sword21=%sword21%
echo set sword22=%sword22%
echo set sword23=%sword23%
echo set sword24=%sword24%
echo set sword25=%sword25%
echo set axxx=%axxx%
echo set daycount=%daycount%
echo set pgmail=%pgmail%
echo set phbone=%phbone%
echo set pdhide=%pdhide%
echo set prtab=%prtab%
echo set ppotion=%ppotion%
echo set pingot=%pingot%
echo set pfood=%pfood%
echo set prfood=%prfood%
echo set pbait=%pbait%
echo set pseed=%pseed%
echo set pfur=%pfur%
echo set pore=%pore%
echo set pbow=%pbow%
echo set plog=%plog%
echo set pgem=%pgem%
echo set pmorb=%pmorb%
echo set Woodcuttinglvl=%Woodcuttinglvl%
echo set Woodcuttingxpremain=%Woodcuttingxpremain%
echo set Woodcuttingxpgain=%Woodcuttingxpgain%
echo set Woodcuttingcurxp=%Woodcuttingcurxp%
echo set Woodcuttingxpleft=%woodcuttingxpleft%
echo set Cooklvl=%Cooklvl%
echo set Cookxpremain=%Cookxpremain%
echo set Cookxpgain=%Cookxpgain%
echo set Cookcurxp=%Cookcurxp%
echo set Cookxpleft=%Cookxpleft%
echo set Fishinglvl=%Fishinglvl%
echo set Fishingxpremain=%Fishingxpremain%
echo set Fishingxpgain=%Fishingxpgain%
echo set Fishingcurxp=%Fishingcurxp%
echo set Fishingxpleft=%Fishingxpleft%
echo set Mininglvl=%Mininglvl%
echo set Miningxpremain=%Miningxpremain%
echo set Miningxpgain=%Miningxpgain%
echo set Miningcurxp=%Miningcurxp%
echo set Miningxpleft=%Miningxpleft%
echo set Smithinglvl=%Smithinglvl%
echo set Smithingxpremain=%Smithingxpremain%
echo set Smithingxpgain=%Smithingxpgain%
echo set Smithingcurxp=%Smithingcurxp%
echo set Smithingxpleft=%Smithingxpleft%
echo set Thievinglvl=%Thievinglvl%
echo set Thievingxpremain=%Thievingxpremain%
echo set Thievingxpgain=%Thievingxpgain%
echo set Thievingcurxp=%Thievingcurxp%
echo set Thievingxpleft=%Thievingxpleft%
echo set ttllvl=%ttllvl%
echo set bricks=%bricks%
echo set crab=%crab%
echo set sjewel=%sjewel%
echo set rupee=%rupee%
echo set kingfish=%kingfish%
echo set boatlvl=%boatlvl%
echo set maps=%maps%
echo set aloy=%aloy%
echo set fish=%fish%
echo set glass=%glass%
echo set shrimp=%shrimp%
echo set trout=%trout%
echo set boat1=%boat1%
echo set boat5=%boat5%
echo set boat6=%boat6%
echo set shrimprate=%shrimprate%
echo set FATIGUE=%FATIGUE%
echo set crabrate=%crabrate%
echo set troutrate=%troutrate%
echo set flounderrate=%flounderrate%
echo set sharkrate=%sharkrate%
echo set salmonrate=%salmonrate%
echo set pcrab=%pcrab%
echo set pshrimp=%pshrimp%
echo set ptrout=%ptrout%
echo set moa=%moa%
echo set DOW=%DOW%
)>%username1%.save.bat
echo.
pause
goto MENU

:settings
cls
echo.
echo What setting would you like to access?
echo.
echo 1) Planetary Sign
echo 2) Current Username
echo 3) Current Password
echo 4) Help
echo.
echo 5) Back
echo.
set /p scho=
if %scho% EQU 1 goto color
if %scho% EQU 2 goto namechange
if %scho% EQU 3 goto passchange
if %scho% EQU 4 goto HELP
if %scho% EQU 5 goto MENU


:GETGS
cls
echo.
echo Guard: You are not to be here, you are currently too weak.
echo Claim the green shard and reach level 15 first.
echo.
pause>nul
goto CASTLE

:FLUSH
cls
echo.
echo The high water level flushed you out of the dungeon^^!
echo Maybe try keeping the water level below 20...
set wlvl=10
echo.
pause
goto CASTLE

:SEWER
if %curlvl% LEQ 14 goto GETGS
if %gshard% EQU 0 goto GETGS
if %bshard% EQU 1 goto SDSEALED
cls
echo.
echo You are standing in the sewer entrance.
echo.
echo What would you like to do?
echo.
if %wlvl% GEQ 20 set wlvl=20
if %wlvl% EQU 20 goto FLUSH
echo Water Level: %wlvl%
echo.
echo 1) Pull Pump Lever
echo 2) Enter Switch-Room
echo 3) Enter Cracked Wall
echo 4) Enter Pipe
echo 5) Enter Chamber
echo.
echo 6) Back
set /p login=
if %login% EQU 1 goto PWL
if %login% EQU 2 goto WT
if %login% EQU 3 goto CITW
if %login% EQU 4 goto DH
if %login% EQU 5 goto WC
if %login% EQU 6 goto CASTLE
goto SEWER

:WC
cls
if %wlvl% LEQ 4 echo The water is too low.
if %wlvl% LEQ 4 pause
if %wlvl% LEQ 4 goto SEWER
echo.
echo You stand in a chamber with a giant mechanical button in the center.
echo.
echo Press the button?
echo.
echo 1) Yes
echo 2) Not yet
echo.
set /p login=
if %login% EQU 2 goto SEWER
cls
echo.
echo You push the big button and the water level whirls higher^^!
set /a wlvl=%wlvl%*2
echo.
cls
echo.
echo You rush away from the whirlwind of water.
echo.
pause
goto SEWER

:SDSEALED
cls
echo.
echo The dungeon is filled with bubbling water.
echo.
pause
goto CASTLE

:PWL
cls
echo.
if %wlvl% GEQ 3 echo The water level is past maximum.
if %wlvl% EQU 2 echo The water level is at maximum.
if %wlvl% EQU 1 echo The water level rises.
if %wlvl% EQU 1 set wlvl=2
if %wlvl% EQU 0 echo The water level rises.
if %wlvl% EQU 0 set wlvl=1
if %wlvl% EQU 12 echo The water blasts you upward^^!
if %wlvl% EQU 12 pause
if %wlvl% EQU 12 goto SDBOSS
if %wlvl% GEQ 4 echo The water drains.
if %wlvl% GEQ 4 set wlvl=0
echo.
pause
goto SEWER

:CITW
cls
echo.
if %wlvl% LEQ 1 echo The water is too low.
if %wlvl% LEQ 1 pause
if %wlvl% LEQ 1 goto SEWER
if %wlvl% GEQ 3 echo The water is too high.
if %wlvl% GEQ 3 pause
if %wlvl% GEQ 3 goto SEWER
echo You stand infront of a pond with a large, hungry eel in it.
echo.
if %fish% LSS 10 pause
if %fish% LSS 10 goto SEWER
cls
echo.
echo You toss some fish into the pond.
echo.
echo It is overjoyed. It splashes about, filling the room up with water.
set wlvl=3
set /a fish=%fish%-10
echo.
pause
goto SEWER

:WT
cls
if %wlvl% EQU 8 goto WTT
if %wlvl% LEQ 2 echo The water is too low.
if %wlvl% LEQ 2 pause
if %wlvl% LEQ 2 goto SEWER
if %wlvl% GEQ 5 echo The water is too high.
if %wlvl% GEQ 5 pause
if %wlvl% GEQ 5 goto SEWER
:WTT
cls
echo.
echo You see 2 mechanical switches and a narrow path.
echo.
echo Water Level: %wlvl%
echo.
echo 1) Switch 1
echo 2) Switch 2
echo 3) Path
echo.
echo 4) Back
set /p login=
echo.
if %login% EQU 4 goto SEWER
if %login% EQU 3 goto SPATH
if %login% EQU 1 echo You lower the water level by 1.
if %login% EQU 1 set /a wlvl=%wlvl%-1
if %login% EQU 2 echo You raise the water level by 2.
if %login% EQU 2 set /a wlvl=%wlvl%+2
if %wlvl% GEQ 8 set wlvl=7
if %wlvl% LEQ 0 set wlvl=0
echo.
pause
goto WTT

:SPATH
cls
if %SPIECE% EQU 1 goto HSPIECE
if %wlvl% LEQ 5 echo The water is too low.
if %wlvl% LEQ 5 pause
if %wlvl% LEQ 5 goto SEWER
if %wlvl% GEQ 7 echo The water is too high.
if %wlvl% GEQ 7 pause
if %wlvl% GEQ 7 goto SEWER
cls
echo.
echo You find a piece of statue on the floor.
echo You head back with it.
set SPIECE=1
echo.
pause
goto WTT

:HSPIECE
cls
echo.
echo The area is flooded now.
echo.
pause
goto WTT

:DH
cls
echo.
if %wlvl% EQU 1 goto DHS
if %wlvl% LEQ 3 echo The water is too low.
if %wlvl% LEQ 3 pause
if %wlvl% LEQ 3 goto SEWER
if %wlvl% GEQ 5 echo The water is too high.
if %wlvl% GEQ 5 pause
if %wlvl% GEQ 5 goto SEWER
if %SPIECE% EQU 1 goto DH2
:DHS
echo A dragon statue sits with a missing piece to its foot.
echo.
pause
goto SEWER

:DH2
cls
echo.
echo A dragon statue sits with a missing piece to its foot.
echo.
echo Put the piece you found back onto the statue?
echo.
echo 1) Yes
echo 2) Not Yet
echo.
set /p login=
if %login% EQU 2 goto SEWER
cls
echo.
echo You carefully place the piece onto the statue.
echo.
pause
cls
set SPIECE=0
echo.
echo The Statue shakes and wobbles. The sewer starts to shake as well.
echo.
set wlvl=8
pause
goto SEWER

:SDBOSS
cls
echo.
set /a FATIGUE=%FATIGUE%+12
set npctype=Giant Eel
set /a health=%random% %% 99 + 600
set /a level=%random% %% 5 + 20
goto sF_START )

:sF_START
cls
echo.
ping localhost -n 2 >nul
echo You encounter a level %level% %npctype%.
ping localhost -n 2 >nul
goto sfs1

:sfs1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p atkcho=
if %atkcho% EQU 1 goto satk
if %atkcho% EQU 2 goto sfightinginventory
if %atkcho% EQU 3 goto sflee
goto sfs1

:sflee
cls
echo.
echo.
echo You run from the dungeon like a coward.
echo.
pause>nul
goto MENU

:sfightinginventory
set destination2=fightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%          Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%   Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%       Dungeon Shards: %Ttlshard%
echo  _______________________________________________		 	 			 	 
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	         Gemstones: %gem%
echo   Seeds: %seed%	         Magic Orbs: %morb%
echo   Furs: %fur%	         Raw Food: %rfood%
echo   Ore: %ore%	         Huge Bones: %hbone%
echo   Logs: %log%	         Dragon Hides: %dhide%
echo   Food: %food%	         Runic Tablets: %rtab%
echo   Ingots: %ingot%	         Goblin Mails: %gmail%
echo   Potions: %potion%             Bows: %bow%
echo   Crabs: %crab%               Kingfish: %kingfish%
echo                                                  
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
set /p invencho=
if %invencho% EQU 1 goto sfs1
if %invencho% EQU 2 goto sBATTLEITEMS
if %invencho% EQU 3 goto seatfood

:sBATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Inventory
set /p invencho=
if %invencho% EQU 2 goto sfightinginventory
if %invencho% EQU 1 goto sdrinkpotion
goto sBATTLEITEMS

:sdrinkpotion
if %potion% LEQ 0 goto snopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto sfs3

:snopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto sBATTLEITEMS

:satk
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*680/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*710/32767+1
if %swordtype% EQU Godess set /a damage=%random%*720/32767+1
if %swordtype% EQU Moon set /a damage=%random%*730/32767+1
if %swordtype% EQU Sun set /a damage=%random%*740/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*750/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*750/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack^^!
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
pause>nul
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %xpuntil% LEQ 0 goto slevelup
:s333
if %health% LEQ 0 goto swin
if %petowner% EQU 1 goto sPatk
goto sfs3

:slevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto s333

:sPatk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto sfs3
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
if %health% LEQ 0 goto swin
goto sfs3

:sfs3
set /a dmgnpc=%random%*110/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a dmgnpc=%dmgnpc%-15
if %dmgnpc% LEQ 1 set /a dmgnpc=1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo The %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
pause>nul
goto sfs1

:swin
set /a chappy=%chappy%+1
cls
echo.
echo You won the battle against the %npctype%.
echo.
echo You recieved the Blue Shard.
set bshard=1
set /a killcount=%killcount%+1
echo.
echo You leave the sewer as it begins to fill up with water.
pause>nul
goto CASTLE

:HELL
cls
set /a foundh=1
echo ____________________
echo.
set sweather=Hellish
set days=Night
echo It is a %sweather% %days%.
echo You are class %class%.
echo Hell Title: %Hupgradee%
echo.
echo                              ͻ
echo   What would you like to do    
echo   in the Kingdom of Hell?      
echo.                             ͹
echo   North:                       		
echo   1) Wander the End            
echo   2) Death Shop                
echo   East:                        
echo.  3) Castle of Hell            
echo   4) Kittens N' Such           
echo   South:                       
echo.  5) Hell's Center             
echo   6) Untrust the Warlock       
echo   West:                        
echo.  7) Soul Vault                
if %fkindle% GEQ 500 echo.  8) Flame Monster Squad       
echo                                
echo   666) Back to Varrock         
echo                              ͼ
set /p x1=
if %x1% EQU 1 goto HELLEND
if %x1% EQU 2 goto HELLSHOP
if %x1% EQU 3 goto HELLROCK
if %x1% EQU 4 goto HELLADOPT
if %x1% EQU 5 goto HELLCENTER
if %x1% EQU 6 goto HELLWARLOCK
if %x1% EQU 7 goto HELLVAULT
if %fkindle% GEQ 500 if %x1% EQU 8 goto FMS
if %x1% EQU 666 goto PLUMET
goto HELL

:FMS
cls
echo.
echo Flame Monster Jim: We can come with you.
echo Flame Monster Bob: Only one at a time, though.
echo Flame Monster Keith: And we replace whatever pet you have.
echo.
echo Take a Flame Monster with you?
echo.
echo 1) Yes
echo 2) No
echo.
echo.
set /p login=
if %login% EQU 2 (
cls
echo.
echo Flame Monster Keith: Meh.
echo.
pause
goto HELL
)
set /a FMC=%random%*3/32767+1
set the=the
set petowner=1
if %FMC% EQU 1 set N1=Jim
if %FMC% EQU 1 set N2=Flame Monster
if %FMC% EQU 2 set N1=Bob
if %FMC% EQU 2 set N2=Flame Monster
if %FMC% EQU 3 set N1=Keith
if %FMC% EQU 3 set N2=Flame Monster
cls
echo.
echo %N1% %the% %N2% heads to your home to wait.
echo.
pause
goto HELL

:PLUMET
cls
echo.
echo You leap off the edge of Hell and fall upward.
echo You are sucked back to the Kingdom of Varrock.
echo.
set sweather=Cloudy
set days=Night
pause>nul
goto MENU

:HELLEND
set /a npc=%random% %% 25+1
if %npc% EQU 1 set npctype=DeathEater
if %npc% EQU 2 set npctype=Thing
if %npc% EQU 3 set npctype=Hellspawn
if %npc% EQU 4 set npctype=Mage
if %npc% EQU 5 set npctype=Sorcerer
if %npc% EQU 6 set npctype=Human
if %npc% EQU 7 set npctype=Soul
if %npc% EQU 8 set npctype=Demon
if %npc% EQU 9 set npctype=Eldersoul
if %npc% EQU 10 set npctype=Lava Mantis
if %npc% EQU 11 set npctype=Lost Cow
if %npc% EQU 12 set npctype=Grandsoul
if %npc% EQU 13 set npctype=Ghoul
if %npc% EQU 14 set npctype=Undead
if %npc% EQU 15 set npctype=Wort
if %npc% EQU 16 set npctype=Skeleton
if %npc% EQU 17 set npctype=Succubus
if %npc% EQU 18 set npctype=Ghost
if %npc% EQU 19 set npctype=Scorpoid
if %npc% EQU 20 set npctype=Megasoul
if %npc% EQU 21 set npctype=Mutant
if %npc% EQU 22 set npctype=Sleeper
if %npc% EQU 23 set npctype=Craw
if %npc% EQU 24 set npctype=Magmug
if %npc% EQU 25 set npctype=Devil's Mutt

:HBATTLE_VARIABLES
set health=0
if %curlvl% LEQ 2 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 2 + 1
goto HF_START )
if %curlvl% LEQ 5 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 6 + 1
goto HF_START )
if %curlvl% LEQ 10 (
set /a health=%random% %% 100 + 75
set /a level=%random% %% 14 + 1
goto HF_START )
if %curlvl% LEQ 15 (
set /a health=%random% %% 100 + 350
set /a level=%random% %% 6 + 10
goto HF_START )
if %curlvl% LEQ 20 (
set /a health=%random% %% 100 + 500
set /a level=%random% %% 5 + 15
goto HF_START )
if %curlvl% LEQ 25 (
set /a health=%random% %% 100 + 625
set /a level=%random% %% 7 + 20
goto HF_START )
if %curlvl% LEQ 30 (
set /a health=%random% %% 100 + 750
set /a level=%random% %% 10 + 25
goto HF_START )
if %curlvl% LEQ 37 (
set /a health=%random% %% 100 + 900
set /a level=%random% %% 15 + 30
goto HF_START )

:HF_START
cls
echo.
ping localhost -n 2 >nul
echo You encounter a level %level% %npctype%.
ping localhost -n 2 >nul
goto hfs1

:hfs1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p atkcho=
if %atkcho% EQU 1 goto hatk
if %atkcho% EQU 2 goto hfightinginventory
if %atkcho% EQU 3 goto hflee
goto hfs1

:hatk
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*680/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*710/32767+1
if %swordtype% EQU Godess set /a damage=%random%*720/32767+1
if %swordtype% EQU Moon set /a damage=%random%*730/32767+1
if %swordtype% EQU Sun set /a damage=%random%*740/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*750/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*750/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack^^!
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
pause>nul
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %xpuntil% LEQ 0 goto hlevelup
:h333
echo.
if %health% LEQ 0 goto hdropitem
if %petowner% EQU 1 goto hPatk
goto hfs3

:hlevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto h333

:hblevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto hb333

:hPatk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto hfs3
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
if %health% LEQ 0 goto hdropitem
goto hfs3

:hfs3
if %npctype% EQU DeathEater set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Thing set /a dmgnpc=%random%*60/32767+1
if %npctype% EQU Hellspawn set /a dmgnpc=%random%*90/32767+1
if %npctype% EQU Mage set /a dmgnpc=%random%*120/32767+1
if %npctype% EQU Sorcerer set /a dmgnpc=%random%*150/32767+1
if %npctype% EQU Human set /a dmgnpc=%random%*50/32767+1
if %npctype% EQU Soul set /a dmgnpc=%random%*85/32767+1
if %npctype% EQU Demon set /a dmgnpc=%random%*183/32767+1
if %npctype% EQU Eldersoul set /a dmgnpc=%random%*240/32767+1
if %npctype% EQU Lava Mantis set /a dmgnpc=%random%*300/32767+1
if %npctype% EQU Lost Cow set /a dmgnpc=%random%*330/32767+1
if %npctype% EQU Grandsoul set /a dmgnpc=%random%*360/32767+1
if %npctype% EQU Ghoul set /a dmgnpc=%random%*53/32767+1
if %npctype% EQU Undead set /a dmgnpc=%random%*30/32767+1
if %npctype% EQU Wort set /a dmgnpc=%random%*60/32767+1
if %npctype% EQU Skeleton set /a dmgnpc=%random%*90/32767+1
if %npctype% EQU Succubus set /a dmgnpc=%random%*120/32767+1
if %npctype% EQU Ghost set /a dmgnpc=%random%*150/32767+1
if %npctype% EQU Scorpoid set /a dmgnpc=%random%*50/32767+1
if %npctype% EQU Megasoul set /a dmgnpc=%random%*85/32767+1
if %npctype% EQU Mutant set /a dmgnpc=%random%*183/32767+1
if %npctype% EQU Sleeper set /a dmgnpc=%random%*240/32767+1
if %npctype% EQU Craw set /a dmgnpc=%random%*300/32767+1
if %npctype% EQU Magmug set /a dmgnpc=%random%*330/32767+1
if %npctype% EQU Devil's Mutt set /a dmgnpc=%random%*360/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a dmgnpc=%dmgnpc%-15
if %dmgnpc% LEQ 1 set /a dmgnpc=1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo The %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto hdie
echo.
echo You now have %hp% health left.
pause>nul
goto hfs1

:hdropitem
if %npctype% EQU DeathEater goto hgoblindrop
if %npctype% EQU Thing goto hgiantdrop
if %npctype% EQU Hellspawn goto hdragondrop
if %npctype% EQU Mage goto hmagedrop
if %npctype% EQU Sorcerer goto hsorcererdrop
if %npctype% EQU Human goto hhumandrop
if %npctype% EQU Soul goto hfarmerdrop
if %npctype% EQU Demon goto hbeardrop
if %npctype% EQU Eldersoul goto hrockbeastdrop
if %npctype% EQU Lava Mantis goto hentdrop
if %npctype% EQU Lost Cow goto htheifdrop
if %npctype% EQU Grandsoul goto helementaldrop
if %npctype% EQU Ghoul goto hbeardrop
if %npctype% EQU Undead goto hmadmandrop
if %npctype% EQU Wort goto hwortdrop
if %npctype% EQU Skeleton goto hdragondrop
if %npctype% EQU Succubus goto hmagedrop
if %npctype% EQU Ghost goto hsorcererdrop
if %npctype% EQU Scorpoid goto hhumandrop
if %npctype% EQU Megasoul goto heagledrop
if %npctype% EQU Mutant goto hbeardrop
if %npctype% EQU Sleeper goto hrockbeastdrop
if %npctype% EQU Craw goto htheifdrop
if %npctype% EQU Magmug goto helementaldrop
if %npctype% EQU Devil's Mutt goto helementaldrop

:hwortdrop
set word=a
set /a crab=%crab%+1
set drop=Crab
goto hwin

:heagledrop
set word=a
set /a kingfish=%kingfish%+1
set drop=Kingfish
goto hwin

:hmadmandrop
set word=a
set /a maps=%maps%+1
set drop=Map
goto hwin


:hgoblindrop
set word=a
set /a gmail=%gmail%+1
set drop=Goblin Mail
goto hwin

:hgiantdrop
set word=3
set /a hbone=%hbone%+3
set drop=Huge Bones
goto hwin

:hdragondrop
set word=3
set /a dhide=%dhide%+3
set drop=Dragon Hides
goto hwin

:hmagedrop
set word=2
set /a rtab=%rtab%+2
set drop=Runic Tablets
goto hwin

:hsorcererdrop
set word=2
set /a potion=%potion%+2
set drop=Potions
goto hwin

:hhumandrop
set word=2
set /a food=%food%+2
set drop=Food
goto hwin

:hfarmerdrop
set word=4
set /a seed=%seed%+4
set drop=Seeds
goto hwin

:hbeardrop
set word=5
set /a fur=%fur%+5
set drop=Fur
goto hwin

:hrockbeastdrop
set word=6
set /a ore=%ore%+6
set drop=Ore
goto hwin

:hentdrop
set word=10
set /a log=%log%+10
set drop=Logs
goto hwin

:htheifdrop
set word=5
set /a gem=%gem%+5
set drop=Gemstones
goto hwin

:helementaldrop
set word=5
set /a morb=%morb%+5
set drop=Magic Orbs
goto hwin

:hwin
set /a chappy=%chappy%+1
cls
echo.
echo You won the battle against the %npctype%.
echo.
set /a killcount=%killcount%+1
echo You recieved %word% %drop%.
echo.
set /a killcount=%killcount%+1
pause>nul
goto HELL

:hdie
cls
echo.
set /a chappy=%chappy%-2
set /a nrep=%nrep%+1
echo You died from losing all health.
echo Good thing you're already in Hell.
echo.
pause>nul
set /a deathcount=%deathcount%+500
set hp=50
set ammo=0
set opammo=0
set wins=0
if %class% EQU Undead goto HELL
set /a money=%money%/2
goto HELL

:HELLSHOP
cls
echo.
echo Percy: Hello... You recieved any Death Coins from dying yet?
echo My wares are only worth the finest of Death Coins.
echo.
echo Death Coins: %deathcount%
echo.
echo.
echo 1) Runic Armor:    Costs 25,000 DC.
echo. 		    Owned: %arm9%   
echo.
echo 2) Infernal Armor: Costs 40,000 DC.
echo.		    Owned: %arm10%
echo.
echo 3) Omega Armor:    Costs 75,000 DC.
echo.		    Owned: %arm11%
echo.
echo 4) Chaotic Armor:  Costs 100,000 DC.
echo.		    Owned: %arm12%   
echo.
echo.
echo 5) Back
echo.
set /p w1=
if %w1% EQU 1 (
set /a sprice=25000
set swordchoice=Runic
set swordchoice2=Armor
set /a att=200
set swordexist=arm9
set swordexist2=%arm9% )
if %w1% EQU 2 (
set /a sprice=40000
set swordchoice=Infernal
set swordchoice2=Armor
set /a att=215
set swordexist=arm10
set swordexist2=%arm10% )
if %w1% EQU 3 (
set /a sprice=75000
set swordchoice=Omega
set swordchoice2=Armor
set /a att=235
set swordexist=arm11
set swordexist2=%arm11% )
if %w1% EQU 4 (
set /a sprice=100000
set swordchoice=Chaotic
set swordchoice2=Armor
set /a att=250
set swordexist=arm12
set swordexist2=%arm12% )
if %w1% EQU 5 goto HELL
goto hbuynow
echo.
goto HELL

:hbuynow
if %deathcount% LSS %sprice% goto hnomoney
if %swordexist2% GEQ 1 goto halreadyown
set /a money=%money%-%sprice%
set /a %swordexist%=%swordexist2%+1
echo.
echo.
echo %swordchoice% %swordchoice2% purchased. You have a damage bonus of up to %att% with this item.
pause>nul
goto HELLSHOP

:halreadyown
echo.
echo Percy: You already own this item.
echo.
pause>nul
goto HELLSHOP

:hnomoney
echo.
echo.
echo Percy: You don't have enough Death Coins.
echo.
pause>nul
goto HELLSHOP

:halreadyown
echo.
echo.
echo Percy: You already own this item.
echo.
pause>nul
goto HELLSHOP

:HSEAL
cls
echo.
echo Hell Castle is sealed. You cannot enter.
echo.
pause
goto HELL

:HELLROCK
cls
if %Hcharm% GEQ 1 goto HSEAL
if %curlvl% LEQ 29 goto NOHROCK
if %gshard% LEQ 0 goto NOHROCK
if %rshard% LEQ 0 goto NOHROCK
if %bshard% LEQ 0 goto NOHROCK
echo.
echo Inside Hell Castle, a giant door with 3 slots has a plaque that says:
echo A level high, or all is dead. Green is blue, and blue is red.
pause>nul
cls
echo. 
echo Place all Green, Blue and Red Shards into the slots and enter?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 2 goto HELL
echo.
set /a hp=%orighp%
set npctype=Hell's Keeper
set /a level=751
set /a health=2980
set /a xp=5000
goto hFS1_STR_B

:hFS1_STR_B
cls
echo.
echo A giant being rises from a throne and steps towards you.
echo.
echo Hell's Keeper: You, %username1%^^! The one I've heard much about you...
echo Your stories are told in gathered whispers. 3 bosses have led you to here?
echo Those victories were not enough^^!? Now you want something from ME^^!^^!??
echo.
ping localhost -n 2 >nul
ping localhost -n 2 >nul
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You encounter %npctype%, a level %level% Epic Boss.
echo.
ping localhost -n 2 >nul
ping localhost -n 2 >nul
goto hATK_STR_3

:hATK_STR_3
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p login=
if %login% EQU 2 goto HBFIGHTINGINVENTORY
if %login% EQU 3 goto hFLEE
cls
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%.
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
pause
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %xpuntil% LEQ 0 goto hblevelup
:hb333
if %health% LEQ 0 goto hWIN_STR_B
goto hFS_STR_3

:HBFIGHTINGINVENTORY
cls
set destination2=fightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________		 	 			 	 
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	         Gemstones: %gem%
echo   Seeds: %seed%	         Magic Orbs: %morb%
echo   Furs: %fur%	         Raw Food: %rfood%
echo   Ore: %ore%	         Huge Bones: %hbone%
echo   Logs: %log%	         Dragon Hides: %dhide%
echo   Food: %food%	         Runic Tablets: %rtab%
echo   Ingots: %ingot%	         Goblin Mails: %gmail%
echo   Potions: %potion%             Bows: %bow%
echo   Crabs: %crab%               Kingfish: %kingfish%
echo                                                  
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
set /p invencho=
if %invencho% EQU 1 goto hATK_STR_3
if %invencho% EQU 2 goto hbBATTLEITEMS
if %invencho% EQU 3 goto hbeatfood

:hbBATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Inventory
set /p invencho=
if %invencho% EQU 3 goto hbfightinginventory
if %invencho% EQU 1 goto hbdrinkpotion
goto hbBATTLEITEMS

:hbdrinkpotion
if %potion% LEQ 0 goto hbnopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto hFS_STR_3

:hbnopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto hbBATTLEITEMS

:hbeatfood
if %food% LEQ 0 goto hbnofood
set /a FATIGUE=%FATIGUE%+2
set /a food=%food%-1
cls
echo.
echo You eat some food.
ping localhost -n 2 >nul
set /a hpheal=%random%*50/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto hFS_STR_3

:hbnofood
echo.
echo You don't have any food.
echo.
pause>nul
goto hbfightinginventory

:hFS_STR_3
set /a dmgnpc=%random%*600/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a dmgnpc=%dmgnpc%-15
if %dmgnpc% LEQ 0 set /a dmgnpc=1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto hdie
echo.
echo You now have %hp% health left.
ping localhost -n 2 >nul
pause
goto hATK_STR_3

:hWIN_STR_B
cls
set /a chappy=%chappy%+1
echo.
echo You won the battle against %npctype%.
echo.
echo You recieved a Hell Charm.
echo You recieved 100 potions.
echo You have gained %xp% Experience.
set /a potion=%potion%+100
set Hcharm=1
set /a killcount=%killcount%+1
echo.
pause>nul
set /a hp=%orighp%
goto HELL

:NOHROCK
cls
echo.
echo A small circle is at the top. A wooden sign says:
echo A strong adventurer with 3 shards may be worthy to
echo stand inside the ritual circle.
echo.
pause
goto HELL

:HELLADOPT
cls
echo.
echo Lover: Welcome to Kittens N' Such...
echo Having a pet is a mediocre responsibility.
echo You can have a go at Hell's Pet Randomizer.
echo Adoption here is possible infinitely.
echo Any pet you may have in your home will be taken
echo and made waste of.
echo.
echo 1) Hell's Pet Randomizer
echo 2) Back             
echo.
set /p x1=
if %x1% EQU 1 goto hPETRAND
if %x1% EQU 2 goto HELL

:hPETRAND
cls
echo.
echo Lover: Let's get you a random hellish pet.
echo All of the pets will be eaten if not adopted.
echo.
pause
cls
set N1=%RandN3%
set N2=%RandN2%
set the=the
set /a RandN3=%random%*30/32767+1

if %RandN3% EQU 1 set N1=Dead
if %RandN3% EQU 2 set N1=Dull
if %RandN3% EQU 3 set N1=Spook
if %RandN3% EQU 4 set N1=Pumpkin
if %RandN3% EQU 5 set N1=Zap
if %RandN3% EQU 6 set N1=Blacky
if %RandN3% EQU 7 set N1=Shade
if %RandN3% EQU 8 set N1=Crimson
if %RandN3% EQU 9 set N1=Bloodbath
if %RandN3% EQU 10 set N1=Dust
if %RandN3% EQU 11 set N1=Dirt
if %RandN3% EQU 12 set N1=Useless
if %RandN3% EQU 13 set N1=Prince
if %RandN3% EQU 14 set N1=Darken
if %RandN3% EQU 15 set N1=Big
if %RandN3% EQU 16 set N1=Jacko
if %RandN3% EQU 17 set N1=Flicker
if %RandN3% EQU 18 set N1=Eyes
if %RandN3% EQU 19 set N1=Noose
if %RandN3% EQU 20 set N1=Killer
if %RandN3% EQU 21 set N1=Corpse
if %RandN3% EQU 22 set N1=Zombie
if %RandN3% EQU 23 set N1=Empty
if %RandN3% EQU 24 set N1=Slit
if %RandN3% EQU 25 set N1=Lust
if %RandN3% EQU 26 set N1=HumanEater
if %RandN3% EQU 27 set N1=B.Bub
if %RandN3% EQU 28 set N1=Whisper
if %RandN3% EQU 29 set N1=Manymoon
if %RandN3% EQU 30 set N1=Hollow

set /a RandN2=%random%*30/32767+1
if %RandN2% EQU 1 set N2=Scarab
if %RandN2% EQU 2 set N2=Hellmutt
if %RandN2% EQU 3 set N2=Imp
if %RandN2% EQU 4 set N2=Lizard
if %RandN2% EQU 5 set N2=Deathcat
if %RandN2% EQU 6 set N2=Deathdog
if %RandN2% EQU 7 set N2=Ape
if %RandN2% EQU 8 set N2=Gnome
if %RandN2% EQU 9 set N2=Dwarf
if %RandN2% EQU 10 set N2=Hawk
if %RandN2% EQU 11 set N2=Tortoise
if %RandN2% EQU 12 set N2=Toad
if %RandN2% EQU 13 set N2=Harpy
if %RandN2% EQU 14 set N2=Yeti
if %RandN2% EQU 15 set N2=Bear
if %RandN2% EQU 16 set N2=Hog
if %RandN2% EQU 17 set N2=Mandrake
if %RandN2% EQU 18 set N2=Serpent
if %RandN2% EQU 19 set N2=Ram
if %RandN2% EQU 20 set N2=Bull
if %RandN2% EQU 21 set N2=Piglet
if %RandN2% EQU 22 set N2=Herring
if %RandN2% EQU 23 set N2=Wallaby
if %RandN2% EQU 24 set N2=Lemur
if %RandN2% EQU 25 set N2=Bobcat
if %RandN2% EQU 26 set N2=Wardog
if %RandN2% EQU 27 set N2=Crayfish
if %RandN2% EQU 28 set N2=Squirrel
if %RandN2% EQU 29 set N2=Octopus
if %RandN2% EQU 30 set N2=Mouse
cls
echo.
echo Lover: You get what you get, I guess...
echo It's %N1% %the% %N2%^^!
echo It will live in your home.
echo.
set petowner=1
pause
goto HELL 

:HELLCENTER
if %rupee% LEQ 0 goto NOHC
cls
echo.
echo You look down the pit. It seems endless...
echo.
echo A voice calls from  below: Drop a rupee...
echo.
echo Drop a rupee?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% GEQ 2 goto HELL
cls
echo.
echo You drop a rupee down Hell's Center.
echo.
pause>nul
set /a HRU=%random%*5/32767+1
if %HRU% EQU 1 set /a money=%money%+1000
if %HRU% EQU 1 echo Hell's Center spits back gold.
if %HRU% EQU 2 set /a rupee=%rupee%+2
if %HRU% EQU 2 echo Hell's Center spits back rupees.
if %HRU% EQU 3 set /a sjewel=%sjewel%+1
if %HRU% EQU 3 echo Hell's Center spits back a Strange Jewel.
if %HRU% EQU 4 set /a money=%money%+500
if %HRU% EQU 4 echo Hell's Center spits back gold.
if %HRU% EQU 5 set /a sjewel=%sjewel%+2
if %HRU% EQU 5 echo Hell's Center spits back Strange Jewels.
pause
goto HELL

:NOHC
cls
echo.
echo You look down the pit. It seems endless...
echo. 
pause
goto HELL

:HELLWARLOCK
cls
echo.
echo Untrust: I see you, Realm-Dweller.
echo So weak and small. Unlike I. Tell me,
echo do you wish to change time? Hm?
echo.
echo 1) Yes
echo 2) No thanks
echo.
echo.
set /p login=
if %login% EQU 2 (cls
echo.
echo Untrust: Alright...
pause>nul
goto HELL )
echo.
cls
echo.
echo Untrust: I thought so. Your Realm may be very
echo different when you get back...
set /a HW=%random%*7/32767+1
if %HW% EQU 1 set dow=1
if %HW% EQU 2 set dow=2
if %HW% EQU 3 set dow=3
if %HW% EQU 4 set dow=4
if %HW% EQU 5 set dow=5
if %HW% EQU 6 set dow=6
if %HW% EQU 7 set dow=7
set /a HW1=%random%*4/32767+1
if %HW1% EQU 1 set sseason=1
if %HW1% EQU 2 set sseason=2
if %HW1% EQU 3 set sseason=3
if %HW1% EQU 4 set sseason=4
set /a HW2=%random%*7/32767+1
if %HW2% EQU 1 set /a yyear=%yyear%+1
if %HW2% EQU 2 set /a yyear=%yyear%+2
if %HW2% EQU 3 set /a yyear=%yyear%+3
if %HW2% EQU 4 set /a yyear=%yyear%+4
if %HW2% EQU 5 set /a yyear=%yyear%+5
if %HW2% EQU 6 set /a yyear=%yyear%+6
if %HW2% EQU 7 set yyear=1
echo.
pause
goto HELL

:HELLVAULT
cls
echo.
echo Magmus: Welcome to the soul vault...
echo I can Title you for the amount of souls you have taken. 
echo Because Hell doesn't only punish you.
echo.
echo   Souls: %killcount% 
echo   Title: %Hupgradee% 
echo.
echo                                               ͻ
echo   1) Title 1:   100 Souls                       
echo.                                                
echo   2) Title 2:   200 Souls                       
echo.                                                
echo   3) Title 3:   300 Souls                       
echo                                                  
echo   4) Back                                       
echo                                               ͼ
echo.
echo.
set /p bj=
if %bj% EQU 1 (
set /a sprice=100
if %killcount% LEQ 99 goto HNOBUY
set Hupgradee=Hell's Servant
set /a killcount=%killcount%-100 
goto HELLT)

if %bj% EQU 2 (
set /a sprice=200
if %killcount% LEQ 199 goto HNOBUY
set Hupgradee=Hell's Knight
set /a killcount=%killcount%-200 
goto HELLT)

if %bj% EQU 3 (
set /a sprice=300
if %killcount% LEQ 299 goto HNOBUY
set Hupgradee=Hell's Atourney
set /a killcount=%killcount%-300 
goto HELLT)
if %bj% EQU 4 goto HELL )
goto HELL

:HNOBUY
cls
echo.
echo Magmus: You don't have enough souls.
echo.
pause
goto HELLVAULT

:HELLT
if %supplies% LSS %sprice% goto noSmoney
set /a supplies=%supplies%-%sprice%
echo.
echo.
echo Magmus: Title selected. Your current title is %Hupgradee%.
pause>nul
goto HELLVAULT

:color
cls
echo.
echo Choose a Planetary Sign that best suits you.
echo Each sign represents a unique color-scheme for your game.
echo.
echo 1) Venus
echo 2) Jupiter
echo 3) Saturn
echo 4) Neptune
echo 5) Uranus
echo 6) Mars
echo 7) Earth
echo 8) Mercury
echo.
echo 9) Back
echo.
set /p colorcho=
if %colorcho% EQU 9 goto settings
if %colorcho% EQU 1 set cpick=0b
if %colorcho% EQU 2 set cpick=05
if %colorcho% EQU 3 set cpick=04
if %colorcho% EQU 4 set cpick=07
if %colorcho% EQU 5 set cpick=06
if %colorcho% EQU 6 set cpick=0c
if %colorcho% EQU 7 set cpick=0a
if %colorcho% EQU 8 set cpick=01
color %cpick%
goto color

:namechange
cls
echo.
set /p name1=Please enter your current Username:
if not exist "%name1%.save.bat" (
echo Invalid Username.
pause>nul
goto settings
)
set /p pass1=Please enter your current Password:
call %name1%.save.bat
if not %password1% EQU %pass1% (
echo Invalid Password.
pause>nul
goto settings
)
echo What would you like to change your Username to?
set /p username1=
set v1f=0

:checkforspaces2
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" EQU " " (
echo.
echo.
echo Sorry you cant use spaces in your Username.
pause>nul
goto entergame
)
if NOT "!Letter%v1f%!" EQU "" (
set /a v1f=%v1f%+1
goto checkforspaces2
)
echo Username Changed.
echo.
pause>nul
goto settings

:FARM
cls
echo.
echo You walk to the farm.
echo.
pause
:FARM1
cls
echo.
if %CROPP% GEQ 61 set CROPP=60
echo Crop Patch: %CROPP%/60
echo.
echo What would you like to do?
echo.
echo 1) Plant Crop Patch
echo 2) Pick Crop Patch
echo 3) See Animals
echo 4) Clean Fish
echo.
echo 5) Back
echo.
echo.
set /p login=
if %login% EQU 1 goto PLANTC
if %login% EQU 2 goto PICKC
if %login% EQU 3 goto FANIMALS
if %login% EQU 4 goto CFISH
if %login% EQU 5 goto skillplot
goto FARM1

:CFISH
cls
echo.
if %fish% LEQ 0 (
echo You don't have any fish.
echo.
pause>nul
goto FARM1
)
echo You cut and clean a fish you have. You can now eat it.
echo.
set /a fish=%fish%-1
set /a food=%food%+1
pause
goto FARM1

:PLANTC
if %sseason% EQU 4 goto CPLANT
if %CROPP% GEQ 1 goto WPLANT
if %seed% LEQ 4 goto NOPLANT
cls
echo.
echo You plant 5 seeds as a crop patch.
set /a seed=%seed%-5
echo.
set CROPP=1
pause.
goto FARM1

:WPLANT
cls
echo.
echo You need to pick your current crop to grow another.
echo.
pause
goto FARM1

:NOPLANT
cls
echo.
echo You need 5 seeds to do this.
echo.
pause
goto FARM1

:CPLANT
cls
echo.
echo You can't do that during this season.
echo.
pause
goto FARM1

:PICKC
if %CROPP% EQU 0 goto PLANTY
if %CROPP% LEQ 59 goto WPICK
cls
echo.
echo You harvest the crop as food.
set /a food=%food%+100
echo.
set CROPP=0
pause.
goto FARM1

:WPICK
cls
echo.
echo You need to wait a year for crops to grow.
echo.
pause
goto FARM1

:PLANTY
cls
echo.
echo You need to plant first.
echo.
pause
goto FARM1

:FANIMALS
set /a ANIP=%random%*5/32767+1

if %ANIP% EQU 1 set ANIM=horse
if %ANIP% EQU 2 set ANIM=pig
if %ANIP% EQU 3 set ANIM=cow
if %ANIP% EQU 4 set ANIM=goat
if %ANIP% EQU 5 set ANIM=chicken
cls
echo.
echo What would you like to do with the animals?
echo.
echo 1) Feed Animals
echo 2) Kill an Animal
echo 3) Pet an Animal 
echo.
echo 4) Back
echo.
echo.
set /p login=
if %login% GEQ 5 goto FANIMALS
if %login% EQU 1 goto FEEDA
if %login% EQU 2 goto KILLA
if %login% EQU 3 goto PETA
if %login% EQU 4 goto FARM1

:FEEDA
cls
if %food% EQU 0 goto NOAFOOD
set /a food=%food%-1
echo.
echo You feed all the animals some food.
echo They love the food.
echo.
pause
goto FANIMALS

:NOAFOOD
cls
echo.
echo You don't have any food.
echo.
pause
goto FANIMALS

:KILLA
cls
echo.
echo You take a %ANIM% to the back of the farm.
echo You kill it and take some of it as raw food.
set /a rfood=%rfood%+1
echo.
pause
goto FANIMALS

:PETA
cls
echo.
echo You pet a %ANIM%. It is very happy about it.
echo.
set /a chappy=%chappy%+1
pause
goto FANIMALS

:passchange
cls
echo.
set /p name1=Please enter your current Username:
if not exist "%name1%.save.bat" (
echo Invalid Username.
pause>nul
goto settings
)
set /p pass1=Please enter your current Password:
call %name1%.save.bat
if not %password1% EQU %pass1% (
echo Invalid Password.
pause>nul
goto settings
)
echo What would you like to change your Password to?
set /p password1=
echo.
echo Password changed.
echo.
pause>nul
goto settings

:CNOY
cls
echo.
echo Flame Monster Keith: Sorry, but you can't enter here yet.
echo You better claim the green and blue shards, and be level 25 first^^!
echo.
pause
goto ISLAND

:CDONE
cls
echo.
echo The dungeon entrance is blocked by rubble.
echo.
pause
goto ISLAND

:CAVE01
if %curlvl% LEQ 24 goto CNOY
if %bshard% LEQ 0 goto CNOY
if %gshard% LEQ 0 goto CNOY
if %rshard% GEQ 1 goto CDONE
cls
echo.
echo You stand in the entrance of the cave. It is brightly illuminated. 
echo There is a passage to the left, and another to the right.
echo.
echo Which passage would you like to take?
echo.
echo 1) Left Passage
echo 2) Right Passage
echo.
echo 3) Back
set /p login= 
if %login% EQU 1 goto DTREE
if %login% EQU 2 goto CAVE02
if %login% EQU 3 goto ISLAND
goto CAVE01

:DTREE
if %debris% GEQ 1 goto DTREE2
cls
echo.
echo You stand in a bright room with a tall, lively colored tree.
echo A parchment is pinned to the tree with some debris.
echo.
echo The parchment has a warning: Beware of... 
echo.
echo The writing fades. You keep the debris and the parchment floats away. 
echo Looks like there isn't anything else here.
echo.
pause
set debris=1
cls
goto CAVE01

:DTREE2
cls
echo.
echo You stand in a bright room with a tall, lively colored tree.
echo There is nothing to do here.
echo.
pause
goto CAVE01

:CAVE02
cls
echo.
echo You are in a small tunnel that branches into 2 paths. 
echo The area is dimly lit.
if %riddlesolved% LEQ 2 (
echo There are 3 little Flame Monsters standing in your way.
echo They look harmless.
echo.
pause
:rCAVE02
if %riddlesolved% EQU 0 goto riddle01
if %riddlesolved% EQU 1 goto riddle02
if %riddlesolved% EQU 2 goto riddle03
)
echo.
echo Which path would you like to take?
echo.
echo 1) Path 1
echo 2) Path 2
echo.
echo 3) Back
set /p login= 
if %login% EQU 1 goto CAVE03
if %login% EQU 2 goto secretroom
if %login% EQU 3 goto CAVE02
goto CAVE02

:riddle01
cls
echo.
echo Flame Monster Jim: If a hen and a half were to
echo lay an egg and a half in a day and a half, 
echo how many eggs will half a dozen hens lay in half a dozen days?
echo. 
set /p login= 
if %login% EQU 24 goto R01S
cls
echo.
echo Flame Monster Jim: Wrong^^! Due to the rules of this game,
echo we now must battle^^!
echo.
pause
set npctype=Flame Monster Jim
goto fmSTR_KC

:R01S
cls
echo.
echo Flame Monster Jim: That's right^^! You can do the next riddle now.
set riddlesolved=1
echo.
pause
goto riddle02

:riddle02
cls
echo. 
echo Flame Monster Bob: There exists a 3 digit number. 
echo The 2nd digit is 4 times bigger than the 3rd digit.
echo And the 1st digit is 3 less than the 2nd digit.
echo.
echo What is the 3 digit number?
echo.
set /p login= 
if %login% EQU 141 goto R02S
cls
echo.
echo Flame Monster Jim: Wrong^^! Due to the rules of this game,
echo we now must battle^^!
echo.
pause
set npctype=Flame Monster Bob
goto fmSTR_KC

:R02S
cls
echo.
echo Flame Monster Bob: That's right^^! You can do the next riddle now.
set riddlesolved=2
echo.
pause
goto riddle03

:riddle03
cls
echo. 
echo Flame Monster Keith: A family consists of:
echo 1 grandfather, 2 fathers and 2 sons.
echo How many members are in this family?
echo.
set /p login= 
if %login% EQU 3 goto R03S
cls
echo.
echo Flame Monster Keith: Wrong^^! Due to the rules of this game,
echo we now must battle^^!
echo.
pause
set npctype=Flame Monster Keith
goto fmSTR_KC

:R03S
cls
echo.
echo Flame Monster Keith: That's right^^! Good job^^!
echo We'll see you around.
set riddlesolved=3
echo.
pause
goto CAVE02

:secretroom
cls
if %cavecrystal% EQU 1 (
echo.
echo A pillar with a slot stands in the center of the small, barely lit room.
echo You place the crystal inside the slot.
echo.
pause
cls
echo.
echo The cave rumbles.
echo.
pause
set cavecrystal=2
goto CAVE02
)
echo. 
echo A pillar with a slot stands in the center of the small, barely lit room.
echo Maybe you need something for this.
echo.
pause
goto CAVE02

:CAVE03
cls
echo. 
echo You are in a shadowy stone room with a moveable block and 2 doors.
echo What would you like to do?
echo.
echo 1) Door 1
echo 2) Door 2
echo 3) Move Block
echo.
echo 4) Back
set /p login= 
if %login% EQU 1 if %blockplacement% EQU 1 cls
if %login% EQU 1 if %blockplacement% EQU 1 echo.
if %login% EQU 1 if %blockplacement% EQU 1 echo You are blocked by the block.
if %login% EQU 1 if %blockplacement% EQU 1 pause>nul
if %login% EQU 1 if %blockplacement% EQU 1 goto CAVE03 
if %login% EQU 1 goto CAVE04
if %login% EQU 2 if %blockplacement% EQU 2 cls
if %login% EQU 2 if %blockplacement% EQU 2 echo.
if %login% EQU 2 if %blockplacement% EQU 2 echo You can't reach unless the block is moved.
if %login% EQU 2 if %blockplacement% EQU 2 pause>nul
if %login% EQU 2 if %blockplacement% EQU 2 goto CAVE03 
if %login% EQU 2 goto secretroom02
if %login% EQU 3 (
if %blockplacement% EQU 1 set blockplacement=2
cls
echo.
echo You push the block.
if %blockplacement% EQU 2 set blockplacement=1
pause
goto CAVE03
)
if %login% EQU 4 goto CAVE02

:secretroom02
cls
if %cavecrystal% GEQ 1 (
echo.
echo You are in an almost pitch-black empty rock room. Nothing to do here.
echo.
pause
goto CAVE03
)
echo.
echo You are in an almost pitch-black empty rock room
echo You find a crystal on the dusty floor and pick it up.
echo There is nothing else here.
echo.
pause
set cavecrystal=1
goto CAVE03

:CAVE04
cls
echo.
echo You are in a very dark cavern with 2 slighly illuminating openings.
echo 4231 is carved on ceiling.
echo.
echo 1) Opening 1
echo 2) Opening 2
echo.
echo 3) Back
set /p login= 
if %login% EQU 1 goto CAVE05
if %login% EQU 2 goto CAVE06
if %login% EQU 3 goto CAVE03
goto CAVE04

:CAVE06
cls
echo.
echo You enter a bright rock room.
echo A mechanical number puzzle is in the center of area.
echo 3 levers sit ontop of the puzzle.
echo The numbers read : %CN1% %CN2% %CN3%
echo A plaque beneath shows: 3 1 2
echo.
echo Would you like to do anything with the puzzle?
echo.
set CCN1=%CN1%
set CCN2=%CN2%
set CCN3=%CN3%
echo 1) Lever 1
echo 2) Lever 2
echo 3) Lever 3
echo.
echo 4) Back
set /p login= 
if %login% EQU 1 (
set CN1=%CCN2%
set CN2=%CCN1%
set CN3=%CCN3%
goto CAVE06
)
if %login% EQU 2 (
set CN1=%CCN3%
set CN2=%CCN2%
set CN3=%CCN1%
goto CAVE06
)
if %login% EQU 3 (
set CN1=%CCN1%
set CN2=%CCN3%
set CN3=%CCN2%
goto CAVE06
)
if %login% EQU 4 goto CAVE04
goto CAVE06

:CAVE05
cls
if %CN1% EQU 3 if %CN2% EQU 1 if %CN3% EQU 2 goto cCAVE05
echo.
echo The area is blocked by slatted mechanical plates that form a door.
echo.
pause
goto CAVE04

:cCAVE05
cls
echo.
echo You are in a brightly lit rock room.
echo The room has a device along the wall. 
echo The device has buttons with digits on it
echo from 1 through 4. It seems that you can type 4 digits into the device.
if %cavecrystal% LEQ 1 (
echo But the device doesn't seem to function. 
echo Maybe you need to activate it somewhere.
echo.
pause
goto CAVE04
)
echo.
echo Input digits into the machine?
echo.
echo 1) Back
echo.
set /p login= 
if %login% EQU 4231 goto ccCAVE05
if %login% EQU 1 goto CAVE04
cls
echo.
echo Nothing happens...
echo.
pause
goto CAVE04

:ccCAVE05
cls
echo.
echo The cave shakes intensely.
echo.
pause
cls
echo.
echo The lights go out and the floor opens up beneath you, 
echo dropping you down into the darkness below^^!
echo.
if %debris% EQU 0 (
echo With nothing to light your descent, 
echo you hit the ground and black out.
echo.
pause
cls
echo.
echo You come to, in the entrance of the cave...
echo.
pause
goto CAVE01
)
echo The piece of depris you kept glows intensely. 
echo You land hard on the stone ground.
echo It lights the damp rocky surfaces around you, 
echo revealing a large creature moving towards you^^!
echo.
pause
goto CBOSS

:CBOSS
cls
goto cSDBOSS

:fmSTR_KC
set /a FATIGUE=%FATIGUE%+10
set /a level=11
set /a health=150
set /a xp=1000
goto fmFS1_STR

:fmFS1_STR
cls
echo.
ping localhost -n 2 >nul
echo You are battling level %level% %npctype%.
echo.
ping localhost -n 2 >nul
goto fmATK_STR

:fmATK_STR
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15

if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%.
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
if %xpuntil% LEQ 0 goto fmlevelup
:fm333
echo.
if %health% LEQ 0 goto fmWIN
if %petowner% EQU 1 goto fm11Patk
goto fmFS3_STR

:fm11Patk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto fmFS3_STR
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
goto fmFS3_STR

:fmFS3_STR
set /a dmgnpc=%random%*30/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %dmgnpc% LEQ 0 set /a dmgnpc=0
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
ping localhost -n 2 >nul
goto fmATK_STR

:fmCHECKFORLVL_STR
if %xpuntil% LEQ 0 goto fmlevelup

:fmWIN
set /a chappy=%chappy%+1
set /a goldgain=%random%*1000/32767+1
set /a goldgain=%goldgain%+1000
set /a money=%money%+%goldgain%
cls
echo.
echo You won the battle against %npctype%.
echo.
echo You gain %goldgain% gold.
echo.
pause>nul
set /a killcount=%killcount%+1
set /a hp=%orighp%
goto CAVE01

:fmlevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto fm333

:cSDBOSS
cls
echo.
set /a FATIGUE=%FATIGUE%+12
set npctype=Shadow Bat
set /a health=%random% %% 99 + 600
set /a level=%random% %% 5 + 20
goto csF_START )

:csF_START
cls
echo.
ping localhost -n 2 >nul
echo Out from the shadows leaps a level %level% %npctype%^^!
ping localhost -n 2 >nul
goto csfs1

:csfs1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo What would you like to do?
echo.
echo 1) Attack^^!
echo 2) Inventory
echo 3) Flee^^!
echo.
set /p atkcho=
if %atkcho% EQU 1 goto csatk
if %atkcho% EQU 2 goto csfightinginventory
if %atkcho% EQU 3 goto csflee
goto sfs1

:csflee
cls
echo.
echo.
echo You run from the dungeon like a coward.
echo.
pause>nul
goto ISLAND

:csfightinginventory
cls
if %hp% GTR 1000 set /a hp=1000
if %curlvl% GTR 37 set /a curlvl=37
if %curlvl% GEQ 37 set xpuntil=None^^!
if %money% GTR 5000000 set /a money=5000000
if %playerxp% GTR 1000000 set /a playerxp=1000000
cls
echo   Day: %dow%    Season: %sseason%    Year: %yyear%
echo   Health: %hp%	         Fatigue: %FATIGUE%		 
echo   Level: %curlvl%	         EXP: %playerxp%
if %xpuntil% LEQ 0 set xpuntil=1	 
echo   EXP needed: %xpuntil%        Strange Jewel: %sjewel%		
echo   Gold: %money%	         Loan: %loan%				 
echo   Boat Lvl: %boatlvl%            Rupees: %rupee%
echo   Job: %cjob%              Total skill: %ttllvl%				 
echo   Weapon: %swordtype% %skind%      Armor: %armtype% Armor
set /a Ttlshard=%rshard%+%bshard%+%gshard%
echo   Class: %class%        Dungeon Shards: %Ttlshard%
echo  _______________________________________________		 	 			 	 
echo   Items:	        Fish: %fish%
echo   Bait: %bait%	         Gemstones: %gem%
echo   Seeds: %seed%	         Magic Orbs: %morb%
echo   Furs: %fur%	         Raw Food: %rfood%
echo   Ore: %ore%	         Huge Bones: %hbone%
echo   Logs: %log%	         Dragon Hides: %dhide%
echo   Food: %food%	         Runic Tablets: %rtab%
echo   Ingots: %ingot%	         Goblin Mails: %gmail%
echo   Potions: %potion%             Bows: %bow%
echo   Crabs: %crab%               Kingfish: %kingfish%
echo                                                  
echo   Misc:                   Supplies:
echo   Hell Charm: %Hcharm%           Aloy: %aloy%
echo   Maps: %maps%                 Glass: %glass%
echo   Death Coins: %deathcount%          Bricks: %bricks% 
echo   Souls: %killcount%                Keys: %key% 
pause>nul
cls
echo.
echo What would you like to do?
echo 1) Return to battle
echo 2) Use Item
echo 3) Eat Food
set /p invencho=
if %invencho% EQU 1 goto csfs1
if %invencho% EQU 2 goto csBATTLEITEMS
if %invencho% EQU 3 goto cseatfood

:csBATTLEITEMS
cls
echo.
echo 1) Potion
echo 2) Inventory
set /p invencho=
if %invencho% EQU 2 goto csfightinginventory
if %invencho% EQU 1 goto csdrinkpotion
goto csBATTLEITEMS

:csdrinkpotion
if %potion% LEQ 0 goto csnopotion
set /a FATIGUE=%FATIGUE%+1
set /a potion=%potion% - 1
cls
echo.
echo You drink a potion.
ping localhost -n 2 >nul
set /a hpheal=%random%*100/32767+1
set /a hp=%hp%+%hpheal%
if %hp% GTR %orighp% set /a hp=%orighp%
echo.
echo You have been healed %hpheal% health.
echo You now have %hp% health.
echo.
pause>nul
goto csfs3

:csnopotion
echo.
echo You don't have any potions.
echo.
pause>nul
goto csBATTLEITEMS

:csatk
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*680/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*710/32767+1
if %swordtype% EQU Godess set /a damage=%random%*720/32767+1
if %swordtype% EQU Moon set /a damage=%random%*730/32767+1
if %swordtype% EQU Sun set /a damage=%random%*740/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*750/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*750/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack^^!
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
pause>nul
if %curlvl% GEQ 37 set /a xpuntil=1
if %playerxp% GEQ 1000000 set /a playerxp=1000000
if %xpuntil% LEQ 0 goto cslevelup
:cs333
if %health% LEQ 0 goto cswin
if %petowner% EQU 1 goto csPatk
goto csfs3

:cslevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto cs333

:csPatk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto csfs3
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to the %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
if %health% LEQ 0 goto cswin
goto csfs3

:csfs3
set /a dmgnpc=%random%*110/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Alydril set /a dmgnpc=%dmgnpc%-%dr%
if %class% EQU Brute set /a dmgnpc=%dmgnpc%-15
if %dmgnpc% LEQ 1 set /a dmgnpc=1
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo The %npctype% attacks.
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
pause>nul
goto csfs1

:cswin
cls
set /a chappy=%chappy%+1
echo.
echo You won the battle against the %npctype%.
echo.
echo You recieved the Red Shard.
set rshard=1
set /a killcount=%killcount%+1
echo.
echo You leave the cave as rubble begins to fall from the ceiling.
pause>nul
goto ISLAND

:KCLOSED
cls
echo.
echo The hut is empty as the Flame Monsters are making use of
echo all their kindle.
echo.
pause
goto MENU

:FMHUT
if %armtype% GTR Explorer goto NEEDARM
if %armtype% LSS Explorer goto NEEDARM
if %fkindle% GEQ 500 GOTO KCLOSED
cls
echo.
echo Flame Monster Ben: Hello, friend^^! You are the one who
echo saved us from the Shadow Bat^^!
echo We came to Varrock in a panic,
echo as we are in desperate need of kindle.
echo With the cave sealed shut, we must find
echo a new way of life...
echo When we have enough kindle, we will leave.
echo.
echo Maps, logs, bows and runic tablets can be used as kindle.
echo.
pause
:2FMHUT
cls
echo.
echo Fire Monster Kindle: %fkindle%
echo.
echo Give kindle to the Flame Monsters?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 2 (
cls
echo.
echo Flame Monster Ben: Oh okay...
echo.
pause
goto MENU
)
cls
if %maps% GEQ 1 goto MKINDLE
if %log% GEQ 1 goto LKINDLE
if %bow% GEQ 1 goto BKINDLE
if %rtab% GEQ 1 goto RKINDLE
echo.
echo You don't have anything to use as kindle.
echo.
pause
goto MENU

:MKINDLE
cls
echo.
echo You give Flame Monster Ben a map.
echo.
echo Flame Monster Ben: Thanks a bunch^^!
echo.
set /a maps=%maps%-1
set /a fkindle=%fkindle%+1
pause
goto 2FMHUT

:LKINDLE
cls
echo.
echo You give Flame Monster Ben a log.
echo.
echo Flame Monster Ben: Thanks a bunch^^!
echo.
set /a log=%log%-1
set /a fkindle=%fkindle%+1
pause
goto 2FMHUT

:BKINDLE
cls
echo.
echo You give Flame Monster Ben a bow.
echo.
echo Flame Monster Ben: Thanks a bunch^^!
echo.
set /a bow=%bow%-1
set /a fkindle=%fkindle%+1
pause
goto 2FMHUT

:RKINDLE
cls
echo.
echo You give Flame Monster Ben a runic tablet.
echo.
echo Flame Monster Ben: Thanks a bunch^^!
echo.
set /a rtab=%rtab%-1
set /a fkindle=%fkindle%+1
pause
goto 2FMHUT


@echo off
title MyersRealm - World Map
:WORLDMAP
cls
echo.
set /a RandE=%random%*200/32767+1
if %RandE% GEQ 150 if %sweather% EQU Stormy goto STORMDIE
if %RandE% GEQ 170 if %sweather% EQU Evil goto HELLFLY
if %RandE% GEQ 190 if %sweather% EQU Cloudy set sweather=Rainy
if %RandE% GEQ 190 if %sweather% EQU Moonlit set sweather=Creepy
if %RandE% GEQ 150 if %sweather% EQU Creepy if %bshard% EQU 0 goto NJJ
if %RandE% GEQ 150 if %sweather% EQU Creepy set sweather=Evil
if %RandE% GEQ 190 if %sweather% EQU Dark set sweather=Windy
if %RandE% GEQ 190 if %sweather% EQU Windy set sweather=Rainy
if %RandE% GEQ 190 if %sweather% EQU Rainy set sweather=Sunny
if %RandE% GEQ 196 if %sweather% EQU Sunny set sweather=Cloudy
echo It is a %sweather% %days%.
echo You are %fatigue%%% fatigued.
echo You have %HP% health.
echo.
echo Where would you like to go?
echo.
echo 1) Northern Mountains 
echo 2) Eastern River
echo 3) Southern Forest
echo 4) Western Ocean
echo 5) Kingdom of Varrock
echo.
set /p login=
if %login% EQU 1 goto MOUNTAINS
if %login% EQU 2 goto RIVER
if %login% EQU 3 goto FOREST
if %login% EQU 4 goto OCEAN
if %login% EQU 5 goto MENU
goto WORLDMAP



:MOUNTAINS
cls
echo.
echo The giant rocky mountains span vastly around you. 
echo They make the air cold and damp.
echo.
echo Where would you like to go?
echo.
echo 1) The Urn Holder
echo 2) Shabby Hut
echo 3) Monster Badlands
echo.
echo 4) Back
set /p login=
if %login% EQU 1 goto MSB
if %login% EQU 2 goto MBH
if %login% EQU 3 goto picknpc
if %login% EQU 4 goto WORLDMAP
goto MOUNTAINS

:RIVER
cls
echo.
echo The wide, raging river splits the land in two. 
echo The water seems lively and calming.
echo.
echo Where would you like to go?
echo.
echo 1) Ominous Temple
echo 2) River Campsite
echo 3) Wishing Well 
echo.
echo 4) Back
set /p login=
if %login% EQU 1 goto ROT
if %login% EQU 2 goto RCC
if %login% EQU 3 goto RSW
if %login% EQU 4 goto WORLDMAP
goto RIVER

:FOREST
cls
echo.
echo You stand in the shadowy forest. 
echo Many sounds come from the trees.
echo.
echo Where would you like to go?
echo.
echo 1) Maze of Trees
echo 2) Tiny Home
echo 3) Sleepy Man
echo.
echo 4) Back
set /p login=
if %login% EQU 1 goto FMT 
if %login% EQU 2 goto FSH
if %login% EQU 3 goto FSM
if %login% EQU 4 goto WORLDMAP
goto FOREST

:OCEAN
cls
echo.
echo You stand at the oceanside. 
echo The air is breezy and energetic.
echo.
echo Where would you like to go?
echo.
echo 1) The Pier
echo 2) Pirate Boat
echo 3) Card Reader
echo.
echo 4) Back
set /p login=
if %login% EQU 1 goto OBP 
if %login% EQU 2 goto ORB
if %login% EQU 3 goto OBL
if %login% EQU 4 goto WORLDMAP
goto OCEAN


:MSB
cls
echo.
echo Ubin: Hello, adventurer. I am the urn holder. Holder of soul urns.
echo Your soul is stored in a soul urn when you retire your MyersRealm user.
echo This only happens when you enter Champion's Rest and retire your save.
echo Thankfully we do not ever truly die, so I need to care for very few urns.
echo Only those who are truly finished their journey give their souls to a soul urn.
if %retired% EQU 0 echo Maybe one day, if you're lucky, your soul urn will end up here...
if %retired% GEQ 1 echo It seems that you have a soul urn here. How strange...
echo.
pause
goto MOUNTAINS
(COMPLETE)

:MBH
cls
echo.
if %killcount% LEQ 199 (
echo 3 Pigmen sit huddled in the hut.
echo.
echo Pigman Fi: We fear the monsters that wander this land...
pause >nul
echo Pigman Fum: We will not leave until there are fewer...
pause >nul
echo Pigman Gerald: Maybe that makes us cowards. But alive, atleast...
echo.
pause
goto MOUNTAINS
)
echo The hut is empty.
echo.
pause
goto MOUNTAINS
(COMPLETE)

:MCC
cls
echo.
echo A big, gold door seals the path.
echo.
pause
goto MOUNTAINS


:ROT
cls
echo.
echo Fire Monster Jerry: Hello^^! This tower exists to challenge you.
echo Every time you beat it, it will become increasingly harder.
echo Nobody has ever finished level 3 of the tower.
if %towerwin% GEQ 4 echo Except you, of course.
echo.
echo Tower: %towerwin%
echo.
echo Enter the tower?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 2 goto RIVER
if %login% EQU 1 goto RTOWER
goto ROT

:RCC
cls
echo.
echo The campsite has much going on. A few people stand about.
echo.
echo Who would you like to talk to?
echo.
echo 1) Fisher Kelly
echo 2) Tungo the Foreigner
echo 3) Wildgame Hunter
echo.
echo 4) Back
echo.
set /p login=
if %login% EQU 1 goto RFK
if %login% EQU 2 goto RTL
if %login% EQU 3 goto RWH
if %login% EQU 4 goto RIVER
pause
goto RCC

:RSW
cls
echo.
echo A deep, stone well sits quietly. A sign says: Make a wish with a rupee.
echo.
echo Drop a rupee?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 1 goto RIVERDROP
if %login% EQU 2 goto RIVER
goto RSW


:FMT
cls
echo.
echo You wander into the maze of trees.
echo This could be dangerous...
echo.
echo Continue on?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 1 goto FORESTMAZE
if %login% EQU 2 goto FOREST
goto FMT

:FSH
cls
echo.
if %dquest% GEQ 5 (
echo Helfus: Oh, I am so so so happy^^! You helped my damsel^^!
echo.
echo Damsel: Thank you, %username1%. My collection looks amazing^^!
echo.
pause
goto FOREST
)
echo Helfus: Oh, how very sad I am... For my damsel is missing in my life.
echo Gone to complete her Strange Jewel collection. I miss her so much...
echo.
pause
goto FOREST

:FSM
cls
echo.
echo The man is in a deep sleep. He is snoring loudly.
echo.
echo Poke the sleepy man?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 1 goto FORESTSM
if %login% EQU 2 goto FOREST
goto FSM


:OBP
cls
echo.
echo The pier is hectic. Many strange beings stand around.
echo.
echo Who would you like to talk to?
echo.
echo 1) Mermaid
echo 2) Sailor
echo 3) Stallman
echo.
echo 4) Back
echo.
set /p login=
if %login% EQU 1 goto MERMAID
if %login% EQU 2 goto SAILOR
if %login% EQU 3 goto STALLMAN
if %login% EQU 4 goto OCEAN
echo.
goto OBP

:ORB
cls
echo.
echo Pirate Shaggo: Arrrrr, mate^^! Me crew is lookin fer maps^^!
echo Once we got er'nuff, we'll head to sea^^!
echo You wanna donate any maps?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 1 goto PIRATEDONATE
if %login% EQU 2 goto OCEAN
echo.
pause
goto ORB

:OBL
cls
echo.
echo Silvette: Hello, my pretty... Looking to know about your future, hm..?
echo Have a seat, and I can read your cards for 1000 gold...
echo.
echo 1) Sit
echo 2) Back
echo.
set /p login=
if %login% EQU 1 goto CARDREAD
if %login% EQU 2 goto OCEAN
pause
goto OBL


:RTOWER
set npctype=Tower Being
cls
:rfmSTR_KC
set /a FATIGUE=%FATIGUE%+10
set /a level=11*%towerwin%
set /a health=150*%towerwin%
set /a xp=1000*%towerwin%
:rfmFS1_STR
cls
echo.
ping localhost -n 2 >nul
echo You are battling level %level% %npctype%.
echo.
ping localhost -n 2 >nul
goto rfmATK_STR

:rfmATK_STR
if %swordtype% EQU Your set /a damage=%random%*50/32767+1
if %swordtype% EQU Wooden set /a damage=%random%*100/32767+1
if %swordtype% EQU Stone set /a damage=%random%*125/32767+1
if %swordtype% EQU Bronze set /a damage=%random%*150/32767+1
if %swordtype% EQU Iron set /a damage=%random%*175/32767+1
if %swordtype% EQU Steel set /a damage=%random%*200/32767+1
if %swordtype% EQU Gold set /a damage=%random%*225/32767+1
if %swordtype% EQU Crystal set /a damage=%random%*250/32767+1
if %swordtype% EQU Sacred set /a damage=%random%*275/32767+1
if %swordtype% EQU Runic set /a damage=%random%*300/32767+1
if %swordtype% EQU Infernal set /a damage=%random%*300/32767+1
if %swordtype% EQU Omega set /a damage=%random%*300/32767+1
if %swordtype% EQU Chaotic set /a damage=%random%*300/32767+1
if %swordtype% EQU Mythical set /a damage=%random%*450/32767+1
if %swordtype% EQU Evil set /a damage=%random%*600/32767+1
if %swordtype% EQU Shining set /a damage=%random%*600/32767+1
if %swordtype% EQU Shadow set /a damage=%random%*600/32767+1
if %swordtype% EQU Godess set /a damage=%random%*600/32767+1
if %swordtype% EQU Alydril set /a damage=%random%*600/32767+1
if %swordtype% EQU Moon set /a damage=%random%*600/32767+1
if %swordtype% EQU Sun set /a damage=%random%*600/32767+1
if %swordtype% EQU Cannon set /a damage=%random%*600/32767+1
if %swordtype% EQU Spiked set /a damage=%random%*600/32767+1
if %swordtype% EQU Brass set /a damage=%random%*600/32767+1
if %class% EQU Warrior set /a damage=%damage%+15
if %swordtype% EQU Fire set /a damage=%random%*600/32767+1
if %swordtype% EQU Water set /a damage=%random%*600/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%random%*800/32767+1
if %class% EQU Mage if %swordtype% EQU Water set /a damage=%damage%+15
if %class% EQU Mage if %swordtype% EQU Fire set /a damage=%damage%+15

if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo You attack.
echo.
ping localhost -n 2 >nul
set /a atkxp=((%damage%/4)*3)
set /a playerxp=%playerxp%+%atkxp%
set /a xpuntil=%xpuntil%-%atkxp%
set /a health=%health% - %damage%
echo You deal %damage% damage to the %npctype%.
echo.
echo It now has %health% health left.
echo.
echo You gain %atkxp% EXP.
ping localhost -n 2 >nul
if %xpuntil% LEQ 0 goto rfmlevelup
:rfm333
echo.
if %health% LEQ 0 goto rfmWIN
if %petowner% EQU 1 goto rfm11Patk
goto rfmFS3_STR

:rfm11Patk
set /a damage=%random%*100/32767+1
if %pethappy% LEQ 0 goto rfmFS3_STR
set pitem=1
set /a pethappy=%pethappy%-1
if %damage% GTR %health% set /a damage=%health%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %N1% %the% %N2% attacks^^!
echo.
ping localhost -n 2 >nul
set /a health=%health% - %damage%
echo %N1% deals %damage% damage to %npctype%^^!
echo.
echo It now has %health% health left.
echo.
pause>nul
goto rfmFS3_STR

:rfmFS3_STR
set /a dmgnpc=%random%*30/32767+1
if %armtype% EQU Cloth set /a dr=%random%*10/32767+1
if %armtype% EQU Chain set /a dr=%random%*20/32767+1
if %armtype% EQU Bronze set /a dr=%random%*40/32767+1
if %armtype% EQU Iron set /a dr=%random%*65/32767+1
if %armtype% EQU Steel set /a dr=%random%*100/32767+1
if %armtype% EQU Gold set /a dr=%random%*120/32767+1
if %armtype% EQU Crystal set /a dr=%random%*145/32767+1
if %armtype% EQU Sacred set /a dr=%random%*175/32767+1
if %armtype% EQU Runic set /a dr=%random%*200/32767+1
if %armtype% EQU Infernal set /a dr=%random%*215/32767+1
if %armtype% EQU Omega set /a dr=%random%*230/32767+1
if %armtype% EQU Chaotic set /a dr=%random%*250/32767+1
if %armtype% EQU Mythical set /a dr=%random%*275/32767+1
if %armtype% EQU Alydril set /a dr=%random%*300/32767+1
if %armtype% EQU Cloth set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chain set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Bronze set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Iron set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Steel set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Gold set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Crystal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Sacred set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Runic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Infernal set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Omega set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Chaotic set /a dmgnpc=%dmgnpc%-%dr%
if %armtype% EQU Mythical set /a dmgnpc=%dmgnpc%-%dr%
if %dmgnpc% LEQ 0 set /a dmgnpc=0
set /a dmgnpc=%dmgnpc%*%towerwin%
cls
echo.
echo.                                                         
echo **** Your Health: %hp% ***** %npctype%'s Health: %health% ****
echo.                                                         
echo.
echo.
echo %npctype% attacks.
set /a ztowerwin=%towerwin%+1
if %dmgnpc% LEQ 0 set /a dmgnpc=20*%ztowerwin%
echo.
ping localhost -n 2 >nul
echo The %npctype% deals %dmgnpc% damage to you.
set /a hp=%hp% - %dmgnpc%
if %hp% LEQ 0 goto die
echo.
echo You now have %hp% health left.
ping localhost -n 2 >nul
goto rfmATK_STR

:rfmCHECKFORLVL_STR
if %xpuntil% LEQ 0 goto rfmlevelup

:rfmWIN
set /a chappy=%chappy%+1
set /a goldgain=%random%*1000/32767+1
set /a goldgain=%goldgain%+1000
set /a money=%money%+%goldgain%
cls
echo.
echo You won the battle against %npctype%.
echo.
echo You gain %goldgain% gold.
echo.
pause>nul
set /a killcount=%killcount%+1
set /a hp=%orighp%
set /a towerwin=%towerwin%+1
goto RIVER

:rfmlevelup
set /a rupee=%rupee%+1
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto rfm333

:rrrLEVELUP
set /a rupee=%rupee%
set /a curlvl=%curlvl%+1
set /a origxp=%origxp%+500
set /a xpuntil=%xpuntil%+%origxp%
set /a orighp=%orighp%+25
set /a hp=%orighp%
echo.
echo.
echo You have leveled up. You are now level %curlvl%.
echo You now have %hp% health.
set /a chappy=%chappy%+1
echo.
pause>nul
goto RIVER

:RFK2
cls
echo.
echo Fisher Kelly: The things I saw... In another kingdom...
echo Fire, demons, so much death... I should never have travelled
echo during EVIL weather...
echo.
pause
goto rcc

:RFK
cls
if %gshard% GEQ 1 goto RFK2
echo.
echo Fisher Kelly: Pfffft... Come back another time, chump.
echo I can't stand to even look at you...
echo.
pause
goto rcc

:RTL
cls
echo.
echo Tungo: Hello, wanderer. I am not from here. I am from a kingdom far away.
echo But I bring many items to sell^^!
echo What would you like to buy?
echo.
echo 1) Osmorian Diamond 10000 Gold
echo 2) Osmorian Gem     5000 Gold    
echo 3) Osmorian Ring    100000 Gold
echo 4) Osmorian Stone   7500 Gold
echo.
echo 5) Back
echo.
set /p login=
if %login% EQU 1 (
if %money% LEQ 9999 goto NORTL
cls
set /a money=%money%-10000
set /a oale=%oale%+1
echo.
echo Tungo: Good choice.
echo.
pause
goto RTL
)
if %login% EQU 2 (
if %money% LEQ 4999 goto NORTL
cls
set /a money=%money%-5000
set /a ogem=%ogem%+1
echo.
echo Tungo: Good choice.
echo.
pause
goto RTL
)
if %login% EQU 3 (
if %money% LEQ 99999 goto NORTL
cls
set /a money=%money%-100000
set /a oring=%oring%+1
echo.
echo Tungo: Good choice.
echo.
pause
goto RTL
)
if %login% EQU 4 (
if %money% LEQ 7499 goto NORTL
cls
set /a money=%money%-7500
set /a ofood=%ofood%+1
echo.
echo Tungo: Good choice.
echo.
pause
goto RTL
)
if %login% EQU 5 goto RCC
goto RTL

:NORTL
cls
echo.
echo Tunga: You don't have enough gold.
echo.
pause
goto RTL


:RWH
if %hunterarmor% GEQ 1 (
cls
echo.
echo Thank you, fellow hunter. That hunter token will show everyone
echo just what you're made of.
echo.
pause
goto RWH
)
cls
echo.
echo Wildgame Hunter: Always be on the lookout for vicious animals^^!
echo You are never truly safe in this world. But armor and weapons help.
echo If you have a fur and a bow, I can keep myself safe^^!
echo Any chance you could help me out?
echo.
echo 1) Yes
echo 2) No
echo.
set /p login=
if %login% EQU 2 goto RCC
if %bow% LEQ 0 if %fur% LEQ 0 goto NORWH
set /a bow=%bow%-1
set /a fur=%fur%-1
set hunterarmor=1
cls
echo.
echo Wildgame Hunter: Thank you! Take this hunter token. Hunters like I
echo recognize a brave adventurer when we meet one. You clearly must hunt
echo to have obtained these items. Thank you.
echo.
pause
goto RCC

:NORWH
cls
echo.
echo Wildgame Hunter: You don't have those...
echo.
pause
goto RCC

:RIVERDROP
if %rupee% LEQ 0 goto NORIVERDROP
cls
echo.
echo You drop a rupee down the well.
echo.
echo Well: What would you like to wish for?
echo.
echo 1) A Good Spouse
echo 2) A Good Pet
echo 3) A Good Child
echo 4) Higher Level
echo 5) More Money
echo.
echo 6) Back
echo.
set /p login=
if %login% EQU 6 goto RIVER
if %login% EQU 1 (
cls
echo.
echo Well: As you wish.
echo.
set /a RandF=%random%*10/32767+1
if %RandF% EQU 1 set WNAME=Sally
if %RandF% EQU 2 set WNAME=Britta
if %RandF% EQU 3 set WNAME=Tiana
if %RandF% EQU 4 set WNAME=Malek
if %RandF% EQU 5 set WNAME=Sefron
if %RandF% EQU 6 set WNAME=Mr. K
if %RandF% EQU 7 set WNAME=Torgan
if %RandF% EQU 8 set WNAME=Sarra
if %RandF% EQU 9 set WNAME=Veera
if %RandF% EQU 10 set WNAME=Tony
set MARRIED=1
pause
goto RIVER )
if %login% EQU 2 (
cls
echo.
echo Well: As you wish.
set /a RandF=%random%*10/32767+1
if %RandF% EQU 1 set N1=Gelbert
if %RandF% EQU 1 set N2=Snail
if %RandF% EQU 2 set N1=Dory
if %RandF% EQU 2 set N2=Fish
if %RandF% EQU 3 set N1=Kackle
if %RandF% EQU 3 set N2=Swan
if %RandF% EQU 4 set N1=Bubs
if %RandF% EQU 4 set N2=Beaver
if %RandF% EQU 5 set N1=Tron
if %RandF% EQU 5 set N2=Blob
if %RandF% EQU 6 set N1=Sortid
if %RandF% EQU 6 set N2=Fire Monster
if %RandF% EQU 7 set N1=Buzz
if %RandF% EQU 7 set N2=Giant Wasp
if %RandF% EQU 8 set N1=Chip
if %RandF% EQU 8 set N2=Toad
if %RandF% EQU 9 set N1=Zipper
if %RandF% EQU 9 set N2=Cobra
if %RandF% EQU 10 set N1=Cat
if %RandF% EQU 10 set N2=Cat
set the=the
set petowner=1
echo.
pause
goto RIVER )
if %login% EQU 3 (
cls
echo.
echo Well: As you wish.
echo.
set /a RandF=%random%*10/32767+1
if %RandF% EQU 1 set childname=Garagus
if %RandF% EQU 2 set childname=Portly
if %RandF% EQU 3 set childname=Kissandra
if %RandF% EQU 4 set childname=Beau
if %RandF% EQU 5 set childname=Lina
if %RandF% EQU 6 set childname=Vermeaux
if %RandF% EQU 7 set childname=Silda
if %RandF% EQU 8 set childname=Ephany
if %RandF% EQU 9 set childname=Briggs
if %RandF% EQU 10 set childname=Ella
set CHILD=1
pause
goto RIVER )
if %login% EQU 4 (
cls
echo.
echo Well: As you wish.
echo.
set /a money=%money%+1000
pause
goto RIVER )
if %login% EQU 5 (
cls
echo.
echo Well: As you wish.
echo.
pause
goto rrrLEVELUP 
)
goto RIVER

:NORIVERDROP
cls
echo.
echo You don't have any rupees.
echo.
pause
goto RIVER

:MERM2
cls
echo.
echo Mermaid: I like to swim to the island. There's a chance you can find it
echo if you sail during windy weather. I hope to see you there sometime.
echo.
pause
goto OBP 

:MERMAID
cls
if %boatlvl% GEQ 5 goto MERM2
echo.
echo As you approach, she swims under water, watching from beneath the surface.
echo.
pause
goto OBP 

:SAILOR
if %boatlvl% LEQ 9 (
cls
echo.
echo Sailor Jamed: I see you don't have a very high boat level... shame.
echo.
pause
goto OBP
)
echo Sailor Jamed: A fellow sailor!
echo I work on boats myself. Make 'em better.
echo You need a boat upgraded? Only a small fee of 1000 gold.
echo.
echo 1) Sail Boat
echo 2) Pro Boat
echo 3) Dream Boat
echo.
set /p login=
if %login% EQU 1 (
if %boat1% LEQ 0 goto NOJAMED
if %money% LEQ 999 goto NOJAMED
cls.
echo.
echo Jamed: Great. Your Sail Boat will be upgraded. Enjoy.
set /a boat1=%boat1%+2
echo.
pause
goto OBP
)
if %login% EQU 2 (
if %boat5% LEQ 0 goto NOJAMED
if %money% LEQ 999 goto NOJAMED
cls.
echo.
echo Jamed: Awesome. Your Pro Boat will be upgraded. Enjoy.
set /a boat5=%boat5%+2
echo.
pause
goto OBP
)
if %login% EQU 3 (
if %boat6% LEQ 0 goto NOJAMED
if %money% LEQ 999 goto NOJAMED
cls.
echo.
echo Jamed: Terrific. Your Dream Boat will be upgraded. Enjoy.
set /a boat6=%boat6%+2
echo.
pause
goto OBP
)
pause
goto OBP

:PIRATEDONATE
if %maps% LEQ 0 (
cls
echo.
echo Pirate Shaggo: Ye don't got any maps, fella.
echo.
pause
goto OCEAN
)
cls
echo.
set /a maps=%maps%-1
echo Pirate Shaggo: Thanks, mate! Yer gonna have us on our way in no time^^!
echo Take this strange orb as a fair trade.
set /a morb=%morb%+1
echo.
pause
goto ORB

:CARDREAD
if %money% LEQ 999 (
cls
echo.
echo Silvette: You don't have enough gold.
echo.
pause
goto OCEAN
)
set /a fortune=%random%*13/32767+1
set /a money=%money%-1000
cls
echo.
if %fortune% EQU 1 echo Silvette: I see death in your future...
if %fortune% EQU 2 echo Silvette: I see victory in your future...
if %fortune% EQU 3 echo Silvette: I see love in your future...
if %fortune% EQU 4 echo Silvette: I see heartbreak in your future...
if %fortune% EQU 5 echo Silvette: I see new ideas in your future...
if %fortune% EQU 6 echo Silvette: I see wealth in your future...
if %fortune% EQU 7 echo Silvette: I see pain in your future...
if %fortune% EQU 8 echo Silvette: I see good health in your future...
if %fortune% EQU 9 echo Silvette: I see animals in your future...
if %fortune% EQU 10 echo Silvette: I see friends in your future...
if %fortune% EQU 11 echo Silvette: I see monsters in your future...
if %fortune% EQU 12 echo Silvette: I see blood in your future...
if %fortune% EQU 13 echo Silvette: Your future can't be read in the cards...
echo That is the message I am receiving from the cards.
echo I hope this knowledge helps you.
echo.
pause
goto OCEAN


:FORESTSM
if %sleepingman% GEQ 1 goto SDFG
if %curlvl% LEQ 12 (
:SDFG
cls
echo.
echo The man won't wake. He is in a deep sleep.
echo Maybe try again later.
echo.
pause
goto FSM
)
cls
echo.
echo The man jumps awake^^!
echo.
echo Sleepy Man: Ah^^! I am only safe in my dreams^^! And so are you^^!
echo Take this Looma Bean. It should help you with fatigue while you're awake
echo But sleeping can also do that...
echo.
echo The man falls back asleep.
echo.
set /a lbean=%lbean%+1
set sleepingman=1
pause
goto FSM

:FORESTMAZE
cls
goto A1

:STALLMAN
cls
echo.
echo Stallman: Another one, living an adventurous life.
echo Oh how I wish I could too. But instead I must sell these rocks...
echo What would you like to buy?
echo.
echo 1) Gemstone         1000 Gold
echo 2) Strange Jewel    7500 Gold    
echo 3) Rupee            10000 Gold
echo.
echo 5) Back
echo.
set /p login=
if %login% EQU 1 (
if %money% LEQ 999 goto sNORTL
cls
set /a money=%money%-1000
set /a gem=%gem%+1
echo.
echo Stallman: Good choice.
echo.
pause
goto Stallman
)
if %login% EQU 2 (
if %money% LEQ 7499 goto sNORTL
cls
set /a money=%money%-7500
set /a sjewel=%sjewel%+1
echo.
echo Stallman: Good choice.
echo.
pause
goto Stallman
)
if %login% EQU 3 (
if %money% LEQ 9999 goto sNORTL
cls
set /a money=%money%-10000
set /a rupee=%rupee%+1
echo.
echo Stallman: Good choice.
echo.
pause
goto Stallman
)
if %login% EQU 5 goto OBP
goto Stallman

:sNORTL
cls
echo.
echo Stallman: You don't have enough gold.
echo.
pause
goto OBP


:A1
cls
echo.
echo You are in the maze entrance.
echo It is filled with overgrown trees and shrubs.
echo Trees block the east and west.
echo You can venture south or leave the maze.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) South
echo 2) Leave
echo.
set /p login=
if %login% EQU 1 goto B1
if %login% EQU 2 goto FOREST
goto A1

:A2
cls
echo.
echo A large boulder sits in the grass.
echo Trees block the north and west.
echo You can venture east or south.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) East
echo 2) South
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto A3
if %login% EQU 2 goto B2
if %login% EQU 3 goto FOREST
goto A2

:A3
cls
echo.
echo A cluster of small toadstools gleam from dew.
echo Trees block the north.
echo You can venture east, south or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) East
echo 2) South
echo 3) West
echo 4) Escape
echo.
set /p login=
if %login% EQU 1 goto A4
if %login% EQU 2 goto B3
if %login% EQU 3 goto A2
if %login% EQU 4 goto FOREST
goto A3

:A4
cls
echo.
echo A whispy tree blows gently in the breeze.
echo Trees block the north and east.
echo You can venture south or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) South
echo 2) West
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto B4
if %login% EQU 2 goto A3
if %login% EQU 3 goto FOREST
goto A4

:B1
cls
echo.
echo An opening through the trees lets in natural light.
echo Trees block the south and west.
echo You can venture north or east.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) East
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto A1
if %login% EQU 2 goto B2
if %login% EQU 3 goto FOREST
goto B1

:B2
cls
echo.
echo Very dense shrubs surround you.
echo Trees block the east.
echo You can venture north, south or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) South
echo 3) West
echo 4) Escape
echo.
set /p login=
if %login% EQU 1 goto A2
if %login% EQU 2 goto C2
if %login% EQU 3 goto B1
if %login% EQU 4 goto FOREST
goto B2

:B3
cls
if %MARRIED% GEQ 1 (
echo.
echo A rock large sits in the grass.
echo There's nothing to do here right now.
echo.
pause
goto A3
)
echo.
echo A gorgeous little creature sits on a rock.
echo.
echo Forest Nymph: Hello... I am Nymphette. 
echo I understand that I may be tiny and feeble,
echo but I dearly wish to be taken out of this forest.
echo I would make a terrific wife. Would you like to marry me?
echo.
echo 1) Absolutely^^!
echo 2) Not right now...
echo.
set /p login=
if %login% EQU 1 (
cls
echo. 
echo Forest Nymph: Oh goody^^! I promise I'm worth marrying^^!
echo You won't regret it. I'll be at your home.
echo.
pause
set MARRIED=1
set WNAME=Nymphette
goto A3
)
if %login% EQU 2 goto A3


:B4
cls
if %greenquest% EQU 9 goto BVVV
if %greenquest% EQU 3 goto BGGG
if %greenquest% EQU 2 goto BHHH
if %greenquest% EQU 0 goto BNNN
if %greenquest% EQU 1 goto BMMM
:BVVV
echo.
echo There's nothing but a dead log here.
echo.
pause
goto A4
:BGGG
cls
echo.
echo Yay^^! I will truly be safe now,
echo all thanks to you and your bravery^^!
echo Would you take me away from all this?
echo I'll replace any child you may have already...
echo.
echo 1) Yes please
echo 2) No thanks
echo.
set /p login=
if %login% EQU 2 goto A4
cls
echo.
echo Yay^^! I'll be at home.
echo.
set CHILD=1
set childname=Green
set greenquest=9
pause
goto A4
:BHHH
cls
echo.
echo There's nothing but a dead log here.
echo.
pause
goto A4
:BNNN
echo.
echo A young girl in a green hood sits on a dead log.
echo.
pause>nul
if %greenquest% EQU 0 goto BOOO
if %greenquest% EQU 1 goto BMMM
:BMMM
echo.
echo Green: Let me know when you've made it safe...
echo.
pause>nul
if %foxquest% EQU 1 goto BKKK
goto A4
:BKKK
echo.
echo 1) I know a safe place
echo 2) Okay
echo.
set /p login=
if %login% EQU 2 goto A4
if %foxquest% EQU 1 if %login% EQU 1 goto GKILLQ
goto B4
:BOOO
echo Green: Hello, there. I am in need of help.
echo A big mean fox keeps chasing me and trying to eat me...
echo If someone could make him go away, I'd be forever grateful.
echo Maybe you could?
echo.
echo 1) For sure
echo 2) Another time
if %foxquest% EQU 1 echo 3) I know a safe place
echo.
set /p login=
if %login% EQU 2 goto A4
if %foxquest% EQU 1 if %login% EQU 3 goto GKILLQ 
cls
echo.
echo Green: Yay^^! Let me know when you've made it safe...
echo.
pause
set /a greenquest=1
goto A4
:GKILLQ
cls
echo.
echo You trick Green into going to the Fox's location.
echo She gives you a potion and a rupee as a thank-you
echo before heading on her way.
set /a potion=%potion%+1
set /a rupee=%rupee%+1
set foxquest=2
set greenquest=2
pause
goto A4



:C1
cls
if %foxquest% EQU 9 goto FPPP
if %foxquest% EQU 2 goto FGGG
if %foxquest% EQU 3 goto FAAA
if %foxquest% EQU 0 goto FFFF
if %foxquest% EQU 1 goto FQQQ
:FPPP
echo.
echo There's nothing but a big redwood tree here.
echo.
pause
goto D1
:FGGG
cls
echo.
echo Fox: Good work, bud. I sure got a tasty treat,
echo all thanks to you and your deception^^!
echo Any chance I could crash at your place for a bit?
echo I'll replace any pet you may have already...
echo.
echo 1) Sure
echo 2) No thanks
echo.
set /p login=
if %login% EQU 2 goto D1
cls
echo.
echo Cool^^! I'll be at your home.
echo.
set petowner=1
set N1=Slick
set the=the
set N2=Fox
set foxquest=9
echo.
pause
goto D1
:FAAA
echo.
echo There is nothing but a big redwood tree here.
echo.
pause
goto D1
:FFFF
echo.
echo A sinister looking fox stands against a big redwood tree.
echo.
pause>nul
if %foxquest% EQU 1 goto FQQQ
goto FDDD
:FQQQ
cls
echo.
echo Fox: See me when you're done.
echo.
pause>nul
if %greenquest% EQU 1 goto FZZZ
goto D1
:FZZZ
echo 1) Time to die
echo 2) Okay
echo.
set /p login=
if %login% EQU 2 goto D1
if %greenquest% EQU 1 if %login% EQU 1 goto BKILLQ
goto C1
:FDDD
echo Fox: Hello, stranger. I need a favor from someone who
echo isn't a known affiliate of mine. It's a... dark favor.
echo A little girl in a green hood spends her time in the forest.
echo I need someone to trick her into coming here. She is the
echo tastiest thing I've ever seen... Will you do this for me?
echo.
echo 1) I will
echo 2) No thanks
if %greenquest% EQU 1 echo 3) Time to die
echo.
set /p login=
if %login% EQU 2 goto D1
if %greenquest% EQU 1 if %login% EQU 3 goto BKILLQ
cls
echo.
echo Fox: Splendid. See me when you're done.
echo.
pause
set /a foxquest=%foxquest%+1 
goto D1
:BKILLQ
cls
echo.
echo You attack the fox and kill it.
echo You take some fur, and meat as raw food.
set /a food=%food%+1
set /a fur=%fur%+1
set foxquest=3
set greenquest=3
pause
goto D1

:C2
cls
echo.
echo The area is very shadowed and creepy.
echo Trees block the east and west.
echo You can venture north or south.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) South
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto B2
if %login% EQU 2 goto D2
if %login% EQU 3 goto FOREST
goto C2

:C3
cls
:RTL
cls
echo.
echo There's an opening with a shop set up.
echo.
echo Garrik: Not often that I get business in the forest.
echo But I sell rare gifts^^!
echo What would you like to buy?
echo.
echo 1) Horse Doll       500 Gold
echo 2) Flowers          600 Gold
echo 3) Fancy Clothes    1000 Gold    
echo 4) Gold Ring        2000 Gold
echo.
echo 5) Back
echo.
set /p login=
if %login% EQU 1 (
if %money% LEQ 499 goto cNORTL
cls
set /a money=%money%-500
set /a gdoll=%gdoll%+1
echo.
echo Garrik: Good choice.
echo.
pause
goto C3
)
if %login% EQU 2 (
if %money% LEQ 599 goto cNORTL
cls
set /a money=%money%-600
set /a gflowers=%gflowers%+1
echo.
echo Garrik: Good choice.
echo.
pause
goto C3
)
if %login% EQU 3 (
if %money% LEQ 999 goto cNORTL
cls
set /a money=%money%-1000
set /a cclothes=%cclothes%+1
echo.
echo Garrik: Good choice.
echo.
pause
goto C3
)
if %login% EQU 4 (
if %money% LEQ 1999 goto cNORTL
cls
set /a money=%money%-2000
set /a cring=%cring%+1
echo.
echo Garrik: Good choice.
echo.
pause
goto C3
)
if %login% EQU 5 goto D3
goto C3

:cNORTL
cls
echo.
echo Garrik: You don't have enough gold.
echo.
pause
goto C3


:C4
cls
echo.
echo You are in the maze exit.
echo It is filled with overgrown trees and shrubs.
echo Trees block the north and west.
echo You can venture south or leave the maze.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) South
echo 2) Leave
echo.
set /p login=
if %login% EQU 1 goto D4
if %login% EQU 2 goto FOREST
goto A1
:D1
cls
echo.
echo Many rocks form a circle in the grass.
echo Trees block the west and south.
echo You can venture north or east.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) East
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto C1
if %login% EQU 2 goto D2
if %login% EQU 3 goto FOREST
goto D1

:D2
cls
echo.
echo Strange sounds and chirps come from all around.
echo Trees block the south.
echo You can venture north, east or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) East
echo 3) West
echo 4) Escape
echo.
set /p login=
if %login% EQU 1 goto C2
if %login% EQU 2 goto D3
if %login% EQU 3 goto D1
if %login% EQU 4 goto FOREST
goto D2

:D3
cls
echo.
echo The ground is very wet and muddy.
echo Trees block the south.
echo You can venture north, east or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) East
echo 3) West
echo 4) Escape
echo.
set /p login=
if %login% EQU 1 goto C3
if %login% EQU 2 goto D4
if %login% EQU 3 goto D2
if %login% EQU 4 goto FOREST
goto D3

:D4
cls
echo.
echo An old willow wilts in a small patchy plot of grass.
echo Trees block the south and east.
echo You can venture north or west.
echo.
echo    N 
echo  W-+-E
echo    S
echo.
echo 1) North
echo 2) West
echo 3) Escape
echo.
set /p login=
if %login% EQU 1 goto C4
if %login% EQU 2 goto D3
if %login% EQU 3 goto FOREST
goto B2
