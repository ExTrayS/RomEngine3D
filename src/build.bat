@echo off

mkdir ..\build\
pushd ..\build\


call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64  

cl -FC -nologo -Zi "E:\RomEngine3D\src\main.cpp" shell32.lib user32.lib Gdi32.lib  /MD /I "../include/" /I"C:/VulkanSDK/1.3.290.0/Include/" /link  /LIBPATH:"../libs" glfw3.lib 

popd
