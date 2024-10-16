# Hotcorner

Have hot corners on windows.
This comes with no tray icon or configuration of any sort. Just summon it in a powershell window, with whatever you want
I have a small assistant script which has tray icon, but i wanted to do basic here

You can call up several instances idc


**Usage:**
> .\hotcorner.ps1 where what reactivity sensitivity

Known bug: Sometimes the script gets stuck. Focus the terminal, hit enter, to unstuck it
Defaults are topleft overview 400 30
See below for details


OR

You can double-click hotcorner.exe, but 
-It tends to be flagged as virus
-It then runs with the defaults
-You need the task manager to stop it
-It is more reliable however

You can generate a hotcorner.exe yourself with your own defaults by
-editing hotcorner.ps1 (the param block at start sets the defaults)
-installing ps2exe
> Install-Module -Name ps2exe

-running build.ps1
> ./build.ps1



### Arguments :

**Where:** Where the hot corner is situated
either topleft, topright, bottomleft, bottomright
default is topleft

**What:** what the hotcorner triggers. It should be one of the following
-    "overview": Shows an overview of all windows and desktop
-    "winbutton": Window menu
-    "showdesktop": Shows desktop
-    "desktopright": Jump to Desktop on the right
-    "desktopleft": Jump to Desktop on the left
-    "closewindow": Close currently focused window (Dangerous !)
-    "showclipboard": Show clipboard history
-    "smallerwindow": unmaximizes, if already unmaximized, minimize it
-    "screenshot": Take a screenshot
-    "capslock": Toggle caps lock
-    "alttab": Hit Alt+Tab once
-    "explorer": Opens Explorer
-    "lock": Locks the session
default is overview


**reactivity:** How aggressively the program checks the corner has been hit. In milliseconds.
default is 400
more means the hot corner sometimes do not trigger/react, less means your CPU needs coffee

**sensitivity:** how huge in pixels the hot corner area is
default is 30
more can be disruptive, less you will need to hit the corner more frankly/accurately