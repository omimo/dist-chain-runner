@rem                                        steve 
@echo off
SetLocal EnableDelayedExpansion
Set AAA="C:\Program Files\Filter Forge 8\Bin\FFXCmdRenderer-x64.exe"

cd c:\ePainter

set ID=%1
set LABEL=%2

SET PIX=c:\ePainter\cur.jpg
SET IN=c:\ePainter\in.jpg
SET OUT=c:\ePainter\out.jpg
SET SAVEDIR=c:\ePainter\save\
SET FNAME=%date%_%TIME:~3,2%_%TIME:~6,2%
rem SET FNAME=%date%_%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%


IF          "%ID%"=="1001" ( CALL :sub1001 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1002" ( CALL :sub1002 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1003" ( CALL :sub1003 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1004" ( CALL :sub1004 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1005" ( CALL :sub1005 & COPY %PIX%  %OUT%
) ELSE IF   "%ID%"=="1006" ( CALL :sub1006 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1007" ( CALL :sub1007 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1008" ( CALL :sub1008 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1009" ( CALL :sub1009 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1010" ( CALL :sub1010 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1011" ( CALL :sub1011 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1012" ( CALL :sub1012 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1013" ( CALL :sub1013 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1014" ( CALL :sub1014 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1015" ( CALL :sub1015 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1016" ( CALL :sub1016 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1017" ( CALL :sub1017 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1018" ( CALL :sub1018 & COPY %PIX%  %OUT%
) ELSE IF   "%ID%"=="1019" ( CALL :sub1019 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1020" ( CALL :sub1020 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1021" ( CALL :sub1021 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1022" ( CALL :sub1022 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1023" ( CALL :sub1023 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1024" ( CALL :sub1024 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1025" ( CALL :sub1025 & COPY %PIX%  %OUT% 
) ELSE IF   "%ID%"=="1026" ( CALL :sub1026 & COPY %PIX%  %OUT% 
) ELSE (
    echo None
) 
echo done
    COPY %PIX%  out\%ID%_%LABEL%.jpg 
    
GOTO :EOF
    
   
    
rem sub1001 ----------------------
rem ------------------------------
:sub1001
SET IID=1001
echo !IID! !LABEL! ---------------

rem eps_ff_dis3_4.exe  %IN%
          TIMEOUT /t 1
eps_aEdges_194.exe  %PIX%
          TIMEOUT /t 1  
autoit3.exe ep1.au3 iviz_newVGport1
          TIMEOUT /t 10
eps_pDabs15.exe %PIX% 
            TIMEOUT /t 1 
eps_colorPort1.exe %PIX%
             TIMEOUT /t 1 
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1002 ----------------------
rem ------------------------------
:sub1002
SET IID=1002
echo !IID! !LABEL! ---------------
eps_pDabs15.exe  %IN%
          TIMEOUT /t 1 
autoit3.exe ep1.au3 iviz_port2
          TIMEOUT /t 8         
autoit3.exe ep1.au3 iviz_port2_2
          TIMEOUT /t 8          
eps_colorPort2.exe %PIX%
          TIMEOUT /t 1 
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B


rem sub1003 ----------------------
rem ------------------------------
:sub1003
SET IID=1003
echo !IID! !LABEL! ---------------
eps_pDabs11.exe  %IN% 
     TIMEOUT /t 1
 autoit3.exe ep1.au3 iviz_sketch2
   TIMEOUT /t 10 
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
 EXIT /B


rem sub1004 ----------------------
rem -------------------------------
:sub1004
SET IID=1004
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%  
     TIMEOUT /t 1
autoit3.exe ep1.au3 iviz_sketch1
     TIMEOUT /t 10
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1005 ----------------------
rem ------------------------------
:sub1005
SET IID=1005
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port8a
     TIMEOUT /t 14
colo
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1006 ----------------------
rem ------------------------------
:sub1006
SET IID=1006
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port9
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1007 ----------------------
rem ------------------------------
:sub1007
SET IID=1007
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port10
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1008 ----------------------
rem ------------------------------
:sub1008
SET IID=1008
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port12
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1009 ----------------------
rem ------------------------------
:sub1009
SET IID=1009
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port13
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1010 ----------------------
rem ------------------------------
:sub1010
SET IID=1010
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port14
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1011 ----------------------
rem ------------------------------
:sub1011
SET IID=1011
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port15
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B


rem sub1012 ----------------------
rem ------------------------------
:sub1012
SET IID=1012
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port16
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1013 ----------------------
rem ------------------------------
:sub1013
SET IID=1013
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port17
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1014 ----------------------
rem ------------------------------
:sub1014
SET IID=1014
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port19
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1015 ----------------------
rem ------------------------------
:sub1015
SET IID=1015
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port20
     TIMEOUT /t 14
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
echo !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1016 ----------------------
rem ------------------------------
:sub1016
SET IID=1016
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port21
     TIMEOUT /t 16
autoit3.exe ep1.au3 iviz_port22
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
eps_colorPort16.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1017 ----------------------
rem ------------------------------
:sub1017
SET IID=1017
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port23
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1018 ----------------------
rem ------------------------------
:sub1018
SET IID=1018
echo !IID! !LABEL! ---------------

eps_pDabs11.exe  %IN%
     TIMEOUT /t 2
rem eps_ff_blurShift65.exe
%AAA% ff_blurShift65.ffxml
     TIMEOUT /t 10
autoit3.exe ep1.au3 iviz_port23
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1019 ----------------------
rem ------------------------------
:sub1019
SET IID=1019
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port24
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1020 ----------------------
rem ------------------------------
:sub1020
SET IID=1020
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port25
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B


rem sub1021 ----------------------
rem ------------------------------
:sub1021
SET IID=1021
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port26
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B


rem sub1022 ----------------------
rem ------------------------------
:sub1022
SET IID=1022
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port34
     TIMEOUT /t 16
eps_vib_16_19.exe  %PIX%
     TIMEOUT /t 2
eps_levels.exe  %PIX%
     TIMEOUT /t 2
eps_vib_16_19.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1023 ----------------------
rem ------------------------------
:sub1023
SET IID=1023
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port28
     TIMEOUT /t 16
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1024 ----------------------
rem ------------------------------
:sub1024
SET IID=1024
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port33
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1025 ----------------------
rem ------------------------------
:sub1025
SET IID=1025
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port31
     TIMEOUT /t 16
eps_pDabs11.exe  %PIX%
     TIMEOUT /t 2
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B

rem sub1026 ----------------------
rem ------------------------------
:sub1026
SET IID=1026
echo !IID! !LABEL! ---------------

eps_levels.exe  %IN%
     TIMEOUT /t 2
autoit3.exe ep1.au3 iviz_port32
     TIMEOUT /t 16
COPY %PIX%  !SAVEDIR!\!FNAME!_!IID!_!LABEL!.jpg
EXIT /B