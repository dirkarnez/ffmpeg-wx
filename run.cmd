@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
ffmpeg -i "%url%" -c:v libx264 -pix_fmt yuv420p -c:a aac "%filename%"
pause
