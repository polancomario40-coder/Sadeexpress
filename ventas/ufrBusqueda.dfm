inherited frBusqueda: TfrBusqueda
  Left = 244
  Top = 146
  ActiveControl = edtBuscar
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 506
  ClientWidth = 792
  Color = 15528173
  Font.Name = 'MS Sans Serif'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    792
    506)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 54
    Width = 40
    Height = 13
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grid: TDBGrid
    Left = 9
    Top = 76
    Width = 773
    Height = 394
    Anchors = [akLeft, akTop, akRight, akBottom]
    Ctl3D = False
    DataSource = DS
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    OnTitleClick = gridTitleClick
  end
  object BitBtn1: TBitBtn
    Left = 705
    Top = 474
    Width = 78
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 615
    Top = 475
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object edtBuscar: TEdit
    Left = 56
    Top = 52
    Width = 726
    Height = 19
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnChange = edtBuscarChange
    OnKeyDown = edtBuscarKeyDown
  end
  object Panel1: TPanel
    Left = 1
    Top = 1
    Width = 781
    Height = 47
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Filtros'
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
  object DS: TDataSource
    DataSet = RS
    Left = 184
    Top = 100
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'BusqTest;1'
    CommandType = cmdStoredProc
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
        Size = 50
        Value = Null
      end>
    Left = 248
    Top = 96
  end
end
