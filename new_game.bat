@echo off
echo ____________________
echo what do you want your name to be?
set /p name=slect your name:
(
echo %name%
)>name.dlb
pause;
:gender
echo ____________________
echo what is gender?
echo 1=male 2=female
set /p gender=slect male or female:
if %gender%==1 (
goto male
)
if %gender%==2 (
goto female
)else goto gender

:male
(
echo %gender%
)>player_age.dlb
echo _______________________
echo ok thank you this is only for the game.
call intro_to_game.bat
pause;


:female
(
echo %gender%
)>player_age.dlb
echo _______________________
echo ok thank you this is only for the game.
call intro_to_game.bat
pause;





