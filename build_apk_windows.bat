@echo off
echo LevelUp 30 APK build helper
echo.
echo If Gradle is installed:
call gradlew.bat assembleDebug
if %errorlevel% neq 0 (
  echo.
  echo Gradle wrapper was not included. Open the project in Android Studio and use:
  echo Build ^> Build APK(s)
  pause
  exit /b 1
)
echo.
echo APK should be under app\build\outputs\apk\debug\
pause
