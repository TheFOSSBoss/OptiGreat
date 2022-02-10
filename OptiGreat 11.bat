@echo off
title OptiGreat 11 - https://github.com/02KT

:pcspecs
cls
color 0E
echo =============================================
echo Your PC name:
hostname
echo.
echo Your CPU is:
wmic cpu get name
echo Your GPU is:
wmic path win32_VideoController get name
echo ==============================================
echo.
pause
net session >nul 2>&1
if %errorLevel% == 0 (
    goto menu
) else (
    goto admincheck
)

:admincheck
title OptiGreat 11 (WITHOUT ADMIN PRIVILEGES) - !!! USE IT AT YOUR OWN RISK !!! 
color 0C
cls
echo        ADMINISTRATOR RIGHTS
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo.
echo OptiGreat cannot work properly without Admin
echo rights. I don't take responsibility for what
echo it does in a regular User mode.
echo.
echo        !!! USE IT AT YOUR OWN RISK !!!
echo.
echo Close this window and open OptiGreat as an 
echo administrator.
echo ---
echo Press 0 to start OptiGreat without Admin rights. 
echo [NOT RECOMMENDED] [NOT RECOMMENDED] [NOT RECOMMENDED]
echo.
echo Press 8 to close this window.
echo.

set /p cho="Choose your option and press Enter: "
if %cho%==0 (goto menu)
if %cho%==8 (exit)

:menu
title OptiGreat 11 - https://github.com/02KT --- Build 090222 (Final)
color 0E
cls
echo        OPTIGREAT OPTIMIZATION PROCESS
echo ------------------------------------------------
echo        OptiGreat 11
echo ------------------------------------------------
echo FIRST TIME USING OPTIGREAT? TYPE 'help'!
echo.
echo 1) Updating everything              2) Uninstalling optional features
echo 3) Turning off User Account Control 4) 1st Reboot
echo 5) Changing the default drive (Opt) 6) Downloading necessary programs
echo 7) Uninstalling ft. BCUninstaller   8) Improving privacy and speed
echo 9) Disabling telemetry              10) "Advanced System Configuration"
echo 11) Configuring Windows' settings   12) Folder options
echo 13) Gaming settings                 14) 2nd Reboot
echo 15) Configuring Microsoft Store     16) Windows Security, disabling Defender
echo 17) Compressing (HDD)               18) Installing all programs
echo 19) Improving startup time          20) Final reboot
echo ---
echo Press 1 to Proceed.
echo.
echo Press 2 to Check Your PC Specification.
echo.
echo Press 3 for GitHub Releases.
echo.

    set /p cho="Choose your option and press Enter: "
    if %cho%==1 (goto fullop1)
    if %cho%==2 (goto pcspecs)
    if %cho%==3 (goto releases)
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
    if %cho%==help (goto help)

    :help
    cls
    echo        OPTIGREAT - Help Page
    echo ------------------------------------------------   
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo OptiGreat Optimization is a series of tasks
    echo that will maximize the performance of your
    echo computer. It will save you a lot of disk space,
    echo battery and processing power, without sacrificing
    echo compability or stability of your system.
    echo.
    echo To get the best results from OptiGreat, be sure
    echo to do every step and use all options.
    echo.
    echo Check your disk type (HDD or SSD) and GPU
    echo model (NVIDIA or any other). You'll need that
    echo info for some functions to work properly on
    echo your system.
    echo.
    echo ---
    echo Press 4 to go back.
    echo.

    set /p cho="Choose your option and press Enter: "
    if %cho%==4 (goto menu)

    :reboot
    cls
    echo        OPTIGREAT - Reboot
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo        [91m!WARNING![0m
    echo.
    echo Make sure to save your work and close all apps.
    echo.
    echo Rebooting without closing opened programs
    echo could result in data loss!
    echo.
    pause
    echo Rebooting...
    echo.
    timeout /t 1 /nobreak > nul
    cls
    echo        OPTIGREAT - Reboot
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Rebooting...
    echo.
    shutdown /r /f /t 10 /c "After the reboot, continue your OptiGreat Optimization! :)"
    timeout /t 30 /nobreak > nul

    :releases
    cls
    echo        OPTIGREAT - Releases
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo It's important to keep your OS and programs
    echo up to date. That counts for OptiGreat as well!
    echo.
    echo Always use the latest version for the best 
    echo results and best user experience.
    echo ---
    echo Opening OptiGreat's Releases page...
    echo.
    timeout /t 10
    start https://github.com/02KT/OptiGreat/releases
    goto menu

    :fullop1
    cls
    echo 1. OPTIGREAT OPTIMIZATION - Updates
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo First, make sure your OS and apps are up-to-date. 
    echo This ensures the highest possible peformance and
    echo makes your device more secure.
    echo.
    echo Also, check if any optional system updates are 
    echo available. If they are - install all of them.
    echo.
    echo To update all your programs, type this command
    echo in the new window: 
    echo.
    echo winget upgrade --all
    echo ---
    echo Press 1 to open Windows Update and check for app
    echo updates.
    echo.
    echo Press 3 to go next (Features).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:windowsupdate
        start ms-windows-store:updates
        start cmd /k winget upgrade
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
    echo Optional features are features that you probably   
    echo never heard about/never used, so it's 100% safe    
    echo to uninstall them. Also, if you ever need to     
    echo use them, they can be reinstalled just as easy.    
    echo.    
    echo Disabling optional features saves you a bit    
    echo of disk space and makes your OS faster.    
    echo.    
    echo DO NOT REBOOT!!! - Press N every time it asks you    
    echo to do a reboot.    
    echo ---   
    echo Press 1 to Disable Optional Features.    
    echo.    
    echo Press 3 to go next (User Account Control).    
    echo Press 4 to get to previous page (Updates).    
    echo.    
    echo Press 8 to go to the main menu.    
    echo.    

    set /p cho="Option: "    
    if %cho%==1 (
    start cmd /c dism /Online /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:App.Support.QuickAssist~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
    timeout /t 2 /nobreak > nul        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Media.WindowsMediaPlayer~~~~0.0.12.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.Notepad.System~~~~0.0.1.0  
    timeout /t 1 /nobreak > nul      
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0
    timeout /t 1 /nobreak > nul        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Print.Management.Console~~~~0.0.1.0        
    start cmd /c dism /Online /Remove-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0
    timeout /t 1 /nobreak > nul  
    start cmd /c dism /online /Disable-Feature /FeatureName:"Windows-Defender-Default-Definitions"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"Printing-PrintToPDFServices-Features"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"SearchEngine-Client-Package"
    timeout /t 18 /nobreak > nul        
    start cmd /c dism /online /Disable-Feature /FeatureName:"WorkFolders-Client"       
    start cmd /c dism /online /Disable-Feature /FeatureName:"Printing-Foundation-Features"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"Printing-Foundation-InternetPrinting-Client"
    timeout /t 16 /nobreak > nul        
    start cmd /c dism /online /Disable-Feature /FeatureName:"MSRDC-Infrastructure"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"MicrosoftWindowsPowerShellV2Root"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"MicrosoftWindowsPowerShellV2"
    timeout /t 14 /nobreak > nul        
    start cmd /c dism /online /Disable-Feature /FeatureName:"WCF-Services45"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"WCF-TCP-PortSharing45"       
    start cmd /c dism /online /Disable-Feature /FeatureName:"MediaPlayback"
    timeout /t 15 /nobreak > nul        
    start cmd /c dism /online /Disable-Feature /FeatureName:"WindowsMediaPlayer"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"SmbDirect"        
    start cmd /c dism /online /Disable-Feature /FeatureName:"Printing-XPSServices-Features"        
    timeout /t 15 /nobreak > nul
    cls        
    echo 2. OPTIGREAT OPTIMIZATION - Features        
    echo ------------------------------------------------        
    echo        OptiGreat 11        
    echo ------------------------------------------------        
    echo.        
    echo Optional Features disabled!        
    echo.        
    pause        
    goto fullop2    
    )    
    if %cho%==3 (goto fullop3)    
    if %cho%==4 (goto fullop1)    
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
    echo ---
    echo Press 1 to disable User Account Control.
    echo.
    echo Press 3 to go next (1st Reboot).
    echo Press 4 to get to previous page (Features).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
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
    echo --- WARNING ---
    echo Make sure to save all your work, close all 
    echo opened programs to not lose any data.
    echo.
    echo Now it's time to reboot to avoid any data
    echo corruption and to make sure everything got 
    echo uninstalled properly. 
    echo ---
    echo Press 1 to Reboot.
    echo.
    echo Press 3 to go next (Default Drive).
    echo Press 4 to get to previous page (UAC).
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
    echo SKIP THIS STEP IF YOU ONLY HAVE ONE DRIVE.
    echo.
    echo --- This PC ---
    echo Right-click every folder from the Library
    echo (Pictures, Music, Documents, Downloads etc.)
    echo and click Properties, then Location.
    echo Change the letter of the drive.
    echo.
    echo --- Settings ---
    echo Go to Advanced storage settings, then open
    echo Where new content is saved. Change the drive.
    echo ---
    echo Press 1 to open This PC and Settings.
    echo.
    echo Press 3 to go next (Programs).
    echo Press 4 to get to previous page (1st Reboot).
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

@echo off
    :fullop6
    cls
    echo 6. OPTIGREAT OPTIMIZATION - Programs
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now we have to download additional utilities
    echo to replace default Windows programs and
    echo help us with the optimization process.
    echo.
    echo - NanaZip - to handle .zip, .rar etc.
    echo - VLC - to replace default media programs
    echo - BCUninstaller - to uninstall with leftovers
    echo - LibreOffice - an Office alternative
    echo - Windows10Debloater - to debloat the system
    echo - ShutUp10++ - privacy and CPU offload
    echo - DControl - fully disabling Windows Defender
    echo - IrfanView64 - fastest photo viewer on Windows
    echo - NVCleanstall - for updating GPU drivers (NVIDIA ONLY)
    echo - WPD - turning off all telemetry, speeding up
    echo.
    echo DO NOT install these! We will do it later.
    echo ---
    echo Press 1 to Proceed with downloading.
    echo.
    echo Press 3 to go next (BCUninstaller).
    echo Press 4 to get to previous page (Drives).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto fullop6nvidia)
    if %cho%==3 (goto fullop7)
    if %cho%==4 (goto fullop5)
    if %cho%==8 (goto menu)

    :fullop6nvidia
    set "out=C:\Users\%username%"
    >  "%out%\og11temp.bat" echo;@echo off
    >>  "%out%\og11temp.bat" echo;title OptiGreat 11 Temporary Download List v42.070222 - https://github.com/02KT --- 
    >> "%out%\og11temp.bat" echo;color 0F
    >> "%out%\og11temp.bat" echo;echo 6. OG OPTIMIZATION - Programs - Download List
    >> "%out%\og11temp.bat" echo;echo ------------------------------------------------
    >> "%out%\og11temp.bat" echo;echo        OptiGreat 11
    >> "%out%\og11temp.bat" echo;echo ------------------------------------------------
    >> "%out%\og11temp.bat" echo;echo Programs being downloaded:
    >> "%out%\og11temp.bat" echo;echo.
    >> "%out%\og11temp.bat" echo;echo (NVIDIA ONLY) - NVCleanstall - for updating GPU drivers
    >> "%out%\og11temp.bat" echo;echo - NanaZip - to handle .zip, .rar etc.
    >> "%out%\og11temp.bat" echo;echo - BCUninstaller - to uninstall with leftovers
    >> "%out%\og11temp.bat" echo;echo - IrfanView64 - fastest photo viewer on Windows
    >> "%out%\og11temp.bat" echo;echo - VLC - to replace default media programs
    >> "%out%\og11temp.bat" echo;echo - LibreOffice - an Office alternative
    >> "%out%\og11temp.bat" echo;echo - Windows10Debloater - to debloat the system
    >> "%out%\og11temp.bat" echo;echo - ShutUp10++ - privacy and CPU offload
    >> "%out%\og11temp.bat" echo;echo - DControl - fully disabling Windows Defender
    >> "%out%\og11temp.bat" echo;echo - WPD - turning off all telemetry, speeding up
    >> "%out%\og11temp.bat" echo;echo.
    >> "%out%\og11temp.bat" echo;pause
    cls
    echo 6. OG OPTIMIZATION - Programs - NVIDIA Question
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Do you have a NVIDIA graphics card?
    echo.
    echo If you don't know, go back to your Specs screen
    echo and come back by entering 'op6' in the main menu.
    echo.
    echo ---
    echo Press 1 if you have a NVIDIA GPU.
    echo Press 2 if you have any other GPU.
    echo.
    echo Press 4 to go to the PC Specifications.
    echo.

    set /p cho="Option: "
    if %cho%==1 (start %out%\og11temp.bat
                 goto fullop6nvdl)
    if %cho%==2 (start %out%\og11temp.bat
                 goto fullop6nonnvdl)
    if %cho%==4 (goto pcspecs)

    :fullop6nvdl
    cls
    del /f /q C:\Users\%username%\og11temp.bat
    echo 6. OG OPTIMIZATION - Programs - NVIDIA Download
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Downloading...
    echo.
    timeout /t 1 /nobreak > nul
    winget install --id TechPowerUp.NVCleanstall
    winget install --id 9N8G7TSCL18R
    winget install --id Klocman.BulkCrapUninstaller
    winget install --id 9PJZ3BTL5PV6
    winget install --id VideoLAN.VLC
    winget install --id TheDocumentFoundation.LibreOffice
    cls
    echo 6. OG OPTIMIZATION - Programs - NVIDIA Download
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now a browser window should open...
    echo.
    start https://
    timeout /t 6 /nobreak > nul
    start https://github.com/Sycnex/Windows10Debloater
    timeout /t 1 /nobreak > nul
    start https://www.oo-software.com/en/shutup10
    timeout /t 2 /nobreak > nul
    start https://www.sordum.org/9480/defender-control-v1-9/
    timeout /t 2 /nobreak > nul
    start https://wpd.app/
    timeout /t 2 /nobreak > nul
    cls
    echo 6. OG OPTIMIZATION - Programs - NVIDIA Download
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Everything installed and downloaded!
    echo.
    pause
    goto fullop6

    :fullop6nonnvdl
    cls
    del /f /q C:\Users\%username%\og11temp.bat
    echo 6. OG OPTIMIZATION - Programs - Non-NVIDIA DL
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Downloading...
    echo.
    timeout /t 1 /nobreak > nul
    winget install --id 9N8G7TSCL18R
    winget install --id Klocman.BulkCrapUninstaller
    winget install --id 9PJZ3BTL5PV6
    winget install --id VideoLAN.VLC
    winget install --id TheDocumentFoundation.LibreOffice
    cls
    echo 6. OG OPTIMIZATION - Programs - Non-NVIDIA DL
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now a browser window should open...
    echo.
    start https://
    timeout /t 6 /nobreak > nul
    start https://github.com/Sycnex/Windows10Debloater
    timeout /t 1 /nobreak > nul
    start https://www.oo-software.com/en/shutup10
    timeout /t 2 /nobreak > nul
    start https://www.sordum.org/9480/defender-control-v1-9/
    timeout /t 2 /nobreak > nul
    start https://wpd.app/
    timeout /t 2 /nobreak > nul
    cls
    echo 6. OG OPTIMIZATION - Programs - Non-NVIDIA DL
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Everything installed and downloaded!
    echo.
    pause
    goto fullop6

    :fullop7
    cls
    echo 7. OPTIGREAT OPTIMIZATION - Uninstalling
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Open BCUninstaller.
    echo Use it to uninstall all useless apps.
    echo.
    echo Use the functions below to uninstall the 
    echo remaining apps.
    echo ---
    echo Press 1 to uninstall Cortana.
    echo Press 11 to uninstall Edge (DIY).
    echo Press 2 for help.
    echo.
    echo Press 3 to go next (Privacy).
    echo Press 4 to get to previous page (Programs).
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

    :fullop7edge
    cls
    echo 7. OG OPTIMIZATION - Uninstalling (Edge)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Open CMD and enter these commands:
    echo.
    echo cd C:\Program Files (x86)\Microsoft\Edge\Application
    echo cd *press Tab* 
    echo cd Installer 
    echo setup.exe --uninstall --system-level --verbose-logging --force-uninstall
    echo.
    echo Congratulations! You've just uninstalled Edge.
    echo ---
    echo Press 1 to open CMD.
    echo.
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start cmd
        goto fullop7edge)
    if %cho%==4 (goto fullop7)
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
    pause
    goto fullop7

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
    echo ---
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop7)
    if %cho%==8 (goto menu)

    :fullop8
    cls
    echo 8. OPTIGREAT OPTIMIZATION - Privacy and Speed
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Open PowerShell and paste this command:
    echo Set-ExecutionPolicy Unrestricted -Force
    echo.
    echo Then open Windows10DebloaterGUI.ps1. (via PowerShell)
    echo.
    echo Click: Remove All Bloatware, Cortana Disable,
    echo Edge PDF Disable, Disable Telemetry / Tasks,
    echo Remove Bloatware Regkeys.
    echo.
    echo Then close Windows10Debloater, open OOShutUp10++
    echo and import the ooshutup10.cfg file.
    echo.
    echo Use Disk Cleanup to delete useless files e.g.
    echo Defender cache or temporary files.
    echo That can preserve your performance over time.
    echo ---
    echo Press 1 to open PowerShell.
    echo Press 11 to open Disk Cleanup.
    echo.
    echo Press 3 to go next (Telemetry).
    echo Press 4 to get to previous page (Uninstall).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start PowerShell
        goto fullop8)
    if %cho%==2 (
        start C:\Windows\System32\cleanmgr.exe
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
    echo Open Task Scheduler and disable every event
    echo in given places:
    echo Microsoft / Windows / Application Experience
    echo Microsoft / Windows / CloudExperienceHost
    echo Microsoft / Windows / Customer Experience...
    echo Microsoft / Windows / Maps
    echo Microsoft / Windows / Windows Defender
    echo.
    echo --- WPD ---
    echo Open latest.zip and start WPD.exe.
    echo Clicl 'Disable' and 'Block', exit the program.
    echo ---
    echo Press 1 to open Task Scheduler.
    echo Press 11 to disable ads in Windows.
    echo.
    echo Press 3 to go next (Advanced).
    echo Press 4 to get to previous page (Privacy).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start taskschd.msc
        goto fullop9)
    if %cho%==11 (
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d 0
        reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0         
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
    echo ---
    echo Press 1 to open Advanced System Configuration.
    echo Press 2 if you have a REALLY slow PC. 
    echo.
    echo Press 3 to go next (Config).
    echo Press 4 to get to previous page (Telemetry).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start SystemPropertiesAdvanced.exe
        goto fullop10)
    if %cho%==2 (goto fullop10slow)
    if %cho%==3 (goto fullop11)
    if %cho%==4 (goto fullop9)
    if %cho%==8 (goto menu)

    :fullop10slow
    cls
    echo 10. OG OPTIMIZATION - Advanced (Low-End PC)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo In Advanced tab, open Performance - Settings... 
    echo and disable: 
    echo.
    echo - Animate windows when minimazing
    echo   and maximizng, 
    echo - Slide open combo boxes, 
    echo - Use drop shadows for icon labels.
    echo ---
    echo Press 4 to go back.
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==4 (goto fullop10)
    if %cho%==8 (goto menu)


    @echo off
    :fullop11
    cls
    echo 11. OPTIGREAT OPTIMIZATION - Configuration
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (1)
    echo.
    echo --- SYSTEM ---
    echo Display / Advanced Display - Select highest refresh rate.
    echo Display / Graphics / Default Graphics settings - Enable all options.
    echo.
    echo Notifications / Notifications - Click on the arrow
    echo and disable the VOIP lock screen options.
    echo.
    echo Focus assist - Turn off all automatic rules and Focus assist itself.
    echo.
    echo Multitasking - Alt+Tab shows Open windows only.
    echo ---
    echo Press 1 to open the page in Settings.
    echo Press 2 to continue - Page (2).
    echo.
    echo Press 3 to go next (Folders).
    echo Press 4 to get to previous page (Advanced).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:display
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
    echo Page (2)
    echo.
    echo --- BLUETOOTH AND DEVICES TAB ---
    echo AutoPlay - Disable.
    echo.
    echo --- NETWORK ---
    echo Proxy - Disable Automatically detect settings.
    echo.
    echo --- PERSONALIZATION ---
    echo Start - Disable all options.
    echo Taskbar - Disable all taskbar items and corner
    echo           icons.
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go next - Page (3).
    echo Press 4 to go back - Page (1).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:multitasking
    goto fullop11help2
        )
    if %cho%==3 (goto fullop11help1)
    if %cho%==4 (goto fullop11)
    if %cho%==8 (goto menu)

    :fullop11help1
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (3)
    echo.
    echo Lock screen / Personalize your lock screen
    echo - Set to Picture and disable Get fun facts.
    echo.
    echo --- ACCESSIBILITY ---
    echo Narrator - Disable it and it's keyboard shortcut.
    echo.
    echo Keyboard - Enable Use the Print screen button
    echo to open screen snipping. (optional)
    echo.
    echo Press 1 to open the page in Settings.
    echo.
    echo Press 3 to go next - Page (4).
    echo Press 4 to go back - Page (2).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:lockscreen
    goto fullop11help1
        )
    if %cho%==3 (goto fullop11help2)
    if %cho%==4 (goto fullop11help)
    if %cho%==8 (goto menu)

    :fullop11help2
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (4)
    echo.
    echo --- PRIVACY AND SECURITY ---
    echo App permissions - Turn off access to Camera
    echo and Microphone for Microsoft Store and Edge
    echo.
    echo --- ETHERNET --- (skip if you use Wi-Fi)
    echo Your Ethernet connection / Properties / Configure...
    echo / Power Management - Untick Allow the computer
    echo to turn off this device.
    echo.
    echo Press 1 to open Camera in Settings.
    echo Press 11 to open Network Connections.
    echo.
    echo Press 3 to go next - Page (5).
    echo Press 4 to get to previous page - Page (3).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
    start ms-settings:privacy-webcam
    goto fullop11help2
        )
    if %cho%==11 (
    start Ncpa.cpl 
    goto fullop11help2
        )
    if %cho%==3 (goto fullop11help3)
    if %cho%==4 (goto fullop11help1)
    if %cho%==8 (goto menu)

    :fullop11help3
    cls
    echo 11. OG OPTIMIZATION - Configuration (Help)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo Page (5)
    echo.
    echo Go to Advanced tab and DISABLE:
    echo Advanced EEE, Auto Disable Gigabit,
    echo Energy-Efficient Ethernet, Flow Control, Gigabit
    echo Lite, Green Ethernet, Interrupt Moderation,
    echo Jumbo Frame, Power Saving Mode, Priority and VLAN,
    echo Receive Side Scaling and all properties with 
    echo Offload in name.
    echo.
    echo Then CHANGE:
    echo Speed and Duplex - 1.0 Gbps Full Duplex,
    echo WOL and Shutdown Link Speed - Not Speed Down.
    echo.
    echo Press 2 to go back (Configuration - System).
    echo.
    echo Press 4 to get to previous page - Page (4).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==2 (goto fullop11)
    if %cho%==4 (goto fullop11help2)
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
    echo ---
    echo Press 1 to open Folder options.
    echo.
    echo Press 3 to go next (Gaming).
    echo Press 4 to get to previous page (Config).
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
    echo ---
    echo Press 1 to enable Ultimate Performance power
    echo plan, open Power Options, Gaming settings
    echo and Mouse settings.
    echo.
    echo Press 3 to go next (2nd Reboot).
    echo Press 4 to get to previous page (Config).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start ms-settings:gaming-gamemode
        start cmd /C powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
        timeout /t 3 /nobreak > nul
        start powercfg.cpl
        start main.cpl
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
    echo --- WARNING ---
    echo Make sure to save all your work, close all 
    echo opened programs to not lose any data.
    echo.
    echo Now it's time to reboot again to avoid any data
    echo corruption and to make sure everything got 
    echo uninstalled properly. 
    echo ---
    echo Press 1 to Reboot.
    echo.
    echo Press 3 to go next (Microsoft Store).
    echo Press 4 to get to previous page (Gaming).
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
    echo In Windows 11, you NEED to log-in to a Microsoft
    echo account or otherwise you won't be able to 
    echo download any apps.
    echo.
    echo When you login, reassure you Login Only in Microsoft Apps.
    echo.
    echo In Microsoft Store's settings, disable Video autoplay.
    echo.
    echo Then, go to your Library and update everything.
    echo ---
    echo Press 1 to open Microsoft Store.
    echo.
    echo Press 3 to go next (Windows Security).
    echo Press 4 to get to previous page (2nd Reboot).
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
    echo --- MEMORY INTEGRITY ---
    echo Go to Device security / Core isolation
    echo and enable Memory integrity. (Note that VMs
    echo might not work if you do it!)
    echo.
    echo --- DISABLING DEFENDER ---
    echo Disable every setting in:
    echo Virus and threat protection / Manage settings
    echo App and browser control / Reputation-based.
    echo Settings / Manage notifications / Virus notifications
    echo.
    echo Open DfControl.exe and Disable Windows Defender.
    echo Then click Menu... / Add to Exclusions.
    echo ---
    echo Press 1 to open Windows Security.
    echo Press 11 to prevent MRT from installing.
    echo.
    echo Press 3 to go next (Compressing).
    echo Press 4 to get to previous page (Store).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (
        start windowsdefender:
        goto fullop16
    )
    if %cho%==11 (
        reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1
        goto fullop16
    )
    if %cho%==3 (goto fullop17)
    if %cho%==4 (goto fullop15)
    if %cho%==8 (goto menu)

    :fullop17
    cls
    echo 17. OPTIGREAT OPTIMIZATION - Compressing (HDD)
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo DO NOT ENABLE IT IF YOU HAVE A SSD!!!
    echo - - - - - - - - - - - - - - - - - - -
    echo.
    echo Compact OS will speed up your OS if you have
    echo a HDD drive and/or have little free space.
    echo.
    echo If you have a REALLY slow HDD, you should also try 
    echo compressing the whole drive - it can make your 
    echo PC faster, but it will take some time to do (4-24 hours).
    echo.
    echo To compress the whole drive, right-click it 
    echo and click Properties, then tick Compress this
    echo drive. Click Apply and OK.
    echo.
    echo The best technique on a extremely slow HDD is 
    echo to enable both options. 
    echo ---
    echo Press 1 to enable Compact OS.
    echo Press 11 to open This PC.
    echo.
    echo Press 3 to go next (Installation).
    echo Press 4 to get to previous page (Security).
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
    if %cho%==3 (goto fullop18)
    if %cho%==4 (goto fullop16)
    if %cho%==8 (goto menu)


    :fullop18
    cls
    echo 18. OPTIGREAT OPTIMIZATION - Installation
    echo ------------------------------------------------
    echo        OptiGreat 11
    echo ------------------------------------------------
    echo.
    echo Now you can install and use all downloaded
    echo programs.
    echo.
    echo After installing everything, delete all setups
    echo - it's a great habit to develop.
    echo ---
    echo Press 1 to open Downloads.
    echo.
    echo Press 3 to go next (Startup).
    echo Press 4 to get to previous page (Compressing).
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
    echo Manager's Startup tab.
    echo.
    echo Open System Configuration, go to Boot tab and
    echo enable No GUI BOOT, do not reboot.
    echo ---
    echo Press 1 to open Task Manager's Startup.
    echo Press 11 to open System Configuration.
    echo.
    echo Press 3 to go next (Final).
    echo Press 4 to get to previous page (Installation).
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
    echo PC - made it harder, better, faster, stronger. :)
    echo.
    echo Time to do the last reboot and enjoy your
    echo lovely, optimized Windows PC!
    echo ---
    echo Press 1 to do the last reboot!
    echo.
    echo Press 4 to get to previous page (Startup).
    echo.
    echo Press 8 to go to the main menu.
    echo.

    set /p cho="Option: "
    if %cho%==1 (goto reboot)
    if %cho%==4 (goto fullop18)
    if %cho%==8 (goto menu)









@REM COLORS IN BATCH
@REM @echo off
@REM echo [101;93m NORMAL FOREGROUND COLORS [0m
@REM echo ^<ESC^>[31m [31mRed[0m
@REM echo ^<ESC^>[32m [32mGreen[0m
@REM echo ^<ESC^>[33m [33mYellow[0m
@REM echo ^<ESC^>[34m [34mBlue[0m
@REM echo ^<ESC^>[35m [35mMagenta[0m
@REM echo ^<ESC^>[36m [36mCyan[0m
@REM echo ^<ESC^>[37m [37mWhite[0m
@REM echo.
@REM echo [101;93m STRONG FOREGROUND COLORS [0m
@REM echo ^<ESC^>[90m [90mWhite[0m
@REM echo ^<ESC^>[91m [91mRed[0m
@REM echo ^<ESC^>[92m [92mGreen[0m
@REM echo ^<ESC^>[93m [93mYellow[0m
@REM echo ^<ESC^>[94m [94mBlue[0m
@REM echo ^<ESC^>[95m [95mMagenta[0m
@REM echo ^<ESC^>[96m [96mCyan[0m
@REM echo ^<ESC^>[97m [97mWhite[0m
@REM pause