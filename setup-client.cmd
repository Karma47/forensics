@echo off
REM setup-client.cmd
if not "%1"=="" SET RHOST=%1
if "%RHOST"=="" SET RHOST=localhost
SET RPORT=4444
SET RFPORT=5555
SET RFTPORT=5556
