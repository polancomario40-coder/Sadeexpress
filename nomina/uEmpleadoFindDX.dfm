inherited EmpleadoFindDX: TEmpleadoFindDX
  Left = 205
  Top = 198
  Width = 800
  Caption = 'EmpleadoFindDX'
  PixelsPerInch = 96
  TextHeight = 13
  inherited BitBtn1: TcxButton
    Left = 517
  end
  inherited BitBtn2: TcxButton
    Left = 687
  end
  inherited Grid: TcxGrid
    Left = 3
    Top = 38
    Width = 787
    Height = 380
    inherited tblView: TcxGridDBTableView
      object tblViewEmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
      end
      object tblViewNombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object tblViewApellido: TcxGridDBColumn
        DataBinding.FieldName = 'Apellido'
      end
      object tblViewFoto: TcxGridDBColumn
        DataBinding.FieldName = 'Foto'
        PropertiesClassName = 'TcxImageProperties'
        Properties.Stretch = True
        Visible = False
      end
      object tblViewDepartamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
      end
      object tblViewSeccion: TcxGridDBColumn
        Caption = 'Secci'#243'n'
        DataBinding.FieldName = 'Seccion'
      end
      object tblViewCedula: TcxGridDBColumn
        Caption = 'C'#233'dula'
        DataBinding.FieldName = 'Cedula'
      end
      object tblViewActivo: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
      end
    end
  end
  inherited cbAutofit: TcxCheckBox
    Top = 428
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 792
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 14541277
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    DesignSize = (
      790
      35)
    object cbActivo: TcxCheckBox
      Left = 505
      Top = 10
      Width = 73
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Activo'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 640
      Top = 2
      Width = 145
      Height = 31
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 1
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
  end
  object cxCheckBox1: TcxCheckBox [5]
    Left = 232
    Top = 428
    Width = 187
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Ver fotos'
    Properties.OnChange = cxCheckBox1PropertiesChange
    TabOrder = 5
  end
  inherited DS: TDataSource
    Left = 253
    Top = 140
  end
  inherited RS: TADODataSet
    CommandText = 'nomEmpleadoListDX;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Activo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 317
    Top = 136
    object RSEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object RSNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object RSApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object RSDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object RSSeccion: TStringField
      FieldName = 'Seccion'
    end
    object RSCedula: TStringField
      FieldName = 'Cedula'
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
    end
    object RSFoto: TBlobField
      FieldName = 'Foto'
    end
  end
end
