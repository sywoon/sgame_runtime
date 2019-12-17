@echo off


set ndkPath=D:/Android_Env/android-ndk-r10e


call %ndkPath%/ndk-build clean APP_ABI="armeabi-v7a,x86,arm64-v8a" APP_PLATFORM=android-19
call %ndkPath%/ndk-build APP_ABI="armeabi-v7a" APP_PLATFORM=android-19

copy obj\local\armeabi-v7a\libz.a  jni
rd /q /s obj


copy jni\libz.a  ..\..\android\jni

pause