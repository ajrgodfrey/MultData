@echo off

set /p commit_message=Enter the commit message: 

git add * 
git commit -m "%commit_message%"
