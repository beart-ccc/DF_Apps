   $strTargetPath = "C:\Users\Administrator\AppData\Local\SurpassViewer\Surpass Viewer.exe"
   $strLinkFile = "$env:Public\Desktop\Surpass Vwr.lnk"
   $WScriptShell = New-Object -ComObject WScript.Shell
   $Shortcut = $WScriptShell.CreateShortcut($strLinkFile)
   $Shortcut.TargetPath = $strTargetPath
   $Shortcut.IconLocation = "%SystemRoot%\SystemResources\shell32.dll.mun, 13"
   $Shortcut.Save()
