@echo off

set PATH=C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin;%PATH%
set PATH=C:\Program Files (x86)\GnuWin32\bin;%PATH%

del /S /Q *.o
del /S /Q *.d

make clean
make build ENABLE_RS41=1 ENABLE_4732=0 ENABLE_4732SSB=0 ENABLE_SPECTRUM=0 ENABLE_MESSENGER=0 ENABLE_FMRADIO=0 ENABLE_AM_FIX=1

pause