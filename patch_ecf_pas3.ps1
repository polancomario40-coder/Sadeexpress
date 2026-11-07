$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_afterscroll = @"
procedure TCXC.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    if dm.rsEcfStatus.Active then dm.rsEcfStatus.Close;
    dm.rsEcfStatus.Parameters[1].Value := RSidCxc.Value;
    dm.rsEcfStatus.Parameters[2].Value := RSidDocumento.Value;
    dm.rsEcfStatus.Open;
  except
  end;
"@
$c = [regex]::Replace($c, 'procedure TCXC\.RSAfterScroll\(DataSet: TDataSet\);\r?\n\s*begin\r?\n\s*inherited;', $new_afterscroll)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS ECF logic injected with regex."
