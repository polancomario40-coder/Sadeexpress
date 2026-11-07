$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# Extract the block to move (since it was already removed, maybe it's not there?)
$regex = '(?s)\s*object Label16: TLabel.+?cxDBTextEdit1: TcxTextEdit.+?TabOrder = 20\s+end'
$match = [regex]::Match($c, $regex)
if ($match.Success) {
    $block = $match.Value
    $c = $c.Replace($block, "")
    $indented_block = $block -replace '(?m)^', '  '
} else {
    Write-Host "Label16 not found, probably already removed"
    # Wait, where is it now? It is saved in $indented_block from last script? No, ps1 execution doesn't persist vars.
    # Let's recreate it manually
    $indented_block = @"
    object Label16: TLabel
      Left = 275
      Top = 88
      Width = 53
      Height = 13
      Caption = 'Aplica A:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 330
      Top = 84
      Width = 115
      Height = 21
      DataBinding.DataField = 'idDocumento'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 19
    end
    object cxDBTextEdit1: TcxTextEdit
      Left = 450
      Top = 84
      Width = 120
      Height = 21
      Properties.ReadOnly = True
      Style.Color = 13818837
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 20
    end
"@
}

$lookup = "(?s)object dxDBLookupEdit2: TdxDBLookupEdit.+?StoredValues = 64\s+end"
$match2 = [regex]::Match($c, $lookup)
if ($match2.Success) {
    $lookup_block = $match2.Value
    $c = $c.Replace($lookup_block, $lookup_block + "`r`n" + $indented_block)
    [IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
    Write-Host "Moved Aplica A to HeaderPanel!"
} else {
    Write-Host "dxDBLookupEdit2 not found"
}
