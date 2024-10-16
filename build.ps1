
if ($MyInvocation.MyCommand.CommandType -eq "ExternalScript")
    { $global:ScriptPath = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition }
else
    {$global:ScriptPath = Split-Path -Parent -Path ([Environment]::GetCommandLineArgs()[0]) 
    if (!$ScriptPath){ $global:ScriptPath = "." } }


#========================
# ENERGYDRINK

ps2exe `
-inputFile hotcorner.ps1 `
-iconFile $ScriptPath\assets\icon.ico `
-noConsole `
-noOutput `
-exitOnCancel `
-title "Hotcorner" `
-description "Helps you" `
-company "teamcons" `
-copyright "GPL-3.0 Stella - stella.menier@gmx.de" `
-version 0.9 `
-Verbose `
-outputFile hotcorner.exe

#