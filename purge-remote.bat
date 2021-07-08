@echo off
SETLOCAL
set /p source="Enter source branch name(eg. master|develop): "

git checkout %source%
git fetch --prune

git branch -r --merged | grep -v %source% | sed -e 's/origin\//:/' | xargs -r git push origin
ENDLOCAL