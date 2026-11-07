inherited BuscarCheques: TBuscarCheques
  Left = 227
  Top = 182
  Caption = 'Buscar cheques'
  ClientHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape9: TShape
    Top = 401
  end
  inherited sbOk: TSpeedButton
    Top = 407
  end
  inherited sbCancel: TSpeedButton
    Top = 407
  end
  inherited dxNavBar1: TdxNavBar
    Top = 39
    Width = 219
    inherited nbgNumero: TdxNavBarGroup
      Links = <>
    end
    inherited nbgRangoFecs: TdxNavBarGroup
      Expanded = False
      Links = <>
    end
    inherited nbgNombres: TdxNavBarGroup
      Links = <>
    end
    object nbgDoc: TdxNavBarGroup [3]
      Caption = 'Buscar por documento'
      LinksUseSmallImages = True
      SelectedLinkIndex = -1
      ShowAsIconView = False
      ShowControl = True
      TopVisibleLinkIndex = 0
      UseControl = True
      UseSmallImages = True
      Visible = True
      Links = <>
    end
    inherited nbgNumeroControl: TdxNavBarGroupControl
      Width = 197
      Height = 87
      GroupIndex = 0
      OriginalHeight = 86
    end
    inherited nbgRangoFecsControl: TdxNavBarGroupControl
      Left = 10
      Top = 121
      Width = 199
      Height = 25
      GroupIndex = 1
      OriginalHeight = 92
    end
    inherited nbgNombresControl: TdxNavBarGroupControl
      Top = 175
      Width = 197
      Height = 75
      GroupIndex = 2
      OriginalHeight = 74
      inherited cxButton3: TcxButton
        Top = 42
      end
    end
    object nbgDocControl: TdxNavBarGroupControl
      Left = 11
      Top = 280
      Width = 197
      Height = 70
      TabOrder = 3
      GroupIndex = 3
      OriginalHeight = 69
      object Label6: TLabel
        Left = 4
        Top = 6
        Width = 58
        Height = 13
        Caption = 'Documento:'
        Transparent = True
      end
      object edDoc: TcxTextEdit
        Left = 4
        Top = 21
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object cxButton4: TcxButton
        Left = 102
        Top = 43
        Width = 85
        Height = 25
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = cxButton4Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
          CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
          1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
          7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
          D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
          A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
          81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
          7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
          A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
          93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
          E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
          BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
          A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
          EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
          D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
          B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
          8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
          DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
          55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
          E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
          6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
          926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.NativeStyle = True
      end
    end
  end
  inherited dxDBGrid1: TdxDBGrid
    Left = 226
    Top = 39
    Width = 512
    KeyField = 'idDocumento'
    Filter.Criteria = {00000000}
    object dxDBGrid1idDocumento: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idDocumento'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Caption = 'Cheque'
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1Total: TdxDBGridCurrencyColumn
      Width = 103
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Total'
      Nullable = False
    end
    object dxDBGrid1Telefono1: TdxDBGridMaskColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Telefono1'
    end
    object dxDBGrid1Nombre: TdxDBGridMaskColumn
      Width = 604
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
    object dxDBGrid1RNC: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RNC'
    end
    object dxDBGrid1RefDoc: TdxDBGridMaskColumn
      Caption = 'Doc. pagado'
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RefDoc'
    end
    object dxDBGrid1FechaDoc: TdxDBGridDateColumn
      Caption = 'Fecha doc'
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FechaDoc'
    end
  end
  inherited rsRecs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select   '#13#10#9'd.idDocumento,'#13#10#9'd.Referencia,'#13#10#9'd.Fecha,'#13#10#9'd.Total,' +
      #13#10#9's.Telefono1,'#13#10#9's.Nombre,'#13#10#9's.RNC,'#13#10#9'0 as DocXPagar,'#13#10#9#39' '#39' as ' +
      'RefDoc,'#13#10#9'getdate() as FechaDoc'#13#10'  from cxpDocumentos d left joi' +
      'n cxpSuplidores s '#13#10'   on d.idSuplidor = s.idSuplidor '
    Left = 408
    object rsRecsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsRecsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsRecsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRecsTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 22
      Size = 2
    end
    object rsRecsTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object rsRecsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRecsRNC: TStringField
      FieldName = 'RNC'
    end
    object rsRecsDocXPagar: TIntegerField
      FieldName = 'DocXPagar'
      ReadOnly = True
    end
    object rsRecsRefDoc: TStringField
      FieldName = 'RefDoc'
      ReadOnly = True
      Size = 1
    end
    object rsRecsFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
      ReadOnly = True
    end
  end
end
