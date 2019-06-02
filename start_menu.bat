@echo off
color 4
:start_menu
echo ____________________
echo 1=new game 2=load game 3=exit 
set /p input=slect 1 or 2 or 3:
if %input%==1 (
goto new_game
)
if %input%==2 (
goto load_game
)
if %input%==3 (
exit:
)else goto start_menu
pause;


:new_game
call new_game.bat
pause;


:load_game
call load_game.bat






