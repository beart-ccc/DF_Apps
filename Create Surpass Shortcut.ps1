   $strTargetPath = "C:\Users\Administrator\AppData\Local\SurpassViewer\Surpass Viewer.exe"
   $strLinkFile = "$env:Public\Desktop\Surpass Vwr.lnk"
   $WScriptShell = New-Object -ComObject WScript.Shell
   $Shortcut = $WScriptShell.CreateShortcut($strLinkFile)
   $Shortcut.TargetPath = $strTargetPath
   $Shortcut.IconLocation = "%USERPROFILE%\AppData\Local\SurpassViewer\app.ico.mun, 94"
   $Shortcut.Save()
