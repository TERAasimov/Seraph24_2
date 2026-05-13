@echo off
REM Força UTF-8 no CMD
chcp 65001 >nul

echo ==============================
echo   Sincronizando com o GitHub
echo ==============================

REM Atualiza a branch local
echo.
echo --- Atualizando arquivos locais (git pull) ---
git pull

REM Pede a mensagem do commit
echo.
set /p msg="Digite atualização realizada: "

REM Adiciona todas as alteracoes
git add .

REM Cria o commit
git commit -m "%msg%"

REM Envia para o remoto
echo.
echo --- Enviando para o repositorio remoto (git push) ---
git push

echo.
echo ==============================
echo   Processo concluido!
echo ==============================
pause
