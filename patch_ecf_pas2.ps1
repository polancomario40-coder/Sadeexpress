$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_afterscroll = "procedure TCXC.RSAfterScroll(DataSet: TDataSet);`r`n  begin`r`n    inherited;"
$new_afterscroll = "procedure TCXC.RSAfterScroll(DataSet: TDataSet);`r`n  begin`r`n    inherited;`r`n    if dm.rsEcfStatus.Active then dm.rsEcfStatus.Close;`r`n    dm.rsEcfStatus.Parameters[1].Value := RSidCxc.Value;`r`n    dm.rsEcfStatus.Parameters[2].Value := RSidDocumento.Value;`r`n    dm.rsEcfStatus.Open;"
$c = $c.Replace($old_afterscroll, $new_afterscroll)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS ECF logic injected properly."
