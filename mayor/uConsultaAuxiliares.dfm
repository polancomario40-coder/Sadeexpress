object ConsultaAuxiliares: TConsultaAuxiliares
  Left = 372
  Top = 164
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consultar auxiliares'
  ClientHeight = 493
  ClientWidth = 870
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label2: TLabel
    Left = 6
    Top = 38
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label3: TLabel
    Left = 224
    Top = 38
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object beCta: TcxButtonEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beCtaPropertiesButtonClick
    Properties.OnValidate = beCtaPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object edDescr: TcxTextEdit
    Left = 176
    Top = 8
    Width = 443
    Height = 21
    TabStop = False
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object Grid: TcxGrid
    Left = 6
    Top = 62
    Width = 859
    Height = 387
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idAuxiliar'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      object GridDBTableView1idAuxiliar: TcxGridDBColumn
        Caption = 'Aux No.'
        DataBinding.FieldName = 'idAuxiliar'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.Filtering = False
        Width = 57
      end
      object GridDBTableView1Auxiliar: TcxGridDBColumn
        DataBinding.FieldName = 'Auxiliar'
        Options.Editing = False
        Options.Filtering = False
        Width = 300
      end
      object GridDBTableView1BalInicial: TcxGridDBColumn
        Caption = 'Bal Inicial'
        DataBinding.FieldName = 'BalInicial'
        Options.Editing = False
        Options.Filtering = False
        Width = 98
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
        Options.Filtering = False
        Width = 91
      end
      object GridDBTableView1Entrada: TcxGridDBColumn
        DataBinding.FieldName = 'Entrada'
        Options.Editing = False
        Options.Filtering = False
        Width = 87
      end
      object GridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Editing = False
        Options.Filtering = False
        Width = 87
      end
      object GridDBTableView1BalFinal: TcxGridDBColumn
        Caption = 'Bal Final'
        DataBinding.FieldName = 'BalFinal'
        Options.Editing = False
        Options.Filtering = False
        Width = 110
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 742
    Top = 26
    Width = 123
    Height = 29
    Caption = 'Mostrar'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object deDesde: TcxDateEdit
    Left = 46
    Top = 34
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deHasta: TcxDateEdit
    Left = 272
    Top = 34
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxButton2: TcxButton
    Left = 740
    Top = 454
    Width = 123
    Height = 29
    Caption = 'Salir'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object rsCta: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from cgCatalogoCuentas'#13#10'where idCuenta = :idCuenta'
    Parameters = <
      item
        Name = 'idCuenta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 210
    Top = 78
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgMovAuxiliarCta;1'
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
        Name = '@idcta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 290
    Top = 76
    object rsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsAuxiliar: TStringField
      FieldName = 'Auxiliar'
      Size = 200
    end
    object rsOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 1
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEntrada: TStringField
      FieldName = 'Entrada'
    end
    object rsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsBalInicial: TBCDField
      FieldName = 'BalInicial'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsBalFinal: TBCDField
      FieldName = 'BalFinal'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
  end
  object ds: TDataSource
    DataSet = rs
    Left = 328
    Top = 222
  end
end
