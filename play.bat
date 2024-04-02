@echo off
cls
echo Welcome to the game!
echo.
echo 1. Play game
echo 2. View database
echo 3. Logout
echo 4. Exit
set /p "choice=>"
if "%choice%" == "1" (
    echo Playing game...
    echo.
    echo Press any key to return to the menu...
    pause>nul
    goto play
)
if "%choice%" == "2" (
    echo Viewing database...
    type ..\data\database.txt
    echo.
    echo Press any key to return to the menu...
    pause>nul
    goto play
)
if "%choice%" == "3" (
    cd ..
    del game
    echo Returning to previous directory...
    exit
)
if "%choice%" == "4" (
    cd ..
    del game
    echo Exiting...
    exit
)
echo Invalid choice.
echo.
echo Press any key to try again...
pause>nul
goto play
