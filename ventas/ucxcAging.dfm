inherited AgingCXC: TAgingCXC
  Left = 303
  Top = 174
  BorderIcons = [biMaximize]
  Caption = 'Antiguedad de Saldos'
  ClientHeight = 536
  ClientWidth = 952
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel
    Left = 9
    Top = 43
    Width = 38
    Height = 13
    Caption = 'Rango :'
  end
  object btnCliente: TBitBtn
    Left = 166
    Top = 9
    Width = 63
    Height = 22
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnClienteClick
  end
  object btnVend: TBitBtn
    Left = 165
    Top = 40
    Width = 64
    Height = 22
    Caption = 'Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnVendClick
  end
  object BitBtn1: TBitBtn
    Left = 830
    Top = 3
    Width = 114
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
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
  object BitBtn2: TBitBtn
    Left = 831
    Top = 39
    Width = 114
    Height = 31
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
  object BitBtn3: TBitBtn
    Left = 846
    Top = 502
    Width = 93
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 2
    OnClick = BitBtn3Click
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
  object rango: TdxSpinEdit
    Left = 56
    Top = 39
    Width = 101
    TabOrder = 3
    StyleController = dm.dxEstilo
    MaxValue = 150.000000000000000000
    MinValue = 1.000000000000000000
    Value = 30.000000000000000000
    StoredValues = 48
  end
  object Cliente: TdxEdit
    Left = 232
    Top = 9
    Width = 66
    TabOrder = 4
    Text = '0'
    StyleController = dm.dxEstilo
  end
  object Vendedor: TdxEdit
    Left = 231
    Top = 40
    Width = 66
    TabOrder = 5
    Text = '0'
    StyleController = dm.dxEstilo
  end
  object cxGrid1: TcxGrid
    Left = 4
    Top = 78
    Width = 943
    Height = 415
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 8
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = rcxpsource
      DataController.Filter.MaxValueListCount = 1000
      DataController.KeyFieldNames = 'IDRow'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1NoVenc
        end
        item
          Format = '0.00'
          Column = cxGrid1DBTableView1NoVenc
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1A30
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1A60
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1A90
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1AMas90
        end
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Total
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGrid1DBTableView1Nombre
            end>
          SummaryItems.Separator = ', '
          SummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1Total
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1NoVenc
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1A30
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1A60
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1A90
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1AMas90
            end>
        end>
      NavigatorButtons.ConfirmDelete = False
      Filtering.MaxDropDownCount = 12
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      Styles.Content = cxStyle1
      Styles.Footer = cxStyle3
      Styles.Header = cxStyle2
      Styles.Indicator = cxStyle2
      object cxGrid1DBTableView1IdDocumento: TcxGridDBColumn
        DataBinding.FieldName = 'IdDocumento'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Visible = False
        Options.Filtering = False
        Width = 37
      end
      object cxGrid1DBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Width = 73
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = True
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 110
      end
      object cxGrid1DBTableView1Factura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 16
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 77
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Options.Filtering = False
        Width = 72
      end
      object cxGrid1DBTableView1Vencimiento: TcxGridDBColumn
        DataBinding.FieldName = 'Vencimiento'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Options.Filtering = False
        Width = 68
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 75
      end
      object cxGrid1DBTableView1NoVenc: TcxGridDBColumn
        Caption = 'No venc.'
        DataBinding.FieldName = 'NoVenc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 76
      end
      object cxGrid1DBTableView1A30: TcxGridDBColumn
        Caption = '30 dias'
        DataBinding.FieldName = 'A30'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 85
      end
      object cxGrid1DBTableView1A60: TcxGridDBColumn
        Caption = '60 dias'
        DataBinding.FieldName = 'A60'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 76
      end
      object cxGrid1DBTableView1A90: TcxGridDBColumn
        Caption = '90 dias'
        DataBinding.FieldName = 'A90'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 70
      end
      object cxGrid1DBTableView1AMas90: TcxGridDBColumn
        Caption = '120 dias+'
        DataBinding.FieldName = 'AMas90'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 79
      end
      object cxGrid1DBTableView1BalanceFinal: TcxGridDBColumn
        DataBinding.FieldName = 'BalanceFinal'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object rpt: TcxRadioGroup
    Left = 310
    Top = 0
    Width = 349
    Height = 74
    ItemIndex = 0
    ParentFont = False
    Properties.Columns = 2
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = 'Normal (por Tipo Cliente)'
        Value = 0
      end
      item
        Caption = 'Resumido (por Tipo Cliente)'
        Value = 1
      end
      item
        Caption = 'Mostrando Vencimiento'
      end
      item
        Caption = 'por Grupo (Segmento)'
        Value = 3
      end
      item
        Caption = 'Resumido por Grupo'
      end
      item
        Caption = 'Reporte simple (por Moneda)'
      end>
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cbVencimiento: TcxCheckBox
    Left = 666
    Top = 8
    Width = 121
    Height = 21
    Caption = 'Por Vencimiento'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cbsolovencido: TcxCheckBox
    Left = 666
    Top = 29
    Width = 121
    Height = 21
    Caption = 'Solo lo Vencido'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object BitBtn4: TBitBtn
    Left = 4
    Top = 499
    Width = 114
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Excel'
    TabOrder = 12
    OnClick = BitBtn4Click
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
  object BitBtn5: TBitBtn
    Left = 164
    Top = 499
    Width = 114
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Email'
    TabOrder = 13
    OnClick = BitBtn5Click
    Glyph.Data = {
      E6040000424DE6040000000000003604000028000000100000000B0000000100
      080000000000B0000000C40E0000C40E000000010000000100001C1C1C001E1D
      1E00232122002B2B2B0031313100333031003635350038373700393939003C3B
      3B00403E3E0043414100444242004743440046464600484646004B4747004C4A
      4A00504B4C00534D4E00514F4F0057545500595354005B5757005C5858005E5B
      5B00605B5B00635C5D00635F600065606100696465006A6566006A6667006D66
      67007C7676008C83850091919100A29A9B00A2A2A200B8AEB000B9B0B100BBB0
      B100BEBEBE00BFBFBF00C0C0C000CDC2C400D0C6C700D3C9CA00D8D8D800D9D9
      D900DADADA00DDDDDD00E0D4D600E2D6D800E4D6D800E4D8D900E6DADC00E8DA
      DC00E8DCDE00EADCDE00ECDEE000EDE0E200EEE1E300EFE1E400F0E3E500F0E4
      E600F2E5E700F5E8EA00F7EAEC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000B0C0C0C0C
      0C0C0C0C0C0C0C0C0A08021F4044444444444444444444381A07102E18354444
      4444444444442F173411104437182D444227293F44281D3E4411104444411E25
      14262412232243444411104444443A063345452C0536444444111044443D1532
      454545452B133944441110443E19314545454545452B163B441110411C314545
      4545454545452A1B3C110D2030454545454545454545452A210F01040E0E0E0E
      0E0E0E0E0E0E0E0E0309}
  end
  object dtHasta: TcxDateEdit
    Left = 54
    Top = 12
    Width = 103
    Height = 21
    TabOrder = 14
  end
  object cbSubclientes: TcxCheckBox
    Left = 666
    Top = 52
    Width = 121
    Height = 21
    Caption = 'Usar subclientes'
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object spReporteCXC: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = spReporteCXCCalcFields
    CommandText = 'cxcAgingCtasXCobrar;1'
    CommandTimeout = 1500
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
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ident'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@persize'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idVend'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Vencimiento'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@SoloVencido'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@usar_sc'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 188
    Top = 290
    object spReporteCXCNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object spReporteCXCidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object spReporteCXCDias: TIntegerField
      FieldName = 'Dias'
    end
    object spReporteCXCNoVenc: TBCDField
      FieldName = 'NoVenc'
      ReadOnly = True
      Precision = 22
    end
    object spReporteCXCA30: TBCDField
      FieldName = 'A30'
      ReadOnly = True
      Precision = 22
    end
    object spReporteCXCA60: TBCDField
      FieldName = 'A60'
      ReadOnly = True
      Precision = 22
    end
    object spReporteCXCA90: TBCDField
      FieldName = 'A90'
      ReadOnly = True
      Precision = 22
    end
    object spReporteCXCAMas90: TBCDField
      FieldName = 'AMas90'
      ReadOnly = True
      Precision = 22
    end
    object spReporteCXCFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object spReporteCXCIDRow: TGuidField
      FieldName = 'IDRow'
      FixedChar = True
      Size = 38
    end
    object spReporteCXCFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spReporteCXCTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 2
    end
    object spReporteCXCPagado: TBCDField
      FieldName = 'Pagado'
      Precision = 19
      Size = 2
    end
    object spReporteCXCBalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
    object spReporteCXCPreriodo1: TStringField
      FieldName = 'Preriodo1'
      ReadOnly = True
      Size = 14
    end
    object spReporteCXCPreriodo2: TStringField
      FieldName = 'Preriodo2'
      ReadOnly = True
      Size = 23
    end
    object spReporteCXCPreriodo3: TStringField
      FieldName = 'Preriodo3'
      ReadOnly = True
      Size = 23
    end
    object spReporteCXCPreriodo4: TStringField
      FieldName = 'Preriodo4'
      ReadOnly = True
      Size = 23
    end
    object spReporteCXCPreriodo5: TStringField
      FieldName = 'Preriodo5'
      ReadOnly = True
      Size = 16
    end
    object spReporteCXCidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object spReporteCXCTotalClientes: TIntegerField
      FieldName = 'TotalClientes'
      ReadOnly = True
    end
    object spReporteCXCContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object spReporteCXCTelefono: TStringField
      FieldName = 'Telefono'
    end
    object spReporteCXCCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object spReporteCXCBalanceFinal: TBCDField
      FieldName = 'BalanceFinal'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object spReporteCXCBalanceGral: TBCDField
      FieldName = 'BalanceGral'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object spReporteCXCpordist: TBCDField
      FieldName = 'pordist'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object spReporteCXCidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object spReporteCXCMoneda: TStringField
      FieldName = 'Moneda'
    end
    object spReporteCXCVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object spReporteCXCClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object spReporteCXCGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spReporteCXCCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object spReporteCXCVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object spReporteCXCidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object spReporteCXCClienteObra: TStringField
      FieldName = 'ClienteObra'
      Size = 100
    end
    object spReporteCXCBalanceObra: TBCDField
      FieldName = 'BalanceObra'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object rcxpsource: TDataSource
    DataSet = spReporteCXC
    Left = 412
    Top = 126
  end
  object Reporte: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 5080
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 560
    Top = 128
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppLine17: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 30427
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 26723
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 6085
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 10054
        mmWidth = 20373
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
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16933
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 22754
        mmWidth = 138642
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 176477
        mmTop = 26723
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 83608
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 26723
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 26723
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 26723
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 1058
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15263976
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 202142
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 62442
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 106363
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 129646
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 152929
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 176213
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'idMoneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText39: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6085
          mmLeft = 265
          mmTop = 794
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 7673
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 61648
          mmTop = 1058
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106627
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc29: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 1058
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 31221
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 48948
          mmTop = 794
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4498
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBText31: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 16669
          mmTop = 794
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc121: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'pordist'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 1323
          mmTop = 8467
          mmWidth = 43127
          BandType = 5
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          HyperlinkEnabled = False
          Caption = 'por distribuir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44979
          mmTop = 10054
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          HyperlinkEnabled = False
          Caption = 'Balance total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 153723
          mmTop = 6350
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc123: TppDBCalc
          UserName = 'DBCalc303'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 174361
          mmTop = 6350
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand13: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel40: TppLabel
          UserName = 'Label301'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 9260
          mmTop = 529
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppDBText100: TppDBText
          UserName = 'DBText100'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 25135
          mmTop = 794
          mmWidth = 89429
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBCalc76: TppDBCalc
          UserName = 'DBCalc76'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 61383
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc77: TppDBCalc
          UserName = 'DBCalc401'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 83344
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc78: TppDBCalc
          UserName = 'DBCalc78'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 107156
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc79: TppDBCalc
          UserName = 'DBCalc79'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129911
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc80: TppDBCalc
          UserName = 'DBCalc80'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 153194
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc81: TppDBCalc
          UserName = 'DBCalc81'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175948
          mmTop = 1852
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 30692
          mmTop = 1323
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line101'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 5291
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 1323
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText102: TppDBText
          UserName = 'DBText102'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 1323
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ClienteTipo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkEnabled = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 16404
          mmTop = 529
          mmWidth = 10319
          BandType = 3
          GroupNo = 1
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          HyperlinkEnabled = False
          DataField = 'ClienteTipo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 27781
          mmTop = 529
          mmWidth = 89429
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 60854
          mmTop = 1588
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106627
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc301'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 1588
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total por Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 30427
          mmTop = 1058
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4763
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 1058
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText67: TppDBText
          UserName = 'DBText67'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 17198
          mmTop = 1058
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 18785
          mmTop = 1323
          mmWidth = 72761
          BandType = 3
          GroupNo = 1
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 1323
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165100
          mmTop = 1323
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 134673
          mmTop = 1588
          mmWidth = 29633
          BandType = 3
          GroupNo = 1
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          HyperlinkEnabled = False
          DataField = 'Contacto'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 92340
          mmTop = 1588
          mmWidth = 42069
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62177
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106098
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 794
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 794
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 3704
          mmTop = 794
          mmWidth = 54240
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plReporte: TppBDEPipeline
    DataSource = rcxpsource
    UserName = 'plReporte'
    Left = 482
    Top = 124
    object plReporteppField1: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object plReporteppField2: TppField
      FieldAlias = 'idCXC'
      FieldName = 'idCXC'
      FieldLength = 38
      DisplayWidth = 38
      Position = 1
    end
    object plReporteppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plReporteppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NoVenc'
      FieldName = 'NoVenc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 23
      Position = 3
    end
    object plReporteppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'A30'
      FieldName = 'A30'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 23
      Position = 4
    end
    object plReporteppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'A60'
      FieldName = 'A60'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 23
      Position = 5
    end
    object plReporteppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'A90'
      FieldName = 'A90'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 23
      Position = 6
    end
    object plReporteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMas90'
      FieldName = 'AMas90'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 23
      Position = 7
    end
    object plReporteppField9: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object plReporteppField10: TppField
      FieldAlias = 'IDRow'
      FieldName = 'IDRow'
      FieldLength = 38
      DisplayWidth = 38
      Position = 9
    end
    object plReporteppField11: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object plReporteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object plReporteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pagado'
      FieldName = 'Pagado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plReporteppField14: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object plReporteppField15: TppField
      FieldAlias = 'Preriodo1'
      FieldName = 'Preriodo1'
      FieldLength = 14
      DisplayWidth = 14
      Position = 14
    end
    object plReporteppField16: TppField
      FieldAlias = 'Preriodo2'
      FieldName = 'Preriodo2'
      FieldLength = 23
      DisplayWidth = 23
      Position = 15
    end
    object plReporteppField17: TppField
      FieldAlias = 'Preriodo3'
      FieldName = 'Preriodo3'
      FieldLength = 23
      DisplayWidth = 23
      Position = 16
    end
    object plReporteppField18: TppField
      FieldAlias = 'Preriodo4'
      FieldName = 'Preriodo4'
      FieldLength = 23
      DisplayWidth = 23
      Position = 17
    end
    object plReporteppField19: TppField
      FieldAlias = 'Preriodo5'
      FieldName = 'Preriodo5'
      FieldLength = 16
      DisplayWidth = 16
      Position = 18
    end
    object plReporteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'idcliente'
      FieldName = 'idcliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object plReporteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalClientes'
      FieldName = 'TotalClientes'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object plReporteppField22: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 40
      DisplayWidth = 40
      Position = 21
    end
    object plReporteppField23: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object plReporteppField24: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object plReporteppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceFinal'
      FieldName = 'BalanceFinal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 24
    end
    object plReporteppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceGral'
      FieldName = 'BalanceGral'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 25
    end
    object plReporteppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'pordist'
      FieldName = 'pordist'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 26
    end
    object plReporteppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object plReporteppField29: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 28
    end
    object plReporteppField30: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object plReporteppField31: TppField
      FieldAlias = 'ClienteTipo'
      FieldName = 'ClienteTipo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object plReporteppField32: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object plReporteppField33: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object plReporteppField34: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 40
      DisplayWidth = 40
      Position = 33
    end
    object plReporteppField35: TppField
      FieldAlias = 'idClienteObra'
      FieldName = 'idClienteObra'
      FieldLength = 25
      DisplayWidth = 25
      Position = 34
    end
    object plReporteppField36: TppField
      FieldAlias = 'ClienteObra'
      FieldName = 'ClienteObra'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object plReporteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'BalanceObra'
      FieldName = 'BalanceObra'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 39
      Position = 36
    end
  end
  object ReporteRes: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 7620
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 630
    Top = 150
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 32808
        mmWidth = 262467
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 29369
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 29369
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC (Resumido)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 10583
        mmWidth = 147902
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 214842
        mmTop = 2646
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 240771
        mmTop = 6615
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 19315
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 112713
        mmTop = 24871
        mmWidth = 149490
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 235215
        mmTop = 29104
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 119856
        mmTop = 29104
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 29104
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 165365
        mmTop = 29104
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 189177
        mmTop = 29104
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 212196
        mmTop = 29104
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor facturado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 96044
        mmTop = 29104
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Por Distribuir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 72761
        mmTop = 29104
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7662
        mmLeft = 794
        mmTop = 1058
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 1323
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 22225
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 42069
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 65088
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 85725
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 110331
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 134938
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 159279
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 184150
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line18'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 264161
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppGroup6: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText66: TppDBText
          UserName = 'DBText66'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 28575
          mmTop = 1058
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkEnabled = False
          Caption = 'Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6615
          mmLeft = 0
          mmTop = 1058
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 794
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 794
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 794
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 794
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 794
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Moneda :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5948
          mmLeft = 1323
          mmTop = 529
          mmWidth = 46038
          BandType = 5
          GroupNo = 0
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6075
          mmLeft = 48948
          mmTop = 529
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236273
          mmTop = 529
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand14: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 39423
          mmTop = 794
          mmWidth = 141288
          BandType = 3
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6615
          mmLeft = 10848
          mmTop = 794
          mmWidth = 18785
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel55: TppLabel
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 1058
          mmWidth = 30956
          BandType = 5
          GroupNo = 1
        end
        object ppDBText101: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 31750
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc82: TppDBCalc
          UserName = 'DBCalc82'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 1588
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc83: TppDBCalc
          UserName = 'DBCalc83'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 1588
          mmWidth = 21167
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc84: TppDBCalc
          UserName = 'DBCalc84'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc85: TppDBCalc
          UserName = 'DBCalc85'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 1588
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc86: TppDBCalc
          UserName = 'DBCalc86'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc87: TppDBCalc
          UserName = 'DBCalc87'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc88: TppDBCalc
          UserName = 'DBCalc88'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236009
          mmTop = 1588
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'ClienteTipo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkEnabled = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 15610
          mmTop = 529
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppDBText71: TppDBText
          UserName = 'DBText71'
          HyperlinkEnabled = False
          DataField = 'ClienteTipo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 30163
          mmTop = 529
          mmWidth = 102659
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 529
          mmWidth = 30956
          BandType = 5
          GroupNo = 1
        end
        object ppDBText72: TppDBText
          UserName = 'DBText72'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 31750
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc51'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 1058
          mmWidth = 21167
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc54'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc55: TppDBCalc
          UserName = 'DBCalc55'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 1058
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc56: TppDBCalc
          UserName = 'DBCalc56'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 1058
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc57'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236273
          mmTop = 1058
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppShape3: TppShape
          OnPrint = ppShape3Print
          UserName = 'Shape2'
          Brush.Color = 15724527
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 263261
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 265
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 141552
          mmTop = 265
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 165365
          mmTop = 265
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 189177
          mmTop = 265
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 212196
          mmTop = 265
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 96044
          mmTop = 265
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBText26: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 0
          mmWidth = 52917
          BandType = 5
          GroupNo = 0
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 0
          mmTop = 0
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 72761
          mmTop = 0
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236009
          mmTop = 265
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pmenu: TPopupMenu
    OnPopup = pmenuPopup
    Left = 214
    Top = 206
    object Asignarfacturaacobrador1: TMenuItem
      Caption = 'Asignar factura a cobrador'
      OnClick = Asignarfacturaacobrador1Click
    end
  end
  object ReporteVenc: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 3810
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 562
    Top = 198
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 29898
        mmWidth = 266965
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 26458
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 36248
        mmTop = 26458
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 220928
        mmTop = 5821
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 246857
        mmTop = 9790
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable3: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 16669
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 22490
        mmWidth = 139700
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 242094
        mmTop = 26458
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 128852
        mmTop = 26458
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 149225
        mmTop = 26458
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 174625
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 197380
        mmTop = 26458
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 219340
        mmTop = 26458
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7673
        mmLeft = 2117
        mmTop = 794
        mmWidth = 151871
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vencimieto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 93398
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape1'
        Brush.Color = 15263976
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 268023
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 128588
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 148961
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 172509
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 195792
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 219075
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 242359
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        HyperlinkEnabled = False
        DataField = 'Vencimiento'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 94456
        mmTop = 529
        mmWidth = 24606
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'idMoneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppDBText52: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 31221
          mmTop = 794
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          Caption = 'Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6615
          mmLeft = 2646
          mmTop = 794
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 7408
          mmWidth = 268023
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129117
          mmTop = 1058
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 149490
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 173038
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 196321
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 219605
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 242359
          mmTop = 1058
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 35190
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBText59: TppDBText
          UserName = 'DBText40'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 52917
          mmTop = 794
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line18'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 2381
          mmTop = 0
          mmWidth = 265113
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 2381
          mmTop = 4498
          mmWidth = 265642
          BandType = 5
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBText60: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3429
          mmLeft = 20638
          mmTop = 794
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand15: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBText103: TppDBText
          UserName = 'DBText103'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6085
          mmLeft = 30163
          mmTop = 1323
          mmWidth = 152929
          BandType = 3
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 10319
          mmTop = 1323
          mmWidth = 18256
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBCalc89: TppDBCalc
          UserName = 'DBCalc89'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 128588
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc90: TppDBCalc
          UserName = 'DBCalc90'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 148961
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc91: TppDBCalc
          UserName = 'DBCalc91'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 172509
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc92: TppDBCalc
          UserName = 'DBCalc92'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 195792
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc93: TppDBCalc
          UserName = 'DBCalc93'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 219075
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc94: TppDBCalc
          UserName = 'DBCalc94'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 241830
          mmTop = 1852
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 34660
          mmTop = 1323
          mmWidth = 28310
          BandType = 5
          GroupNo = 1
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 1852
          mmTop = 5291
          mmWidth = 265642
          BandType = 5
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText105: TppDBText
          UserName = 'DBText701'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 20108
          mmTop = 1323
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'ClienteTipo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText68: TppDBText
          UserName = 'DBText68'
          HyperlinkEnabled = False
          DataField = 'ClienteTipo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6075
          mmLeft = 32808
          mmTop = 1323
          mmWidth = 88371
          BandType = 3
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkEnabled = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5800
          mmLeft = 19050
          mmTop = 1323
          mmWidth = 12044
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc45'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129117
          mmTop = 2646
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc46'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 149490
          mmTop = 2646
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc47'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 173038
          mmTop = 2646
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc48'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 196321
          mmTop = 2646
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc49: TppDBCalc
          UserName = 'DBCalc49'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 219605
          mmTop = 2646
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc50: TppDBCalc
          UserName = 'DBCalc302'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 242359
          mmTop = 2646
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 35190
          mmTop = 2117
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
        end
        object ppDBText69: TppDBText
          UserName = 'DBText402'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 52917
          mmTop = 2117
          mmWidth = 11113
          BandType = 5
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 2381
          mmTop = 6085
          mmWidth = 265642
          BandType = 5
          GroupNo = 1
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 2117
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText70: TppDBText
          UserName = 'DBText70'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 20638
          mmTop = 2117
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText61: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 20638
          mmTop = 1323
          mmWidth = 93398
          BandType = 3
          GroupNo = 1
        end
        object ppDBText62: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppDBText63: TppDBText
          UserName = 'DBText29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 244211
          mmTop = 1323
          mmWidth = 23283
          BandType = 3
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 224632
          mmTop = 1323
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
        object ppDBText64: TppDBText
          UserName = 'DBText34'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 170921
          mmTop = 1588
          mmWidth = 50006
          BandType = 3
          GroupNo = 1
        end
        object ppDBText65: TppDBText
          UserName = 'DBText33'
          HyperlinkEnabled = False
          DataField = 'Contacto'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 115359
          mmTop = 1588
          mmWidth = 54769
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc31: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 128852
          mmTop = 529
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 149225
          mmTop = 529
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 172773
          mmTop = 529
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 196057
          mmTop = 529
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 219340
          mmTop = 529
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 242094
          mmTop = 529
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 6879
          mmTop = 529
          mmWidth = 54240
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList3: TppParameterList
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 50
    Top = 162
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15788249
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14789952
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14789952
      TextColor = clWindowText
    end
  end
  object ReportporGrupo: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 5080
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 562
    Top = 258
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppLine13: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 29898
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 26194
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 37306
        mmTop = 26194
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 8467
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 5556
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 9525
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable4: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16404
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 22225
        mmWidth = 138642
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 176477
        mmTop = 26194
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 26194
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 83608
        mmTop = 26194
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 26194
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 26194
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 26194
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 529
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape4: TppShape
        OnPrint = ppShape4Print
        UserName = 'Shape1'
        Brush.Color = 15263976
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 202142
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 265
        mmTop = 265
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 36248
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 62442
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 106363
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 129646
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 152929
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 176213
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup10: TppGroup
      BreakName = 'idMoneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand10: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppDBText81: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6085
          mmLeft = 265
          mmTop = 1323
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 8202
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc58: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 61648
          mmTop = 1058
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc59: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc60: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106627
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc61: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc62: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 1058
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 31221
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBText90: TppDBText
          UserName = 'DBText40'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 48948
          mmTop = 794
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line18'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4498
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBText91: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 16669
          mmTop = 794
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand11: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel47: TppLabel
          UserName = 'Label30'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 265
          mmTop = 529
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
        end
        object ppDBText92: TppDBText
          UserName = 'DBText37'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 17198
          mmTop = 529
          mmWidth = 83873
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc64: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 60854
          mmTop = 1588
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc65: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106627
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc67: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc68: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc69: TppDBCalc
          UserName = 'DBCalc301'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 1588
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel48: TppLabel
          UserName = 'Label31'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 30427
          mmTop = 1058
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
        end
        object ppDBText93: TppDBText
          UserName = 'DBText401'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 48154
          mmTop = 1058
          mmWidth = 11113
          BandType = 5
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLine19: TppLine
          UserName = 'Line10'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4763
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel49: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 1058
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText94: TppDBText
          UserName = 'DBText67'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 17198
          mmTop = 1058
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand12: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText95: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 18785
          mmTop = 1323
          mmWidth = 72761
          BandType = 3
          GroupNo = 1
        end
        object ppDBText96: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppDBText97: TppDBText
          UserName = 'DBText29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 1323
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel50: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165100
          mmTop = 1323
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
        object ppDBText98: TppDBText
          UserName = 'DBText34'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 134673
          mmTop = 1588
          mmWidth = 29633
          BandType = 3
          GroupNo = 1
        end
        object ppDBText99: TppDBText
          UserName = 'DBText33'
          HyperlinkEnabled = False
          DataField = 'Contacto'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 92340
          mmTop = 1588
          mmWidth = 42069
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc70: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62177
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc71: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc72: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106098
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc73: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc74: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 794
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc75: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 794
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel51: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 3704
          mmTop = 794
          mmWidth = 54240
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList5: TppParameterList
    end
  end
  object rptResumidoGrupo: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 7620
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 678
    Top = 224
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand5: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLine23: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 32808
        mmWidth = 262467
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 29369
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14023
        mmTop = 29369
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC (Resumido)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 10583
        mmWidth = 147902
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 214842
        mmTop = 2646
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 240771
        mmTop = 6615
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable5: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 19315
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 112713
        mmTop = 24871
        mmWidth = 149490
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 235215
        mmTop = 29104
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText104: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 119856
        mmTop = 29104
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText106: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 29104
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 165365
        mmTop = 29104
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 189177
        mmTop = 29104
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 212196
        mmTop = 29104
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Categoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 96044
        mmTop = 29104
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 67733
        mmTop = 29104
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText110: TppDBText
        UserName = 'DBText36'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7662
        mmLeft = 794
        mmTop = 1058
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
      object ppDBText111: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 1323
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 22225
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 42069
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 65088
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText115: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 85725
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 110331
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 134938
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 159279
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plReporte'
        mmHeight = 265
        mmLeft = 184150
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine24: TppLine
        UserName = 'Line18'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 264161
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppGroup16: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand16: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText120: TppDBText
          UserName = 'DBText66'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 28575
          mmTop = 1058
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label29'
          HyperlinkEnabled = False
          Caption = 'Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6615
          mmLeft = 0
          mmTop = 1058
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand16: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBCalc95: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 794
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc96: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc97: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 794
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc98: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 794
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc99: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 794
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc100: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 794
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Moneda :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5948
          mmLeft = 1323
          mmTop = 529
          mmWidth = 46038
          BandType = 5
          GroupNo = 0
        end
        object ppDBText121: TppDBText
          UserName = 'DBText32'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6075
          mmLeft = 48948
          mmTop = 529
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc101: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236273
          mmTop = 529
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand17: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBText122: TppDBText
          UserName = 'DBText38'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 39423
          mmTop = 794
          mmWidth = 141288
          BandType = 3
          GroupNo = 1
        end
        object ppLabel68: TppLabel
          UserName = 'Label54'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6615
          mmLeft = 10848
          mmTop = 794
          mmWidth = 18785
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel69: TppLabel
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 1058
          mmWidth = 30956
          BandType = 5
          GroupNo = 1
        end
        object ppDBText123: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 31750
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc102: TppDBCalc
          UserName = 'DBCalc82'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 1588
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc103: TppDBCalc
          UserName = 'DBCalc83'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 1588
          mmWidth = 21167
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc104: TppDBCalc
          UserName = 'DBCalc84'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc105: TppDBCalc
          UserName = 'DBCalc85'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 1588
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc106: TppDBCalc
          UserName = 'DBCalc86'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc107: TppDBCalc
          UserName = 'DBCalc87'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc108: TppDBCalc
          UserName = 'DBCalc88'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236009
          mmTop = 1588
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total por grupo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 50006
          mmTop = 1058
          mmWidth = 30956
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup18: TppGroup
      BreakName = 'ClienteTipo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand18: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel70: TppLabel
          UserName = 'Label36'
          HyperlinkEnabled = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 15610
          mmTop = 529
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppDBText124: TppDBText
          UserName = 'DBText71'
          HyperlinkEnabled = False
          DataField = 'ClienteTipo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6615
          mmLeft = 30163
          mmTop = 529
          mmWidth = 102659
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand18: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel71: TppLabel
          UserName = 'Label39'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 529
          mmWidth = 30956
          BandType = 5
          GroupNo = 1
        end
        object ppDBText125: TppDBText
          UserName = 'DBText72'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 31750
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc109: TppDBCalc
          UserName = 'DBCalc51'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 96309
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc110: TppDBCalc
          UserName = 'DBCalc52'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 120121
          mmTop = 1058
          mmWidth = 21167
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc111: TppDBCalc
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 141817
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc112: TppDBCalc
          UserName = 'DBCalc54'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 1058
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc113: TppDBCalc
          UserName = 'DBCalc55'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 189442
          mmTop = 1058
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc114: TppDBCalc
          UserName = 'DBCalc56'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 212461
          mmTop = 1058
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc115: TppDBCalc
          UserName = 'DBCalc57'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236273
          mmTop = 1058
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup19: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand19: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand19: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppShape5: TppShape
          OnPrint = ppShape3Print
          UserName = 'Shape2'
          Brush.Color = 15724527
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 263261
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc116: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 265
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc117: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 141552
          mmTop = 265
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc118: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 165365
          mmTop = 265
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc119: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 189177
          mmTop = 265
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc120: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3175
          mmLeft = 212196
          mmTop = 265
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBText126: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 13494
          mmTop = 0
          mmWidth = 52917
          BandType = 5
          GroupNo = 0
        end
        object ppDBText127: TppDBText
          UserName = 'DBText28'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 0
          mmTop = 0
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
        object ppDBText128: TppDBText
          UserName = 'DBText30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Vendedor'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 67998
          mmTop = 0
          mmWidth = 26723
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc122: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 236009
          mmTop = 265
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
        object ppDBText129: TppDBText
          UserName = 'DBText301'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Categoria'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3450
          mmLeft = 97631
          mmTop = 0
          mmWidth = 21167
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ReporteSimple: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 5080
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 448
    Top = 188
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand6: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppLine26: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 30427
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 26723
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 6085
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 10054
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable7: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16933
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 22754
        mmWidth = 138642
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 176477
        mmTop = 26723
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText130: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 83608
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 26723
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 26723
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 26723
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 1058
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape6: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15263976
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 202142
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText137: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText138: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 62442
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 106363
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 129646
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 152929
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText143: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 176213
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup20: TppGroup
      BreakName = 'idMoneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand20: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText144: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6085
          mmLeft = 265
          mmTop = 794
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLine27: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 7673
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand20: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc124: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 61648
          mmTop = 1058
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc125: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc126: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106627
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc127: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc128: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc129: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 1058
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 31221
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBText145: TppDBText
          UserName = 'DBText40'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 48948
          mmTop = 794
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine28: TppLine
          UserName = 'Line18'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLine29: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4498
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel81: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBText146: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 16669
          mmTop = 794
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup23: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand23: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText151: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 18785
          mmTop = 1323
          mmWidth = 72761
          BandType = 3
          GroupNo = 1
        end
        object ppDBText152: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppDBText153: TppDBText
          UserName = 'DBText29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 1323
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel90: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165100
          mmTop = 1323
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand23: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc144: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62177
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc145: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc146: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106098
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc147: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129382
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc148: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 794
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc149: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175419
          mmTop = 794
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel91: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 3704
          mmTop = 794
          mmWidth = 54240
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList6: TppParameterList
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Solcitudes.xls'
    Left = 144
    Top = 224
  end
  object ADODataSet1: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = spReporteCXCCalcFields
    CommandText = 
      '--[cxcNewAging] '#39'06/23/2009'#39',0,15,0,0,0'#13#10#13#10'declare --create proc' +
      'edure cxcNewAging'#13#10' @final datetime,     '#13#10' @ident int,     '#13#10' @' +
      'persize int,    '#13#10' @idVend int,  '#13#10' @Vencimiento Bit,'#13#10' @SoloVen' +
      'cido bit '#13#10'--as'#13#10'select @final = :final,'#13#10#9'   @ident = :ident,'#13#10 +
      #9'  @persize = :persize,'#13#10#9'  @idvend = :idvend,'#13#10'      @vencimien' +
      'to = :venc,'#13#10'     @solovencido = :solovenc'#13#10' '#13#10'    '#13#10'  declare @' +
      'TotalCli int    '#13#10'  select      '#13#10'    ct.ClienteTipo,  '#13#10'    e.i' +
      'dCliente,    '#13#10'    e.Cliente as Nombre,    '#13#10'    e.Contacto,    ' +
      #13#10'    e.telefono,  '#13#10'    IsNull(g.Grupo, '#39'SIN GRUPO'#39') As Grupo, ' +
      '   '#13#10'    t.idMoneda,    '#13#10'    m.Moneda,    '#13#10'    t.idCXC,     '#13#10 +
      '    Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fech' +
      'a ELSE IsNull(t.Vencimiento, t.Fecha) END), @final),     '#13#10'    t' +
      '.idTipoDocumento + '#39'-'#39' + ltrim(ltrim(t.CXC)) as Factura,     '#13#10' ' +
      '   IDRow = t.idCXC,    '#13#10'    t.Fecha,   '#13#10'    t.Vencimiento,   '#13 +
      #10'    t.Valor as Total,    '#13#10'    Pagado = (isnull(    '#13#10'   (selec' +
      't sum(d.TotalAplicado)    '#13#10'          from     '#13#10'              c' +
      'xc c     '#13#10'              join cxcDet d on c.idCXC = d.idCXC    '#13 +
      #10'          where     '#13#10'              d.fecha <= @final    '#13#10'    ' +
      ' and c.cancelado = 0  '#13#10'              and d.idCXCDebito = t.idCX' +
      'C    '#13#10'          ),0)),'#13#10'    cg.ClienteGrupo As Categoria,'#13#10'    ' +
      'em.Empleado As Vendedor'#13#10'  into     '#13#10'    #tempcxp  '#13#10'  from    ' +
      ' '#13#10'    CXC t     '#13#10'    join Moneda m on t.idMoneda = m.idMoneda ' +
      '   '#13#10'    right join Cliente e on t.idCliente = e.idCliente    '#13#10 +
      '    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteT' +
      'ipo  '#13#10'    left join svGrupo g on e.grupo = g.idGrupo   '#13#10'    le' +
      'ft join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo' +
      ')'#13#10'    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)' +
      #13#10'  where     '#13#10'    (@idEnt = 0 or t.idCliente = @idEnt)     '#13#10' ' +
      '   and (@idVend = 0 or e.idEmpleado = @idVend)     '#13#10'    and  t.' +
      'EsCredito = 0    '#13#10'    and  (Case when @SoloVencido = 1 then t.V' +
      'encimiento else t.fecha end)  <=  @final'#13#10'    and t.cancelado = ' +
      '0  '#13#10#13#10'insert into #tempcxp    '#13#10'  select   '#13#10'    ct.ClienteTipo' +
      ',  '#13#10'    e.idCliente,    '#13#10'    e.Cliente as Nombre,    '#13#10'    e.C' +
      'ontacto,    '#13#10'    e.telefono,   '#13#10'    IsNull(g.Grupo, '#39'SIN GRUPO' +
      #39') As Grupo,   '#13#10'    t.idMoneda,    '#13#10'    m.Moneda,    '#13#10'    t.i' +
      'dCXC,     '#13#10'    Dias = datediff(day, t.Fecha, @final),     '#13#10'   ' +
      ' t.idTipoDocumento + '#39'-'#39' + ltrim(ltrim(t.CXC)) as Factura,     '#13 +
      #10'    IDRow = t.idCXC,    '#13#10'    t.Fecha,    '#13#10'    t.Vencimiento, ' +
      ' '#13#10'    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as' +
      ' Total,    '#13#10'    Pagado = 0.00,'#13#10'    cg.ClienteGrupo As Categori' +
      'a,'#13#10'    em.Empleado As Vendedor'#13#10'  from     '#13#10'    cxc t     '#13#10'  ' +
      '  left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final ' +
      '    '#13#10'    join Moneda m on t.idMoneda = m.idMoneda    '#13#10'    join' +
      ' Cliente e on t.idCliente = e.idCliente    '#13#10'    join ClienteTip' +
      'o ct on e.idClienteTipo = ct.idClienteTipo   '#13#10'    left join svG' +
      'rupo g on e.grupo = g.idGrupo  '#13#10'    left join ClienteGrupo cg o' +
      'n (cg.IdClienteGrupo = e.IdClienteGrupo)'#13#10'    left join svEmplea' +
      'do em on (em.IdEmpleado = e.IdEmpleado)'#13#10'  where     '#13#10'    (@idE' +
      'nt = 0 or t.idCliente = @idEnt)     '#13#10'    and (@idVend = 0 or e.' +
      'idEmpleado = @idVend)     '#13#10'    and  t.EsCredito = 1    '#13#10'    an' +
      'd t.fecha <= @final      '#13#10'    and t.cancelado = 0    '#13#10'  group ' +
      'by     '#13#10'    ct.ClienteTipo,   '#13#10'    e.idCliente,    '#13#10'    e.Cli' +
      'ente ,    '#13#10'    e.Contacto,    '#13#10'    e.telefono,  '#13#10'    g.grupo,' +
      '    '#13#10'    t.idMoneda,    '#13#10'    m.Moneda,    '#13#10'    t.idCXC,     '#13 +
      #10'    datediff(day, t.Fecha, @final),    '#13#10'    t.idTipoDocumento,' +
      '      '#13#10'    t.CXC,     '#13#10'    t.idCXC,    '#13#10'    t.Fecha,    '#13#10'   ' +
      ' t.Vencimiento,  '#13#10'    t.Valor,'#13#10'    cg.ClienteGrupo,'#13#10'    em.Em' +
      'pleado'#13#10'  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),' +
      '0.00)  '#13#10#13#10'select  '#13#10'  idMoneda,     '#13#10'  idCliente,    '#13#10'  sum(V' +
      'alor) - sum(Aplicado) as PorDist      '#13#10'into    '#13#10'  #TmpDist    ' +
      #13#10'from (    '#13#10'  SELECT     '#13#10'    c.idMoneda,      '#13#10'    c.idClie' +
      'nte,    '#13#10'    c.Valor,    '#13#10'    SUM(isnull((cd.Valor * cd.tasa) ' +
      '/ c.tasa,0.00)) AS Aplicado    '#13#10'  FROM             '#13#10'    dbo.Cx' +
      'c c LEFT JOIN    '#13#10'    dbo.CxcDet cd ON c.idCxc = cd.idCxc    '#13#10 +
      '  WHERE         '#13#10'    (c.esCredito = 1)    '#13#10'    and (c.fecha <=' +
      ' @Final)    '#13#10'    and (@idEnt = 0 or c.idCliente = @idEnt)     '#13 +
      #10'    and (c.Cancelado = 0)    '#13#10'    and ((cd.fecha is null) or (' +
      'cd.fecha <= @Final))    '#13#10'  GROUP BY     '#13#10'    c.idMoneda,  '#13#10'  ' +
      '  c.idCliente,     '#13#10'    c.idCxc,    '#13#10'    c.Valor) Datos    '#13#10'G' +
      'roup by    '#13#10'  Datos.idMoneda,  '#13#10'  Datos.idCliente    '#13#10'Order b' +
      'y    '#13#10'  Datos.idMoneda,  '#13#10'  Datos.idCliente  '#13#10#13#10'Set @TotalCli' +
      ' = (select count(distinct idcliente) from #tempcxp x where  x.To' +
      'tal <> x.pagado)    '#13#10#13#10'select    '#13#10'   c.Compania,    '#13#10'   x.Cli' +
      'enteTipo,   '#13#10'   x.idMoneda,    '#13#10'   x.Moneda,    '#13#10'   x.idclien' +
      'te,    '#13#10'   x.Nombre,    '#13#10'   idCXC,     '#13#10'   x.Contacto,    '#13#10' ' +
      '  x.Telefono,  '#13#10'   x.Grupo,    '#13#10'   Dias,     '#13#10'   NoVenc = cas' +
      'e when Floor(dias / @persize) <= 0 then Total - Pagado else $0 e' +
      'nd,    '#13#10'   A30    = case when Floor(dias / @persize) = 1 then T' +
      'otal - Pagado else $0 end,    '#13#10'   A60    = case when Floor(dias' +
      ' / @persize) = 2 then Total - Pagado else $0 end,    '#13#10'   A90   ' +
      ' = case when Floor(dias / @persize) = 3 then Total - Pagado else' +
      ' $0 end,    '#13#10'   AMas90 = case when Floor(dias / @persize) > 3 t' +
      'hen Total - Pagado else $0 end,    '#13#10'   Factura,     '#13#10'   IDRow,' +
      '    '#13#10'   Fecha,    '#13#10'   Vencimiento,  '#13#10'   Total,    '#13#10'   Pagado' +
      ',    '#13#10'   Categoria,'#13#10'   Vendedor,'#13#10'   d.PorDist,    '#13#10'   CASE W' +
      'HEN @Vencimiento = 0 THEN   '#13#10'     ('#39'0 a '#39' + convert(varchar(10)' +
      ', @persize))   '#13#10'   ELSE   '#13#10'     ('#39'No Vencido'#39')   '#13#10'   END as P' +
      'reriodo1,    '#13#10'   CASE WHEN @Vencimiento = 0 THEN  '#13#10'     (conve' +
      'rt(varchar(10), @persize+1) + '#39' a '#39' + convert(varchar(10), @pers' +
      'ize*2))   '#13#10'   ELSE  '#13#10'     ('#39'1 a '#39' + convert(varchar(10), @pers' +
      'ize))     '#13#10'   END as Preriodo2,    '#13#10'   CASE WHEN @Vencimiento ' +
      '= 0 THEN  '#13#10'     (convert(varchar(10), @persize*2+1) + '#39' a '#39' + c' +
      'onvert(varchar(10), @persize*3))   '#13#10'   ELSE  '#13#10'     (convert(va' +
      'rchar(10), @persize+1) + '#39' a '#39' + convert(varchar(10), @persize*2' +
      '))   '#13#10'   END as Preriodo3,    '#13#10'   CASE WHEN @Vencimiento = 0 T' +
      'HEN  '#13#10'     (convert(varchar(10), @persize*3+1) + '#39' a '#39' + conver' +
      't(varchar(10), @persize*4))   '#13#10'   ELSE  '#13#10'     (convert(varchar' +
      '(10), @persize*2+1) + '#39' a '#39' + convert(varchar(10), @persize*3)) ' +
      '  '#13#10'   END as Preriodo4,    '#13#10'   CASE WHEN @Vencimiento = 0 THEN' +
      '  '#13#10'     (convert(varchar(10), @persize*4+1) + '#39' o Mas'#39')   '#13#10'   ' +
      'ELSE  '#13#10'     (convert(varchar(10), @persize*3+1) + '#39' a Mas'#39')  '#13#10 +
      '   END as Preriodo5,  '#13#10'   TotalClientes = @TotalCli,    '#13#10'   Ba' +
      'lanceFinal = isnull((select sum(Total - Pagado) from #tempcxp   ' +
      '  '#13#10'      where idCliente = x.idCliente),0.00), -- - d.PorDist, ' +
      '   '#13#10'   BalanceGral = isnull((select sum(Total - Pagado) from #t' +
      'empcxp) ,0.00) --     '#13#10'  --        isnull((select sum(porDist) ' +
      'from #tmpDist) ,0.00)      '#13#10'  from     '#13#10'    #tempcxp x   '#13#10'   ' +
      ' left join #TmpDist d on x.idcliente = d.idcliente and x.idMoned' +
      'a = d.idmoneda  '#13#10'    cross join configuracion c    '#13#10'  where   ' +
      ' '#13#10'    x.Total <> x.pagado     '#13#10'  order by     '#13#10'    x.idMoneda' +
      ',   '#13#10' x.ClienteTipo,    '#13#10'    x.Nombre,     '#13#10'    x.Fecha    '#13#10 +
      #13#10'drop table #tempcxp'#13#10'drop table #tmpDist'#13#10'--return '
    CommandTimeout = 1000
    Parameters = <
      item
        Name = 'final'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'ident'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'persize'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'idvend'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'venc'
        DataType = ftBoolean
        Size = -1
        Value = Null
      end
      item
        Name = 'solovenc'
        DataType = ftBoolean
        Size = -1
        Value = Null
      end>
    Left = 372
    Top = 268
    object StringField1: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object GuidField1: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object IntegerField1: TIntegerField
      FieldName = 'Dias'
    end
    object BCDField1: TBCDField
      FieldName = 'NoVenc'
      ReadOnly = True
      Precision = 22
    end
    object BCDField2: TBCDField
      FieldName = 'A30'
      ReadOnly = True
      Precision = 22
    end
    object BCDField3: TBCDField
      FieldName = 'A60'
      ReadOnly = True
      Precision = 22
    end
    object BCDField4: TBCDField
      FieldName = 'A90'
      ReadOnly = True
      Precision = 22
    end
    object BCDField5: TBCDField
      FieldName = 'AMas90'
      ReadOnly = True
      Precision = 22
    end
    object StringField2: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object GuidField2: TGuidField
      FieldName = 'IDRow'
      FixedChar = True
      Size = 38
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Fecha'
    end
    object BCDField6: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 2
    end
    object BCDField7: TBCDField
      FieldName = 'Pagado'
      Precision = 19
      Size = 2
    end
    object CurrencyField1: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
    object StringField3: TStringField
      FieldName = 'Preriodo1'
      ReadOnly = True
      Size = 14
    end
    object StringField4: TStringField
      FieldName = 'Preriodo2'
      ReadOnly = True
      Size = 23
    end
    object StringField5: TStringField
      FieldName = 'Preriodo3'
      ReadOnly = True
      Size = 23
    end
    object StringField6: TStringField
      FieldName = 'Preriodo4'
      ReadOnly = True
      Size = 23
    end
    object StringField7: TStringField
      FieldName = 'Preriodo5'
      ReadOnly = True
      Size = 16
    end
    object IntegerField2: TIntegerField
      FieldName = 'idcliente'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TotalClientes'
      ReadOnly = True
    end
    object StringField8: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object StringField9: TStringField
      FieldName = 'Telefono'
    end
    object StringField10: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object BCDField8: TBCDField
      FieldName = 'BalanceFinal'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object BCDField9: TBCDField
      FieldName = 'BalanceGral'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object BCDField10: TBCDField
      FieldName = 'pordist'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'idMoneda'
    end
    object StringField11: TStringField
      FieldName = 'Moneda'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object StringField12: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
  end
  object ReportSC: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 13970
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 5080
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\Sheresade\CuentasXPagar\Reporte de Sols.rtm'
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 520
    Top = 380
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand7: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand7: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppLine25: TppLine
        UserName = 'Line17'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 30427
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33073
        mmTop = 26723
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Antiguedad de Saldos en CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 8996
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy '#39'@'#39' hh:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 6085
        mmWidth = 46302
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 10054
        mmWidth = 20373
        BandType = 0
      end
      object ppVariable6: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16933
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 22754
        mmWidth = 138642
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 176477
        mmTop = 26723
        mmWidth = 24871
        BandType = 0
      end
      object ppDBText147: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo1'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText148: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo2'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 83608
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText149: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo3'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 26723
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText150: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo4'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 26723
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText154: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Color = clNavy
        DataField = 'Preriodo5'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 26723
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText155: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 1058
        mmWidth = 151871
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape7: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15263976
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 202142
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'NoVenc'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 62442
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A30'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText160: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A60'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 106363
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'A90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 129646
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AMas90'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 152929
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 2910
        mmLeft = 176213
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup21: TppGroup
      BreakName = 'idMoneda'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand21: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText164: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6085
          mmLeft = 265
          mmTop = 794
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 7673
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand21: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppDBCalc130: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62442
          mmTop = 1058
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc131: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc132: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106892
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc133: TppDBCalc
          UserName = 'DBCalc28'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129646
          mmTop = 1058
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc134: TppDBCalc
          UserName = 'DBCalc29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152929
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc135: TppDBCalc
          UserName = 'DBCalc30'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175684
          mmTop = 1058
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 31221
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBText165: TppDBText
          UserName = 'DBText40'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 48948
          mmTop = 794
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line18'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4498
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
        object ppDBText166: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 16669
          mmTop = 794
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc136: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'pordist'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 1323
          mmTop = 8467
          mmWidth = 43127
          BandType = 5
          GroupNo = 0
        end
        object ppLabel89: TppLabel
          UserName = 'Label73'
          HyperlinkEnabled = False
          Caption = 'por distribuir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44979
          mmTop = 10054
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
        object ppLabel92: TppLabel
          UserName = 'Label74'
          HyperlinkEnabled = False
          Caption = 'Balance total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 153723
          mmTop = 6350
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc137: TppDBCalc
          UserName = 'DBCalc303'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 174625
          mmTop = 6350
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup22: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand22: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel93: TppLabel
          UserName = 'Label301'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 9260
          mmTop = 529
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppDBText167: TppDBText
          UserName = 'DBText100'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 25135
          mmTop = 794
          mmWidth = 89429
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand22: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc138: TppDBCalc
          UserName = 'DBCalc76'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62442
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc139: TppDBCalc
          UserName = 'DBCalc401'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc140: TppDBCalc
          UserName = 'DBCalc78'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106892
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc141: TppDBCalc
          UserName = 'DBCalc79'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129646
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc142: TppDBCalc
          UserName = 'DBCalc80'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152929
          mmTop = 1852
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc143: TppDBCalc
          UserName = 'DBCalc81'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175684
          mmTop = 1852
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel94: TppLabel
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 30692
          mmTop = 1852
          mmWidth = 27517
          BandType = 5
          GroupNo = 1
        end
        object ppLine33: TppLine
          UserName = 'Line20'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel95: TppLabel
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 1852
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText168: TppDBText
          UserName = 'DBText102'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 1852
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup24: TppGroup
      BreakName = 'ClienteTipo'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand24: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel96: TppLabel
          UserName = 'Label30'
          HyperlinkEnabled = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 16404
          mmTop = 529
          mmWidth = 10319
          BandType = 3
          GroupNo = 1
        end
        object ppDBText169: TppDBText
          UserName = 'DBText37'
          HyperlinkEnabled = False
          DataField = 'ClienteTipo'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5027
          mmLeft = 27781
          mmTop = 529
          mmWidth = 89429
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand24: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc150: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62442
          mmTop = 1588
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc151: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc152: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106892
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc153: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129646
          mmTop = 1588
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc154: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152929
          mmTop = 1588
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc155: TppDBCalc
          UserName = 'DBCalc301'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup24
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175684
          mmTop = 1588
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel97: TppLabel
          UserName = 'Label31'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total por Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 30427
          mmTop = 1588
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLine35: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLine36: TppLine
          UserName = 'Line10'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 5821
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel98: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 1588
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText170: TppDBText
          UserName = 'DBText67'
          HyperlinkEnabled = False
          DataField = 'TotalClientes'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 17198
          mmTop = 1588
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup25: TppGroup
      BreakName = 'Nombre'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand25: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText172: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idcliente'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppDBText173: TppDBText
          UserName = 'DBText29'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PorDist'
          DataPipeline = plReporte
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 183092
          mmTop = 1323
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel99: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165100
          mmTop = 1323
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
        object ppDBText174: TppDBText
          UserName = 'DBText34'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 134673
          mmTop = 1588
          mmWidth = 29633
          BandType = 3
          GroupNo = 1
        end
        object ppDBText175: TppDBText
          UserName = 'DBText33'
          HyperlinkEnabled = False
          DataField = 'Contacto'
          DataPipeline = plReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 92340
          mmTop = 1588
          mmWidth = 42069
          BandType = 3
          GroupNo = 1
        end
        object ppDBText177: TppDBText
          UserName = 'DBText177'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 18521
          mmTop = 1323
          mmWidth = 72761
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand25: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc156: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62442
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc157: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc158: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106363
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc159: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129646
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc160: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152929
          mmTop = 794
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc161: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup25
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175684
          mmTop = 794
          mmWidth = 24871
          BandType = 5
          GroupNo = 1
        end
        object ppLabel100: TppLabel
          UserName = 'Label102'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 3704
          mmTop = 794
          mmWidth = 54240
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup26: TppGroup
      BreakName = 'ClienteObra'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group26'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand26: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText171: TppDBText
          UserName = 'DBText43'
          HyperlinkEnabled = False
          DataField = 'ClienteObra'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 1588
          mmWidth = 72761
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand26: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel101: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Sub cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 5027
          mmTop = 1323
          mmWidth = 54240
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc162: TppDBCalc
          UserName = 'DBCalc104'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'NoVenc'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 62442
          mmTop = 1323
          mmWidth = 20108
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc163: TppDBCalc
          UserName = 'DBCalc163'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A30'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 82815
          mmTop = 1323
          mmWidth = 23019
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc164: TppDBCalc
          UserName = 'DBCalc164'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A60'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 106363
          mmTop = 1323
          mmWidth = 23019
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc165: TppDBCalc
          UserName = 'DBCalc165'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'A90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 129646
          mmTop = 1323
          mmWidth = 23019
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc166: TppDBCalc
          UserName = 'DBCalc166'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'AMas90'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 152929
          mmTop = 1323
          mmWidth = 22490
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc167: TppDBCalc
          UserName = 'DBCalc167'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Balance'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 2910
          mmLeft = 175684
          mmTop = 1323
          mmWidth = 24871
          BandType = 5
          GroupNo = 4
        end
        object ppLine34: TppLine
          UserName = 'Line1'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList7: TppParameterList
    end
  end
end
