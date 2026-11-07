$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_fields = @"
    object RPTCxcAplicadoTotal: TBCDField
      FieldName = 'AplicadoTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RPTCxcCompFiscalAplica: TStringField
      FieldName = 'CompFiscalAplica'
      Size = 19
    end
"@

$c = [regex]::Replace($c, "(?s)    object RPTCxcAplicadoTotal: TBCDField\r?\n      FieldName = 'AplicadoTotal'\r?\n      ReadOnly = True\r?\n      Precision = 20\r?\n      Size = 2\r?\n    end", $new_fields)
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "DFM RPT fields patched."
