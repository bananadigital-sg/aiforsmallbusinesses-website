@echo off
cd /d "%~dp0"
echo.
echo === smallbizgrowth.ai - Deploying ===
echo.
git add .
for /f "tokens=1-5 delims=/ " %%a in ("%date%") do set TODAY=%%c-%%b-%%a
for /f "tokens=1-2 delims=: " %%a in ("%time%") do set NOW=%%a:%%b
git commit -m "Update %TODAY% %NOW%"
git push
echo.
echo === Done! Auto-deploys in ~30 seconds ===
echo.
pause
