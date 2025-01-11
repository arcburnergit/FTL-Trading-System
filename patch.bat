C:
cd "C:\Users\aden\FTL-Trading-System"
echo %cd%
tar.exe -a -cf "FTL-Trading-System.zip" data img mod-appendix
move /Y "C:\Users\aden\FTL-Trading-System\FTL-Trading-System.zip" "C:\Program Files (x86)\Steam\steamapps\common\FTL Faster Than Light\Slipstream\mods"
cd "C:\Program Files (x86)\Steam\steamapps\common\FTL Faster Than Light\Slipstream"
modman.exe --patch "Multiverse 5.4.5 - Assets (Patch above Data).zip" "Multiverse 5.4.6  - Data.zip" "FTL-Trading-System.zip"
cd "C:\Program Files (x86)\Steam\steamapps\common\FTL Faster Than Light"
FTLGame.exe
exit
