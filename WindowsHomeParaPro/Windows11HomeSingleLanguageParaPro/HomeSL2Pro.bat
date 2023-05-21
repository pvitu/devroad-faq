echo on
mkdir %windir%\System32\spp\tokens\skus\Professional
xcopy "%~dp0"\Professional %windir%\System32\spp\tokens\skus\Professional /y
cscript.exe %windir%\system32\slmgr.vbs /rilc
cscript.exe %windir%\system32\slmgr.vbs /upk >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /ckms >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /cpky >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
shutdown /r /f /t 20
pause