param (
    [Parameter(Mandatory=$false)]
    [string]$DatabaseName,
    [Parameter(Mandatory=$false)]
    [string]$Server = "108.181.198.178,1438",
    [Parameter(Mandatory=$false)]
    [string]$User = "sa",
    [Parameter(Mandatory=$false)]
    [string]$Password = 'P@$$w0rd'
)

$recetaDir = $PSScriptRoot

if ([string]::IsNullOrWhiteSpace($DatabaseName)) {
    $DatabaseName = Read-Host "Ingresa el nombre de la base de datos destino (ej. dbsolonegocios)"
}

function Run-SqlScript {
    param([string]$FilePath)
    Write-Host "Ejecutando: $(Split-Path $FilePath -Leaf)"
    $out = sqlcmd -S $Server -U $User -P $Password -d $DatabaseName -i $FilePath -b -C 2>&1
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Error ejecutando $FilePath`n$out"
        exit $LASTEXITCODE
    } else {
        Write-Host "OK."
    }
}

Write-Host "=== APLICANDO RECETA A BASE DE DATOS: $DatabaseName ==="

# 1. Tablas
$file1 = Join-Path $recetaDir "001_Nuevas_Tablas_ECF.sql"
Run-SqlScript -FilePath $file1

# 2. Columnas
$file2 = Join-Path $recetaDir "002_Nuevos_Campos_ECF.sql"
Run-SqlScript -FilePath $file2

# 3. Nuevos SPs
$spsDir1 = Join-Path $recetaDir "003_Nuevos_SPs"
$files = Get-ChildItem -Path $spsDir1 -Filter "*.sql"
foreach ($f in $files) {
    Run-SqlScript -FilePath $f.FullName
}

# 4. Modificados SPs
Write-Host "AVISO: Se estan aplicando SPs modificados de Express."
$spsDir2 = Join-Path $recetaDir "004_SPs_Modificados"
$files2 = Get-ChildItem -Path $spsDir2 -Filter "*.sql"
$count = 0
foreach ($f in $files2) {
    Run-SqlScript -FilePath $f.FullName
    $count++
}

# 5. a 12. Scripts Sueltos
$restoScripts = Get-ChildItem -Path $recetaDir -Filter "*.sql" | Where-Object { $_.Name -match "^00[5-9]" -or $_.Name -match "^01[0-9]" } | Sort-Object Name
foreach ($script in $restoScripts) {
    Run-SqlScript -FilePath $script.FullName
}

Write-Host "=== RECETA APLICADA EXITOSAMENTE A $DatabaseName ==="
