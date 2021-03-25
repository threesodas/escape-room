@echo off
title EscapeRoom
color 0A
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Terms of Use
echo 4. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Terms
if %answer%==4 goto Exit
:Terms
cls
echo  Terms of Use
echo  --------------------------------------------------------------------------------------------
echo  Please do not edit the game code or copy and paste code to anything else without permission
echo  .
echo  People with permission:
echo  -Prodski
echo  -JG
echo  If you want access to edit files then please email me, luke.gobin@fwastudents.org
echo  Notice: Access to edit files can be removed at anytime.
echo  .
echo  Please do not share this game with others, this game is in early access.
echo  .
echo  --------------------------------------------------------------------------------------------
pause
goto Menu
:Exit
cls
echo Thanks for playing!
pause
exit /b
:Credits
cls
echo Credits
echo-----------------------------------
echo Luke Gobin
echo Jonah Gobin
echo-----------------------------------
echo Thank you for playing EscapeRoom!
pause
goto Menu
:Start_1
cls
echo You wake up inside of a room with only a carpet and a box covered in duct tape.
set /p answer=type in what to investigate...
if %answer%==box goto box_1
if %answer%==carpet goto carpet_1
pause
:Oops_1
cls
echo That is not an option you can choose...
pause
goto Start_1
:box_1
cls
echo You attempt to open the box, but you can't open it because of the duct tape...
pause
goto Start_1
:carpet_1
echo You slowly move the carpet
echo Nothing is there....should you further investigate?
set /p answer= (y/n)
if %answer%==y goto Yes_1
if %answer%==n goto No_1
:Oops_2
cls
echo That is not an option you can choose...
pause
goto Carpet_1
:No_1
cls
pause
goto Start_1
:Yes_1
cls
echo Under the carpet you found a locked trapdoor and a saw...You collected the saw
pause
goto Start_2
:Start_2
cls
echo You are inside of a room with only a carpet and a box covered in duct tape.
set /p answer=type in what to investigate...
if %answer%==box goto box_2
if %answer%==carpet goto carpet_2
:box_2
echo You walked to the box...Should you cut it open?
set /p answer= (y/n)
if %answer%==y goto :Dead_1
if %answer%==n goto :Start_2
:Oops_3
cls
echo That is not an option you can choose...
pause
goto box_2
:carpet_2
echo Under the carpet is a trapdoor...should you use the saw to cut it open? 
set /p answer= (y/n)
if %answer%==y goto Yes_2
if %answer%==n goto No_2
:Yes_2
cls
echo You cut the trapdoor open and climbed down into the next room...
pause
goto Start_3
:No_2
pause
goto :Start_2
:Start_3
cls
echo The trapdoor led you into the sewers, you can only go right or left
set /p answer=choose direction to walk (left/right)
if %answer%==left goto Left_1
if %answer%==right goto Right_1
:Oops_4
cls
echo That is not an option you can choose...
pause
goto Start_3
:Left_1
echo After thinking of about the situation, you chose to go left...
pause
goto Left_2
:Right_1
echo After thinking of about the situation, you chose to go right...
pause
goto Right_2
:Dead_1
cls
echo You cut open the box then it exploded.........You have failed to escape the room
pause
goto :Menu
:Left_2
cls
echo Walking down toward the left you found a toolbox and you collected it,
echo at the end of the passageway you see something shiny.
set /p answer=Should you continue walking? (y/n)
if %answer%==y goto Spikes_1
if %answer%==n goto Finddoor_1
:Oops_5
cls
echo That is not an option you can choose...
pause
goto Left_2
:Spikes_1
cls
echo While walking you suddenly started falling, and you were peirced by spike. You have fell into a spike pit!
pause
goto :Menu
:Finddoor_1
echo You started walking back then you notice a door that has been boarded up...
set /p answer=Use a crowbar from toolbox to open door or think about it? (open_door/Think)
if %answer%==open_door goto Start_4
if %answer%==go_back goto Finddoor_1
:Oops_6
cls
echo That is not an option you can choose...
pause
goto Finddoor_1
:Right_2
cls
echo While walking down the right path you found a screwdriver and you collected it, at the end of the passageway you see a light.
set /p answer=Should you walk toward the light? (y/n)
if %answer%==y goto Fire_1
if %answer%==n goto Finddoor_2
:Oops_7
cls
echo That is not an option you can choose...
pause
goto Right_2
:Fire_1
cls
echo While walking toward the light you felt hot...too hot and you were burnt into a crisp.
pause
goto Menu
:Finddoor_2
echo You thought about it and started walking back then you found a locked door... You could unscrew the hinges...
set /p answer=Should you unscrew the hinges?(y/n)
if %answer%==y goto Start_4
if %answer%==n goto Finddoor_2
:Oops_8
cls
echo That is not an option you can choose...
pause
goto Finddoor_2
:Start_4
cls
echo You walked through the door... You found the exit and a huge box.
set /p answer=Type an item to investigate? 
if %answer%==exit goto boi_1
if %answer%==box goto hbox_1
:Oops_9
cls
echo That is not an option you can choose...
pause
goto Start_4
:boi_1
echo Did you mean to exit the game? ok!
pause
goto exit
:hbox_1
echo You walked toward the box...
set /p answer=Should you open it? (y/n)
if %answer%==y goto Hole_1
if %answer%==n goto Start_4
:Oops_10
cls
echo That is not an option you can choose...
pause
goto hbox_1
:Hole_1
echo inside the box was a hole into the next room, and you jumped through it. Then everything went dark.
pause
goto man_1
:man_1
cls
The End.
pause
goto Credits
