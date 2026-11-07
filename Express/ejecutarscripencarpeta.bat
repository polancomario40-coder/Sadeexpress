@echo off

set SERVER=108.181.198.178:1438
set DB=test
set USER=sade
set PASS=sadeP@$$w0rd

for %%f in (*.sql) do (
    echo Ejecutando %%f ...
    sqlcmd -S %SERVER% -d %DB% -U %USER% -P %PASS% -i "%%f"
)

echo Finalizado.
pause