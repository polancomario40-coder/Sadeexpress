$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_autocodigo = @"
procedure TCXC.UserAutoCodigo;
 var sec : TSecuenciaNCF;
begin
  inherited;
  if rsCXC.IsNull then begin
"@
$new_autocodigo = @"
procedure TCXC.UserAutoCodigo;
 var sec : TSecuenciaNCF;
begin
  inherited;
  if rsCXC.IsNull then begin
    if rsEsCredito.AsBoolean then begin
      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NCR);
    end else begin
      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NDB);
    end;
  end;

  if (RSCompFiscal.IsNull) or (RSCompFiscal.AsString = '') then begin
"@
$c = [regex]::Replace($c, 'procedure TCXC\.UserAutoCodigo;\r?\n var sec : TSecuenciaNCF;\r?\nbegin\r?\n  inherited;\r?\n  if rsCXC\.IsNull then begin', $new_autocodigo)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS UserAutoCodigo patched."
