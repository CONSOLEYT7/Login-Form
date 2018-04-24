@echo off
title Login Form By CONSOLEYT7

:testaccount
cls
echo Test Account
echo ID : test
echo Password : 1234
echo.
echo Press Any Key To Continue...
pause >nul
goto login

:login
cls
echo Login
echo.
set /p id=ID : 
if not %id%==test goto idwrong
if %id%==test goto login1

:idwrong
cls
echo Unknown ID
echo.
echo Press Any Key To Continue...
pause >nul
goto login

:login1
cls
echo Login
echo.
set /p pass=Password : 
if not %pass%==1234 goto passwrong
if %pass%==1234 goto done

:passwrong
cls
echo Unknown Password
echo.
echo Press Any Key To Continue...
pause >nul
goto login1

:done
cls
echo Successfully Logged-in
echo.
echo Press Any Key To Continue...
pause >nul
exit