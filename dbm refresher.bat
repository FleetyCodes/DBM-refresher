REM 0. configure the routes
set wowdir=C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns
set desktop=C:\Users\Username\Desktop

@echo DBM refresher v1.2 - Fleety
@echo off

REM 1. First delete the current DBM files to clean the space and avoid problems
cd "%wowdir%"
FOR /d /r . %%d IN ("DBM_Aff*") DO @IF EXIST "%%d" rd /s /q "%%d"
cd "%desktop%"

REM 2. Then download the retail DBM files from GitHub
git clone https://github.com/DeadlyBossMods/DeadlyBossMods.git 
xcopy /s "%desktop%"\DeadlyBossMods "%wowdir%" /Y
@RD /S /Q "%desktop%"\DeadlyBossMods

@echo Your DBM is up-to-date.
pause