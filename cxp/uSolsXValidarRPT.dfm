inherited SolsXValidarRPT: TSolsXValidarRPT
  Left = 426
  Top = 185
  Caption = 'Reporte de Solicitudes por Validar'
  ClientHeight = 379
  ClientWidth = 717
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 14
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Label2: TLabel [1]
    Left = 212
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label3: TLabel [2]
    Left = 386
    Top = 14
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object cbStatus: TcxImageComboBox [3]
    Left = 46
    Top = 10
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = 'Aprobada'
        ImageIndex = 0
        Value = 'A'
      end
      item
        Description = 'No Revisada'
        Value = '1'
      end
      item
        Description = 'Primera Aprob.'
        Value = '3'
      end
      item
        Description = 'Revisada'
        Value = '4'
      end
      item
        Description = 'Rechazada'
        Value = 'C'
      end
      item
        Description = 'Pagada'
        Value = 'P'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deDesde: TcxDateEdit [4]
    Left = 250
    Top = 10
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object deHasta: TcxDateEdit [5]
    Left = 420
    Top = 10
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [6]
    Left = 550
    Top = 7
    Width = 95
    Height = 27
    Caption = 'Ver'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [7]
    Left = 3
    Top = 37
    Width = 707
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idSolicitud'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 50
      end
      object cxGrid1DBTableView1Numero: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 53
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 62
      end
      object cxGrid1DBTableView1Suplidor: TcxGridDBColumn
        Caption = 'Emitir pago a nombre de ...'
        DataBinding.FieldName = 'Nombre'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 144
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Options.Filtering = False
        Width = 52
      end
      object cxGrid1DBTableView1GranTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;(0.00)'
        Properties.ValidateOnEnter = True
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 84
      end
      object cxGrid1DBTableView1Notas: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 212
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'CtaBanco'
        Visible = False
        Options.Filtering = False
        Width = 135
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [8]
    Left = 4
    Top = 347
    Width = 95
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [9]
    Left = 118
    Top = 347
    Width = 95
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = 'Excel'
    TabOrder = 6
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [10]
    Left = 615
    Top = 347
    Width = 95
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 7
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpSolsPorValidarRPT;1'
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
        Name = '@st'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 338
    Top = 98
    object rsidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 6000
    end
    object rsstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object rsTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 13
    end
    object rsCtaBanco: TStringField
      FieldName = 'CtaBanco'
      Size = 100
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Solicitudes por validar.xls'
    Left = 96
    Top = 222
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DS
    UserName = 'BDEPipeline1'
    Left = 106
    Top = 78
    object ppBDEPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSolicitud'
      FieldName = 'idSolicitud'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 6000
      DisplayWidth = 6000
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'status'
      FieldName = 'status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 13
      DisplayWidth = 13
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'CtaBanco'
      FieldName = 'CtaBanco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 210
    Top = 94
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        ParentWidth = True
        Weight = 0.500000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 28044
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 23813
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Fecha Sol.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 54504
        mmTop = 23813
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Beneficiario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 79640
        mmTop = 23813
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 23813
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 26988
        mmTop = 23813
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Solicitudes por validar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5969
        mmLeft = 794
        mmTop = 9260
        mmWidth = 77523
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 1058
        mmTop = 265
        mmWidth = 134144
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4784
        mmLeft = 529
        mmTop = 15875
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Moneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 149225
        mmTop = 23813
        mmWidth = 17727
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Numero'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Fecha'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Nombre'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 79640
        mmTop = 529
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Total'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 168275
        mmTop = 529
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Tipo'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 198173
        mmTop = 529
        mmWidth = 67204
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Moneda'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 149225
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 248180
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
      end
    end
  end
end
