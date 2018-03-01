
@ECHO OFF
set os64=FALSE
for /f "usebackq delims==" %%i in (`wmic os get osarchitecture`) do ( 
    set z=%%i
    if not "%z"=="" (
      if not "!z:64=!"=="!z!" (
        set os64=TRUE
        ) 
      )
    )

if "%os64%" == "TRUE" (
    copy vimtweak64.dll E:\Vim8\vim80\
    )
if not "%os64%" == "TRUE" (
    copy vimtweak32.dll E:\Vim8\vim80\ 
    )

exit /b
