$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_fields = @"
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSNcfModificado: TStringField
      FieldName = 'NcfModificado'
      Size = 19
    end
    object RSFechaNcfModificado: TDateTimeField
      FieldName = 'FechaNcfModificado'
    end
    object RSTipoNcfModificado: TStringField
      FieldName = 'TipoNcfModificado'
      Size = 2
    end
"@

$c = [regex]::Replace($c, "(?s)    object RSCompFiscal: TStringField\r?\n      FieldName = 'CompFiscal'\r?\n      Size = 19\r?\n    end", $new_fields)
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "DFM RS fields patched."
