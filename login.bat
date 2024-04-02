@echo off
setlocal
set "username="
set "password="

:again
cls
echo Login
if defined username echo Username: %username%
if defined password echo Password: ******
echo.
echo 1. Set username
echo 2. Set password
echo 3. Login
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
    for /f "tokens=1,2 delims=," %%a in ('findstr /b /i /l /r /c:"%username%," ..\data\database.txt') do (
        if "%%b" == "%password%" (
            echo Login successful.
            pause
            exit
        )
    )
    echo Invalid username or password.
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
