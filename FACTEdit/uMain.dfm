object Form1: TForm1
  Left = 311
  Top = 149
  Width = 978
  Height = 545
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FacturaRPT: TppReport
    AutoStop = False
    DataPipeline = plrptFactura
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Factura'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = '\\cbsdgserver\c$\Sistemas\Sistemas\RPT\FacturaEspec.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 304
    Top = 408
    Version = '7.04'
    mmColumnWidth = 190500
    DataPipelineName = 'plrptFactura'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'coCompania'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 7662
        mmLeft = 2117
        mmTop = 0
        mmWidth = 141817
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'coRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 2117
        mmTop = 11906
        mmWidth = 57944
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CoDireccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 2117
        mmTop = 7938
        mmWidth = 131763
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'coTelefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 2117
        mmTop = 15875
        mmWidth = 33338
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'coFax'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 35719
        mmTop = 15875
        mmWidth = 34660
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 87842
        mmTop = 11906
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 154517
        mmTop = 13494
        mmWidth = 34396
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Factura'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 154517
        mmTop = 18521
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cond/Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 112448
        mmTop = 13494
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'Condicion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 18521
        mmWidth = 18521
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 23548
        mmLeft = 0
        mmTop = 29898
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 47625
        mmWidth = 15452
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 47625
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 107156
        mmTop = 47625
        mmWidth = 15071
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 134144
        mmTop = 47625
        mmWidth = 10710
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 172562
        mmTop = 47625
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 1852
        mmTop = 31221
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Cliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 31221
        mmWidth = 91017
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'FACTURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 144198
        mmTop = 0
        mmWidth = 44979
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 46038
        mmWidth = 188913
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 88636
        mmTop = 13494
        mmWidth = 23548
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Fecha'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 88636
        mmTop = 18521
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Ref / OC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 131498
        mmTop = 13494
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Referencia'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 131498
        mmTop = 18521
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Direccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 21960
        mmTop = 36777
        mmWidth = 109009
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Direccion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 36777
        mmWidth = 19315
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Telefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4784
        mmLeft = 153723
        mmTop = 30956
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Telefono :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 31221
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Sector'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3683
        mmLeft = 153723
        mmTop = 36777
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'Sector :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 132821
        mmTop = 36777
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'idCliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 22490
        mmTop = 31221
        mmWidth = 16933
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plrptFactura
        DataField = 'Credito'
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 7408
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 41275
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'ClienteRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 153723
        mmTop = 41275
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4128
        mmLeft = 154792
        mmTop = 47625
        mmWidth = 7260
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'NCF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 116681
        mmTop = 24871
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CompFiscal'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 137319
        mmTop = 24871
        mmWidth = 51858
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'TIPO NCF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 24871
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'TipoNCF'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 21960
        mmTop = 24871
        mmWidth = 51858
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'DetCantidad'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 105569
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DetidProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'DetPrecio'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 123296
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'DetLineTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 163777
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DetProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 0
        mmWidth = 78581
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'DetITBIS'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = True
        DataField = 'Especificacion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 265
        mmLeft = 14552
        mmTop = 4233
        mmWidth = 176213
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 125413
        mmTop = 4763
        mmWidth = 32544
        BandType = 8
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 4763
        mmWidth = 30956
        BandType = 8
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'ITBIS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 125413
        mmTop = 9260
        mmWidth = 32544
        BandType = 8
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        BlankWhenZero = True
        DataField = 'Itbis'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 9260
        mmWidth = 30956
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Sub Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 125413
        mmTop = 265
        mmWidth = 32544
        BandType = 8
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SubTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 265
        mmWidth = 30956
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 125413
        mmTop = 13758
        mmWidth = 32544
        BandType = 8
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'Total'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 13758
        mmWidth = 30956
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 13229
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Recibido conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 76994
        mmTop = 14023
        mmWidth = 32279
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 64294
        mmTop = 12965
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Elaborado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 14817
        mmTop = 14023
        mmWidth = 25665
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 189707
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 0
        mmWidth = 19727
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = plrptFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 1852
        mmWidth = 188119
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plrptFactura: TppDBPipeline
    DataSource = dsRptFactura
    UserName = 'plRptFactura'
    Left = 220
    Top = 408
    object plrptFacturappField1: TppField
      FieldAlias = 'idFactura'
      FieldName = 'idFactura'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plrptFacturappField2: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plrptFacturappField3: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plrptFacturappField4: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plrptFacturappField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plrptFacturappField6: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plrptFacturappField7: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plrptFacturappField8: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plrptFacturappField9: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object plrptFacturappField10: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object plrptFacturappField11: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plrptFacturappField12: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object plrptFacturappField13: TppField
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object plrptFacturappField14: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 13
    end
    object plrptFacturappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object plrptFacturappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Itbis'
      FieldName = 'Itbis'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object plrptFacturappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 16
    end
    object plrptFacturappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 17
    end
    object plrptFacturappField19: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 600
      DisplayWidth = 600
      Position = 18
    end
    object plrptFacturappField20: TppField
      FieldAlias = 'idClienteObra'
      FieldName = 'idClienteObra'
      FieldLength = 25
      DisplayWidth = 25
      Position = 19
    end
    object plrptFacturappField21: TppField
      FieldAlias = 'idFacturaDet'
      FieldName = 'idFacturaDet'
      FieldLength = 38
      DisplayWidth = 38
      Position = 20
    end
    object plrptFacturappField22: TppField
      FieldAlias = 'DetidProducto'
      FieldName = 'DetidProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 21
    end
    object plrptFacturappField23: TppField
      FieldAlias = 'DetProducto'
      FieldName = 'DetProducto'
      FieldLength = 120
      DisplayWidth = 120
      Position = 22
    end
    object plrptFacturappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetCantidad'
      FieldName = 'DetCantidad'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object plrptFacturappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetPrecio'
      FieldName = 'DetPrecio'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object plrptFacturappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetDescuento'
      FieldName = 'DetDescuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object plrptFacturappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetITBIS'
      FieldName = 'DetITBIS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object plrptFacturappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetLineTotal'
      FieldName = 'DetLineTotal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object plrptFacturappField29: TppField
      FieldAlias = 'coCompania'
      FieldName = 'coCompania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object plrptFacturappField30: TppField
      FieldAlias = 'coDireccion'
      FieldName = 'coDireccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 29
    end
    object plrptFacturappField31: TppField
      FieldAlias = 'coTelefono'
      FieldName = 'coTelefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object plrptFacturappField32: TppField
      FieldAlias = 'coFax'
      FieldName = 'coFax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 31
    end
    object plrptFacturappField33: TppField
      FieldAlias = 'coRNC'
      FieldName = 'coRNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object plrptFacturappField34: TppField
      FieldAlias = 'OrdComp'
      FieldName = 'OrdComp'
      FieldLength = 16
      DisplayWidth = 16
      Position = 33
    end
    object plrptFacturappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object plrptFacturappField36: TppField
      FieldAlias = 'idUnidad'
      FieldName = 'idUnidad'
      FieldLength = 16
      DisplayWidth = 16
      Position = 35
    end
    object plrptFacturappField37: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 36
    end
    object plrptFacturappField38: TppField
      FieldAlias = 'Nota2'
      FieldName = 'Nota2'
      FieldLength = 600
      DisplayWidth = 600
      Position = 37
    end
    object plrptFacturappField39: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 38
    end
    object plrptFacturappField40: TppField
      FieldAlias = 'ClienteRNC'
      FieldName = 'ClienteRNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object plrptFacturappField41: TppField
      FieldAlias = 'TipoNCF'
      FieldName = 'TipoNCF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object plrptFacturappField42: TppField
      FieldAlias = 'Especificacion'
      FieldName = 'Especificacion'
      FieldLength = 5000
      DisplayWidth = 5000
      Position = 41
    end
  end
  object dsRptFactura: TDataSource
    DataSet = rptFactura
    Left = 140
    Top = 408
  end
  object rptFactura: TADODataSet
    CursorType = ctStatic
    CommandText = 'RPTFactura;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 60
    Top = 408
    object rptFacturaidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rptFacturaFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rptFacturaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rptFacturaContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rptFacturaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rptFacturaSector: TStringField
      FieldName = 'Sector'
    end
    object rptFacturaCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rptFacturaTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rptFacturaEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rptFacturaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptFacturaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptFacturaCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rptFacturaCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object rptFacturaCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rptFacturaSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturaItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rptFacturaDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rptFacturaTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rptFacturaNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rptFacturaidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rptFacturaidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rptFacturaDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptFacturaDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptFacturaDetCantidad: TFloatField
      FieldName = 'DetCantidad'
    end
    object rptFacturaDetPrecio: TBCDField
      FieldName = 'DetPrecio'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetDescuento: TBCDField
      FieldName = 'DetDescuento'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetITBIS: TBCDField
      FieldName = 'DetITBIS'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetLineTotal: TBCDField
      FieldName = 'DetLineTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturacoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object rptFacturacoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object rptFacturacoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptFacturacoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptFacturacoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptFacturaOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rptFacturaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rptFacturaidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rptFacturaVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
      ReadOnly = True
    end
    object rptFacturaNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object rptFacturaCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rptFacturaClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
    object rptFacturaTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 50
    end
    object rptFacturaEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'FILENAME=conexion.udl'
    KeepConnection = False
    LoginPrompt = False
    Left = 58
    Top = 36
  end
end
