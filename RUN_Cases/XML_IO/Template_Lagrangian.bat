@echo off
cls

rem "name" and "dirout" are named according to the case

set name=Template_Lagrangian
set dirout=%name%_out

rem "executables" are renamed and called from their directory

set tools=../../build_win/bin/RELEASE
set mohidlagrangian="%tools%/MOHIDLagrangian.exe"

rem "dirout" is created to store results or it is cleaned if it already exists
if exist %dirout% del /Q %dirout%\*.*
if not exist %dirout% mkdir %dirout%

rem CODES are executed according the selected parameters of execution in this case

%mohidlagrangian% -i %name%_Def.xml -o %dirout%
if not "%ERRORLEVEL%" == "0" goto fail

:success
echo All done
goto end

:fail
echo Execution aborted.

:end
pause
