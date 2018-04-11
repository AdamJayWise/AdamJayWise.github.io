@echo off
echo Updating site
pause

pelican content -s publishconf.py

git add *
git commit -m "%DATE% %TIME%"

python ghp-import.py output -b master

git push