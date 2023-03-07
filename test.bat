@echo off

set com=tcc
set fl=zoravm\main.c
set bin=bin\test.exe
set exmp=examples\hw.zsm
set args=-std=c99 

if not exist bin mkdir bin
echo Compiling %fl%
call %com% %args% %fl% -o %bin%
echo Testing %exmp%
call %bin% %exmp%
