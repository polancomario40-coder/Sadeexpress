inherited CxCEmpleados: TCxCEmpleados
  Left = 216
  Top = 138
  Caption = 'CxCEmpleados'
  ClientHeight = 414
  ClientWidth = 630
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid [0]
    Left = 155
    Top = 8
    Width = 500
    Height = 198
    DisableThemes = False
    ControlType.Strings = (
      'Activo;CheckBox;true;false')
    Selected.Strings = (
      'Empleadoid'#9'11'#9'Empleadoid'
      'Empleado'#9'53'#9'Empleado'
      'Activo'#9'6'#9'Activo'
      'Departamento'#9'17'#9'Departamento')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Ctl3D = False
    DataSource = DS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object BLocalEmp: TBitBtn [1]
    Left = 6
    Top = 40
    Width = 139
    Height = 22
    Caption = 'Localizar &Empleado'
    TabOrder = 1
    OnClick = BLocalEmpClick
  end
  object BNuevo: TBitBtn [2]
    Left = 6
    Top = 78
    Width = 67
    Height = 22
    Caption = '&Nuevo CxC'
    TabOrder = 2
    OnClick = BNuevoClick
  end
  object bMostrar: TBitBtn [3]
    Left = 78
    Top = 78
    Width = 67
    Height = 22
    Caption = '&Mostrar CxC'
    TabOrder = 3
    OnClick = bMostrarClick
  end
  object BStado: TBitBtn [4]
    Left = 6
    Top = 104
    Width = 67
    Height = 22
    Caption = '&Stado CxC'
    TabOrder = 4
    OnClick = BStadoClick
  end
  object Pendiente: TCheckBox [5]
    Left = 7
    Top = 135
    Width = 72
    Height = 17
    Caption = 'Pendiente'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = PendienteClick
  end
  object BitBtn5: TBitBtn [6]
    Left = 9
    Top = 172
    Width = 64
    Height = 21
    TabOrder = 6
    Kind = bkClose
  end
  object BitBtn1: TBitBtn [7]
    Left = 78
    Top = 104
    Width = 67
    Height = 22
    Caption = '&Total CxC'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object wwDBGrid2: TwwDBGrid [8]
    Left = 1
    Top = 210
    Width = 654
    Height = 233
    DisableThemes = False
    ControlType.Strings = (
      'Activo;CheckBox;true;false')
    Selected.Strings = (
      'CxCEmpID'#9'10'#9'CxC'
      'Fecha'#9'18'#9'Fecha'
      'Total'#9'10'#9'Total'
      'Cuotas'#9'6'#9'Cuotas'
      'Descuento'#9'10'#9'Descuento'
      'Descontado'#9'11'#9'Descontado'
      'Balance'#9'10'#9'Balance'
      'Activo'#9'6'#9'Activo'
      'CxCEmp'#9'30'#9'Descripcion')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = dsCxcEmp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object cbVertical: TCheckBox [9]
    Left = 79
    Top = 135
    Width = 70
    Height = 17
    Caption = 'Resumido'
    TabOrder = 9
    OnClick = PendienteClick
  end
  object deHasta: TcxDateEdit [10]
    Left = 6
    Top = 16
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  inherited DS: TwwDataSource
    DataSet = Empleado
    Left = 256
    Top = 96
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = EmpleadoAfterScroll
    CommandText = 
      'select Empleadoid,  Apellido+'#39', '#39'+Nombre as Empleado, Activo, De' +
      'partamento'#13#10'From '#13#10'  Empleado E '#13#10'  JOIN Departamento D ON E.Dep' +
      'artamentoID = D.DepartamentoID'#13#10'Order by '#13#10'  Activo Desc,'#13#10'  emp' +
      'leadoID'
    Parameters = <>
    Left = 256
    Top = 48
    object EmpleadoEmpleadoid: TIntegerField
      DisplayWidth = 11
      FieldName = 'Empleadoid'
    end
    object EmpleadoEmpleado: TStringField
      DisplayWidth = 53
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object EmpleadoActivo: TBooleanField
      DisplayWidth = 6
      FieldName = 'Activo'
    end
    object EmpleadoDepartamento: TStringField
      DisplayWidth = 17
      FieldName = 'Departamento'
      Size = 30
    end
  end
  object CxCEmp: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'CxCEmpPendiente;1'
    CommandType = cmdStoredProc
    DataSource = DS
    IndexFieldNames = 'EmpleadoID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@EmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Pendiente'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 360
    Top = 268
    object CxCEmpCxCEmpID: TIntegerField
      DisplayLabel = 'CxC'
      DisplayWidth = 10
      FieldName = 'CxCEmpID'
    end
    object CxCEmpFecha: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Fecha'
    end
    object CxCEmpTotal: TBCDField
      DisplayWidth = 10
      FieldName = 'Total'
      Precision = 18
    end
    object CxCEmpCuotas: TIntegerField
      DisplayWidth = 6
      FieldName = 'Cuotas'
    end
    object CxCEmpDescuento: TBCDField
      DisplayWidth = 10
      FieldName = 'Descuento'
      Precision = 18
    end
    object CxCEmpDescontado: TBCDField
      DisplayWidth = 11
      FieldName = 'Descontado'
      Precision = 18
    end
    object CxCEmpBalance: TBCDField
      DisplayWidth = 10
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object CxCEmpActivo: TBooleanField
      DisplayWidth = 6
      FieldName = 'Activo'
    end
    object CxCEmpCxCEmp: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'CxCEmp'
      Size = 100
    end
    object CxCEmpEmpleadoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'EmpleadoID'
      Visible = False
    end
    object CxCEmpTipoTransaccionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TipoTransaccionID'
      Visible = False
    end
  end
  object dsCxcEmp: TDataSource
    DataSet = CxCEmp
    Left = 288
    Top = 268
  end
  object CxCEmpStadoCta: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = CxCEmpStadoCtaAfterScroll
    CommandText = 'CxCEmpStadoCta;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 568
    Top = 272
    object CxCEmpStadoCtaEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object CxCEmpStadoCtaEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object CxCEmpStadoCtaDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object CxCEmpStadoCtaCxCEmpID: TIntegerField
      FieldName = 'CxCEmpID'
    end
    object CxCEmpStadoCtaTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object CxCEmpStadoCtaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object CxCEmpStadoCtaTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
    end
    object CxCEmpStadoCtaCuotas: TIntegerField
      FieldName = 'Cuotas'
    end
    object CxCEmpStadoCtaDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
    end
    object CxCEmpStadoCtaDescontado: TBCDField
      FieldName = 'Descontado'
      Precision = 18
    end
    object CxCEmpStadoCtaBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object CxCEmpStadoCtaActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
  object dsCxCEmpStadoCta: TDataSource
    DataSet = CxCEmpStadoCta
    Left = 472
    Top = 280
  end
  object plCxCEmpStadoCta: TppDBPipeline
    DataSource = dsCxCEmpStadoCta
    UserName = 'plCxCEmpStadoCta'
    Left = 168
    Top = 308
    object plCxCEmpStadoCtappField1: TppField
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField2: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField3: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField4: TppField
      FieldAlias = 'CxCEmpID'
      FieldName = 'CxCEmpID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField5: TppField
      FieldAlias = 'TipoTransaccion'
      FieldName = 'TipoTransaccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField6: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField7: TppField
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField8: TppField
      FieldAlias = 'Cuotas'
      FieldName = 'Cuotas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField9: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField10: TppField
      FieldAlias = 'Descontado'
      FieldName = 'Descontado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField11: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plCxCEmpStadoCtappField12: TppField
      FieldAlias = 'Activo'
      FieldName = 'Activo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object RptCxCEmpStadoCta: TppReport
    AutoStop = False
    DataPipeline = plCxCEmpStadoCta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 48
    Top = 276
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCxCEmpStadoCta'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Estado de Cuentas de Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 529
        mmTop = 7673
        mmWidth = 144198
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 158221
        mmTop = 7144
        mmWidth = 44715
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 529
        mmWidth = 137054
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'CxCEmpID'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 30427
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'TipoTransaccion'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 265
        mmWidth = 38629
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Cuotas'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 265
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 123561
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxCEmpStadoCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3704
        mmLeft = 171186
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plCxCEmpStadoCta
        DataField = 'Activo'
        Transparent = True
        DataPipelineName = 'plCxCEmpStadoCta'
        mmHeight = 3969
        mmLeft = 196057
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plCxCEmpStadoCtaDet'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5821
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plCxCEmpStadoCtaDet
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 127000
          PrinterSetup.PaperSize = 125
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'plCxCEmpStadoCtaDet'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppLabel13: TppLabel
              UserName = 'Label13'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Trans # :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 265
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              HyperlinkEnabled = False
              DataField = 'TransaccionId'
              DataPipeline = plCxCEmpStadoCtaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plCxCEmpStadoCtaDet'
              mmHeight = 3704
              mmLeft = 15346
              mmTop = 265
              mmWidth = 19579
              BandType = 4
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Valor :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 35190
              mmTop = 265
              mmWidth = 14552
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              HyperlinkEnabled = False
              DataField = 'Transaccion'
              DataPipeline = plCxCEmpStadoCtaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plCxCEmpStadoCtaDet'
              mmHeight = 3704
              mmLeft = 50536
              mmTop = 265
              mmWidth = 43392
              BandType = 4
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'EmpleadoID'
      DataPipeline = plCxCEmpStadoCta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCxCEmpStadoCta'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 17992
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Empleado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 529
          mmTop = 2117
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'EmpleadoID'
          DataPipeline = plCxCEmpStadoCta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plCxCEmpStadoCta'
          mmHeight = 5027
          mmLeft = 25929
          mmTop = 2117
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Empleado'
          DataPipeline = plCxCEmpStadoCta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCxCEmpStadoCta'
          mmHeight = 5027
          mmLeft = 46038
          mmTop = 2117
          mmWidth = 115888
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 7673
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'Departamento'
          DataPipeline = plCxCEmpStadoCta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plCxCEmpStadoCta'
          mmHeight = 3704
          mmLeft = 25929
          mmTop = 7673
          mmWidth = 56621
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 5556
          mmTop = 14023
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Numero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 30427
          mmTop = 14023
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo de Transaccion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 47361
          mmTop = 14023
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 86784
          mmTop = 14023
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cuotas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 14023
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 123561
          mmTop = 14023
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descontado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 146050
          mmTop = 14023
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Balance'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 171186
          mmTop = 14023
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Act'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 194469
          mmTop = 14023
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object CxCEmpStadoCtaDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'CxCEmpStadoCtaDet;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CxCEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 568
    Top = 224
  end
  object dsCxCEmpStadoCtaDet: TDataSource
    DataSet = CxCEmpStadoCtaDet
    Left = 472
    Top = 232
  end
  object plCxCEmpStadoCtaDet: TppDBPipeline
    DataSource = dsCxCEmpStadoCtaDet
    UserName = 'plCxCEmpStadoCtaDet'
    Left = 168
    Top = 260
  end
  object dsCxcEmpleados: TDataSource
    DataSet = CxcEmpleados
    Left = 286
    Top = 220
  end
  object CxcEmpleados: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SPCxCEmpleadosXFecha;1'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 360
    Top = 220
    object CxcEmpleadosEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object CxcEmpleadosNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object CxcEmpleadosApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object CxcEmpleadosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object CxcEmpleadosTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object CxcEmpleadosTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 2
    end
    object CxcEmpleadosCuotas: TIntegerField
      FieldName = 'Cuotas'
    end
    object CxcEmpleadosDescontado: TBCDField
      FieldName = 'Descontado'
      Precision = 18
    end
    object CxcEmpleadosBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 21
    end
    object CxcEmpleadosActivo: TBooleanField
      FieldName = 'Activo'
    end
    object CxcEmpleadosCXCEmp: TStringField
      FieldName = 'CXCEmp'
      Size = 100
    end
  end
  object plCxcEmpleados: TppDBPipeline
    DataSource = dsCxcEmpleados
    UserName = 'plCxcEmpleados'
    Left = 168
    Top = 212
  end
  object RptCxcEmpleados: TppReport
    AutoStop = False
    DataPipeline = plCxcEmpleados
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 48
    Top = 220
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCxcEmpleados'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 142346
        mmTop = 2117
        mmWidth = 53446
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Listado de CxC Pendientes de Empleados '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 265
        mmTop = 7408
        mmWidth = 107421
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 265
        mmTop = 20638
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73819
        mmTop = 20638
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 97102
        mmTop = 20638
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 20638
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descontado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 20638
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 20638
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Activo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 20638
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 529
        mmWidth = 137054
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plCxcEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plCxcEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plCxcEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCxcEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 73819
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 97102
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Cuotas'
        DataPipeline = plCxcEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plCxcEmpleados
        DataField = 'Activo'
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3969
        mmLeft = 190236
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 199496
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 171450
        mmTop = 1588
        mmWidth = 25929
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3175
        mmLeft = 135202
        mmTop = 1058
        mmWidth = 21167
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 199496
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ReportCXCLS: TppReport
    AutoStop = False
    DataPipeline = plCxcEmpleados
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 46
    Top = 326
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCxcEmpleados'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 211667
        mmTop = 3175
        mmWidth = 50800
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Listado de CxC Pendientes de Empleados '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 265
        mmTop = 7938
        mmWidth = 107421
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 265
        mmTop = 19844
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 19844
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 19844
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 188648
        mmTop = 19844
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descontado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 202142
        mmTop = 19844
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224896
        mmTop = 19844
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Activo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 251090
        mmTop = 19844
        mmWidth = 12171
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23813
        mmWidth = 266701
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 227542
        mmTop = 6879
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 97367
        mmTop = 19844
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6646
        mmLeft = 529
        mmTop = 529
        mmWidth = 160602
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 16140
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 42333
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 73819
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Cuotas'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 188648
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 202142
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 224896
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plCxcEmpleados
        DataField = 'Activo'
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 4233
        mmLeft = 254265
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CXCEmp'
        DataPipeline = plCxcEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3440
        mmLeft = 97367
        mmTop = 0
        mmWidth = 64558
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3387
        mmLeft = 224896
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3387
        mmLeft = 164307
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpleados
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpleados'
        mmHeight = 3387
        mmLeft = 202142
        mmTop = 1058
        mmWidth = 21167
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object dsCxcEmpBalc: TwwDataSource
    AutoEdit = False
    DataSet = CxCBalc
    OnUpdateData = DSUpdateData
    Left = 302
    Top = 330
  end
  object CxCBalc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = EmpleadoAfterScroll
    CommandText = 'CXCEmpBalc;1'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 378
    Top = 328
    object CxCBalcEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object CxCBalcNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object CxCBalcApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object CxCBalctotal: TBCDField
      FieldName = 'total'
      Precision = 32
      Size = 2
    end
    object CxCBalcDescontado: TBCDField
      FieldName = 'Descontado'
      Precision = 32
      Size = 2
    end
    object CxCBalcBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object plCxcEmpBal: TppDBPipeline
    DataSource = dsCxcEmpBalc
    UserName = 'plCxcEmpBal'
    Left = 166
    Top = 362
  end
  object CxCEmpBalc: TppReport
    AutoStop = False
    DataPipeline = plCxcEmpBal
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 44
    Top = 374
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCxcEmpBal'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 142346
        mmTop = 2117
        mmWidth = 53446
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Listado de CxC Pendientes de Empleados '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 265
        mmTop = 7408
        mmWidth = 107421
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 265
        mmTop = 20638
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 97102
        mmTop = 20638
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descontado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 20638
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 20638
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText30'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 529
        mmWidth = 137054
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plCxcEmpBal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plCxcEmpBal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plCxcEmpBal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 97102
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 199496
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3704
        mmLeft = 159015
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 171450
        mmTop = 1588
        mmWidth = 25929
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 1058
        mmWidth = 199496
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCxcEmpBal
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxcEmpBal'
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
end
