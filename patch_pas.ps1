$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$content = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# 1. Add fields to TCXC class
$content = $content.Replace("    RSCompFiscal: TStringField;", "    RSCompFiscal: TStringField;`r`n    RSNcfModificado: TStringField;`r`n    RSFechaNcfModificado: TDateTimeField;`r`n    RSTipoNcfModificado: TStringField;")

$content = $content.Replace("    RPTCxcAplicadoTotal: TBCDField;", "    RPTCxcAplicadoTotal: TBCDField;`r`n    RPTCxcCompFiscalAplica: TStringField;")

$content = $content.Replace("    procedure BLocalizarxClick(Sender: TObject);", "    procedure BLocalizarxClick(Sender: TObject);`r`n    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);")

# 2. Add implementation of cxDBButtonEdit1PropertiesButtonClick
$impl = @"
procedure TCXC.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  x                 : variant;
begin
  inherited;
  x := fBuscar(TFindFactura, 'idFactura', false);
  if x <> Null then
  begin
    with facturaAct do
    begin
      Close;
      Parameters[1].Value := x;
      Open;

      if RecordCount > 0 then
      begin
        if facturaActCancelado.Value then
          raise Exception.Create('Esta factura esta cancelada y no podra seleccionarse..');

        RSReferencia.Value := facturaActidFactura.Value;
        RSidDocumento.Value := facturaActFactura.Value;
        
        // Auto-fill NCF from selected invoice
        RSNcfModificado.Value := facturaActCompFiscal.Value;
        RSFechaNcfModificado.Value := facturaActFecha.Value;
      end;
    end;
  end;
end;

"@

# Insert before end of file
$content = $content.Replace("end.", "$impl`r`nend.")

[IO.File]::WriteAllText($path, $content, [Text.Encoding]::GetEncoding(1252))
Write-Host "Patched uCXC.pas successfully."
