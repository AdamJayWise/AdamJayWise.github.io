@echo off
echo Updating site
pause

pelican content -s publishconf.py

python ghp-import.py output -b master

git push