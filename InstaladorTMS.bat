@echo off

@echo ==============================================
@echo                   TMS INSTALL
@echo ==============================================

set mypath=%cd%

if exist %mypath%\TMS-Tools\ goto :pulaTools

git clone https://github.com/rodrigoservicelogic/TMS-Tools.git
cd %mypath%\TMS-Tools\fristBuild
start frist-build.bat
@echo ==> TMS-Tools: OK
@echo ==============================================
:pulaTools

cd %mypath%
if exist %mypath%\TMS-Application\ goto :pulaApplication

git clone https://github.com/rodrigoservicelogic/TMS-Application.git
cd %mypath%\TMS-Application\fristBuild
start frist-build.bat

@echo ==> TMS-Application: OK
@echo ==============================================

:pulaApplication
cd %mypath%
if exist %mypath%\TMS-Web\ goto :pulaWeb
git clone https://github.com/rodrigoservicelogic/TMS-Web.git
cd %mypath%\TMS-Web\fristBuild
start frist-build.bat

@echo ==> TMS-Web: OK
@echo ==============================================

:pulaWeb


@echo ==============================================
@echo                    CONCLUIDO!
@echo ==============================================

pause