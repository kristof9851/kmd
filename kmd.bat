@echo off
setlocal enabledelayedexpansion
title kmd
type "%~dp0ascii_before.txt"
echo:



echo PERSONAL SHORTCUTS
echo ----------------------
@echo on
set START_DIR=_projects
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
doskey greload=(git checkout develop ^|^| git checkout master) ^&^& git pull ^&^& git remote prune origin ^&^& git branch -v ^&^& git status ^&^& git branch -D $*
doskey pa=D:\venv-py312\Scripts\activate.bat
doskey pd=D:\venv-py312\Scripts\deactivate.bat
doskey tf=terraform $*
doskey kidea=start "" "D:\apps\kidea.bat" $*
doskey kcode=start "" "D:\apps\kcode.bat" $*
doskey gitb=python -m git_boss --config "D:\apps\gitb\config.yaml" $*
@echo off
echo:
echo:
echo:



echo UPDATE PATH / SET ENV VARS
echo ----------------------
@echo on
@REM SET PATH=!PATH!;D:\bin;
@REM call D:\myenv.cmd
@echo off
echo:
echo:
echo:



echo SETUP PYTHON ENVIRONMENT
echo ----------------------
@echo on
@REM SET PATH=!PATH!;C:\Program Files\Python310\
@REM D:
@REM cd \
@REM if exist venv (
@REM     echo D:\venv-py312 exists
@REM ) else (
@REM     python -m venv D:\venv-py312
@REM     echo D:\venv-py312 created
@REM )
@REM call D:\venv-py312\Scripts\activate.bat
@REM 
@REM pip3 config set global.index-url "https://pypi.../simple"
@REM pip3 config set global.extra-index-url "https://pypi.../simple"
@REM pip3 config set global.trusted-host "https://pypi.../simple"
@REM if exist "cacerts.pem" (
@REM     echo D:\cacerts.pem exists
@REM ) else (
@REM     curl http://.../cacerts.pem > d:\cacerts.pem
@REM     echo D:\cacerts.pem created
@REM )
@REM pip3 config set global.cert D:\cacerts.pem
@REM 
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
cd !START_DIR!
@echo off



echo PATH PARAMETER?
echo ----------------------
@echo off
if "%~1" NEQ "" (
    REM // Switch to the provided directory
    cd /d "%~1" || (
        @echo on
        echo Failed to switch to directory: %~1
        exit /b
    )
    @echo on
    echo Path parameter passed: %~1
    @echo off

    REM // Remove trailing slash if present
    set "pathParam=%~1"
    if "!pathParam:~-1!"=="\" set "pathParam=!pathParam:~0,-1!"
    if "!pathParam:~-1!"=="/" set "pathParam=!pathParam:~0,-1!"

    REM // Get the directory name from the path
    for %%A in ("!pathParam!") do (
        set "dirName=%%~nA"
    )

    REM // Change the window title
    @echo on
    title !dirName!
    @echo off

    REM // View git status
    git branch -v && git status
) else (
    @echo on
    echo No path parameter provided
)
@echo off
echo:
echo:
echo:



echo:
type "%~dp0ascii_after.txt"
echo:
cmd /k "C:\Program Files\Git\git-cmd.exe"
