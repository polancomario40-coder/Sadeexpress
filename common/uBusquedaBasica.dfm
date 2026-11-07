inherited frmBusquedaBasica: TfrmBusquedaBasica
  Left = 244
  Top = 279
  ActiveControl = edtBuscar
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Listar'
  ClientHeight = 288
  ClientWidth = 634
  Color = 15528173
  Font.Name = 'MS Sans Serif'
  Position = poMainFormCenter
  OnCreate = FormCreate
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
    Left = 1
    Top = 76
    Width = 632
    Height = 181
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsBasico
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
    Left = 554
    Top = 260
    Width = 78
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 464
    Top = 261
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object edtBuscar: TEdit
    Left = 56
    Top = 52
    Width = 576
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnChange = edtBuscarChange
  end
  object Panel1: TPanel
    Left = 1
    Top = 1
    Width = 631
    Height = 47
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Filtros'
    Color = clGray
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
  object dsBasico: TDataSource
    DataSet = qryBasico
    Left = 184
    Top = 100
  end
  object qryBasico: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 384
    Top = 112
  end
end
