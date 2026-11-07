inherited RPTNominaPeriodo: TRPTNominaPeriodo
  Left = 371
  Top = 243
  Caption = 'Reporte de nomina por rango de fechas'
  ClientHeight = 397
  ClientWidth = 702
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 12
    Width = 34
    Height = 13
    Caption = 'Desde:'
    Transparent = True
  end
  object Label2: TLabel [1]
    Left = 178
    Top = 12
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Transparent = True
  end
  object cxButton1: TcxButton [2]
    Left = 347
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [3]
    Left = 433
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Excel'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [4]
    Left = 520
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [5]
    Left = 607
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object deDesde: TcxDateEdit [6]
    Left = 42
    Top = 8
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deHasta: TcxDateEdit [7]
    Left = 218
    Top = 8
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxGrid1: TcxGrid [8]
    Left = 6
    Top = 34
    Width = 693
    Height = 353
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'KeyField'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      object cxGrid1DBTableView1NominaID: TcxGridDBColumn
        Caption = 'Nomina #'
        DataBinding.FieldName = 'NominaID'
        Width = 79
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object cxGrid1DBTableView1Desde: TcxGridDBColumn
        DataBinding.FieldName = 'Desde'
      end
      object cxGrid1DBTableView1Hasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
      end
      object cxGrid1DBTableView1MesCalendario: TcxGridDBColumn
        Caption = 'Mes'
        DataBinding.FieldName = 'MesCalendario'
      end
      object cxGrid1DBTableView1Departamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
      end
      object cxGrid1DBTableView1Seccion: TcxGridDBColumn
        DataBinding.FieldName = 'Seccion'
      end
      object cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
      end
      object cxGrid1DBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object cxGrid1DBTableView1Apellido: TcxGridDBColumn
        DataBinding.FieldName = 'Apellido'
      end
      object cxGrid1DBTableView1Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'Cedula'
      end
      object cxGrid1DBTableView1Posicion: TcxGridDBColumn
        DataBinding.FieldName = 'Posicion'
      end
      object cxGrid1DBTableView1Sueldo: TcxGridDBColumn
        DataBinding.FieldName = 'Sueldo'
      end
      object cxGrid1DBTableView1Direccion: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
      end
      object cxGrid1DBTableView1Ciudad: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
      end
      object cxGrid1DBTableView1Telefono1: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono1'
      end
      object cxGrid1DBTableView1Telefono2: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono2'
      end
      object cxGrid1DBTableView1Activo: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
      end
      object cxGrid1DBTableView1TipoEmpleado: TcxGridDBColumn
        DataBinding.FieldName = 'TipoEmpleado'
      end
      object cxGrid1DBTableView1HoraNormal: TcxGridDBColumn
        DataBinding.FieldName = 'HoraNormal'
      end
      object cxGrid1DBTableView1HoraNocturna: TcxGridDBColumn
        DataBinding.FieldName = 'HoraNocturna'
      end
      object cxGrid1DBTableView1HoraExtra: TcxGridDBColumn
        DataBinding.FieldName = 'HoraExtra'
      end
      object cxGrid1DBTableView1HoraDoble: TcxGridDBColumn
        DataBinding.FieldName = 'HoraDoble'
      end
      object cxGrid1DBTableView1PrecioNormal: TcxGridDBColumn
        DataBinding.FieldName = 'PrecioNormal'
      end
      object cxGrid1DBTableView1PrecioNocturna: TcxGridDBColumn
        DataBinding.FieldName = 'PrecioNocturna'
      end
      object cxGrid1DBTableView1PrecioExtra: TcxGridDBColumn
        DataBinding.FieldName = 'PrecioExtra'
      end
      object cxGrid1DBTableView1PrecioDoble: TcxGridDBColumn
        DataBinding.FieldName = 'PrecioDoble'
      end
      object cxGrid1DBTableView1TotalNormal: TcxGridDBColumn
        DataBinding.FieldName = 'TotalNormal'
      end
      object cxGrid1DBTableView1TotalNocturna: TcxGridDBColumn
        DataBinding.FieldName = 'TotalNocturna'
      end
      object cxGrid1DBTableView1TotalExtra: TcxGridDBColumn
        DataBinding.FieldName = 'TotalExtra'
      end
      object cxGrid1DBTableView1TotalDoble: TcxGridDBColumn
        DataBinding.FieldName = 'TotalDoble'
      end
      object cxGrid1DBTableView1OtrosIngresos: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosIngresos'
      end
      object cxGrid1DBTableView1Bruto: TcxGridDBColumn
        DataBinding.FieldName = 'Bruto'
      end
      object cxGrid1DBTableView1SS: TcxGridDBColumn
        DataBinding.FieldName = 'SS'
      end
      object cxGrid1DBTableView1IR: TcxGridDBColumn
        DataBinding.FieldName = 'IR'
      end
      object cxGrid1DBTableView1AFP: TcxGridDBColumn
        DataBinding.FieldName = 'AFP'
      end
      object cxGrid1DBTableView1OtrosDescuentos: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosDescuentos'
      end
      object cxGrid1DBTableView1TDescuentos: TcxGridDBColumn
        DataBinding.FieldName = 'TDescuentos'
      end
      object cxGrid1DBTableView1Neto: TcxGridDBColumn
        DataBinding.FieldName = 'Neto'
      end
      object cxGrid1DBTableView1Notas: TcxGridDBColumn
        DataBinding.FieldName = 'Notas'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 311
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'nomRPTNominaRango;1'
    CommandTimeout = 180
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
    Left = 172
    Top = 138
    object rsNominaID: TIntegerField
      FieldName = 'NominaID'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object rsHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object rsMesCalendario: TSmallintField
      FieldName = 'MesCalendario'
    end
    object rsDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object rsSeccion: TStringField
      FieldName = 'Seccion'
    end
    object rsEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object rsHoraNormal: TBCDField
      FieldName = 'HoraNormal'
      Precision = 18
      Size = 2
    end
    object rsHoraNocturna: TBCDField
      FieldName = 'HoraNocturna'
      Precision = 18
      Size = 2
    end
    object rsHoraExtra: TBCDField
      FieldName = 'HoraExtra'
      Precision = 18
      Size = 2
    end
    object rsHoraDoble: TBCDField
      FieldName = 'HoraDoble'
      Precision = 18
      Size = 2
    end
    object rsPrecioNormal: TBCDField
      FieldName = 'PrecioNormal'
      Precision = 18
    end
    object rsPrecioNocturna: TBCDField
      FieldName = 'PrecioNocturna'
      Precision = 18
    end
    object rsPrecioExtra: TBCDField
      FieldName = 'PrecioExtra'
      Precision = 18
    end
    object rsPrecioDoble: TBCDField
      FieldName = 'PrecioDoble'
      Precision = 18
    end
    object rsTotalNormal: TBCDField
      FieldName = 'TotalNormal'
      Precision = 18
      Size = 2
    end
    object rsTotalNocturna: TBCDField
      FieldName = 'TotalNocturna'
      Precision = 18
      Size = 2
    end
    object rsTotalExtra: TBCDField
      FieldName = 'TotalExtra'
      Precision = 18
      Size = 2
    end
    object rsTotalDoble: TBCDField
      FieldName = 'TotalDoble'
      Precision = 18
      Size = 2
    end
    object rsOtrosIngresos: TBCDField
      FieldName = 'OtrosIngresos'
      Precision = 19
      Size = 2
    end
    object rsBruto: TBCDField
      FieldName = 'Bruto'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsSS: TBCDField
      FieldName = 'SS'
      Precision = 19
      Size = 2
    end
    object rsIR: TBCDField
      FieldName = 'IR'
      Precision = 19
      Size = 2
    end
    object rsAFP: TBCDField
      FieldName = 'AFP'
      Precision = 19
      Size = 2
    end
    object rsOtrosDescuentos: TBCDField
      FieldName = 'OtrosDescuentos'
      Precision = 19
      Size = 2
    end
    object rsTDescuentos: TBCDField
      FieldName = 'TDescuentos'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsNotas: TStringField
      FieldName = 'Notas'
      Size = 60
    end
    object rsDias: TBCDField
      FieldName = 'Dias'
      Precision = 19
    end
    object rsCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object rsVolante: TIntegerField
      FieldName = 'Volante'
    end
    object rsNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object rsTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object rsEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object rsNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object rsApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object rsCedula: TStringField
      FieldName = 'Cedula'
    end
    object rsPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
    object rsSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object rsDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
    object rsCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object rsTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 15
    end
    object rsNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object rsActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object rsidEmpleadoRoll: TStringField
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object rsTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object rsKeyField: TGuidField
      FieldName = 'KeyField'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'nominas.xls'
    Left = 580
    Top = 262
  end
  object RepNom: TppReport
    AutoStop = False
    DataPipeline = Data
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 11430
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desarrollo\ZFSys\Nomina\Nom85x11.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Spanish (Spain)'
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
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 378
    Top = 106
    Version = '15.02'
    mmColumnWidth = 266701
    DataPipelineName = 'Data'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppDBText81: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
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
        mmHeight = 7662
        mmLeft = 0
        mmTop = 529
        mmWidth = 193675
        BandType = 1
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkEnabled = False
        Caption = 'Desde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15346
        mmWidth = 11642
        BandType = 1
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkEnabled = False
        Caption = 'Hasta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 20373
        mmWidth = 10848
        BandType = 1
      end
      object ppLabel313: TppLabel
        UserName = 'Label313'
        HyperlinkEnabled = False
        Caption = 'Reporte de N'#243'mina por rango de fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5122
        mmLeft = 0
        mmTop = 9525
        mmWidth = 84328
        BandType = 1
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable19'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 239200
        mmTop = 2117
        mmWidth = 17695
        BandType = 1
      end
      object ppSystemVariable20: TppSystemVariable
        UserName = 'SystemVariable20'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 234765
        mmTop = 7144
        mmWidth = 21802
        BandType = 1
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 15346
        mmWidth = 34131
        BandType = 1
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable2Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 20108
        mmWidth = 34131
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 4498
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        Caption = 'DATOS DE EMPLEADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 265
        mmWidth = 38365
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 240771
        mmTop = 4498
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        Caption = 'SUELDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 244475
        mmTop = 265
        mmWidth = 14552
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 224103
        mmTop = 4498
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 227807
        mmTop = 265
        mmWidth = 11377
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 4498
        mmLeft = 171980
        mmTop = 4498
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Caption = 'DESCUENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 191030
        mmTop = 265
        mmWidth = 25400
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape3'
        mmHeight = 4498
        mmLeft = 153723
        mmTop = 4498
        mmWidth = 18256
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape2'
        mmHeight = 4498
        mmLeft = 73819
        mmTop = 4498
        mmWidth = 79904
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape1'
        mmHeight = 4498
        mmLeft = 42069
        mmTop = 4498
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Num.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 4498
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 11906
        mmTop = 4498
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Norm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 42069
        mmTop = 5027
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Extr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 5027
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Dobl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 57944
        mmTop = 5027
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Noct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 65617
        mmTop = 5027
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Normal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 74613
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Extra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 90488
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Doble'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 106363
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nocturna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 121973
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 137584
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ARS(SS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 172509
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ISR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 196321
        mmTop = 5027
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 210080
        mmTop = 5027
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DESCUENT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 224632
        mmTop = 5027
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NETO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 240771
        mmTop = 5027
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'HORAS/DIAS TRAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 265
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        Caption = 'INGRESOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 265
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        Caption = 'SUELDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 265
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'AFP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 184150
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 9525
        mmWidth = 259081
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = Data
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = Data
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 0
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraNormal'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 42069
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraExtra'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraDoble'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 57944
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraNocturna'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 65617
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalNormal'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 74613
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalExtra'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 90488
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalDoble'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalNocturna'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bruto'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'SS'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 172509
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'IR'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 196321
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 224103
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Neto'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 240242
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText146: TppDBText
        UserName = 'DBText146'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AFP'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIngresos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 137848
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape8'
        Brush.Color = 14869218
        mmHeight = 5027
        mmLeft = 265
        mmTop = 0
        mmWidth = 258498
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc31'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraNormal'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 42069
        mmTop = 794
        mmWidth = 7408
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc32'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraExtra'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 794
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc33'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraDoble'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 57944
        mmTop = 794
        mmWidth = 7408
        BandType = 7
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc34'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'HoraNocturna'
        DataPipeline = Data
        DisplayFormat = '#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 65617
        mmTop = 794
        mmWidth = 6879
        BandType = 7
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc201'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalNormal'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 74613
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc36'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalExtra'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 90488
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc37'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalDoble'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc38'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TotalNocturna'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIngresos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc40: TppDBCalc
        UserName = 'DBCalc40'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bruto'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 794
        mmWidth = 16404
        BandType = 7
      end
      object ppDBCalc41: TppDBCalc
        UserName = 'DBCalc41'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'SS'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 172509
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc42: TppDBCalc
        UserName = 'DBCalc42'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'IR'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 196321
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc43: TppDBCalc
        UserName = 'DBCalc43'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 794
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc44: TppDBCalc
        UserName = 'DBCalc44'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'TDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 224103
        mmTop = 794
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc45: TppDBCalc
        UserName = 'DBCalc301'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Neto'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 240242
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label28'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Gral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 794
        mmWidth = 17463
        BandType = 7
      end
      object ppDBCalc81: TppDBCalc
        UserName = 'DBCalc81'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AFP'
        DataPipeline = Data
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc54: TppDBCalc
        UserName = 'DBCalc54'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'EmpleadoID'
        DisplayFormat = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3175
        mmLeft = 32808
        mmTop = 794
        mmWidth = 8202
        BandType = 7
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        HyperlinkEnabled = False
        Caption = 'Emps:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 24871
        mmTop = 794
        mmWidth = 7408
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Departamento'
      DataPipeline = Data
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Data'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText36: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Departamento'
          DataPipeline = Data
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 0
          mmWidth = 89165
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape12: TppShape
          UserName = 'Shape9'
          Brush.Color = 14869218
          mmHeight = 4763
          mmLeft = 265
          mmTop = 0
          mmWidth = 258498
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraNormal'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3440
          mmLeft = 42069
          mmTop = 794
          mmWidth = 7408
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraExtra'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3440
          mmLeft = 50006
          mmTop = 794
          mmWidth = 7673
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraDoble'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3440
          mmLeft = 57944
          mmTop = 794
          mmWidth = 7408
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraNocturna'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3440
          mmLeft = 65617
          mmTop = 794
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalNormal'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 74613
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalExtra'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 90488
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalDoble'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 106363
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalNocturna'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 121973
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosIngresos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 137584
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bruto'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 154517
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'SS'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 172509
          mmTop = 794
          mmWidth = 11377
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc27'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'IR'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 196321
          mmTop = 794
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 210080
          mmTop = 794
          mmWidth = 13494
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 224103
          mmTop = 794
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Neto'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 240242
          mmTop = 794
          mmWidth = 17992
          BandType = 5
          GroupNo = 1
        end
        object ppLabel52: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Depto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc80: TppDBCalc
          UserName = 'DBCalc80'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AFP'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 184150
          mmTop = 794
          mmWidth = 11377
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'EmpleadoID'
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3175
          mmLeft = 32808
          mmTop = 794
          mmWidth = 8202
          BandType = 5
          GroupNo = 1
        end
        object ppLabel167: TppLabel
          UserName = 'Label167'
          HyperlinkEnabled = False
          Caption = 'Emps:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 25135
          mmTop = 794
          mmWidth = 7144
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Seccion'
      DataPipeline = Data
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Data'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText37: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Seccion'
          DataPipeline = Data
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3704
          mmLeft = 8202
          mmTop = 265
          mmWidth = 85990
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape17: TppShape
          UserName = 'Shape17'
          Brush.Color = 14869218
          mmHeight = 4763
          mmLeft = 7938
          mmTop = 0
          mmWidth = 250561
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraNormal'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 42069
          mmTop = 265
          mmWidth = 7408
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraExtra'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 50006
          mmTop = 265
          mmWidth = 7673
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraDoble'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 57944
          mmTop = 265
          mmWidth = 7408
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'HoraNocturna'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 65617
          mmTop = 265
          mmWidth = 6879
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalNormal'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 74613
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalExtra'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 90488
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalDoble'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 106363
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TotalNocturna'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 121973
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosIngresos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 137584
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bruto'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 154517
          mmTop = 265
          mmWidth = 16404
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'SS'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 172509
          mmTop = 265
          mmWidth = 11377
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'IR'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 196321
          mmTop = 265
          mmWidth = 12965
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 210080
          mmTop = 265
          mmWidth = 13494
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'TDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 224103
          mmTop = 265
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Neto'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 240242
          mmTop = 265
          mmWidth = 17992
          BandType = 5
          GroupNo = 2
        end
        object ppLabel53: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Secc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3175
          mmLeft = 8467
          mmTop = 0
          mmWidth = 15346
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc79: TppDBCalc
          UserName = 'DBCalc79'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AFP'
          DataPipeline = Data
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 184150
          mmTop = 265
          mmWidth = 11377
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'EmpleadoID'
          DataPipeline = Data
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 32808
          mmTop = 265
          mmWidth = 8202
          BandType = 5
          GroupNo = 2
        end
        object ppLabel166: TppLabel
          UserName = 'Label166'
          HyperlinkEnabled = False
          Caption = 'Emps:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 25135
          mmTop = 265
          mmWidth = 7408
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Data: TppDBPipeline
    DataSource = DS
    CloseDataSource = True
    UserName = 'Data'
    Left = 472
    Top = 104
    object DatappField1: TppField
      FieldAlias = 'NominaID'
      FieldName = 'NominaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DatappField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DatappField3: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DatappField4: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DatappField5: TppField
      FieldAlias = 'MesCalendario'
      FieldName = 'MesCalendario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DatappField6: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DatappField7: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object DatappField8: TppField
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object DatappField9: TppField
      FieldAlias = 'HoraNormal'
      FieldName = 'HoraNormal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object DatappField10: TppField
      FieldAlias = 'HoraNocturna'
      FieldName = 'HoraNocturna'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object DatappField11: TppField
      FieldAlias = 'HoraExtra'
      FieldName = 'HoraExtra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object DatappField12: TppField
      FieldAlias = 'HoraDoble'
      FieldName = 'HoraDoble'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object DatappField13: TppField
      FieldAlias = 'PrecioNormal'
      FieldName = 'PrecioNormal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object DatappField14: TppField
      FieldAlias = 'PrecioNocturna'
      FieldName = 'PrecioNocturna'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object DatappField15: TppField
      FieldAlias = 'PrecioExtra'
      FieldName = 'PrecioExtra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object DatappField16: TppField
      FieldAlias = 'PrecioDoble'
      FieldName = 'PrecioDoble'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object DatappField17: TppField
      FieldAlias = 'TotalNormal'
      FieldName = 'TotalNormal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DatappField18: TppField
      FieldAlias = 'TotalNocturna'
      FieldName = 'TotalNocturna'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object DatappField19: TppField
      FieldAlias = 'TotalExtra'
      FieldName = 'TotalExtra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object DatappField20: TppField
      FieldAlias = 'TotalDoble'
      FieldName = 'TotalDoble'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object DatappField21: TppField
      FieldAlias = 'OtrosIngresos'
      FieldName = 'OtrosIngresos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object DatappField22: TppField
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object DatappField23: TppField
      FieldAlias = 'SS'
      FieldName = 'SS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object DatappField24: TppField
      FieldAlias = 'IR'
      FieldName = 'IR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object DatappField25: TppField
      FieldAlias = 'OtrosDescuentos'
      FieldName = 'OtrosDescuentos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object DatappField26: TppField
      FieldAlias = 'TDescuentos'
      FieldName = 'TDescuentos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object DatappField27: TppField
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object DatappField28: TppField
      FieldAlias = 'Notas'
      FieldName = 'Notas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object DatappField29: TppField
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object DatappField30: TppField
      FieldAlias = 'Cheque'
      FieldName = 'Cheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object DatappField31: TppField
      FieldAlias = 'Volante'
      FieldName = 'Volante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object DatappField32: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object DatappField33: TppField
      FieldAlias = 'TipoEmpleadoID'
      FieldName = 'TipoEmpleadoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object DatappField34: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object DatappField35: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object DatappField36: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object DatappField37: TppField
      FieldAlias = 'Cedula'
      FieldName = 'Cedula'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object DatappField38: TppField
      FieldAlias = 'Posicion'
      FieldName = 'Posicion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object DatappField39: TppField
      FieldAlias = 'Sueldo'
      FieldName = 'Sueldo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object DatappField40: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object DatappField41: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object DatappField42: TppField
      FieldAlias = 'Telefono1'
      FieldName = 'Telefono1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object DatappField43: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object DatappField44: TppField
      FieldAlias = 'NumeroCuenta'
      FieldName = 'NumeroCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object DatappField45: TppField
      FieldAlias = 'Activo'
      FieldName = 'Activo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object DatappField46: TppField
      FieldAlias = 'NumeroSS'
      FieldName = 'NumeroSS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object DatappField47: TppField
      FieldAlias = 'idEmpleadoRoll'
      FieldName = 'idEmpleadoRoll'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object DatappField48: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object DatappField49: TppField
      FieldAlias = 'AFP'
      FieldName = 'AFP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object DatappField50: TppField
      FieldAlias = 'TipoEmpleado'
      FieldName = 'TipoEmpleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
  end
end
