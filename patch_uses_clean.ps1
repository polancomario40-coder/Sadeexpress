$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$bad_uses = "dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, ppProd, ppClass, ppReport, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxButtonEdit,"
$good_uses = "dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, ppProd, ppClass, ppReport, cxMemo, cxButtonEdit,"
$c = $c.Replace($bad_uses, $good_uses)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Cleaned duplicate uses."
