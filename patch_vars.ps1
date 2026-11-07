$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_vars = @"
    LabelCodSeguridad: TLabel;
    edCodSeguridad: TcxDBTextEdit;
    mmoUltError: TcxDBMemo;
"@
$new_vars = @"
    tabInfoECF: TTabSheet;
    LabelEcfStatus1: TLabel;
    LabelCodSeguridad1: TLabel;
    edEcfStatus1: TcxDBTextEdit;
    edCodSeguridad1: TcxDBTextEdit;
    mmoUltError1: TcxDBMemo;
"@
$c = $c.Replace($old_vars, $new_vars)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Variables patched."
