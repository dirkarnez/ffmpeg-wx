@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
ffmpeg -i "%url%" -c:v libx264 -c:a aac "%filename%"
pause

@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
set /p start="Start: "
set /p end="End: "
ffmpeg -i "%url%" -ss %start% -to %end% -c:v libx264 -crf 18 -c:a aac "%filename%"
pause

https://ottverse.com/trim-cut-video-using-start-endtime-reencoding-ffmpeg/#-t_parameter
