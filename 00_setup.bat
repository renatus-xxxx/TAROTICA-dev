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
set "SAV_DIR=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621"
set "EXE_PATH=C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe"
if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    move /y "%SAV_PATH%" "backup"
  )
  copy /y "sample\TaroticaVooDoo_disk00.sav" "%SAV_DIR%"
  exit /b 0
) else (
  echo Modify the bat file to set the full path to "TaroticaVooDoo.exe"
  echo (��:"C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe")
  pause
  exit /b 1
)
