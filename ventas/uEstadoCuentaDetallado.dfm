inherited EstadoCuentaDetallado: TEstadoCuentaDetallado
  Left = 448
  Top = 259
  ActiveControl = edtIdCliente
  Caption = 'Estado de Cuenta Detallado'
  ClientHeight = 430
  ClientWidth = 781
  Color = 16114392
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 781
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 781
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 469
    Top = 4
    Width = 310
    Height = 25
    Caption = 'Estado de Cuenta (Detallado)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 42
    Width = 48
    Height = 13
    Caption = 'A la fecha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Gradient4: TGradient
    Left = 3
    Top = 86
    Width = 775
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Gradient3: TGradient
    Left = 3
    Top = 394
    Width = 776
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label1: TLabel
    Left = 11
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 538
    Top = 64
    Width = 38
    Height = 13
    Caption = 'Moneda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpAl: TcxDateEdit
    Left = 66
    Top = 37
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 679
    Top = 32
    Width = 99
    Height = 26
    Caption = 'Mostrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 93
    Width = 775
    Height = 300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsEstadoCuentaDet
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Total'
          Column = cxGrid1DBTableView1Total
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Escala5'
          Column = cxGrid1DBTableView1Escala5
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Escala4'
          Column = cxGrid1DBTableView1Escala4
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Escala3'
          Column = cxGrid1DBTableView1Escala3
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Escala2'
          Column = cxGrid1DBTableView1Escala2
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Escala1'
          Column = cxGrid1DBTableView1Escala1
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1IdCxc: TcxGridDBColumn
        DataBinding.FieldName = 'IdCxc'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1Cxc: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'Cxc'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 84
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 79
      end
      object cxGrid1DBTableView1Vencimiento: TcxGridDBColumn
        Caption = 'Vence'
        DataBinding.FieldName = 'Vencimiento'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 79
      end
      object cxGrid1DBTableView1IdTipoDocumento: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'IdTipoDocumento'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 40
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'Total'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 84
      end
      object cxGrid1DBTableView1Balance: TcxGridDBColumn
        DataBinding.FieldName = 'Balance'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1IdCliente: TcxGridDBColumn
        DataBinding.FieldName = 'IdCliente'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1BalanceAPresentar: TcxGridDBColumn
        DataBinding.FieldName = 'BalanceAPresentar'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1FechaACalcular: TcxGridDBColumn
        DataBinding.FieldName = 'FechaACalcular'
        Visible = False
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGrid1DBTableView1Escala5: TcxGridDBColumn
        Caption = '91/9999'
        DataBinding.FieldName = 'Escala5'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 84
      end
      object cxGrid1DBTableView1Escala4: TcxGridDBColumn
        Caption = '61/90'
        DataBinding.FieldName = 'Escala4'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 82
      end
      object cxGrid1DBTableView1Escala3: TcxGridDBColumn
        Caption = '31/60'
        DataBinding.FieldName = 'Escala3'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 86
      end
      object cxGrid1DBTableView1Escala2: TcxGridDBColumn
        Caption = '1/30'
        DataBinding.FieldName = 'Escala2'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 77
      end
      object cxGrid1DBTableView1Escala1: TcxGridDBColumn
        Caption = '0/-30'
        DataBinding.FieldName = 'Escala1'
        Options.Filtering = False
        Options.IncSearch = False
        Width = 75
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSalir: TcxButton
    Left = 669
    Top = 402
    Width = 108
    Height = 26
    Caption = 'Reporte'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = bSalirClick
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 557
    Top = 402
    Width = 108
    Height = 26
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cbPorVencimiento: TcxCheckBox
    Left = 534
    Top = 37
    Width = 112
    Height = 21
    Caption = 'Por vencimiento'
    ParentFont = False
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edtIdCliente: TcxButtonEdit
    Left = 66
    Top = 60
    Width = 121
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtIdClientePropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
    OnExit = edtIdClienteExit
  end
  object edtCliente: TcxTextEdit
    Left = 189
    Top = 60
    Width = 323
    Height = 21
    TabStop = False
    Style.Color = 16512240
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object lkMoneda: TcxLookupComboBox
    Left = 581
    Top = 60
    Width = 196
    Height = 21
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListSource = dsMoneda
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxButton3: TcxButton
    Left = 4
    Top = 402
    Width = 108
    Height = 26
    Anchors = [akLeft, akBottom]
    Caption = 'Excel'
    TabOrder = 9
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object rsEstadoCuentaDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'CxcEstadoCuentaDetallado;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@FechaAl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IdClienteParametro'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PorVencimiento'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 448
    Top = 186
    object rsEstadoCuentaDetId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object rsEstadoCuentaDetIdCxc: TGuidField
      FieldName = 'IdCxc'
      FixedChar = True
      Size = 38
    end
    object rsEstadoCuentaDetCxc: TStringField
      FieldName = 'Cxc'
    end
    object rsEstadoCuentaDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEstadoCuentaDetVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsEstadoCuentaDetIdTipoDocumento: TStringField
      FieldName = 'IdTipoDocumento'
      Size = 2
    end
    object rsEstadoCuentaDetTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetBalance: TBCDField
      FieldName = 'Balance'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object rsEstadoCuentaDetCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object rsEstadoCuentaDetBalanceAPresentar: TBCDField
      FieldName = 'BalanceAPresentar'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetFechaACalcular: TDateTimeField
      FieldName = 'FechaACalcular'
    end
    object rsEstadoCuentaDetEscala1: TBCDField
      FieldName = 'Escala1'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetEscala2: TBCDField
      FieldName = 'Escala2'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetEscala3: TBCDField
      FieldName = 'Escala3'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetEscala4: TBCDField
      FieldName = 'Escala4'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 18
      Size = 2
    end
    object rsEstadoCuentaDetEscala5: TBCDField
      FieldName = 'Escala5'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 18
      Size = 2
    end
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'ClienteAct;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 266
    Top = 280
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
  end
  object rsMoneda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'svRSMoneda;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 164
    Top = 168
    object rsMonedaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMonedaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsMonedaCursoLegal: TBooleanField
      FieldName = 'CursoLegal'
    end
  end
  object dsEstadoCuentaDet: TDataSource
    DataSet = rsEstadoCuentaDet
    Left = 450
    Top = 238
  end
  object dsMoneda: TDataSource
    DataSet = rsMoneda
    Left = 170
    Top = 214
  end
  object dsClienteAct: TDataSource
    DataSet = ClienteAct
    Left = 272
    Top = 330
  end
  object plEstadoCDetallado: TppDBPipeline
    DataSource = dsEstadoCuentaDet
    UserName = 'plEstadoCDetallado'
    Left = 46
    Top = 190
    object plEstadoCDetalladoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Id'
      FieldName = 'Id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object plEstadoCDetalladoppField2: TppField
      FieldAlias = 'IdCxc'
      FieldName = 'IdCxc'
      FieldLength = 38
      DisplayWidth = 38
      Position = 1
    end
    object plEstadoCDetalladoppField3: TppField
      FieldAlias = 'Cxc'
      FieldName = 'Cxc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plEstadoCDetalladoppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plEstadoCDetalladoppField5: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plEstadoCDetalladoppField6: TppField
      FieldAlias = 'IdTipoDocumento'
      FieldName = 'IdTipoDocumento'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object plEstadoCDetalladoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object plEstadoCDetalladoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object plEstadoCDetalladoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdCliente'
      FieldName = 'IdCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object plEstadoCDetalladoppField10: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object plEstadoCDetalladoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceAPresentar'
      FieldName = 'BalanceAPresentar'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object plEstadoCDetalladoppField12: TppField
      FieldAlias = 'FechaACalcular'
      FieldName = 'FechaACalcular'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object plEstadoCDetalladoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Escala1'
      FieldName = 'Escala1'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object plEstadoCDetalladoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Escala2'
      FieldName = 'Escala2'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object plEstadoCDetalladoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Escala3'
      FieldName = 'Escala3'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object plEstadoCDetalladoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Escala4'
      FieldName = 'Escala4'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object plEstadoCDetalladoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Escala5'
      FieldName = 'Escala5'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
  end
  object rptEstadoCuentaDet: TppReport
    AutoStop = False
    DataPipeline = plEstadoCDetallado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 44
    Top = 240
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plEstadoCDetallado'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 56356
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7144
        mmLeft = 0
        mmTop = 43392
        mmWidth = 203200
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 50271
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Estado de Cuenta Detallado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5101
        mmLeft = 68733
        mmTop = 22490
        mmWidth = 65469
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Cuentas por Cobrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5101
        mmLeft = 78614
        mmTop = 27781
        mmWidth = 45974
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7673
        mmLeft = 2117
        mmTop = 794
        mmWidth = 121444
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 1852
        mmWidth = 39158
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 7408
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 137319
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1588
        mmTop = 51594
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 51594
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Vence'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47890
        mmTop = 51594
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 68263
        mmTop = 51594
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 87313
        mmTop = 51594
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = '91/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 107421
        mmTop = 51594
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = '61/90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 51594
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = '31/60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 51594
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = '1/30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 174890
        mmTop = 51594
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = '0/-30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 192882
        mmTop = 51594
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label11'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 2117
        mmTop = 45244
        mmWidth = 11134
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 25929
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 46567
        mmTop = 50536
        mmWidth = 4498
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 67469
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 183621
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 163513
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 142082
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 122502
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 99748
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 75936
        mmTop = 50271
        mmWidth = 4498
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'IdCliente'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 17198
        mmTop = 45244
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Cliente'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 44979
        mmWidth = 145786
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label14'
        Caption = 'A la fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 157427
        mmTop = 34131
        mmWidth = 16743
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Moneda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 157427
        mmTop = 38100
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Vencimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 34131
        mmWidth = 20902
        BandType = 0
      end
      object cbVencimiento: TmyCheckBox
        OnPrint = cbVencimientoPrint
        UserName = 'cbVencimiento'
        Transparent = True
        mmHeight = 5821
        mmLeft = 22754
        mmTop = 33073
        mmWidth = 6350
        BandType = 0
      end
      object lFechaAl: TppLabel
        OnPrint = lFechaAlPrint
        UserName = 'Label15'
        Caption = 'Label15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 34131
        mmWidth = 24077
        BandType = 0
      end
      object lMoneda: TppLabel
        OnPrint = lMonedaPrint
        UserName = 'lMoneda'
        Caption = 'lMoneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 38100
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Cxc'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Fecha'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Vencimiento'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'IdTipoDocumento'
        DataPipeline = plEstadoCDetallado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 68792
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Total'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Escala5'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,#.##;(#,#.##)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 101336
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Escala4'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,#.##;(#,#.##)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 123561
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Escala3'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,#.##;(#,#.##)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Escala2'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,#.##;(#,#.##)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 164836
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Escala1'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,#.##;(#,#.##)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 75936
        mmTop = 265
        mmWidth = 127000
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label13'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Total'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3831
        mmLeft = 77523
        mmTop = 1058
        mmWidth = 21696
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Escala5'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 101336
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'Escala4'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 122767
        mmTop = 1058
        mmWidth = 19050
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'Escala3'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 1058
        mmWidth = 19315
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'Escala2'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 164307
        mmTop = 1058
        mmWidth = 19050
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'Escala1'
        DataPipeline = plEstadoCDetallado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoCDetallado'
        mmHeight = 3704
        mmLeft = 185209
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'ListaRecibos.xls'
    Left = 286
    Top = 210
  end
end
