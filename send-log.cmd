@echo off
REM Simple script to send a new log entry
REM to listener on forensics workstation. Intended to be
REM used as part of initial live response.
REM by Dr. Phil Polstra (@ppolstra) as developed for
REM PentesterAcademy.com.

REM defaults primarily for testing
if "%RHOST%"=="" SET RHOST=localhost
if "%RPORT%"=="" SET RPORT=4444
if %
if "%1"=="" (
	echo usage: %0 command or script
	echo Simple script to send a log entry to listener
	exit 
)

REM run the command
echo  ++++Sending log for %*  ++++ | nc -w 2 %RHOST% %RPORT% 
%* | nc -w 2 %RHOST% %RPORT%
echo  ----end----  | nc -w 2 %RHOST% %RPORT% 
 




