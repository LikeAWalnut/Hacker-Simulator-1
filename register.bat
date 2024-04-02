@echo off
setlocal
set "username="
set "password="

:again
cls
echo Register
if defined username echo Username: %username%
if defined password echo Password: ******
echo.
echo 1. Set username
echo 2. Set password
echo 3. Register
echo 4. Back
set /p "choice=>"
if "%choice%" == "1" (
    set "username="
    set /p "username=Enter username: "
    goto again
)
if "%choice%" == "2" (
    set "password="
    set /p "password=Enter password: "
    goto again
)
if "%choice%" == "3" (
    if defined username if defined password (
        echo %username%,%password%>>..\data\database.txt
        echo Registration successful.
        pause
        exit
    )
    echo You must set a username and password to register.
    echo.
    echo Press any key to try again...
    pause>nul
    goto again
)
if "%choice%" == "4" (
    cd ..
    del game
    echo Returning to previous directory...
    exit
)
echo Invalid choice.
echo.
echo Press any key to try again...
pause>nul
goto again
