@echo off
set /p webhook=Webhook : 
:send
cls
set /p message=Message : 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
goto :send
pause
