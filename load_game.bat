@echo off
:goto lode_game_1
(
set /p load_game_save=
)<game_leve.dlb
echo __________________
echo 1=load game 2=go ot start 3=exit
set /p input=slect 1 or 2:
if %input%==1 (
goto %load_game_save%
)
if %input%==2 (
goto start
)
if %input%==3 (
exit:
)else goto lode_game_1
pause;
:start
call start_menu









:1
call intro_to_game







