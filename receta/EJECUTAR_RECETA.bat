@echo off
chcp 65001 >nul
setlocal
title Instalador Automatizado de Receta ECF - SADE

echo ===================================================================
echo             INSTALADOR AUTOMATIZADO DE RECETA ECF - SADE
echo ===================================================================
echo.
echo Este asistente aplicara todos los cambios ECF (Tablas, Campos,
echo Funciones, Secuencias y Procedimientos Almacenados).
echo.

set /p DB=">> Ingresa el nombre de la base de datos destino: "

if "%DB%"=="" (
    echo.
    echo [ERROR] No especificaste ninguna base de datos.
    echo.
    pause
    exit /b
)

echo.
echo ===================================================================
echo Conectando y aplicando receta a [%DB%]...
echo ===================================================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Apply-Receta.ps1" -DatabaseName "%DB%"

echo.
echo ===================================================================
echo Proceso finalizado.
echo ===================================================================
pause
