@echo off
:: Ferramenta de Diagnostico Automatizado de Rede
:: Criado para o portfolio do GitHub

title Ferramenta de Diagnostico de Rede v1.0
color 0A
cls

:menu
echo =======================================================
echo         FERRAMENTA DE DIAGNOSTICO DE REDE
echo =======================================================
echo [1] Verificar IPs Locais (ipconfig)
echo [2] Testar Conectividade com a Internet (Ping Google)
echo [3] Rastrear Rota ate um Servidor (Tracert)
echo [4] Limpar Cache DNS e Renovar IP (FlushDNS/Renew)
echo [5] Exibir Portas de Rede Ativas (Netstat)
echo [6] Sair
echo =======================================================
set /p opcao=Escolha uma opcao (1-6): 

if "%opcao%"=="1" goto ipconfig_local
if "%opcao%"=="2" goto ping_teste
if "%opcao%"=="3" goto tracert_teste
if "%opcao%"=="4" goto dns_renew
if "%opcao%"=="5" goto netstat_teste
if "%opcao%"=="6" exit

echo Opcao invalida! Tente novamente.
pause
goto menu

:ipconfig_local
cls
echo === ADAPTADORES DE REDE E CONFIGURACOES DE IP ===
ipconfig /all
echo.
pause
goto menu

:ping_teste
cls
echo === TESTANDO CONECTIVIDADE (PING) ===
set /p host=Digite o IP ou URL para testar (Ex: google.com ou 8.8.8.8): 
ping %host% -n 4
echo.
pause
goto menu

:tracert_teste
cls
echo === RASTREADO ROTAS (TRACERT) ===
set /p host_tracert=Digite o IP ou URL para rastrear rota: 
echo Isso pode demorar alguns minutos...
tracert %host_tracert%
echo.
pause
goto menu

:dns_renew
cls
echo === LIMPANDO CACHE DNS E RENOVANDO IP ===
echo Liberando IP atual...
ipconfig /release
echo Limpando cache DNS...
ipconfig /flushdns
echo Solicitando novo IP...
ipconfig /renew
echo Processo concluido com sucesso!
echo.
pause
goto menu

:netstat_teste
cls
echo === PORTAS DE REDE E CONEXOES ATIVAS ===
netstat -an | findstr ESTABLISHED
echo.
pause
goto menu