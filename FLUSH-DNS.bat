@ECHO
IPCONFIG /all
@ECHO 
ipconfig /release 
pause
ipconfig /renew 
pause
ipconfig /flushdns 
pause
ipconfig /registerdns 
pause
netsh dump 
pause
nbtstat -R 
pause
netsh int ip reset reset.log 
pause
netsh winsock reset 
pause
 to join this conver

PAUSE

