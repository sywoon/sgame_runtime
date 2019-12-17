@echo off
set ndkPath=D:/Android_Env/android-ndk-r10e

cd ./android
call %ndkPath%/ndk-build clean APP_ABI="armeabi-v7a,x86,arm64-v8a" APP_PLATFORM=android-19
call %ndkPath%/ndk-build APP_ABI="armeabi-v7a" APP_PLATFORM=android-19

mkdir ..\Plugins\Android\libs\armeabi-v7a
copy libs\armeabi-v7a\libtolua.so ..\Plugins\Android\libs\armeabi-v7a
call %ndkPath%/ndk-build clean APP_ABI="armeabi-v7a,x86,arm64-v8a" APP_PLATFORM=android-19

del \f ./android/jni/libz.a

echo Successfully linked
pause
::exit
