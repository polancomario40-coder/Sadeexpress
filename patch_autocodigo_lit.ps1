$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_autocodigo = @"
procedure TCXC.UserAutoCodigo;
 var sec : TSecuenciaNCF;
begin
  inherited;
  if rsCXC.IsNull then begin
    if rsEsCredito.AsBoolean then begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
           sec := dm.GetCompFiscal(ComputerName(),'NC');
      end;

      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NCR)
    end else begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
         sec := dm.GetCompFiscal(ComputerName(),'ND');
      end;

      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NDB);
    end;

    if sec.Cancelado = False then
      rsCompFiscal.Value := sec.secuencia
    else
      raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
end;
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
    sec.Cancelado := True; // Default to true so it fails if not fetched
    if rsEsCredito.AsBoolean then begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
           sec := dm.GetCompFiscal(ComputerName(),'NC');
      end;
    end else begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
         sec := dm.GetCompFiscal(ComputerName(),'ND');
      end;
    end;

    if sec.Cancelado = False then
      rsCompFiscal.Value := sec.secuencia
    else
      if not Tiposinterno.AsBoolean then
        raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
end;
"@

$c = $c.Replace($old_autocodigo, $new_autocodigo)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "PAS UserAutoCodigo patched literally."
