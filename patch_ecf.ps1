$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$idx1 = $c.IndexOf('        object edTotalPend: TdxCurrencyEdit')
$idx2 = $c.IndexOf('    object Creditos: TTabSheet')

if ($idx1 -ne -1 -and $idx2 -ne -1) {
    $orig_chunk = $c.Substring($idx1, $idx2 - $idx1)
    $last_end = $orig_chunk.LastIndexOf('      end')
    
    $new_controls = @"
        object LabelCodSeguridad: TLabel
          Left = 380
          Top = 304
          Width = 72
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cod. seguridad:'
          Transparent = True
        end
        object edCodSeguridad: TcxDBTextEdit
          Left = 460
          Top = 300
          Width = 100
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'CodigoSeguridadEcf'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 33
        end
        object mmoUltError: TcxDBMemo
          Left = 570
          Top = 300
          Width = 200
          Height = 40
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'ultError'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 34
        end
"@

    $new_chunk = $orig_chunk.Substring(0, $last_end) + "`r`n" + $new_controls + "`r`n" + $orig_chunk.Substring($last_end)
    $c = $c.Substring(0, $idx1) + $new_chunk + $c.Substring($idx2)
    
    [IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
    Write-Host "Replaced successfully!"
} else {
    Write-Host "Not found"
}
