chcp 65001
@echo off
echo.
@color 1a
@title FLUSHDNS
cls
@title Limpar seu cache DNS / Erros de navegação
cls
echo ==================================
echo    Siga as instruções a seguir
echo ==================================
echo.
echo.
echo Agora vamos começar o processo para alterar seu endereço IP na rede ?
pause>nul
cls
echo Deseja alterar o IP do seu equipamento?
echo (1) Sim
echo (2) Não
set /p resp=
if "%resp%" == "1" (goto process) else (goto end)
:process
ipconfig /flushdns
ipconfig /registerdns
ipconfig /setclassid
ipconfig /release
ipconfig /renew
netsh Winsock Reset
netsh int ip Reset
nbtstat -rr
netsh int ip reset all
echo.
echo (Seu IP foi renovado) pressione qualquer tecla para sair.
echo.
pause >nul
exit
:end

