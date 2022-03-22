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
  ECHO 3 - Notepad++
  ECHO 4 - Download UNIX file into WINDOWS
  ECHO 5 - Execute BAT file
  ECHO 90 - Main Menu
  ECHO..............................................................
  ECHO.
  SET /P M=Type 1, 2, 3, 4 or 99 Then press enter:
  IF %M%==1 GOTO ST
  IF %M%==2 GOTO SW
  IF %M%==3 GOTO UP
  IF %M%==4 GOTO DL
  IF %M%==5 GOTO EB
  IF %M%==90 GOTO MENU
  
