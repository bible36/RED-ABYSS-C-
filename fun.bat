@echo off
echo you go pulled though it is dark.
echo what do you do?
:dark1
echo ___________________________________________
echo 1 = look where you came from.
echo 2 = look around.
set /p input=slect 1 or 2:
if %input%==1 (
goto mear
)
if %input%==2 (
goto look
)else goto dark1
pause;


:look 
echo ____________________________________________
set save=4
(
echo %save%
)>save.dlb
call filelook3


:mear
echo ____________________________________________
echo you go to look where you came from......
pause;
echo ____________________________________________
echo you pause for a second you see.....
pause;
echo ____________________________________________
echo black rocks stack to make a portal or an entrance.....
pause;
:mear1
echo _________________________________________________________
echo you see some thing 
echo 1 = go and look
echo 2 = keep looking around
set /p input=slect 1 or 2: 
if %input%==1 (
goto golook
)
if %input%==2 (
goto look
)else goto mear1
pause;


:golook
echo _______________________________________________________
echo you see a door 
pause;
echo _______________________________________________________
echo you also see thet ther might be some righting on the rocks.
pause;
echo __________________________________________________________
echo there is a four digit code for a paddlock.
pause;
:golook1
echo __________________________________________________________
echo what do you do
echo 1 = look around 
echo 2 = look at rocks
set /p input=slect 1 or 2:
if %input%==1 (
call filelook3.bat
)
if %input%==2 (
goto trycode
)else goto golook1
pause;



:trycode
set lock=0379
(
echo %lock%
)>lock.dlb
echo ______________________________________________________________
echo  the rock has this on it zero one three two seven three nine four
echo this has something to do with the code i will give it a try
pause;
echo ______________________________________________________________ 
echo try a code
set /p input=
if %input%==0379 (
goto opendoor
)else goto golook1
pause;


:opendoor
echo ____________________________________________________________
echo the door is now open
set save=5 
(
echo %save%
)<save.dlb
call opendoor.bat
echo __________________________________________________________
