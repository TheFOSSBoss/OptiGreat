@echo off
title OptiGreat 11 - https://github.com/02KT
color 0C

:menu
cls
echo        MAIN MENU
echo ------------------------------------------------
echo        OptiGreat 11 - Build 071021
echo ------------------------------------------------
echo.
echo 1. - OptiGreat Optimization (Recommended)
echo.
echo 2. - All Features
echo 3. - Download programs
echo 4. - Clean Temporary Files
echo 5. - Check your PC specification
echo.
echo 8. - Exit OptiGreat 11
echo.

set /p cho="Choose your option and press Enter: "
if %cho%==1 (goto fullop)
if %cho%==2 (goto extraf)
if %cho%==3 (goto dl1)
if %cho%==4 (goto files)
if %cho%==5 (goto pcabout)
if %cho%==8 (goto exit)

    :pcabout
    cls
    echo        PC SPECIFICATION
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Your PC name:
    hostname
    echo.
    echo Your CPU is:
    wmic cpu get name
    echo Your GPU is:
    wmic path win32_VideoController get name
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==8 (goto menu)

:extraf
cls
echo        ALL FEATURES
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo Press 1 to enable Ultimate Performance power plan. 
echo Press 2 to enable Compact OS (OS compression).
echo Press 3 to uninstall Cortana.
echo Press 4 to uninstall Edge.
echo Press 5 for Full Software Update.
echo.
echo Press 8 to go to the main menu.
echo.

set /p cho="Option: "
if %cho%==1 (
    start cmd /C powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
    start powercfg.cpl
    goto extraf)
if %cho%==2 (
    start cmd /K compact /compactOS:Always
    goto extraf)
if %cho%==3 (
    start PowerShell /C Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
    goto extraf)
if %cho%==4 (goto extrafedge)
if %cho%==5 (goto extrafupdate)
if %cho%==8 (goto menu)
    

    :extrafedge
    cls
    echo EXTRA WINDOWS FEATURES - Uninstalling Edge
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Open CMD and enter these commands:
    echo.
    echo cd C:\Program Files (x86)\Microsoft\Edge\Application
    echo.
    echo Then cd to \Edge\Application\94.0.992.38\Installer folder
    echo (your version number may vary so keep that in mind)
    echo.
    echo setup.exe --uninstall --system-level --verbose-logging --force-uninstall
    echo.
    echo Congratulations! You've just uninstalled Edge.
    echo.
    echo Press 1 to open CMD.
    echo.
    echo Press 4 to get to the previous page (Extra).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start cmd
        goto extrafedge)
    if %cho%==4 (goto extraf)
    if %cho%==8 (goto menu)

    :extrafupdate
    cls
    echo EXTRA WINDOWS FEATURES - Full Software Update
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Performing a Full Software Update consits of:
    echo 1) Updating the OS - Windows Update
    echo 2) Updating all apps - Microsoft Store and
    echo    PatchMyPC
    echo 3) Updating your drivers - Windows Update 
    echo    and (if you have an NVIDIA GPU) NVCleanstall
    echo.
    echo Press 1 to open Windows Update, Microsoft Store
    echo         and download PatchMyPC.
    echo Press 11 to download NVCleanstall (NVIDIA GPU).
    echo.
    echo Press 4 to get to the previous page (Extra).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:windowsupdate
        start ms-windows-store:
        echo Downloading PatchMyPC...
        pause
        start https://patchmypc.com/freeupdater/PatchMyPC.exe
        goto extrafupdate)
    if %cho%==11 (
        start https://www.techpowerup.com/download/techpowerup-nvcleanstall/
        goto extrafupdate)
    if %cho%==4 (goto extraf)
    if %cho%==8 (goto menu)


:dl1
cls
echo        DOWNLOADING UTILITIES
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo Here you can download a few utilities
echo and alternatives to Windows' built-in programs.
echo.
echo Utilities: 
echo - Defender Control
echo - ShutUp10
echo - Windows10Debloater
echo - Bulk Crap Uninstaller
echo - PatchMyPC
echo - WPD
echo.
echo Press 1 to download Utilities.
echo.
echo Press 3 to go to next page.
echo. 
echo Press 8 to go to the main menu.
echo.

set /p cho="Option: "
if %cho%==1 (goto dl-uti)
if %cho%==3 (goto dl2)
if %cho%==8 (goto menu)

    :dl-uti
    cls
    echo DOWNLOADING UTILITIES...
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Downloading DControl, ShutUp10, 
    echo Windows10Debloater, Bulk Crap Uninstaller, 
    echo and PatchMyPC...
    echo.
    start https://www.sordum.org/9480/defender-control-v2-0/
    start https://www.oo-software.com/en/shutup10
    pause
    start https://github.com/Sycnex/Windows10Debloater
    start https://www.fosshub.com/Bulk-Crap-Uninstaller.html
    pause
    start https://patchmypc.com/freeupdater/PatchMyPC.exe
    start https://wpd.app/get/latest.zip
    start 
    pause
    goto dl1

:dl2
cls
echo        DOWNLOADING PROGRAMS
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo Here you can download a few utilities
echo and alternatives to Windows' built-in programs.
echo.
echo Programs: 
echo - IrfanView64
echo - LibreOffice
echo - 7-Zip
echo - VLC
echo.
echo Press 1 to download Programs.
echo.
echo Press 4 to go to previous page.
echo. 
echo Press 8 to go to the main menu.
echo.

set /p cho="Option: "
if %cho%==1 (goto dl-prg)
if %cho%==4 (goto dl1)
if %cho%==8 (goto menu)

   :dl-prg
    cls
    echo DOWNLOADING PROGRAMS...
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Downloading IrfanView64, LibreOffice, 7-Zip
    echo and VLC...
    echo.
    start https://www.microsoft.com/en-us/p/irfanview64/9pjz3btl5pv6#activetab=pivot:overviewtab
    start https://www.libreoffice.org/download/download/
    pause
    start https://www.7-zip.org/download.html
    start https://www.videolan.org/vlc/
    pause
    goto dl2

:files
cls
echo        TEMPORARY FILES CLEAN-UP
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo Deleting temporary files can save a lot of disk
echo space if you hadn't done it in a while.
echo.
echo Press 1 to Delete your temporary files.
echo Press 11 to open Recycle Bin.
echo.
echo Press 8 to go to the main menu.
echo.

set /p cho="Option: "
if %cho%==1 (goto cleantemp)
if %cho%==11 (
    start shell:RecycleBinFolder
    goto files
    )
if %cho%==8 (goto menu)

    :cleantemp
    cls
    echo CLEANING TEMPORARY FILES...
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Cleaning directories: 
    echo C:\Windows\Temp\*.*
    echo C:\Users\User\AppData\Local\Temp\*.*...
    echo.
    del /F /Q /A "C:\Windows\Temp\*.*"
    del /F /Q /A "C:\Users\User\AppData\Local\Temp\*.*" 
    pause
    start C:\Windows\System32\cleanmgr.exe
    cls
    echo CLEANING TEMPORARY FILES...
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now Disk Cleanup will open. 
    echo.
    echo Press 'OK', 
    echo then 'Clean up system files' and again 'OK'.
    echo.
    echo Be sure to tick every box and click 'OK'.
    echo.
    pause
    goto files

    :reboot
    cls
    echo REBOOTING...
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Rebooting your system...
    shutdown /r /t 10 /c "You can continue OptiGreating your system after the reboot! :)"
    timeout -t 100 /nobreak -NUL
    goto fullop

:fullop
cls
echo        OPTIGREAT OPTIMIZATION
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo OptiGreat Optimalization is a series of tasks
echo that will maximize the performance of your
echo computer. It will save you a lot of disk space,
echo battery and processing power, wihtout sacrificing
echo compability or stability of your system.
echo.
echo Of course it's not obligatory to do every step
echo (e.g. rebooting or downloading programs),
echo but I'd recommend it for getting the best results.
echo.
echo Press 1 to Proceed.
echo Press 2 for help.
echo.
echo Press 8 to go to the main menu.
echo.

set /p cho="Option: "
if %cho%==1 (goto fullop1)
if %cho%==2 (goto fullophelp)
if %cho%==8 (goto menu)
if %cho%==op1 (goto fullop1)
if %cho%==op2 (goto fullop2)
if %cho%==op3 (goto fullop3)
if %cho%==op4 (goto fullop4)
if %cho%==op5 (goto fullop5)
if %cho%==op6 (goto fullop6)
if %cho%==op7 (goto fullop7)
if %cho%==op8 (goto fullop8)
if %cho%==op9 (goto fullop9)
if %cho%==op10 (goto fullop10)
if %cho%==op11 (goto fullop11)
if %cho%==op12 (goto fullop12)
if %cho%==op13 (goto fullop13)
if %cho%==op14 (goto fullop14)
if %cho%==op15 (goto fullop15)
if %cho%==op16 (goto fullop16)
if %cho%==op17 (goto fullop17)
if %cho%==op18 (goto fullop18)
if %cho%==op19 (goto fullop19)
if %cho%==op20 (goto fullop20)

    :fullophelp
    cls
    echo OPTIGREAT OPTIMIZATION - (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (1)
    echo.
    echo You can access any of the OG Optimization pages 
    echo by writing "opXX" at OptiGreat Optimization 
    echo main page. The X is the specific page number -
    echo - you can see it on next pages of Help.
    echo e.g.
    echo Write op1 to go to 1) Updating everything, 
    echo Write op13 to get to 13) Gaming settings.
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==3 (goto fullophelp2)
    if %cho%==4 (goto fullop)
    if %cho%==8 (goto menu)

    :fullophelp2
    cls
    echo OPTIGREAT OPTIMIZATION - (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (2)
    echo.
    echo OptiGreat Optimalization process:
    echo.
    echo 1) Updating everything
    echo 2) Uninstalling optional features
    echo 3) Turning off User Account Control
    echo 4) 1st Reboot
    echo 5) Changing your default disk drive (Optional)
    echo 6) Downloading necessary programs
    echo 7) Uninstalling (ft. BCUninstaller)
    echo 8) ShutUp10 and Windows10Debloater - improving
    echo    privacy and speed
    echo 9) Disabling telemetry
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==3 (goto fullophelp3)
    if %cho%==4 (goto fullophelp)
    if %cho%==8 (goto menu)

    :fullophelp3
    cls
    echo OPTIGREAT OPTIMIZATION (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (3)
    echo.
    echo OptiGreat Optimalization process:
    echo.
    echo 10) "Advanced System Configuration"
    echo 11) Configuring Windows' settings
    echo 12) Changing Folder options for security
    echo     and privacy
    echo 13) Gaming settings 
    echo 14) 2nd Reboot
    echo 15) Microsoft Store - settings and updates
    echo 16) Windows Security - disabling Defender
    echo 17) Compressing (OS and/or drives)
    echo 18) Installing all programs
    echo 19) Improving startup time
    echo 20) Final reboot :)
    echo.
    echo Press 4 to go to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullophelp2)
    if %cho%==8 (goto menu)

    :fullop1
    cls
    echo 1. OPTIGREAT OPTIMIZATION - Updates
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo First, make sure everything is up-to-date. This
    echo ensures the highest possible peformance and
    echo makes your device more secure.
    echo.
    echo Also, check if any optional updates are available.
    echo If they are - install all of them.
    echo.
    echo Press 1 to open Windows Update.
    echo.
    echo Press 3 to go next (Features).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:windowsupdate
        goto fullop1
	)
    if %cho%==3 (goto fullop2)
    if %cho%==8 (goto menu)

    :fullop2
    cls
    echo 2. OPTIGREAT OPTIMIZATION - Features
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Uninstalling optional features saves you a lot
    echo of disk space and makes your OS faster.
    echo.
    echo Press 1 to open Optional features pages.
    echo Press 2 for help.
    echo.
    echo Press 3 to go next (User Account Control).
    echo Press 4 to get to the previous page (Updates).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start optionalfeatures
        start ms-settings:optionalfeatures
        goto fullop2
    )
    if %cho%==2 (goto fullop2help)
    if %cho%==3 (goto fullop3)
    if %cho%==4 (goto fullop1)
    if %cho%==8 (goto menu)

    :fullop2help
    cls
    echo 2. OPTIGREAT OPTIMIZATION - Features (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Optional features are features that you probably
    echo never heard about/never used, so it's 100% safe
    echo to uninstall them. Also, if you ever need to 
    echo use them, they can be reinstalled just as easy.
    echo.
    echo Features (Settings) to uninstall: Facial
    echo Recognition, Internet Explorer, Math Recognizer,
    echo Quick Assist, OpenSSH, Print Management,
    echo Steps Recorder, Windows Media Player, 
    echo PowerShell ISE, WordPad.
    echo.
    echo Features (legacy) to uninstall: Legacy Components,
    echo Media Features, Print to PDF, XPS, Print and
    echo Document Services, Remote Differential
    echo Compression API Support, SMB Direct, 
    echo PowerShell 2.0, Windows Sandbox, Windows 
    echo Subsystem for Linux, Work Folders Client.
    echo.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop2)
    if %cho%==8 (goto menu)

    :fullop3
    cls
    echo 3. OPTIGREAT OPTIMIZATION - UAC
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------ 
    echo.
    echo Turning off User Account Control saves you 
    echo a lot of time and thereby increases app loading
    echo speeds.
    echo.
    echo Press 1 to open UAC settings.
    echo.
    echo Press 3 to go next (1st Reboot).
    echo Press 4 to get to the previous page (Features).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start useraccountcontrolsettings
        goto fullop3 )
    if %cho%==3 (goto fullop4)
    if %cho%==4 (goto fullop2)
    if %cho%==8 (goto menu)

    :fullop4
    cls
    echo 4. OPTIGREAT OPTIMIZATION - 1st Reboot
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo        !WARNING!
    echo Make sure to save all your work, close all 
    echo opened programs to not lose any data.
    echo.
    echo Now it's time to reboot to avoid any data
    echo corruption and to make sure everything got 
    echo uninstalled properly. 
    echo.
    echo Press 1 to Reboot.
    echo.
    echo Press 3 to go next (Default Drive).
    echo Press 4 to get to the previous page (UAC).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto reboot)
    if %cho%==3 (goto fullop5)
    if %cho%==4 (goto fullop3)
    if %cho%==8 (goto menu)

    :fullop5
    cls
    echo 5. OPTIGREAT OPTIMIZATION - Default Drive (Optional)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo This PC
    echo.
    echo Right-click every folder from the Library
    echo (Pictures, Music, Documents, Downloads etc.)
    echo and click Properties, then Location.
    echo Change the letter of the drive.
    echo.
    echo Settings
    echo.
    echo Go to Advanced storage settings, then open
    echo Where new content is saved. Change the drive.
    echo.
    echo Press 1 to open This PC and Settings.
    echo.
    echo Press 3 to go next (Programs).
    echo Press 4 to get to the previous page (1st Reboot).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:storagesense
        start explorer file:\\
        goto fullop5)
    if %cho%==3 (goto fullop6)
    if %cho%==4 (goto fullop4)
    if %cho%==8 (goto menu)

    :fullop6
    cls
    echo 6. OPTIGREAT OPTIMIZATION - Programs
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now we have to download additional utilities
    echo to replace default Windows programs and
    echo help us with the optimalization process.
    echo.
    echo - 7-Zip - to handle .zip, .rar etc.
    echo - VLC - to replace default media programs
    echo - BCUninstaller - to fully uninstall all 
    echo   programs
    echo - LibreOffice - an Office alternative
    echo - Windows10Debloater - to de-bloat the system
    echo - ShutUp10 - maximize privacy and lower
    echo   CPU usage
    echo - DControl - fully disabling Windows Defender
    echo - IrfanView64 - fastest photo viewer on Windows
    echo - PatchMyPC - to update all installed programs
    echo - NVCleanstall - for updating GPU drivers (NVIDIA ONLY)
    echo - WPD - turning off all telemetry, speeding up
    echo.
    echo DO NOT install these! We will do it later.
    echo.
    echo Press 1 to Proceed with downloading.
    echo.
    echo Press 3 to go next (BCUninstaller).
    echo Press 4 to get to the previous page (Drives).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        echo Downloading...
        echo.
        start https://www.sordum.org/9480/defender-control-v1-9/
        start https://www.oo-software.com/en/shutup10
        pause
        start https://github.com/Sycnex/Windows10Debloater
        start https://www.fosshub.com/Bulk-Crap-Uninstaller.html
        pause
        start https://www.microsoft.com/en-us/p/irfanview64/9pjz3btl5pv6#activetab=pivot:overviewtab
        start https://www.libreoffice.org/download/download/
        pause
        start https://www.7-zip.org/download.html
        start https://www.videolan.org/vlc/
        pause
        start https://patchmypc.com/freeupdater/PatchMyPC.exe
        start https://wpd.app/get/latest.zip
        pause
        start https://www.techpowerup.com/download/techpowerup-nvcleanstall/
        goto fullop6
        )
    if %cho%==3 (goto fullop7)
    if %cho%==4 (goto fullop5)
    if %cho%==8 (goto menu)

    :fullop7
    cls
    echo 7. OPTIGREAT OPTIMIZATION - Uninstalling
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo You should have 11 files in your Downloads folder.
    echo Install ONLY BCUninstaller and open it.
    echo Use it to uninstall all useless apps.
    echo.
    echo Use the functions below to uninstall the 
    echo remaining apps.
    echo.
    echo Press 1 to uninstall Cortana.
    echo Press 11 to uninstall Edge
    echo Press 2 for help.
    echo.
    echo Press 3 to go next (Privacy).
    echo Press 4 to get to the previous page (Programs).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto fullop7cortana)
    if %cho%==11 (goto fullop7edge)
    if %cho%==2 (goto fullop7help)
    if %cho%==3 (goto fullop8)
    if %cho%==4 (goto fullop6)
    if %cho%==8 (goto menu)

    :fullop7cortana
    cls
    echo 7. OG OPTIMIZATION - Uninstalling (Cortana)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Uninstalling Cortana...
    echo.
    powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
    cls
    echo 7. OG OPTIMIZATION - Uninstalling (Cortana)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Cortana successfully uninstalled!
    echo.
    echo Press 4 to get to the previous page (Uninstall).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "

    if %cho%==4 (goto fullop7)
    if %cho%==8 (goto menu)

    :fullop7help
    cls
    echo 7. OG OPTIMIZATION - Uninstalling (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Programs to uninstall: 
    echo - Feedback Hub, Get Help, Groove Music, HEIF,
    echo - Mail, Edge Update, News, OneDrive, People,
    echo - Photos, Solitaire, Sticky Notes, Tips, To Do,
    echo - Camera, Movies and TV, Weather, Office, Power
    echo - Automate, VP9, Web Media Extensions, Webp
    echo - Image Extensions, Alarms and Clock, Maps,
    echo - Voice Recorder, Web Experience Pack, Xbox,
    echo - Game Bar, Game Bar Plugin, Speech Window,
    echo - Identity Provider, TCUI, Your Phone
    echo.
    echo Press 4 to go to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop7)
    if %cho%==8 (goto menu)


    :fullop8
    cls
    echo 8. OPTIGREAT OPTIMIZATION - Privacy
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Open PowerShell and paste this command:
    echo.
    echo Set-ExecutionPolicy Unrestricted -Force
    echo.
    echo Then open Windows10DebloaterGUI.ps1. (via PowerShell)
    echo.
    echo Click: Remove All Bloatware, Cortana Disable,
    echo Edge PDF Disable, Disable Telemetry / Tasks,
    echo Remove Bloatware Regkeys.
    echo.
    echo Then close Windows10Debloater, open OOShutUp10
    echo and change the settings at choice (All
    echo recommended are probably good to be enabled).
    echo.
    echo Press 1 to start PowerShell.
    echo.
    echo Press 3 to go next (Telemetry).
    echo Press 4 to get to the previous page (Uninstall).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start PowerShell
        goto fullop8)
    if %cho%==3 (goto fullop9)
    if %cho%==4 (goto fullop7)
    if %cho%==8 (goto menu)



    :fullop9
    cls
    echo 9. OPTIGREAT OPTIMIZATION - Telemetry
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Start WPD.exe.
    echo.
    echo ???
    echo. 
    echo Open Task Scheduler and disable every event
    echo in given places:
    echo Microsoft / Windows / Application Experience
    echo.
    echo Press 1 to open Task Scheduler.
    echo.
    echo Press 3 to go next (Advanced).
    echo Press 4 to get to the previous page (Privacy).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start taskschd.msc
        goto fullop9)
    if %cho%==3 (goto fullop10)
    if %cho%==4 (goto fullop8)
    if %cho%==8 (goto menu)


    :fullop10
    cls
    echo 10. OPTIGREAT OPTIMIZATION - Advanced
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Press 1 to open Advanced System Configuration.
    echo Press 11 if you have 4GB RAM or less.
    echo Press 2 for help. 
    echo.
    echo Press 3 to go next (Config).
    echo Press 4 to get to the previous page (Telemetry).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start SystemPropertiesAdvanced.exe
        goto fullop10)
    if %cho%==11 (goto fullop10slow)
    if %cho%==2 (goto fullop10help)
    if %cho%==3 (goto fullop11)
    if %cho%==4 (goto fullop9)
    if %cho%==8 (goto menu)

    :fullop10help
    cls
    echo 10. OG OPTIMIZATION - Advanced (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo In Advanced tab, open Performance - Settings... 
    echo and disable: Animations in the taskbar, Enable
    echo Peek, Save taskbar thumbnail previews,
    echo Show shadows (both), Show translucent selection.
    echo.
    echo Apply. Then go to Startup and Recovery - Settings... 
    echo and turn off Time to display list of operating
    echo systems.
    echo.
    echo Go to System Protection tab and turn off 
    echo Protection for every drive.
    echo Go to Remote tab and disallow everything.
    echo.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop10)
    if %cho%==8 (goto menu)

    :fullop10slow
    cls
    echo 10. OG OPTIMIZATION - Advanced (Low RAM)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo In Advanced tab, open Performance - Settings... 
    echo and disable: Animate windows when minimazing
    echo and maximizng, Slide open combo boxes, Use drop
    echo shadows for icon labels.
    echo.
    echo Then go to Advanced tab. 
    echo Click on Virtual memory - Change..
    echo Disable Automatically manage paging file size.
    echo.
    echo ONLY on C: drive set a custom size:
    echo Initial size (MB): 8192
    echo Maximum size (MB): 8192
    echo.
    echo Click Set and reboot.
    echo.
    echo Press 4 to go to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop10)
    if %cho%==8 (goto menu)


    :fullop11
    cls
    echo 11. OPTIGREAT OPTIMIZATION - Configuration
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Configuration is a crucial part of optimizing
    echo your system.
    echo.
    echo Press 1 to open Settings.
    echo Press 2 for help. 
    echo.
    echo Press 3 to go next (Folders).
    echo Press 4 to get to the previous page (Advanced).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:
        goto fullop11)
    if %cho%==2 (goto fullop11help)
    if %cho%==3 (goto fullop12)
    if %cho%==4 (goto fullop10)
    if %cho%==8 (goto menu)

    :fullop11help
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (1) - System
    echo.
    echo Display / Advanced Display - Select highest 
    echo refresh rate.
    echo.
    echo Display / Graphics / Default Graphics settings -
    echo  - Enable all options.
    echo.
    echo Notifications - Notifications - Click on the arrow
    echo and disable all lock screen options.
    echo.
    echo Notifications - Disable all options on the bottom
    echo of the page.
    echo.
    echo Focus assist - Turn off all
    echo automatic rules and Focus assist itself.
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:display
        goto fullop11help
    )
    if %cho%==3 (goto fullop11help2)
    if %cho%==4 (goto fullop11)
    if %cho%==8 (goto menu)

    :fullop11help2 
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (2) - System / Bluetooth and devices
    echo.
    echo Multitasking - Alt+Tab shows Open windows only.
    echo.
    echo Remote Desktop - Turn off.
    echo.
    echo Clipboard - Turn off Clipboard history.
    echo.
    echo.
    echo BLUETOOTH AND DEVICES TAB 
    echo -------------------------------
    echo AutoPlay - Disable.
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:multitasking
    goto fullop11help2
        )
    if %cho%==3 (goto fullop11help3)
    if %cho%==4 (goto fullop11help)
    if %cho%==8 (goto menu)

    :fullop11help3
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (3) - Network / Personalization
    echo.
    echo Proxy - Disable Automatically detect settings.
    echo.
    echo.
    echo PERSONALIZATION TAB
    echo -------------------------------
    echo Lock screen / Personalize your lock screen
    echo - Set to Picture and disable Get fun facts.
    echo.
    echo Start - Disable all options.
    echo.
    echo Taskbar - Disable all taskbar items and corner
    echo           icons.
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:network-proxy
    goto fullop11help3
        )
    if %cho%==3 (goto fullop11help4)
    if %cho%==4 (goto fullop11help2)
    if %cho%==8 (goto menu)

    :fullop11help4
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (4) - Accessibility
    echo.
    echo Narrator - Disable it and it's keyboard shortcut.
    echo.
    echo Keyboard - Enable Use the Print screen button
    echo to open screen snipping. (optional)
    echo.
    echo.
    echo PRIVACY AND SECURITY 
    echo -------------------------------
    echo App permissions - Turn off access to Camera
    echo and Microphone for Microsoft Store and Edge
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go to next page.
    echo Press 4 to go back to previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:easeofaccess-narrator
    goto fullop11help4
        )
    if %cho%==3 (goto fullop11help5)
    if %cho%==4 (goto fullop11help3)
    if %cho%==8 (goto menu)

    :fullop11help5
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (5) - Ethernet
    echo.
    echo Right-click your Ethernet connection and press
    echo Properties. Now click Configure... and go to
    echo Power Management tab. Untick Allow the computer
    echo to turn off this device.
    echo. 
    echo Go to Advanced tab and:
    echo DISABLE
    echo Advanced EEE, Auto Disable Gigabit,
    echo Energy-Efficient Ethernet, Flow Control, Gigabit
    echo Lite, Green Ethernet, Interrupt Moderation,
    echo Jumbo Frame, Power Saving Mode, Priority and VLAN,
    echo Receive Side Scaling and all properties with 
    echo Offload in name.
    echo CHANGE 
    echo Speed and Duplex - 1.0 Gbps Full Duplex,
    echo WOL and Shutdown Link Speed - Not Speed Down.
    echo.
    echo Press 1 to open Network Connections again.
    echo.
    echo Press 4 to go back to previous page.
    echo Press 44 to go back to Configuration page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start Ncpa.cpl 
        goto fullop11help5
    )
    if %cho%==4 (goto fullop11help4)
    if %cho%==44 (goto fullop11)
    if %cho%==8 (goto menu)


    :fullop12
    cls
    echo 12. OPTIGREAT OPTIMIZATION - Folders
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now we're gonna change Folder options to 
    echo increase privacy, speed and security.
    echo.
    echo Open Folder options and change Quick access to
    echo This PC.
    echo.
    echo In Privacy, turn off both options and click Clear.
    echo.
    echo Go to View tab, tick Show hidden files.
    echo Untick: Hide extensions for known files types,
    echo Show sync provider, Use Sharing Wizard and
    echo Show Network. (if you don't use it)
    echo.
    echo Press 1 to open Folder options.
    echo.
    echo Press 3 to go next (Gaming).
    echo Press 4 to get to the previous page (Config).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start control.exe folders
        goto fullop12)
    if %cho%==3 (goto fullop13)
    if %cho%==4 (goto fullop11)

    if %cho%==8 (goto menu)


    :fullop13
    cls
    echo 13. OPTIGREAT OPTIMIZATION - Gaming
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Here you can decrease latency and make sure
    echo you're using 100% of your PC's power.
    echo.
    echo Enable Game Mode (in case it's disabled).
    echo.
    echo Change your power plan to Ultimate Performance.
    echo.
    echo Open Mouse settings, go to Pointer Options tab
    echo and disable Enhance pointer precision. Apply.
    echo.
    echo Press 1 to enable Ultimate Performance power
    echo plan, open Power Options and Gaming Settings.
    echo.
    echo Press 3 to go next (2nd Reboot).
    echo Press 4 to get to the previous page (Config).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:gaming-gamemode
        start cmd /C powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
        start powercfg.cpl
        goto fullop13)
    if %cho%==3 (goto fullop14)
    if %cho%==4 (goto fullop12)
    if %cho%==8 (goto menu)

    :fullop14
    cls
    echo 14. OPTIGREAT OPTIMIZATION - 2nd Reboot
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo        !WARNING!
    echo Make sure to save all your work, close all 
    echo opened programs to not lose any data.
    echo.
    echo Now it's time to reboot again to avoid any data
    echo corruption and to make sure everything got 
    echo uninstalled properly. 
    echo.
    echo Press 1 to Reboot.
    echo.
    echo Press 3 to go next (Microsoft Store).
    echo Press 4 to get to the previous page (Gaming).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto reboot)
    if %cho%==3 (goto fullop15)
    if %cho%==4 (goto fullop13)
    if %cho%==8 (goto menu)

    :fullop15
    cls
    echo 15. OPTIGREAT OPTIMIZATION - Microsoft Store
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo In Windows 11, you have to log-in to a Microsoft
    echo account or otherwise you won't be able to 
    echo download any apps.
    echo.
    echo When you login, reassure you Login Only in Microsoft Apps.
    echo.
    echo In Microsoft Store's settings, disable Video autoplay.
    echo.
    echo Then, go to your Library and update everything.
    echo.
    echo Press 1 to open Microsoft Store.
    echo.
    echo Press 3 to go next (Windows Security).
    echo Press 4 to get to the previous page (2nd Reboot).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-windows-store:settings
        goto fullop15)
    if %cho%==3 (goto fullop16)
    if %cho%==4 (goto fullop14)
    if %cho%==8 (goto menu)

    :fullop16
    cls
    echo 16. OPTIGREAT OPTIMIZATION - Windows Security
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now we're gonna improve your PC's security by
    echo enabling Memory integrity and give it a massive
    echo speed boost by disabling Windows Defender.
    echo.
    echo Press 1 to open Windows Security.
    echo Press 2 for help.
    echo.
    echo Press 3 to go next (Compressing).
    echo Press 4 to get to the previous page (Store).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start windowsdefender:
        goto fullop16
    )
    if %cho%==2 (goto fullop16help)
    if %cho%==3 (goto fullop17)
    if %cho%==4 (goto fullop15)
    if %cho%==8 (goto menu)

    :fullop16help
    cls
    echo 16. OG OPTIMIZATION - Windows Security (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (1) - Setting up Windows Security
    echo.
    echo --- MEMORY INTEGRITY ---
    echo Go to Device security / Core isolation
    echo and enable Memory integrity. (Note that VMs
    echo might not work if you do it!)
    echo.
    echo --- DISABLING DEFENDER ---
    echo Disable every setting in:
    echo Virus and threat protection / Manage settings, 
    echo App and browser control / Reputation-based.
    echo.
    echo Go to Settings / Manage notifications and 
    echo disable Virus notifications.
    echo.
    echo Press 3 to go next page.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start windowsdefender:
        goto fullop16
    )
    if %cho%==3 (goto fullop16help2)
    if %cho%==4 (goto fullop16)
    if %cho%==8 (goto menu)

    :fullop16help2
    cls
    echo 16. OG OPTIMIZATION - Windows Security (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (2) - DefenderControl
    echo.
    echo Open DefenderControl and Disable Windows Defender.
    echo Then click Menu... / Add to Exclusions.
    echo.
    echo Move the Autostart file to 
    echo C:\Program Files (x86)\DefenderControl
    echo.
    echo Then create a shortcut of the Autostart file
    echo and move it to the Startup folder.
    echo.
    echo Press 1 to create an Autostart file.
    echo Press 11 to open Startup folder.
    echo.
    echo Press 4 to get to the previous page.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        echo dControl.exe /D > dControl-Autostart.bat
        goto fullop16help2
    )
    if %cho%==11 (
        start shell:startup
        goto fullop16help2
    )
    if %cho%==4 (goto fullop16help)
    if %cho%==8 (goto menu)


    :fullop17
    cls
    echo 17. OPTIGREAT OPTIMIZATION - Compressing
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Compact OS speeds up startup time and makes
    echo Windows run faster (on HDDs the difference
    echo can be HUGE).
    echo.
    echo If you have a really slow HDD, compressing the
    echo whole drive will make it faster, but it will
    echo take some time to do (4-30 hours).
    echo.
    echo The best technique on a slow HDD is to enable
    echo both options. 
    echo.
    echo Press 1 to enable Compact OS.
    echo Press 11 to open This PC.
    echo Press 2 for help.
    echo.
    echo Press 3 to go next (Installation).
    echo Press 4 to get to the previous page (Security).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start cmd /K compact /compactOS:Always
        goto fullop17
    )
    if %cho%==11 (
        start explorer file:  
        goto fullop17
    )
    if %cho%==2 (goto fullop17help)
    if %cho%==3 (goto fullop18)
    if %cho%==4 (goto fullop16)
    if %cho%==8 (goto menu)

    :fullop17help
    cls
    echo 17. OG OPTIMIZATION - Compressing (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo To compress the whole drive, right-click it 
    echo and click Properties, then tick Compress this
    echo drive.
    echo Click Apply and OK.
    echo.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop17)
    if %cho%==8 (goto menu)

    :fullop18
    cls
    echo 18. OPTIGREAT OPTIMIZATION - Installation
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now you can install all downloaded programs.
    echo.
    echo Deleting setups of already installed programs
    echo is a great habit to develop.
    echo.
    echo Press 1 to open Downloads.
    echo.
    echo Press 3 to go next (Startup).
    echo Press 4 to get to the previous page (Compressing).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start shell:downloads
        goto fullop18
    )
    if %cho%==3 (goto fullop19)
    if %cho%==4 (goto fullop17)
    if %cho%==8 (goto menu)

    :fullop19
    cls
    echo 19. OPTIGREAT OPTIMIZATION - Startup
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo To reduce startup time, disable all unnecessary 
    echo programs (Teams, Steam, Office etc.) in Task
    echo Manager.
    echo.
    echo Open System Configuration, go to Boot tab,
    echo Advanced options..., tick Number of processors
    echo and select the highest number, click OK,
    echo Apply and OK.
    echo.
    echo Press 1 to open Task Manager's Startup.
    echo Press 11 to open System Configuration.
    echo.
    echo Press 3 to go next (Final).
    echo Press 4 to get to the previous page (Installation).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start C:\Windows\System32\taskmgr.exe /7 /startup
        goto fullop19
    )
    if %cho%==11 (
        start msconfig
        goto fullop19
    )
    if %cho%==3 (goto fullop20)
    if %cho%==4 (goto fullop18)
    if %cho%==8 (goto menu)

    :fullop20
    cls
    echo 20. OPTIGREAT OPTIMIZATION - Final Step :)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo It's time to do the last reboot.
    echo.
    echo Congratulations! You've just OptiGreated your
    echo PC - made it stronger, faster, better, stronger. :)
    echo.
    echo Time to do the last reboot and enjoy your
    echo brand-new PC!
    echo.
    echo Press 1 to do the last reboot!
    echo.
    echo Press 4 to get to the previous page (Startup).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto reboot)
    if %cho%==4 (goto fullop18)
    if %cho%==8 (goto menu)