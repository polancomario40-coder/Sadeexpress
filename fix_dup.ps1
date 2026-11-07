$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_uses = "dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, ppProd, ppClass, ppReport, cxMemo, cxButtonEdit,"
$new_uses = "dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, ppProd, ppClass, ppReport, cxMemo,"
$c = $c.Replace($old_uses, $new_uses)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Removed duplicate cxButtonEdit."
