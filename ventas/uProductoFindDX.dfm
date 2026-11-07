inherited ProductoFindDX: TProductoFindDX
  Left = 398
  Top = 203
  Width = 777
  ActiveControl = edFiltro
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'ProductoFindDX'
  PixelsPerInch = 96
  TextHeight = 13
  inherited BitBtn1: TcxButton
    Left = 548
  end
  inherited BitBtn2: TcxButton
    Left = 664
  end
  inherited Grid: TcxGrid
    Top = 95
    Width = 764
    Height = 323
    inherited tblView: TcxGridDBTableView
      object tblViewProducto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 334
      end
      object tblViewidProducto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idProducto'
        Width = 125
      end
      object tblViewReferencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 172
      end
      object tblViewContado: TcxGridDBColumn
        DataBinding.FieldName = 'Contado'
      end
      object tblViewCredito: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
      end
      object tblViewModelo: TcxGridDBColumn
        DataBinding.FieldName = 'Modelo'
        Width = 187
      end
      object tblViewGrupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 146
      end
      object tblViewLinea: TcxGridDBColumn
        DataBinding.FieldName = 'Linea'
        Width = 177
      end
      object tblViewInventario: TcxGridDBColumn
        DataBinding.FieldName = 'Inventario'
        Width = 148
      end
    end
  end
  inherited cbAutofit: TcxCheckBox
    Top = 428
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 769
    Height = 92
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 14541277
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    DesignSize = (
      767
      90)
    object Label2: TLabel
      Left = 16
      Top = 39
      Width = 25
      Height = 13
      Caption = 'Linea'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 19
      Width = 50
      Height = 13
      Caption = 'Inventario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 386
      Top = 59
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object inactivos: TcxCheckBox
      Left = 378
      Top = 12
      Width = 73
      Height = 21
      TabStop = False
      Caption = 'Inactivos'
      ParentFont = False
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object Inventario: TcxLookupComboBox
      Left = 80
      Top = 12
      Width = 281
      Height = 21
      Properties.KeyFieldNames = 'idInventario'
      Properties.ListColumns = <
        item
          FieldName = 'Inventario'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glHorizontal
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsInventarioList
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object lkLinea: TcxLookupComboBox
      Left = 80
      Top = 35
      Width = 281
      Height = 21
      Properties.KeyFieldNames = 'idLinea'
      Properties.ListColumns = <
        item
          FieldName = 'Linea'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glHorizontal
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsLinea
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object lkGrupo: TcxLookupComboBox
      Left = 426
      Top = 55
      Width = 321
      Height = 21
      Properties.KeyFieldNames = 'idGrupo'
      Properties.ListColumns = <
        item
          FieldName = 'Grupo'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glHorizontal
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGrupo
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxButton1: TcxButton
      Left = 605
      Top = 6
      Width = 145
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 6
      OnClick = cxButton1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00314A
        6300AD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005284B500086B
        E700315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0031A5
        FF00106BE700315A8C00B57B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF00319CFF00086BDE00315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF00319CFF00086BDE0031638C00A57B7B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0039A5FF00319CFF00106BCE00424A5A00FF00FF009C6B6300AD8C
        7B00AD8C7B00AD847300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0039ADFF00A5CEE700AD847B00AD847300E7CEB500FFFF
        DE00FFFFDE00FFFFCE00CEB59C00A5736B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C6947B00FFEFAD00FFFFCE00FFFF
        CE00FFFFD600FFFFDE00FFFFFF00E7D6D6009C6B6300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C7B00FFD69400FFF7C600FFFF
        D600FFFFDE00FFFFF700FFFFFF00FFFFFF00B5948400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9400EFB57B00FFEFBD00FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFE700EFDEBD00A57B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9C00EFA56300F7D69C00FFFF
        CE00FFFFD600FFFFDE00FFFFDE00FFFFD600EFE7C600AD7B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AD7B7300FFE7A500F7B57B00EFBD7B00F7DE
        A500FFFFCE00FFFFD600FFFFD600FFFFD600DEC6A500A5736B00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB59400FFFFDE00F7D6A500EFBD
        7B00F7C68C00FFE7AD00FFF7BD00FFFFCE00A5736B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A5736B00E7D6D600FFFFEF00F7CE
        8C00F7B57300F7C68C00FFE7A500C6A58C00A5736B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C6B6300BD948400EFD6
        A500EFD69C00E7C69400A5736B00A5736B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B
        7300AD847300A57B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
      LookAndFeel.NativeStyle = True
    end
    object edFiltro: TcxTextEdit
      Left = 80
      Top = 58
      Width = 281
      Height = 21
      Properties.OnChange = edFiltroPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 5
      OnKeyDown = edFiltroKeyDown
    end
    object cbFiltro: TcxImageComboBox
      Left = 4
      Top = 58
      Width = 71
      Height = 21
      TabStop = False
      EditValue = '1'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Contiene'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Inicia con'
          Value = 2
        end>
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
    object cbParaVender: TcxCheckBox
      Left = 464
      Top = 12
      Width = 133
      Height = 21
      TabStop = False
      Caption = 'Productos para vender'
      ParentFont = False
      Properties.AllowGrayed = True
      Properties.ImmediatePost = True
      State = cbsGrayed
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 7
    end
  end
  object cxButton2: TcxButton [5]
    Left = 205
    Top = 422
    Width = 100
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = '&Foto'
    TabOrder = 5
    TabStop = False
    OnClick = cxButton2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00314A
      6300AD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005284B500086B
      E700315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0031A5
      FF00106BE700315A8C00B57B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
      FF00319CFF00086BDE00315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0031A5FF00319CFF00086BDE0031638C00A57B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0039A5FF00319CFF00106BCE00424A5A00FF00FF009C6B6300AD8C
      7B00AD8C7B00AD847300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0039ADFF00A5CEE700AD847B00AD847300E7CEB500FFFF
      DE00FFFFDE00FFFFCE00CEB59C00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00C6947B00FFEFAD00FFFFCE00FFFF
      CE00FFFFD600FFFFDE00FFFFFF00E7D6D6009C6B6300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C7B00FFD69400FFF7C600FFFF
      D600FFFFDE00FFFFF700FFFFFF00FFFFFF00B5948400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9400EFB57B00FFEFBD00FFFF
      D600FFFFDE00FFFFF700FFFFF700FFFFE700EFDEBD00A57B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9C00EFA56300F7D69C00FFFF
      CE00FFFFD600FFFFDE00FFFFDE00FFFFD600EFE7C600AD7B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AD7B7300FFE7A500F7B57B00EFBD7B00F7DE
      A500FFFFCE00FFFFD600FFFFD600FFFFD600DEC6A500A5736B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB59400FFFFDE00F7D6A500EFBD
      7B00F7C68C00FFE7AD00FFF7BD00FFFFCE00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00A5736B00E7D6D600FFFFEF00F7CE
      8C00F7B57300F7C68C00FFE7A500C6A58C00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C6B6300BD948400EFD6
      A500EFD69C00E7C69400A5736B00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B
      7300AD847300A57B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [6]
    Left = 312
    Top = 422
    Width = 100
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = '&Detalles'
    TabOrder = 6
    TabStop = False
    OnClick = cxButton3Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00314A
      6300AD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005284B500086B
      E700315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5FF0031A5
      FF00106BE700315A8C00B57B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
      FF00319CFF00086BDE00315A8C00BD7B7B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0031A5FF00319CFF00086BDE0031638C00A57B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0039A5FF00319CFF00106BCE00424A5A00FF00FF009C6B6300AD8C
      7B00AD8C7B00AD847300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0039ADFF00A5CEE700AD847B00AD847300E7CEB500FFFF
      DE00FFFFDE00FFFFCE00CEB59C00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00C6947B00FFEFAD00FFFFCE00FFFF
      CE00FFFFD600FFFFDE00FFFFFF00E7D6D6009C6B6300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C7B00FFD69400FFF7C600FFFF
      D600FFFFDE00FFFFF700FFFFFF00FFFFFF00B5948400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9400EFB57B00FFEFBD00FFFF
      D600FFFFDE00FFFFF700FFFFF700FFFFE700EFDEBD00A57B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B58C7B00FFDE9C00EFA56300F7D69C00FFFF
      CE00FFFFD600FFFFDE00FFFFDE00FFFFD600EFE7C600AD7B7300FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AD7B7300FFE7A500F7B57B00EFBD7B00F7DE
      A500FFFFCE00FFFFD600FFFFD600FFFFD600DEC6A500A5736B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB59400FFFFDE00F7D6A500EFBD
      7B00F7C68C00FFE7AD00FFF7BD00FFFFCE00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00A5736B00E7D6D600FFFFEF00F7CE
      8C00F7B57300F7C68C00FFE7A500C6A58C00A5736B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C6B6300BD948400EFD6
      A500EFD69C00E7C69400A5736B00A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B
      7300AD847300A57B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TDataSource
    Left = 283
    Top = 64
  end
  inherited RS: TADODataSet
    CommandText = 'svProductoFind;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@idInventario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@IdLinea'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@IdGrupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Inactivo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@paraVenta'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@msk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSProducto: TStringField
      FieldName = 'Producto'
      ReadOnly = True
      Size = 50
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object RSContado: TFloatField
      FieldName = 'Contado'
      ReadOnly = True
    end
    object RSCredito: TFloatField
      FieldName = 'Credito'
      ReadOnly = True
    end
    object RSidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object RSLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object RSInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object RSporciento: TFloatField
      FieldName = 'porciento'
    end
  end
  object InventarioList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select '#13#10'  Null as idInventario,'#13#10'  '#39'Todos los Inventarios'#39' as I' +
      'nventario'#13#10'Union all'#13#10#13#10'Select '#13#10'  idInventario, '#13#10'  Inventario'#13 +
      #10'From'#13#10'  Inventario'#13#10'Order by'#13#10' 1'
    Parameters = <>
    Left = 144
    Top = 176
  end
  object Linea: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select '#13#10'  Null as idLinea,'#13#10'  '#39'Todas las Lineas'#39' as Linea'#13#10'Unio' +
      'n all'#13#10#13#10'Select '#13#10'  idLinea, '#13#10'  Linea'#13#10'From'#13#10'  Linea'#13#10'--Where'#13#10 +
      '--  IdInventario = :IdInventario'#13#10'Order by'#13#10' 1'
    DataSource = dsInventarioList
    Parameters = <>
    Left = 220
    Top = 178
  end
  object Grupo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select '#13#10'  Null as idGrupo,'#13#10'  '#39'Todos los Grupos'#39' as Grupo'#13#10'Unio' +
      'n all'#13#10#13#10'Select '#13#10'  idGrupo, '#13#10'  Grupo'#13#10'From'#13#10'  Grupo'#13#10'--Where'#13#10 +
      '--  IdLinea = :IdLinea'#13#10'Order by'#13#10' 1'
    DataSource = dsLinea
    Parameters = <>
    Left = 294
    Top = 182
  end
  object dsGrupo: TDataSource
    DataSet = Grupo
    Left = 294
    Top = 238
  end
  object dsLinea: TDataSource
    DataSet = Linea
    Left = 220
    Top = 234
  end
  object dsInventarioList: TDataSource
    DataSet = InventarioList
    Left = 144
    Top = 232
  end
  object rsBuscarFoto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select foto '#13#10'from producto '#13#10'where idProducto = :idProducto'
    Parameters = <
      item
        Name = 'idProducto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end>
    Left = 412
    Top = 218
    object rsBuscarFotofoto: TBlobField
      FieldName = 'foto'
    end
  end
end
