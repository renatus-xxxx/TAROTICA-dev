cd /d %~dp0
mkdir bin
cd bin
mkdir file2sav
cd file2sav
curl -OL --insecure https://www.tatsu-syo.info/Archives/f2s103.zip
tar -xf f2s103.zip -v
del f2s103.zip

cd ..\
mkdir savlist
cd savlist
curl -OL --insecure https://github.com/Tatsu-syo/SAVList/releases/download/TAG-1.11/SL111.ZIP
tar -xf SL111.ZIP -v
del SL111.ZIP
cd ..\..\
set "SAV_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav"
set "EXE_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe"
if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    for %%F in ("%SAV_PATH%") do (
      set "SAV_DIR=%%~dpF"
    )
    if not exist "%SAV_DIR%backup" (
      mkdir "%SAV_DIR%backup"
    )
    move /y "%SAV_PATH%" "%SAV_DIR%backup"
  )
  exit /b 0
) else (
  echo Modify the bat file to set the full path to "TaroticaVooDoo.exe"
  echo (—á:"C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe")
  pause
  exit /b 1
)
