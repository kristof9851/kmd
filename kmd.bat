@echo off
title kmd
type "%~dp0ascii_before.txt"
echo:



echo PERSONAL SHORTCUTS
echo ----------------------
@echo on
doskey d=dir $*
doskey ll=dir $*
doskey gs=git status $*
doskey gst=git stash $*
doskey gb=git branch $*
doskey ga=git add $*
doskey gc=git commit $*
doskey gch=git checkout $*
doskey gd=git diff $*
doskey gl=git log $*
doskey gu=git pull $*
doskey gp=git push $*
doskey gg=git branch -v ^&^& git status $*
doskey ggg=git branch -v ^&^& git branch -r ^&^& git status $*
doskey gfa=git fetch --all $*
doskey grpo=git remote prune origin $*
doskey gr=git restore $*
doskey grb=git rebase $*
doskey pa=activate.bat
doskey pd=deactivate.bat
@echo off
echo:
echo:
echo:



echo UPDATE PATH / SET ENV VARS
echo ----------------------
@echo on
@REM SET PATH=%PATH%;D:\bin;
@REM call D:\myenv.cmd
@echo off
echo:
echo:
echo:



echo SETUP PYTHON ENVIRONMENT
echo ----------------------
@echo on
@REM SET PATH=%PATH%;C:\Program Files\Python310\
@REM D:
@REM if exist venv (
@REM     echo D:\venv exists
@REM ) else (
@REM     python -m venv D:\venv
@REM     echo D:\venv created
@REM )
@REM call D:\venv\Scripts\activate.bat
@REM SET PYTHONDONTWRITEBYTECODE=1
@echo off
echo:
echo:
echo:



echo SETUP KERBEROS ENVIRONMENT
echo ----------------------
@echo on
@REM c:
@REM cd c:\Desktop
@REM set /p pw= < pw.txt
@REM kinit kristof@localhost.com %pw%
@REM set KRB5CCNAME=%USERPROFILE%\krb5cc_kristof
@echo off
echo:
echo:
echo:



echo STARTING DIR
echo ----------------------
@echo on
D:
cd D:\work
@echo off



echo:
type "%~dp0ascii_after.txt"
echo:
cmd /k "C:\Program Files\Git\git-cmd.exe"
