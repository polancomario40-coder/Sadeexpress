$bytes = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
$str = ""
for ($i=0; $i -lt 10; $i++) { $str += $bytes[$i].ToString() + " " }
Write-Host $str
