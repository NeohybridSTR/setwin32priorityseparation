echo off
cls
title SetWin32PrioritySeparation
mode 62,18
echo Made by alpexe#6314 and MyEra#7272
timeout /t 2 /nobreak>nul
echo Please run as administrator to apply the setting.
timeout /t 2 /nobreak>nul
cls
echo Select interval length.
echo.
echo 1- Long(Higher FPS,Higher Latency)
echo 2- Short(Lower FPS,Lower Latency)
echo.
set /p cho=">"
if %cho%==2 (
set /a win32=%win32%+32
)
if %cho%==1 (
set /a win32=%win32%+16
)
cls
echo Select the ratio type of interval.
echo.
echo 1- Variable(Higher FPS,Higher Latency)
echo 2- Fixed(Lower FPS,Lower Latency)
echo.
set /p cho=">"
if %cho%==1 (
set /a win32=%win32%+4
)
if %cho%==2 (
set /a win32=%win32%+8
)
cls
echo Select the priority boost type.
echo.
echo 1- High Foreground Boost(Highest FPS,Highest Latency)
echo 2- Medium Foreground Boost(Use if not sure what to use)
echo 3- Fixed and Equal(Lowest FPS,Lowest Latency)
echo.
set /p cho=">"
if %cho%==1 (
set /a win32=%win32%+2
)
if %cho%==2 (
set /a win32=%win32%+1
)
if %cho%==3 (
set /a win32=%win32%+0
)
cls
echo Your Win32PrioritySeparation value is %win32%. Click any button to apply.
pause>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "%win32%"
cls
echo Successfully applied. Click any button to exit.
pause>nul
exit




