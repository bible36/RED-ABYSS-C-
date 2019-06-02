@echo off
echo ____________________
echo what do you want your name to be?
set /p name=slect your name:
(
echo %name%
)>name.dlb
pause;

:game_age
echo ________________________
echo what is you age?
set /p game_age=your age:
(
echo %game_age%
)>game_age.dlb
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
)>player_gender.dlb
set game_leve=1
echo _______________________
echo ok thank you this is only for the game.
set game_leve=1 
(
echo %game_leve%
)>game_leve.dlb
pause;
call intro_to_game.bat



:female
(
echo %gender%
)>player_gender.dlb
echo _______________________
echo ok thank you this is only for the game.
set game_leve=1 
(
echo %game_leve%
)>game_leve.dlb
pause;
call intro_to_game.bat






