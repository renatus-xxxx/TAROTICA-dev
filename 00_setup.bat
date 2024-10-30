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