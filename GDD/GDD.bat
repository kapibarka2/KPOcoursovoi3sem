@ECHO OFF
timeout 1
cd /d C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Auxiliary\\Build
call vcvarsall.bat 
cd /d D:\\¡√“”\\GDD\\GDD\GEN
ml /c /coff /Zi asm.asm
link /OPT:NOREF /DEBUG /SUBSYSTEM:CONSOLE libucrt.lib asm.obj 
call GEN.exe
timeout 5
pause
exit