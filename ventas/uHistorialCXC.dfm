inherited HistorialCXC: THistorialCXC
  Left = 291
  Top = 147
  Caption = 'Historial de compras y pagos'
  ClientHeight = 544
  ClientWidth = 891
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 41
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label3: TLabel [2]
    Left = 176
    Top = 41
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object cxDBButtonEdit1: TcxDBButtonEdit [3]
    Left = 48
    Top = 11
    Width = 121
    Height = 21
    DataBinding.DataField = 'idCliente'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 171
    Top = 11
    Width = 355
    Height = 21
    DataBinding.DataField = 'Cliente'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object deDesde: TcxDBDateEdit [5]
    Left = 48
    Top = 37
    Width = 121
    Height = 21
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object deHasta: TcxDBDateEdit [6]
    Left = 211
    Top = 37
    Width = 121
    Height = 21
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object Grid: TcxGrid [7]
    Left = 5
    Top = 67
    Width = 879
    Height = 436
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsReporte
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object GridDBTableView1Documento: TcxGridDBColumn
        DataBinding.FieldName = 'Documento'
        Options.Filtering = False
        Width = 75
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 76
      end
      object GridDBTableView1Vence: TcxGridDBColumn
        DataBinding.FieldName = 'Vence'
        Options.Filtering = False
        Width = 81
      end
      object GridDBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Options.Filtering = False
        Width = 37
      end
      object GridDBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Visible = False
        GroupIndex = 1
      end
      object GridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Visible = False
        GroupIndex = 0
      end
      object GridDBTableView1Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 92
      end
      object GridDBTableView1Rango91: TcxGridDBColumn
        Caption = '91/99999'
        DataBinding.FieldName = 'Rango91'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 88
      end
      object GridDBTableView1Rango61: TcxGridDBColumn
        Caption = '61/90'
        DataBinding.FieldName = 'Rango61'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 99
      end
      object GridDBTableView1Rango31: TcxGridDBColumn
        Caption = '31/60'
        DataBinding.FieldName = 'Rango31'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 94
      end
      object GridDBTableView1Rango01: TcxGridDBColumn
        Caption = '01/30'
        DataBinding.FieldName = 'Rango01'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 86
      end
      object GridDBTableView1Rango01_1: TcxGridDBColumn
        Caption = '0/-30'
        DataBinding.FieldName = 'Rango00'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 93
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton1: TcxButton [8]
    Left = 534
    Top = 6
    Width = 67
    Height = 57
    Caption = 'Mostrar'
    TabOrder = 5
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [9]
    Left = 624
    Top = 6
    Width = 67
    Height = 57
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [10]
    Left = 714
    Top = 6
    Width = 67
    Height = 57
    Caption = 'Excel'
    TabOrder = 7
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [11]
    Left = 816
    Top = 6
    Width = 67
    Height = 57
    Caption = 'Salir'
    TabOrder = 8
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = mCliente
  end
  object rs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svHistorialCliente;1'
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
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 238
    Top = 304
    object rsid: TGuidField
      FieldName = 'id'
      FixedChar = True
      Size = 38
    end
    object rsDocumento: TStringField
      FieldName = 'Documento'
    end
    object rsCargo: TStringField
      FieldName = 'Cargo'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsVence: TDateTimeField
      FieldName = 'Vence'
    end
    object rsTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object rsCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object rsidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object rsMonto: TBCDField
      FieldName = 'Monto'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRango91: TBCDField
      FieldName = 'Rango91'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRango61: TBCDField
      FieldName = 'Rango61'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRango31: TBCDField
      FieldName = 'Rango31'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRango01: TBCDField
      FieldName = 'Rango01'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsidcxc: TGuidField
      FieldName = 'idcxc'
      FixedChar = True
      Size = 38
    end
    object rsRango00: TBCDField
      FieldName = 'Rango00'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsTotalCargos: TBCDField
      FieldName = 'TotalCargos'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object rsTotalPagos: TBCDField
      FieldName = 'TotalPagos'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object rsPromedioDias: TIntegerField
      FieldName = 'PromedioDias'
      ReadOnly = True
    end
  end
  object mCliente: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCliente'
        DataType = ftInteger
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Desde'
        DataType = ftDateTime
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
      end
      item
        Name = 'Condicion'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LimiteCredito'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 348
    Top = 266
    object mClienteidCliente: TIntegerField
      FieldName = 'idCliente'
      OnValidate = mClienteidClienteValidate
    end
    object mClienteCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object mClienteDesde: TDateTimeField
      FieldName = 'Desde'
      OnValidate = mClienteDesdeValidate
    end
    object mClienteHasta: TDateTimeField
      FieldName = 'Hasta'
      OnValidate = mClienteDesdeValidate
    end
    object mClienteCondicion: TStringField
      FieldName = 'Condicion'
      Size = 30
    end
    object mClienteLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
    end
  end
  object rsClienteAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
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
    Left = 136
    Top = 266
    object rsClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object rsClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object rsClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object rsClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object rsClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object rsClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object rsClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object rsClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object rsClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object rsClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object rsClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object rsClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object rsClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
    object rsClienteActIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
  end
  object dsReporte: TwwDataSource
    AutoEdit = False
    DataSet = rs
    OnUpdateData = DSUpdateData
    Left = 245
    Top = 193
  end
  object plReporte: TppDBPipeline
    DataSource = dsReporte
    UserName = 'Historial'
    Left = 474
    Top = 210
    object plReporteppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 38
      DisplayWidth = 38
      Position = 0
    end
    object plReporteppField2: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plReporteppField3: TppField
      FieldAlias = 'Cargo'
      FieldName = 'Cargo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plReporteppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plReporteppField5: TppField
      FieldAlias = 'Vence'
      FieldName = 'Vence'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plReporteppField6: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object plReporteppField7: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object plReporteppField8: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plReporteppField9: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plReporteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LimiteCredito'
      FieldName = 'LimiteCredito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object plReporteppField11: TppField
      FieldAlias = 'idCondicion'
      FieldName = 'idCondicion'
      FieldLength = 16
      DisplayWidth = 16
      Position = 10
    end
    object plReporteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plReporteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rango91'
      FieldName = 'Rango91'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plReporteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rango61'
      FieldName = 'Rango61'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object plReporteppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rango31'
      FieldName = 'Rango31'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object plReporteppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rango01'
      FieldName = 'Rango01'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object plReporteppField17: TppField
      FieldAlias = 'idcxc'
      FieldName = 'idcxc'
      FieldLength = 38
      DisplayWidth = 38
      Position = 16
    end
    object plReporteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rango00'
      FieldName = 'Rango00'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 17
    end
    object plReporteppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object plReporteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalCargos'
      FieldName = 'TotalCargos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 39
      Position = 19
    end
    object plReporteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPagos'
      FieldName = 'TotalPagos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 39
      Position = 20
    end
    object plReporteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PromedioDias'
      FieldName = 'PromedioDias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 596
    Top = 278
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 14671839
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 4498
        mmLeft = 0
        mmTop = 41010
        mmWidth = 266701
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6816
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 79375
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 8996
        mmWidth = 108744
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'ESTADO DE CUENTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 107193
        mmTop = 14817
        mmWidth = 55753
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'HISTORIAL DETALLADO DE CREDITOS Y PAGOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 86254
        mmTop = 21167
        mmWidth = 93927
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'DESDE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 221986
        mmTop = 27781
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'HASTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 221986
        mmTop = 31750
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'MONEDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 221986
        mmTop = 35719
        mmWidth = 16140
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 241300
        mmTop = 27781
        mmWidth = 19050
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 241300
        mmTop = 31750
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Moneda'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 241300
        mmTop = 35719
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 27781
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'LIMITE DE CREDITO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 32015
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'CONDICION DE CREDITO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 36248
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 41540
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 39158
        mmTop = 41540
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'VENCE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 66411
        mmTop = 41540
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 41540
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 118269
        mmTop = 41540
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = '91/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 41540
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = '61/90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 169069
        mmTop = 41540
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = '31/60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 199232
        mmTop = 41540
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = '1/30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 221192
        mmTop = 41540
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = '0/-30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 242888
        mmTop = 41540
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Cliente'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 34660
        mmTop = 27781
        mmWidth = 109009
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'idCliente'
        DataPipeline = plReporte
        DisplayFormat = '(####)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 27781
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 198438
        mmTop = 4498
        mmWidth = 61119
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 198438
        mmTop = 8202
        mmWidth = 61119
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'LimiteCredito'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 37835
        mmTop = 32015
        mmWidth = 38629
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'idCondicion'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 44715
        mmTop = 36248
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Documento'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 0
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Fecha'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 39158
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Vence'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 66411
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Tipo'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Monto'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 106098
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'Rango91'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Rango61'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Rango31'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 185209
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Rango01'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 210609
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Rango00'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 236009
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Cliente'
      DataPipeline = plReporte
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 21431
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 14023
          mmLeft = 2117
          mmTop = 6879
          mmWidth = 139965
          BandType = 5
          GroupNo = 1
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14671839
          Pen.Color = clSilver
          mmHeight = 5556
          mmLeft = 105040
          mmTop = 0
          mmWidth = 161661
          BandType = 5
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label12'
          Caption = 'TOTALES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 82550
          mmTop = 1058
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Monto'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 106098
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Rango91'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 133350
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'Rango61'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 159544
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Rango31'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 185209
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'Rango01'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 210609
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'Rango00'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 236009
          mmTop = 1058
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'TOTAL DE CARGOS DURANTE EL PERIODO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2910
          mmTop = 8202
          mmWidth = 78581
          BandType = 5
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'TOTAL DE PAGOS DURANTE EL PERIODO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2910
          mmTop = 12435
          mmWidth = 82021
          BandType = 5
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = 'PROMEDIO DE DIAS DE PAGO DURANTE EL PERIODO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2910
          mmTop = 16669
          mmWidth = 89429
          BandType = 5
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 2117
          mmTop = 11906
          mmWidth = 139965
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 2117
          mmTop = 16140
          mmWidth = 139700
          BandType = 5
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 94456
          mmTop = 7144
          mmWidth = 794
          BandType = 5
          GroupNo = 1
        end
        object ppDBText18: TppDBText
          UserName = 'DBText11'
          DataField = 'TotalCargos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 95779
          mmTop = 7938
          mmWidth = 40217
          BandType = 5
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'TotalPagos'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 95779
          mmTop = 12435
          mmWidth = 40217
          BandType = 5
          GroupNo = 1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'PromedioDias'
          DataPipeline = plReporte
          DisplayFormat = '#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 95779
          mmTop = 16933
          mmWidth = 40217
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object dsCliente: TppDBPipeline
    DataSource = DS
    UserName = 'Historial1'
    Left = 368
    Top = 154
    object dsClienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dsClienteppField2: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object dsClienteppField3: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object dsClienteppField4: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object dsClienteppField5: TppField
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object dsClienteppField6: TppField
      FieldAlias = 'LimiteCredito'
      FieldName = 'LimiteCredito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    Left = 436
    Top = 276
  end
end
