$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$bad_code = @"
    if sec.Cancelado = False then
      rsCompFiscal.Value := sec.secuencia
    else
      if not Tiposinterno.AsBoolean then
        raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
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

$good_code = @"
    if sec.Cancelado = False then
      rsCompFiscal.Value := sec.secuencia
    else
      if not Tiposinterno.AsBoolean then
        raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
end;
"@

# Fix carriage returns for PowerShell string replace
$bad_code = $bad_code -replace "`r`n", "`n"
$good_code = $good_code -replace "`r`n", "`n"
$c = $c -replace "`r`n", "`n"

$c = $c.Replace($bad_code, $good_code)

# Put back Windows line endings
$c = $c -replace "`n", "`r`n"

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Removed dangling code!"
