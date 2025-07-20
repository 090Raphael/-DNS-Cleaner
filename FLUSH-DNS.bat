@echo off
chcp 65001 >nul
color 1A
title FLUSHDNS - Renovação de IP

:inicio
cls
echo ================================================
echo     LIMPEZA DE CACHE DNS E RENOVACAO DE IP
echo ================================================
echo.
echo Deseja renovar o IP e limpar o cache DNS?
echo.
echo (1) Sim
echo (2) Nao
echo.

set /p opcao=Digite sua escolha e pressione ENTER: 

if "%opcao%"=="1" goto process
if "%opcao%"=="2" goto fim

echo Opção inválida. Tente novamente.
pause >nul
goto inicio

:process
cls
echo Iniciando limpeza de cache DNS e renovação de IP...
echo Aguarde...

ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset >nul
netsh int ip reset >nul
nbtstat -rr

echo.
echo ✅ Processos concluídos com sucesso!
echo 🔄 Seu endereço IP foi renovado.
echo 🔄 Cache DNS limpo.
echo.

pause
goto fim

:fim
exit
