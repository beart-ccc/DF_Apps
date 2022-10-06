@echo off

set SCRIPT="%TEMP%\SurpassVwrSetup.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Surpass Vwr.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Users\Public\Surpass\SecureClientInitialRun.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

rem msiexec c:\users\public\surpass\secureclient\secureclientinitialrun.exe
