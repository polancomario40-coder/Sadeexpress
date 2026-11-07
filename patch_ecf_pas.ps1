$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_vars = @"
    LabelCodSeguridad: TLabel;
    edCodSeguridad: TcxDBTextEdit;
    mmoUltError: TcxDBMemo;
    dsEcfStatus: TDataSource;
    btnRefrescarECF: TButton;
"@
$c = $c.Replace("    btnRefrescarECF: TButton;", $new_vars)


$old_afterscroll = @"
procedure TCXC.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
"@
$new_afterscroll = @"
procedure TCXC.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if dm.rsEcfStatus.Active then dm.rsEcfStatus.Close;
  dm.rsEcfStatus.Parameters[1].Value := RSidCxc.Value;
  dm.rsEcfStatus.Parameters[2].Value := RSidDocumento.Value;
  dm.rsEcfStatus.Open;
"@
$c = $c.Replace($old_afterscroll, $new_afterscroll)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS ECF logic injected."
