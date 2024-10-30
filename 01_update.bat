@echo off
cd /d %~dp0
bin\file2sav\file2sav.exe "C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav" @RESPONSE.TXT
taskkill /F /IM "TaroticaVooDoo.exe"
start "" "C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\TaroticaVooDoo.exe"
taskkill /F /IM "savlist.exe"
start "" "bin\savlist\savlist.exe" "C:\Program Files (x86)\Steam\steamapps\common\TAROTICA VOO DOO\180621\TaroticaVooDoo_disk00.sav"
