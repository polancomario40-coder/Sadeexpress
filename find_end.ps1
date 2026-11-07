$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 356; $i -lt $lines.Length; $i++) {
    if ($lines[$i] -match '^  end$') {
        Write-Host "Found '  end' at line $i"
        for ($j = $i - 10; $j -le $i; $j++) {
            Write-Host $lines[$j]
        }
        break
    }
}
