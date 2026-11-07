inherited RPTConciliacionNomina: TRPTConciliacionNomina
  Left = 343
  Top = 152
  Caption = 'Conciliacion de nominas'
  ClientHeight = 532
  ClientWidth = 823
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 14
    Width = 71
    Height = 13
    Caption = 'Nomina actual:'
  end
  object Label2: TLabel [1]
    Left = 298
    Top = 14
    Width = 65
    Height = 13
    Caption = 'Comprar con:'
  end
  object seDesde: TcxSpinEdit [2]
    Left = 82
    Top = 10
    Width = 81
    Height = 21
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object seHasta: TcxSpinEdit [3]
    Left = 372
    Top = 10
    Width = 81
    Height = 21
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 6
    Top = 38
    Width = 119
    Height = 35
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [5]
    Left = 8
    Top = 76
    Width = 813
    Height = 453
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'Numero'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1HoraNormal
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1HoraNocturna
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1HoraExtra
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1HoraDoble
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1TotalNormal
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1TotalNocturna
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1TotalExtra
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1TotalDoble
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Adelanto
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1OtrosIngresos
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Bruto
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SS
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1AFP
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1IR
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1OtrosDescuentos
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1TDescuentos
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Neto
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1NominaID: TcxGridDBColumn
        DataBinding.FieldName = 'NominaID'
        Width = 81
      end
      object cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
        Visible = False
        GroupIndex = 0
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
      object cxGrid1DBTableView1Adelanto: TcxGridDBColumn
        DataBinding.FieldName = 'Adelanto'
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
      object cxGrid1DBTableView1AFP: TcxGridDBColumn
        DataBinding.FieldName = 'AFP'
      end
      object cxGrid1DBTableView1IR: TcxGridDBColumn
        DataBinding.FieldName = 'IR'
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [6]
    Left = 142
    Top = 38
    Width = 119
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 121
    Top = 217
  end
  object rs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'nomRPTConciliacionNomina;1'
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
        Name = '@n1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@n2'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 64
    Top = 214
    object rsNominaID: TIntegerField
      FieldName = 'NominaID'
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
      Precision = 18
      Size = 2
    end
    object rsAFP: TBCDField
      FieldName = 'AFP'
      Precision = 18
      Size = 2
    end
    object rsIR: TBCDField
      FieldName = 'IR'
      Precision = 18
      Size = 2
    end
    object rsOtrosDescuentos: TBCDField
      FieldName = 'OtrosDescuentos'
      Precision = 18
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
    object rsDiasPuntoA: TBCDField
      FieldName = 'DiasPuntoA'
      Precision = 10
      Size = 2
    end
    object rsDiasPuntoB: TBCDField
      FieldName = 'DiasPuntoB'
      Precision = 10
      Size = 2
    end
    object rsDiasPuntoC: TBCDField
      FieldName = 'DiasPuntoC'
      Precision = 10
      Size = 2
    end
    object rsCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object rsVolante: TIntegerField
      FieldName = 'Volante'
    end
    object rsNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsAdelanto: TBCDField
      FieldName = 'Adelanto'
      Precision = 18
      Size = 2
    end
    object rsPrecioHora: TBCDField
      FieldName = 'PrecioHora'
      Precision = 18
      Size = 2
    end
    object rsDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object rsDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object rsDepOrden: TIntegerField
      FieldName = 'DepOrden'
    end
    object rsSeccionID: TIntegerField
      FieldName = 'SeccionID'
    end
    object rsSeccion: TStringField
      FieldName = 'Seccion'
    end
    object rsSecOrden: TIntegerField
      FieldName = 'SecOrden'
    end
    object rsUidNominaEmp: TGuidField
      FieldName = 'UidNominaEmp'
      FixedChar = True
      Size = 38
    end
    object rsEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = Data
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
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
    DeviceType = 'Screen'
    Language = lgSpanish
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 222
    Top = 226
    Version = '7.04'
    mmColumnWidth = 266701
    DataPipelineName = 'Data'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppDBText81: TppDBText
        UserName = 'DBText11'
        DataField = 'Compania'
        DataPipeline = Data
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 7662
        mmLeft = 0
        mmTop = 529
        mmWidth = 193675
        BandType = 1
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable19'
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
      object ppLabel314: TppLabel
        UserName = 'Label314'
        Caption = 'Conciliacion de nomina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5122
        mmLeft = 0
        mmTop = 13758
        mmWidth = 49107
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 4498
        mmWidth = 42069
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
        Caption = 'Nomina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 4498
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label6'
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
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText3'
        DataField = 'NominaID'
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
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText5'
        BlankWhenZero = True
        DataField = 'HoraNormal'
        DataPipeline = Data
        DisplayFormat = '#0.##;#0.##'
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
        BlankWhenZero = True
        DataField = 'TotalNormal'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'TotalExtra'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'TotalDoble'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'TotalNocturna'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'Bruto'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'SS'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'IR'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'OtrosDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'TDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'Neto'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'AFP'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
        BlankWhenZero = True
        DataField = 'OtrosIngresos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
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
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape9'
        Brush.Color = 14869218
        mmHeight = 6085
        mmLeft = 0
        mmTop = 529
        mmWidth = 258498
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        BlankWhenZero = True
        DataField = 'HoraNormal'
        DataPipeline = Data
        DisplayFormat = '#0.##;#0.##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 2381
        mmWidth = 7408
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
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
        mmLeft = 50800
        mmTop = 2381
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
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
        mmLeft = 58738
        mmTop = 2381
        mmWidth = 7408
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
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
        mmLeft = 66411
        mmTop = 2381
        mmWidth = 6879
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        BlankWhenZero = True
        DataField = 'TotalNormal'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 75406
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        BlankWhenZero = True
        DataField = 'TotalExtra'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        BlankWhenZero = True
        DataField = 'TotalDoble'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 107156
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        BlankWhenZero = True
        DataField = 'TotalNocturna'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        BlankWhenZero = True
        DataField = 'OtrosIngresos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 138377
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc401'
        BlankWhenZero = True
        DataField = 'Bruto'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 2381
        mmWidth = 16404
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        BlankWhenZero = True
        DataField = 'SS'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 2381
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        BlankWhenZero = True
        DataField = 'IR'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 2381
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        BlankWhenZero = True
        DataField = 'OtrosDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 210873
        mmTop = 2381
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        BlankWhenZero = True
        DataField = 'TDescuentos'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 224896
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        BlankWhenZero = True
        DataField = 'Neto'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 239978
        mmTop = 2381
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Dif. emp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 2381
        mmWidth = 17463
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        BlankWhenZero = True
        DataField = 'AFP'
        DataPipeline = Data
        DisplayFormat = '#,0.00;#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Data'
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 2381
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
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
        mmLeft = 33602
        mmTop = 2381
        mmWidth = 8202
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Emps:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 25665
        mmTop = 2646
        mmWidth = 7408
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'EmpleadoID'
      DataPipeline = Data
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Data'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 0
          mmWidth = 258763
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText4'
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
          mmLeft = 0
          mmTop = 529
          mmWidth = 111390
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
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
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc31: TppDBCalc
          UserName = 'DBCalc31'
          BlankWhenZero = True
          DataField = 'HoraNormal'
          DataPipeline = Data
          DisplayFormat = '#0.##;#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 42069
          mmTop = 1058
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc32'
          BlankWhenZero = True
          DataField = 'HoraExtra'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 50006
          mmTop = 1058
          mmWidth = 7673
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc33'
          BlankWhenZero = True
          DataField = 'HoraDoble'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 57944
          mmTop = 1058
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc34'
          BlankWhenZero = True
          DataField = 'HoraNocturna'
          DataPipeline = Data
          DisplayFormat = '#0.##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 65617
          mmTop = 1058
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc201'
          BlankWhenZero = True
          DataField = 'TotalNormal'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 74613
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc36'
          BlankWhenZero = True
          DataField = 'TotalExtra'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 90488
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          BlankWhenZero = True
          DataField = 'TotalDoble'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 106363
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          BlankWhenZero = True
          DataField = 'TotalNocturna'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 121973
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          BlankWhenZero = True
          DataField = 'OtrosIngresos'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 137584
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          BlankWhenZero = True
          DataField = 'Bruto'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 154517
          mmTop = 1058
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          BlankWhenZero = True
          DataField = 'SS'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 172509
          mmTop = 1058
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          BlankWhenZero = True
          DataField = 'IR'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 196321
          mmTop = 1058
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          BlankWhenZero = True
          DataField = 'OtrosDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 210080
          mmTop = 1058
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc44'
          BlankWhenZero = True
          DataField = 'TDescuentos'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 224103
          mmTop = 1058
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc301'
          BlankWhenZero = True
          DataField = 'Neto'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 240242
          mmTop = 1058
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label28'
          AutoSize = False
          Caption = 'Dif. emp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 1058
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc81: TppDBCalc
          UserName = 'DBCalc81'
          BlankWhenZero = True
          DataField = 'AFP'
          DataPipeline = Data
          DisplayFormat = '#,0.00;#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Data'
          mmHeight = 3175
          mmLeft = 184150
          mmTop = 1058
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc54'
          BlankWhenZero = True
          DataField = 'EmpleadoID'
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3175
          mmLeft = 32808
          mmTop = 1058
          mmWidth = 8202
          BandType = 5
          GroupNo = 0
        end
        object ppLabel169: TppLabel
          UserName = 'Label169'
          Caption = 'Emps:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 24871
          mmTop = 1058
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Data: TppDBPipeline
    DataSource = DS
    CloseDataSource = True
    UserName = 'Data'
    Left = 312
    Top = 224
    object DatappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NominaID'
      FieldName = 'NominaID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DatappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DatappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'HoraNormal'
      FieldName = 'HoraNormal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object DatappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'HoraNocturna'
      FieldName = 'HoraNocturna'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object DatappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'HoraExtra'
      FieldName = 'HoraExtra'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object DatappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'HoraDoble'
      FieldName = 'HoraDoble'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object DatappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PrecioNormal'
      FieldName = 'PrecioNormal'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object DatappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PrecioNocturna'
      FieldName = 'PrecioNocturna'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object DatappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PrecioExtra'
      FieldName = 'PrecioExtra'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object DatappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PrecioDoble'
      FieldName = 'PrecioDoble'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object DatappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNormal'
      FieldName = 'TotalNormal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object DatappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNocturna'
      FieldName = 'TotalNocturna'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object DatappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalExtra'
      FieldName = 'TotalExtra'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object DatappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalDoble'
      FieldName = 'TotalDoble'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object DatappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'OtrosIngresos'
      FieldName = 'OtrosIngresos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object DatappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object DatappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'SS'
      FieldName = 'SS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object DatappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'AFP'
      FieldName = 'AFP'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object DatappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'IR'
      FieldName = 'IR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object DatappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'OtrosDescuentos'
      FieldName = 'OtrosDescuentos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object DatappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TDescuentos'
      FieldName = 'TDescuentos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object DatappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object DatappField23: TppField
      FieldAlias = 'Notas'
      FieldName = 'Notas'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object DatappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 23
    end
    object DatappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiasPuntoA'
      FieldName = 'DiasPuntoA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 24
    end
    object DatappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiasPuntoB'
      FieldName = 'DiasPuntoB'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 25
    end
    object DatappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiasPuntoC'
      FieldName = 'DiasPuntoC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 26
    end
    object DatappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cheque'
      FieldName = 'Cheque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object DatappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volante'
      FieldName = 'Volante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object DatappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object DatappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Adelanto'
      FieldName = 'Adelanto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object DatappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'PrecioHora'
      FieldName = 'PrecioHora'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 31
    end
    object DatappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'DepartamentoID'
      FieldName = 'DepartamentoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object DatappField34: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 33
    end
    object DatappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'DepOrden'
      FieldName = 'DepOrden'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object DatappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'SeccionID'
      FieldName = 'SeccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object DatappField37: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object DatappField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'SecOrden'
      FieldName = 'SecOrden'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object DatappField39: TppField
      FieldAlias = 'UidNominaEmp'
      FieldName = 'UidNominaEmp'
      FieldLength = 38
      DisplayWidth = 38
      Position = 38
    end
    object DatappField40: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 39
    end
  end
end
