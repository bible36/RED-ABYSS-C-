@echo off
color 4

:start
echo ____________________________________
echo 1=new game 2=exit 3=load game
set /p input=slect 1 or 2 or 3:
if %input%==1 (
goto game
)
if %input%==2 (
exit;
)
if %input%==3 (
goto loadgame
)else goto start
puase;



:loadgame
echo ___________________________________
(
set /p insanity=
)<insanity.dlb
(
set /p save=
)<save.dlb
echo 1= go to save this is your %save%
echo 2 = start
set /p input=slect 1 or 2: 
if %input%==1 (
goto %save%
)
if %input%==2 (
goto start
)else goto loadgame
pause;



:menu
echo ______________________________
echo 1= load game
set /p input=slect 1 or 2:
if %input%==1 (
goto game
) 
if %input%==2 (
exit;
)else goto menu
pause;




:1
goto game
:2
goto bathroom
:3
goto lookagen
:6
goto darkblack
:4
call filelook3
:5
call opendoor.bat









:game
echo ________________________________________________
set save=1
(
echo %save%
)>save.dlb 
echo you are laying on a bed.
:game1
echo 1 = get out of the bed
echo 2 = go back to bed
set /p input=slect 1 or 2:
if %input%==1 (
goto outbed
)
if %input%==2 (
goto nap
)else goto game1
pause;


:nap
echo ________________________________________________
echo you sleep for 8hr 
pause;
:nap1
echo ________________________________________________
echo 1= go to bathroom
echo 2= go to kitchen
set /p input=slect 1 or 2:
if %input%==1 (
goto bathroom
)
if %input%==2 (
goto kichenrun
)else goto nap1
pause;


:outbed
echo ____________________________________________________
echo 1 = go to the bathroom
echo 2 = go to the kitchen
set /p input=slect 1 or 2:
if %input%==1 (
goto bathroom
)
if %input%==2 (
goto kichenrun
)else goto outbed
pause;


:bathroom
set save=2
(
echo %save%
)>save.dLb 
echo ____________________________________________________
echo you go to the bath room and look around the room
:bathroom1
echo _____________________________________________________
echo 1 = look left
echo 2 = look right
set /p input=slect 1 or 2:
if %input%==1 (
goto bathroomleft
)
if %input%==2 (
goto bathroomright
)else goto bathroom1
pause;


:bathroomright
echo ____________________________________________________
set insanity=1
(
echo %insanity%
)>insanity.dlb
echo you see a somthing in the mear it is a monster with dark red eyes in the dark 
echo you run to the uther side of the room you are terrified  
pause;
echo _____________________________________________________
echo you gand 1 insanity
echo your an insanety is %insanity%
pause;
:bathroomright1
echo _______________________________________________________
echo your terrified 
echo what do you do
echo 1= look again 
echo 2= rubit off
echo 3= run to kitchen
set /p input=slect 1 or 2 or 3:
if %input%==1 (
goto lookagen
)
if %input%==2 (
goto rubitoff
)
if %input%==3 (
goto kichenrun
)else goto bathroomright1
pause;


:lookagen
set save=3
(
echo %save%
)>save.dlb
echo _________________________________________________________
echo you see a red glare in the mirror 
echo .....
echo .....
echo .....
pause;
echo _________________________________________________________
echo has red eyes it has black fur
echo it has sharp teeth
echo it looks at you
pause;
:lookagen1
echo _________________________________________________________
echo what do you do
echo 1 = brak the mirror
echo 2 = run to the kitchen 
set  /p input=slect 1 or 2:
if %input%==1 (
goto brakemear
) 
if %input%==2 (
goto kichenrun
)else goto lookagen1
pause;


:rubitoff
echo __________________________________________________________
echo you think it was nuthing and you keep doing what you were doing.
echo what would like to do?
echo 1 = go to kitchen
echo 2 = look at tolet
set  /p input=slect 1 or 2:
if %input%==1 (
goto kichenrun
)
if %input%==2 (
goto look
)else goto rubitoff
pause;


:kichenrun
echo ___________________________________________________________
echo you see a dead body on the floor
set /a insanity=%insanity%+1
echo you gand 1 insanity
echo your insanity is %insanity%
pause;
echo _____________________________________________________________
echo some thing runs infront of you 
pause;
echo _____________________________________________________________
echo you see a refection on the frige
pause;
echo _____________________________________________________________
echo you go to the frige
echo ...
echo ...
echo ...
pause;
echo ________________________________________________________
echo the frige opens and a hand come out and pulls you in
pause;
:kitchen1
echo __________________________________________________________
set save=6
(
echo %save%
)>save.dlb
echo 1 = continue
echo 2 = exit game
set /p input=slect 1 or 2:
if %input%==1 (
goto darkblack
)
if %input%==2 (
exit;
)else goto kitchen1


:brakemear
echo _____________________________________________________________
echo you go to brake the mear 
echo ...
echo ...
echo ...
pause;
echo _________________________________________________________________
echo a hand comes out of the mear 
pause;
:brakemear1
echo ______________________________________________________________
echo do you run
echo 1 = stay
echo 2 = run to kitchen
set /p input=slect 1 or 2 or 3:
if %input%==1 (
goto darkblack
)
if %input%==2 (
goto kichenrun
)else goto brakemear1
pause;



:darkblack
echo ______________________________
echo loading......
echo ______________________________
set save=6
(
echo %save%
)>save.dlb
call fun.bat
pause;
:look
echo _______________________________________________________
echo you look at the tolet ther is nuthing
pause;
:look1
echo __________________________________________________________
echo 1= look right
echo 2= go to kitchen
set /p input=slect 1 or 2:
if %input%==1 (
goto bathroomright
)
if %input%==2 (
goto kichenrun
)else goto look1
pause;


:bathroomleft
echo __________________________________________________________
echo what would like to do?
echo 1 = go to kitchen
echo 2 = look at the tolet
echo 3 = go to bathroom
set  /p input=slect 1 or 2 or 3:
if %input%==1 (
goto kichenrun
)
if %input%==2 (
goto look
)
if %input%==3 (
goto bathroom
)else goto bathroomleft
pause;
