@echo off
cd /d %~dp0

set "FILE2SAV_PATH=bin\file2sav\file2sav.exe"
if not exist "%FILE2SAV_PATH%" (
  echo Please run "00_setup.bat" to set up
  pause
  exit /b 1
)

set "SAVLIST_PATH=bin\savlist\savlist.exe"
if not exist "%SAVLIST_PATH%" (
  echo Please run "00_setup.bat" to set up
  pause
  exit /b 1
)

set "SAV_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav"
set "EXE_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe"

if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    bin\file2sav\file2sav.exe "%SAV_PATH%" @RESPONSE.TXT
    taskkill /F /IM "TaroticaVooDoo.exe" >nul 2>&1
    start "" "%EXE_PATH%"
    taskkill /F /IM "savlist.exe" >nul 2>&1
    start "" "bin\savlist\savlist.exe" "%SAV_PATH%"
    exit /b 0
  ) else (
    echo Modify the bat file to set the full path to "TaroticaVooDoo_disk00.sav"
    echo (—á:"C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav")
    pause
    exit /b 1
  )
) else (
  echo Modify the bat file to set the full path to "TaroticaVooDoo.exe"
  echo (—á:"C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe")
  pause
  exit /b 1
)

