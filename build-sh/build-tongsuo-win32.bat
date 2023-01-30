@echo off

setlocal

if "%VisualStudioVersion%" equ "" echo Please run this script from a Visual Studio command prompt for the compiler you want to use
if "%VisualStudioVersion%" equ "" exit /b 1

:: make perl.exe available via %PATH%
set PATH=%PATH%;
md build\win32\release
cd build\win32\release

perl ../../../src/Configure  VC-WIN32 -DSGD_MAX_ECC_BITS_256 --prefix=%~dp0\bin\win32-mt\release enable-ntls
perl -i -pe "s/\/MD/\/MT/g;" makefile

nmake build_libs
nmake install_runtime_libs

@REM perl Configure debug-VC-WIN64A no-asm --prefix=%~dp0\x64-mtd
@REM call ms\do_win64a.bat
@REM nmake -f ms\nt.mak
@REM nmake -f ms\nt.mak install
@REM copy /y tmp32.dbg\lib.pdb %~dp0\x64-mtd\lib\
@REM nmake -f ms\nt.mak clean

endlocal
