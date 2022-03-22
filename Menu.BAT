ECHO OFF
:MENU
ECHO.
ECHO..............................................................
ECHO------------------------ Main Menu ---------------------------
ECHO..............................................................
ECHO.
ECHO 1 - Start
ECHO 2 - Software
ECHO 3 - Upload WINDOWS file into UNIX
ECHO 4 - Download UNIX file into WINDOWS
ECHO 5 - Execute BAT file
ECHO 99 - Exit
ECHO..............................................................
ECHO.
SET /P M=Type 1, 2, 3, 4 or 99 Then press enter:
IF %M%==1 GOTO ST
IF %M%==2 GOTO SW
IF %M%==3 GOTO UP
IF %M%==4 GOTO DL
IF %M%==5 GOTO EB
IF %M%==99 GOTO EOF
:ST
  CLS
  start microsoft-edge:https://outlook.office.com/mail.inbox
  start chrome "https://mail.google.com"
  start chrome "https://www.youtube.com"
  GOTO MENU
:SW
  :SWMENU
  CLS
  ECHO.
  ECHO..............................................................
  ECHO------------------------ Softwares ---------------------------
  ECHO..............................................................
  ECHO.
  ECHO 1 - Outlook
  ECHO 2 - Chrome
  ECHO 3 - Notepad
  ECHO 4 - Notepad++
  ECHO 5 - Download Folder
  ECHO 6 - Desktop Folder
  ECHO 90 - Main Menu
  ECHO..............................................................
  ECHO.
  SET /P M=Type 1, 2, 3, 4 or 99 Then press enter:
  IF %M%==1 GOTO SW0
  IF %M%==2 GOTO SW1
  IF %M%==3 GOTO SW2
  IF %M%==4 GOTO SW3
  IF %M%==5 GOTO SW4
  IF %M%==6 GOTO SW5
  IF %M%==90 GOTO MENU
  :SW0
    start "outlook" "C:\Program Files(x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
    GOTO SWMENU
  :SW1
    cd %windir%\system32\chrome.exe
    start chrome.exe
    GOTO SWMENU
  :SW2
    cd %windir%\system32\notepad.exe
    start notepad.exe
    GOTO SWMENU
  :SW3
    start "notepad++" "C:\Program Files\Notepad++3\Notepad++.exe"
    GOTO SWMENU
  :SW4
    explorer "C:\User_name\Downloads"
    GOTO SWMENU
  :SW5
    explorer "C:\User_name\Desktop"
    GOTO SWMENU
:UP
  CLS
  set /p pwd=<C:\User_name\Desktop\pwd.txt ::password will save under pwd.txt file
  pcsp -pw %pwd% -P 22 C:\User_name\Desktop\uploadfile.txt linux_user_name@10.100.10.100:/home/linux_user_name
  timeout 4 > NUL
  GOTO MENU  
:DL
  CLS
  set /p pwd=<C:\User_name\Desktop\pwd.txt ::password will save under pwd.txt file
  pcsp -pw %pwd% -P 22 linux_user_name@10.100.10.100:/home/linux_user_name/downloadfile.txt C:\User_name\Desktop
  timeout 4 > NUL
  GOTO MENU  
:EB
  CLS
  set /p pwd=<C:\User_name\Desktop\pwd.txt ::password will save under pwd.txt file
  call "C:\User_name\Desktop\sample.bat"
  timeout 4 > NUL
  GOTO MENU  
