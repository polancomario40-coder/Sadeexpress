@echo off

set SERVER=38.247.136.37,1442
set DB=inber
set USER=sade
set PASS=sadeP@$$w0rd

for %%f in (*.sql) do (
    echo Ejecutando %%f ...
    sqlcmd -S %SERVER% -d %DB% -U %USER% -P %PASS% -i "%%f"
)

echo Finalizado.
pause