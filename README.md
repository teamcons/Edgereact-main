# Hotcorner

Have a hot corner on windows.
This comes with no tray icon or configuration of any sort. Just summon it in a powershell window, with whatever you want
I have a small assistant script which has tray icon, but i wanted to do basic here

Usage: .\hotcorner.ps1 what where reactivity sensitivity

### Arguments :

Where: Where the hot corner is situated
either topleft, topright, bottomleft, bottomright
default is topleft

What: what the hotcorner triggers. It should be one of the following
    "overview": Shows an overview of all windows and desktop
    "winbutton": Window menu
    "showdesktop": Shows desktop
    "desktopright": Jump to Desktop on the right
    "desktopleft": Jump to Desktop on the left
    "closewindow": Close currently focused window
    "showclipboard": Show clipboard history
    "smallerwindow": unmaximizes, if already unmaximized, minimize it
    "screenshot": Take a screenshot
    "capslock": Toggle caps lock
    "alttab": Hit Alt+Tab once
default is overview


reactivity: How aggressively the program checks the corner has been hit. In milliseconds.
default is 400

sensitivity: how huge in pixels the hot corner area is
default is 30
