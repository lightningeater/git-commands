@echo off
SETLOCAL
set /p source="Enter source branch name(eg. master|develop): "

git checkout %source%
git fetch --prune

git branch --merged | grep -v %source% | xargs -r git branch -d
ENDLOCAL