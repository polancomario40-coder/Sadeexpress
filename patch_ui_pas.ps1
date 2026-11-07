$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_vars = @"
    dxDBEdit21: TdxDBEdit;
    Label16: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
"@

$c = [regex]::Replace($c, "    dxDBEdit21: TdxDBEdit;", $new_vars)
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS variables injected."
