object MayorGeneral: TMayorGeneral
  Left = 382
  Top = 185
  Width = 728
  Height = 498
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Mayor General'
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    720
    464)
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 2
    Top = 2
    Width = 713
    Height = 79
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight]
    LookAndFeel.NativeStyle = True
    TabOrder = 5
    ClientRectBottom = 75
    ClientRectLeft = 2
    ClientRectRight = 709
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cuenta especifica'
      ImageIndex = 0
      object Label4: TLabel
        Left = 12
        Top = 10
        Width = 39
        Height = 13
        Caption = 'Cuenta:'
      end
      object Label5: TLabel
        Left = 180
        Top = 10
        Width = 34
        Height = 13
        Caption = 'Desde:'
      end
      object Label6: TLabel
        Left = 347
        Top = 10
        Width = 32
        Height = 13
        Caption = 'Hasta:'
      end
      object Label7: TLabel
        Left = 520
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Nivel:'
      end
      object dtDesde: TcxDateEdit
        Left = 216
        Top = 6
        Width = 121
        Height = 21
        BeepOnEnter = False
        Properties.SaveTime = False
        Properties.OnEditValueChanged = cxDateEdit1PropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object dtHasta: TcxDateEdit
        Left = 382
        Top = 6
        Width = 121
        Height = 21
        BeepOnEnter = False
        Properties.SaveTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object seNivel: TcxSpinEdit
        Left = 562
        Top = 6
        Width = 93
        Height = 21
        BeepOnEnter = False
        Properties.MaxValue = 99.000000000000000000
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Value = 99
      end
      object edCta: TcxButtonEdit
        Left = 54
        Top = 7
        Width = 95
        Height = 21
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = beCtaPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Text = '%'
      end
      object cbDet: TcxCheckBox
        Left = 10
        Top = 30
        Width = 101
        Height = 21
        Caption = 'Solo auxiliares'
        TabOrder = 4
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Rango de cuentas'
      ImageIndex = 1
      object Label8: TLabel
        Left = 2
        Top = 10
        Width = 44
        Height = 13
        Caption = 'Cuentas:'
      end
      object Label9: TLabel
        Left = 253
        Top = 10
        Width = 34
        Height = 13
        Caption = 'Desde:'
      end
      object Label10: TLabel
        Left = 413
        Top = 10
        Width = 32
        Height = 13
        Caption = 'Hasta:'
      end
      object Label11: TLabel
        Left = 571
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Nivel:'
      end
      object deDesdeRgo: TcxDateEdit
        Left = 289
        Top = 6
        Width = 121
        Height = 21
        BeepOnEnter = False
        Properties.SaveTime = False
        Properties.OnEditValueChanged = cxDateEdit1PropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object deHastaRgo: TcxDateEdit
        Left = 448
        Top = 6
        Width = 121
        Height = 21
        BeepOnEnter = False
        Properties.SaveTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object seNivelRgo: TcxSpinEdit
        Left = 602
        Top = 6
        Width = 93
        Height = 21
        BeepOnEnter = False
        Properties.MaxValue = 99.000000000000000000
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Value = 99
      end
      object beCtaDesde: TcxButtonEdit
        Left = 48
        Top = 7
        Width = 95
        Height = 21
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = beCtaDesdePropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Text = '1'
      end
      object beCtaHasta: TcxButtonEdit
        Left = 147
        Top = 7
        Width = 95
        Height = 21
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = beCtaHastaPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Text = '9'
      end
      object cxCheckBox1: TcxCheckBox
        Left = 10
        Top = 30
        Width = 101
        Height = 21
        Caption = 'Solo auxiliares'
        TabOrder = 5
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 509
    Top = 85
    Width = 93
    Height = 32
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      66666666666666FFF66666660000666666600066666666666666F888FFF66666
      00006666600788006666666666F8866888FFF666000066600778008800666666
      688668888888FFF60000660778878800880066668F688688888888F600006688
      877788880080666688866688888888F600006887777788888800666886666688
      888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
      88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
      000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
      88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
      6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
      F666F88600006666666668FFF8866666666666686FF886660000666666666688
      8666666666666666888666660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object Salir: TBitBtn
    Left = 620
    Top = 85
    Width = 93
    Height = 32
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 2
    OnClick = SalirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
      07700766666666666F6666660000F00FF00FF000800880666666666688F66666
      00000FF00FF00F0700800866666666668F8F66660000F00FF00FF007800880FF
      FFFFFFF68F68FFFF000000000000070788000088888888868F66888800006666
      660770078880666666668F668F6668F600006666660000078880666666668F66
      8F6668F600006666660888078880666666668F668F6668F60000666666088807
      888066666FFFFFF68F6668F6000066000000080708806666888888868F6668F6
      0000660999990807888066668F666F868F6668F6000060999990880788806668
      F6F6F8668F6668F6000060909908880788806668F8FF8F668F6668F600006000
      900888078880666888F88F668F6668F600006660060888807880666668868F66
      68F668F600006666660888880780666666668F66668F68F60000666666088888
      8070666666668FFFFFF8F8F60000666666000000000066666666888888888866
      0000}
    NumGlyphs = 2
  end
  object dxDBGrid1: TdxDBGrid
    Left = 2
    Top = 223
    Width = 711
    Height = 236
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Secuencia'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 3
    OnDblClick = dxDBGrid1DblClick
    DataSource = catds
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxDBGrid1NumeroEntrada: TdxDBGridMaskColumn
      Caption = 'Entrada'
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NumeroEntrada'
    end
    object dxDBGrid1idCuenta: TdxDBGridMaskColumn
      Visible = False
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idCuenta'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1Debito: TdxDBGridMaskColumn
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Debito'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Debito'
      SummaryFooterFormat = '#,###,###,##0.00'
    end
    object dxDBGrid1Credito: TdxDBGridMaskColumn
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Credito'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Credito'
      SummaryFooterFormat = '#,###,###,##0.00'
    end
    object dxDBGrid1TipoEntrada: TdxDBGridMaskColumn
      Caption = 'Tipo'
      Visible = False
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipoEntrada'
    end
    object dxDBGrid1Descripcion: TdxDBGridMaskColumn
      Caption = 'Concepto'
      Width = 303
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Descripcion'
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Concepto: TdxDBGridMemoColumn
      Caption = 'Concepto ED'
      Width = 358
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 1
      FieldName = 'Concepto'
    end
    object dxDBGrid1EntradaId: TdxDBGridMaskColumn
      Visible = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EntradaId'
    end
  end
  object BitBtn1: TBitBtn
    Left = 2
    Top = 85
    Width = 87
    Height = 32
    Caption = 'Mostrar'
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      6666666666666F6666666666000066666636666666666666666686F666666666
      0000666666306666666666666666886F66666666000066666663066666666666
      66666886F6666666000066666663B066666666666666F8F86F66666600006666
      63000F06666666666668888686F666660000666663FBFBF06666666666686F66
      686F666600006666663FB0333666666666668F688886666600006666663BFB06
      6666666666FF8FF686F66666000066630000BFB06666666668888866686F6666
      00006663FBFBFBFB06666666686F6666668F6666000066663FBFB03336666666
      668F666888866666000066663BFBFB06666666666686F66686F6666600006666
      63BFBFB0666666666668F666686F66660000666663FBFBFB0666666666686F66
      6686F66600006666663FBFBFB066666666668FFFFFF8FF660000666666333333
      3336666666668888888886660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object dxDBGrid2: TdxDBGrid
    Left = 2
    Top = 119
    Width = 711
    Height = 102
    Bands = <
      item
        Width = 335
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'idCuenta'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 4
    DataSource = BalanzaDS
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFieldName = 'Descripcion'
    PreviewLines = 1
    Anchors = [akLeft, akTop, akRight]
    object dxDBGrid2idCuenta: TdxDBGridMaskColumn
      Caption = 'Cuenta'
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idCuenta'
    end
    object dxDBGrid2Descripcion: TdxDBGridMaskColumn
      Width = 230
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Descripcion'
    end
    object dxDBGrid2BalanceAnterior: TdxDBGridCurrencyColumn
      Caption = 'Balance ant.'
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BalanceAnterior'
      DisplayFormat = '#,0.00;(#,0.00)'
      Nullable = False
    end
    object dxDBGrid2TotalDB: TdxDBGridCurrencyColumn
      Caption = 'Debitos'
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TotalDB'
      DisplayFormat = '#,0.00;(#,0.00)'
      Nullable = False
    end
    object dxDBGrid2TotalCR: TdxDBGridCurrencyColumn
      Caption = 'Creditos'
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TotalCR'
      DisplayFormat = '#,0.00;(#,0.00)'
      Nullable = False
    end
    object dxDBGrid2BalanceActual: TdxDBGridColumn
      Caption = 'Balance actual'
      Width = 105
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BalanceActual'
    end
  end
  object BitBtn3: TBitBtn
    Left = 402
    Top = 85
    Width = 87
    Height = 32
    Caption = 'Excel'
    Default = True
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0097433F0097433F0097433F0097433F00B59A9B00B59A9B00B59A9B00B59A
      9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009743
      3F0097433F0097433F0097433F00FF00FF00FF00FF00FF00FF00FF00FF009743
      3F00C1696700D0656500C9656400C45C5C00A2747400E9E2E200D5CCCC00D1C0
      BF00E9DAD800F6F0ED00F6F1EF00EBE6E600E3E7E600E3E7E600C27F7E00932B
      2A009A373700B8535300BF5F600097433F00FF00FF00FF00FF00FF00FF009743
      3F00C46C6A00D0656500D0696900CA606100A2565700E9E2E20092292A009229
      2A00BE696700F7EDEA00FFFFFD00FBF8F500F3F8F600F3F8F600C27F7E009227
      27009A363600BB545400C463630097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C85F5F00A35A5A00E9E2E20092292A009229
      2A00C36E6B00EADFDD00FBFAF700FEFAF700FDFFFC00FDFFFF00C27F7E009227
      27009A363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C75E5E00A55B5B00E9E2E20092292A009229
      2A00C36E6B00DACECD00F0EFED00FBF7F500FFFFFF00FDFFFF00C27F7E009227
      27009A363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C75E5E00A75D5C00E9E2E20092292A009229
      2A00C36E6B00C1B4B300DEDEDC00F2EDEA00FFFFFF00FDFFFF00C27F7E009126
      26009B363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C55D5D00A95E5E00E9E2E20092292A009229
      2A00C36E6B00A39B9A00BAC0BF00DDDEDB00FDFFFF00FDFFFF00C27F7E008D22
      220098333300B9535300C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CD676700C75F5F00B05B5C00E9E2E200E9E2E200E9E2
      E200E9E2E200E9E2E200E9E2E200E9E2E200E9E2E200E9E2E200C27F7E009B31
      3100A33E3E00BD575700C361620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36C6900D0656500CD666600CC656400C7616100CD767600D9909000DB94
      9400D88D8E00D9888900D7868600D4828200D1828200CE757500C65F5E00C45B
      5B00C65E5E00CC646400C260610097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500C35F5E00C7666400CB6C6C00CA6B6A00CA686700CA68
      6800CA686800CA686800CA686700CA686700C9676600CA6B6A00CE737200CF76
      7500CF727200CF696900C15F600097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500D6A3A100D6A3A100D7A5A300D8A6A400D8A6A400D8A6
      A400D8A6A400D8A6A400D8A6A400D8A6A500D8A6A500D8A6A500D8A6A400D8A7
      A500D7A6A400CE707000D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E0C4C200FEFDFD00FEFDFD00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FEFDFD00FDFC
      FC00E5C7C600C5666600D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C8C600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C700C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C7C500FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C5656500D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500DDC2C000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C8C600D0656500D065650097433F00FF00FF00FF00FF00FF00FF00FF00
      FF0097433F0097433F00CFB4B200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E7C9C70097433F0097433F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object catds: TDataSource
    DataSet = mMayor
    Left = 184
    Top = 253
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plBalanza
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 48
    Top = 286
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plBalanza'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 16404
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 16404
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance Ant.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 140229
        mmTop = 16404
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 232040
        mmTop = 16404
        mmWidth = 32279
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 24341
        mmWidth = 264584
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Mayor General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 6879
        mmWidth = 34396
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
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
        mmLeft = 224632
        mmTop = 265
        mmWidth = 38365
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224632
        mmTop = 3969
        mmWidth = 38365
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 12435
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 20638
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'No. E/D'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Debitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 171186
        mmTop = 20638
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Creditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 201613
        mmTop = 20638
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 85990
        mmTop = 20638
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ref'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 60854
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = gldm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6085
        mmLeft = 794
        mmTop = 265
        mmWidth = 173302
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      BeforeGenerate = ppDetailBand1BeforeGenerate
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Debito'
        DataPipeline = plBalanza
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 171186
        mmTop = 0
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Credito'
        DataPipeline = plBalanza
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 201613
        mmTop = 0
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plBalanza
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'TipoEntrada'
        DataPipeline = plBalanza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 25400
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'NumeroEntrada'
        DataPipeline = plBalanza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plBalanza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 60854
        mmTop = 0
        mmWidth = 24342
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'DetDescripcion'
        DataPipeline = plBalanza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 85990
        mmTop = 0
        mmWidth = 82550
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plBalanza
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 3704
        mmWidth = 29369
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plBalanza
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBalanza'
        mmHeight = 3440
        mmLeft = 201348
        mmTop = 3704
        mmWidth = 29633
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 84402
        mmTop = 2910
        mmWidth = 180182
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Total general'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 3704
        mmWidth = 25665
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'idCuenta'
      DataPipeline = plBalanza
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plBalanza'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15724527
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          Pen.Style = psClear
          mmHeight = 3440
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'idCuenta'
          DataPipeline = plBalanza
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 0
          mmWidth = 22225
          BandType = 3
          GroupNo = 2
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Tipo'
          DataPipeline = plBalanza
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          Visible = False
          DataPipelineName = 'plBalanza'
          mmHeight = 3440
          mmLeft = 25400
          mmTop = 0
          mmWidth = 4498
          BandType = 3
          GroupNo = 2
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Descripcion'
          DataPipeline = plBalanza
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3387
          mmLeft = 33073
          mmTop = 0
          mmWidth = 106098
          BandType = 3
          GroupNo = 2
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'BalanceAnterior'
          DataPipeline = plBalanza
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3387
          mmLeft = 141288
          mmTop = 0
          mmWidth = 28575
          BandType = 3
          GroupNo = 2
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'BalanceActual'
          DataPipeline = plBalanza
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3528
          mmLeft = 233892
          mmTop = 0
          mmWidth = 30956
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        BeforeGenerate = ppGroupFooterBand3BeforeGenerate
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object cDebito: TppDBCalc
          UserName = 'cDebito'
          HyperlinkEnabled = False
          DataField = 'Debito'
          DataPipeline = plBalanza
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3440
          mmLeft = 170921
          mmTop = 529
          mmWidth = 29369
          BandType = 5
          GroupNo = 0
        end
        object cCredito: TppDBCalc
          UserName = 'cCredito'
          HyperlinkEnabled = False
          DataField = 'Credito'
          DataPipeline = plBalanza
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBalanza'
          mmHeight = 3440
          mmLeft = 201348
          mmTop = 529
          mmWidth = 29633
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 83608
          mmTop = 0
          mmWidth = 180182
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object BalanzaDS: TDataSource
    DataSet = mTotales
    Left = 140
    Top = 264
  end
  object plBalanza: TppBDEPipeline
    DataSource = ds
    UserName = 'plBalanza'
    Left = 310
    Top = 268
    object plBalanzappField1: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plBalanzappField2: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plBalanzappField3: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object plBalanzappField4: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object plBalanzappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nivel'
      FieldName = 'Nivel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plBalanzappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceAnterior'
      FieldName = 'BalanceAnterior'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object plBalanzappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalDB'
      FieldName = 'TotalDB'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object plBalanzappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalCR'
      FieldName = 'TotalCR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
    end
    object plBalanzappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceActual'
      FieldName = 'BalanceActual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 8
    end
    object plBalanzappField10: TppField
      FieldAlias = 'NumeroEntrada'
      FieldName = 'NumeroEntrada'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plBalanzappField11: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plBalanzappField12: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object plBalanzappField13: TppField
      FieldAlias = 'TipoEntrada'
      FieldName = 'TipoEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object plBalanzappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 13
    end
    object plBalanzappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 14
    end
    object plBalanzappField16: TppField
      FieldAlias = 'DetDescripcion'
      FieldName = 'DetDescripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object plBalanzappField17: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
  end
  object mMayor: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Secuencia'
        DataType = ftInteger
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'NumeroEntrada'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Concepto'
        DataType = ftBlob
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'TipoEntrada'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IdEntrada'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'Debito'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Credito'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end>
    IndexFieldNames = 'idCuenta'
    IndexName = 'mMayorIndex1'
    IndexDefs = <
      item
        Name = 'mMayorIndex1'
        Fields = 'idCuenta'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 170
    Top = 166
    object mMayorSecuencia: TIntegerField
      FieldName = 'Secuencia'
      ReadOnly = True
    end
    object mMayoridCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mMayorNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object mMayorConcepto: TBlobField
      FieldName = 'Concepto'
    end
    object mMayorFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mMayorTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object mMayorIdEntrada: TGuidField
      FieldName = 'IdEntrada'
      FixedChar = True
      Size = 38
    end
    object mMayorDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
    object mMayorCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
    object mMayorDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object mMayorReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object mTotales: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 2
    FieldDefs = <
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Origen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nivel'
        DataType = ftInteger
      end
      item
        Name = 'BalanceAnterior'
        DataType = ftCurrency
      end
      item
        Name = 'TotalDB'
        DataType = ftCurrency
      end
      item
        Name = 'TotalCR'
        DataType = ftCurrency
      end
      item
        Name = 'BalanceActual'
        DataType = ftCurrency
      end>
    IndexFieldNames = 'idCuenta'
    IndexName = 'mTotalesix_idCuenta'
    IndexDefs = <
      item
        Name = 'mTotalesix_idCuenta'
        Fields = 'idCuenta'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterScroll = mTotalesAfterScroll
    Left = 276
    Top = 165
    object mTotalesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mTotalesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object mTotalesOrigen: TStringField
      FieldName = 'Origen'
      Size = 2
    end
    object mTotalesTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mTotalesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object mTotalesBalanceAnterior: TCurrencyField
      FieldName = 'BalanceAnterior'
    end
    object mTotalesTotalDB: TCurrencyField
      FieldName = 'TotalDB'
    end
    object mTotalesTotalCR: TCurrencyField
      FieldName = 'TotalCR'
    end
    object mTotalesGrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grupo'
      Size = 1
      Calculated = True
    end
    object mTotalesNivel0: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nivel0'
      Size = 15
      Calculated = True
    end
    object mTotalesDetBalAnt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetBalAnt'
      Calculated = True
    end
    object mTotalesDetTDB: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetTDB'
      Calculated = True
    end
    object mTotalesDetTCR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetTCR'
      Calculated = True
    end
    object mTotalesDetBalAct: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetBalAct'
      Calculated = True
    end
    object mTotalesNivel01: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nivel01'
      Size = 15
      Calculated = True
    end
    object mTotalesSignedBal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SignedBal'
      Calculated = True
    end
    object mTotalesBalanceActual: TCurrencyField
      FieldName = 'BalanceActual'
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'movimientoCta.xls'
    Left = 394
    Top = 262
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgRPTMayorGeneral;1'
    CommandTimeout = 3000000
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
      end
      item
        Name = '@Msk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Nvl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 508
    Top = 258
    object rsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 2
    end
    object rsTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object rsNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rsBalanceAnterior: TBCDField
      FieldName = 'BalanceAnterior'
      Precision = 19
      Size = 2
    end
    object rsTotalDB: TBCDField
      FieldName = 'TotalDB'
      Precision = 19
      Size = 2
    end
    object rsTotalCR: TBCDField
      FieldName = 'TotalCR'
      Precision = 19
      Size = 2
    end
    object rsBalanceActual: TBCDField
      FieldName = 'BalanceActual'
      Precision = 19
      Size = 2
    end
    object rsNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object rsConcepto: TBlobField
      FieldName = 'Concepto'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object rsDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsDetDescripcion: TStringField
      FieldName = 'DetDescripcion'
      Size = 60
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object ds: TDataSource
    DataSet = rs
    Left = 546
    Top = 332
  end
end
