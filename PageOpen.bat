echo off
:start
set /p c="how many webpages would you like to open? -> "
echo opening %c% pages
for /l %%x in (1, 1, %c%) do (
   start chrome /new-window /window-size=100,500 /autoplay-policy=no-user-gesture-required https://www.youtube.com/watch?v=nA9UZF-SZoQ
   timeout 5
)
set /p r="Launch more windows? Y/N "
if %r% EQU Y goto start

pause