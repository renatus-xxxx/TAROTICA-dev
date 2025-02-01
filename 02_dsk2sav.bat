@echo off
cd /d %~dp0

set "DSK2SAV_PATH=bin\vdman\dsk2sav.exe"
if not exist "%DSK2SAV_PATH%" (
  echo Please run "00_setup.bat" to set up
  pause
  exit /b 1
)

set "SAV_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav"
set "EXE_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe"

if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    bin\vdman\dsk2sav.exe %1 "%SAV_PATH%"
    taskkill /F /IM "TaroticaVooDoo.exe" >nul 2>&1
    start "" "%EXE_PATH%"
  )  else (
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
