inherited fDisponibilidad: TfDisponibilidad
  Left = 321
  Top = 209
  Caption = 'Disponibilidad bancaria'
  ClientWidth = 667
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 667
  end
  inherited Gradient2: TGradient
    Width = 667
  end
  object Label3: TLabel [2]
    Left = 6
    Top = 41
    Width = 72
    Height = 13
    Caption = 'Desde / Hasta:'
  end
  object cxPageControl1: TcxPageControl [3]
    Left = 4
    Top = 90
    Width = 657
    Height = 272
    ActivePage = cxTabSheet3
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 268
    ClientRectLeft = 2
    ClientRectRight = 653
    ClientRectTop = 22
    object tsResumen: TcxTabSheet
      Caption = 'Resumen'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 651
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = ds
          DataController.KeyFieldNames = 'idCuentaBanco'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.HeaderAutoHeight = True
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            Caption = 'Cuenta'
            DataBinding.FieldName = 'Nombre'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Width = 405
          end
          object cxGrid1DBTableView1BalInicial: TcxGridDBColumn
            Caption = 'Balance inicial'
            DataBinding.FieldName = 'BalInicial'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object cxGrid1DBTableView1ckDesde: TcxGridDBColumn
            Caption = 'Cheques desde'
            DataBinding.FieldName = 'ckDesde'
            Options.Editing = False
            Options.Filtering = False
            Width = 58
          end
          object cxGrid1DBTableView1ckHasta: TcxGridDBColumn
            Caption = 'Cheques hasta'
            DataBinding.FieldName = 'ckHasta'
            Options.Editing = False
            Options.Filtering = False
            Width = 56
          end
          object cxGrid1DBTableView1ckTotal: TcxGridDBColumn
            Caption = 'Total cheques'
            DataBinding.FieldName = 'ckTotal'
            Options.Editing = False
            Options.Filtering = False
            Width = 105
          end
          object cxGrid1DBTableView1dpDesde: TcxGridDBColumn
            Caption = 'Depositos desde'
            DataBinding.FieldName = 'dpDesde'
            Options.Editing = False
            Options.Filtering = False
            Width = 57
          end
          object cxGrid1DBTableView1dpHasta: TcxGridDBColumn
            Caption = 'Depositos hasta'
            DataBinding.FieldName = 'dpHasta'
            Options.Editing = False
            Options.Filtering = False
            Width = 57
          end
          object cxGrid1DBTableView1dpTotal: TcxGridDBColumn
            Caption = 'Total depositos'
            DataBinding.FieldName = 'dpTotal'
            Options.Editing = False
            Options.Filtering = False
            Width = 89
          end
          object cxGrid1DBTableView1dbTotal: TcxGridDBColumn
            Caption = 'Otros debitos'
            DataBinding.FieldName = 'dbTotal'
            Options.Editing = False
            Options.Filtering = False
            Width = 95
          end
          object cxGrid1DBTableView1crTotal: TcxGridDBColumn
            Caption = 'Otros creditos'
            DataBinding.FieldName = 'crTotal'
            Options.Editing = False
            Options.Filtering = False
            Width = 94
          end
          object cxGrid1DBTableView1BalFinal: TcxGridDBColumn
            Caption = 'Balance final'
            DataBinding.FieldName = 'BalFinal'
            Options.Editing = False
            Options.Filtering = False
            Width = 99
          end
        end
        object cxGrid1DBCardView1: TcxGridDBCardView
          DataController.DataSource = ds
          DataController.KeyFieldNames = 'idCuentaBanco'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CardWidth = 307
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          Styles.RowCaption = cxStyle2
          object cxGrid1DBCardView1Nombre: TcxGridDBCardViewRow
            Caption = 'Cuenta'
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1BalInicial: TcxGridDBCardViewRow
            Caption = 'Balance inicial'
            DataBinding.FieldName = 'BalInicial'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1ckDesde: TcxGridDBCardViewRow
            Caption = 'Cheques desde'
            DataBinding.FieldName = 'ckDesde'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1ckHasta: TcxGridDBCardViewRow
            Caption = 'Cheques hasta'
            DataBinding.FieldName = 'ckHasta'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1ckTotal: TcxGridDBCardViewRow
            Caption = 'Total cheques'
            DataBinding.FieldName = 'ckTotal'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1DBCardViewRow1: TcxGridDBCardViewRow
            Caption = 'Total ACH'
            DataBinding.FieldName = 'achTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;($,0.00)'
            Properties.ValidateOnEnter = True
            Options.Filtering = False
          end
          object cxGrid1DBCardView1dpDesde: TcxGridDBCardViewRow
            Caption = 'Depositos desde'
            DataBinding.FieldName = 'dpDesde'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1dpHasta: TcxGridDBCardViewRow
            Caption = 'Depositos hasta'
            DataBinding.FieldName = 'dpHasta'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1dpTotal: TcxGridDBCardViewRow
            Caption = 'Total depositos'
            DataBinding.FieldName = 'dpTotal'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1dbTotal: TcxGridDBCardViewRow
            Caption = 'Otros debitos'
            DataBinding.FieldName = 'dbTotal'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1crTotal: TcxGridDBCardViewRow
            Caption = 'Otros creditos'
            DataBinding.FieldName = 'crTotal'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid1DBCardView1BalFinal: TcxGridDBCardViewRow
            Caption = 'Balance final'
            DataBinding.FieldName = 'BalFinal'
            Options.Editing = False
            Options.Filtering = False
            Styles.Content = cxStyle11
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBCardView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cheques en transito'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 651
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsTransito
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'ValorCheque'
              Column = cxGridDBTableView1ValorCheque
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Numero: TcxGridDBColumn
            DataBinding.FieldName = 'Numero'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBTableView1ValorCheque: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object cxGridDBTableView1TextoConcepto: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 397
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'ACH en transito'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 651
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsACH
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'ValorCheque'
              Column = cxGridDBColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Numero'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 397
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Excel'
      ImageIndex = 3
      DesignSize = (
        651
        246)
      object grExcel: TcxGrid
        Left = 0
        Top = 0
        Width = 651
        Height = 203
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object grExcelDBTableView1: TcxGridDBTableView
          DataController.DataSource = ds
          DataController.KeyFieldNames = 'idCuentaBanco'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object grExcelDBTableView1Nombre: TcxGridDBColumn
            Caption = 'Cuenta de Banco'
            DataBinding.FieldName = 'Nombre'
            Width = 205
          end
          object grExcelDBTableView1BalFinal: TcxGridDBColumn
            Caption = 'Balance Final'
            DataBinding.FieldName = 'BalFinal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 125
          end
          object grExcelDBTableView1BalInicial: TcxGridDBColumn
            Caption = 'Balance Inicial'
            DataBinding.FieldName = 'BalInicial'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 122
          end
          object grExcelDBTableView1ckTotal: TcxGridDBColumn
            Caption = 'Total Cheques'
            DataBinding.FieldName = 'ckTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 102
          end
          object grExcelDBTableView1achTotal: TcxGridDBColumn
            Caption = 'Total ACH'
            DataBinding.FieldName = 'achTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 128
          end
          object grExcelDBTableView1dpTotal: TcxGridDBColumn
            Caption = 'Total Depositos'
            DataBinding.FieldName = 'dpTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 116
          end
          object grExcelDBTableView1dbTotal: TcxGridDBColumn
            Caption = 'Otros Debitos'
            DataBinding.FieldName = 'dbTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 108
          end
          object grExcelDBTableView1crTotal: TcxGridDBColumn
            Caption = 'Otros Creditos'
            DataBinding.FieldName = 'crTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00;(0.00)'
            Properties.ValidateOnEnter = True
            Width = 118
          end
        end
        object grExcelLevel1: TcxGridLevel
          GridView = grExcelDBTableView1
        end
      end
      object cxButton4: TcxButton
        Left = 0
        Top = 204
        Width = 133
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = 'Excel'
        TabOrder = 1
        OnClick = cxButton4Click
        LookAndFeel.NativeStyle = True
      end
    end
  end
  object deDesde: TcxDateEdit [4]
    Left = 82
    Top = 37
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object deHasta: TcxDateEdit [5]
    Left = 206
    Top = 37
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [6]
    Left = 6
    Top = 60
    Width = 91
    Height = 25
    Caption = 'Mostrar'
    Default = True
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [7]
    Left = 4
    Top = 373
    Width = 133
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = cxButton2Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C
      6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A6ADDDCDCD0CFCF6C
      6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F8381825C5B5BBCBC
      BCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A6AFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA19F9FA19F9FA19F9F
      6260600000000000001616165D5D5DA9A9A9CACACACACACACACACACACACAC1C0
      C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3D3CFCFCF8C8A8A81
      7F7F817F7F817F7F6C6A6A1414140808080000000000000000001616165D5D5D
      A9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6ACACACACACACAC6C6
      C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390918280805250502B
      2A2A080808000000000000161616646464817E7F6C6A6AFF00FFFF00FF6C6A6A
      CACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDECAC7C7B6B5B5A5A3
      A3A19F9FA19F9F9E9A9C9390916865662322230303031919199997976C6A6AFF
      00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6F4F4F2F0F0EEEDED
      EAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F9997978280806C6A
      6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6F6F7F6F6F7F6F6F6
      F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8D8D8D1D1D1C2C1C1
      B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6ACECBCCF7F6F6F7F6
      F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B75696B898081ABA5A6C7
      C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF00FFFF00FFFF00FF
      6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A9C9697ACAAAAB2B0
      B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACACAC0C0C06C6A6AFF
      00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF8A737D5E51665456
      6554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0CAC9CACBCBCBB7B6
      B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FF
      D4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F62658E8687CECCCC
      CFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC186FFBF81FFC084BD
      82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7FFCE9EFFCA96FFC5
      8CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFFE1C2FFDCB8FFD7AF
      FFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFEAD4FF
      E5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0A3F7C297BD8281FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7FFDEBDFFD9B4FFD4
      ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFFF0E2FFEBD9FFE7CF
      FFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281FF
      F4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [8]
    Left = 524
    Top = 373
    Width = 133
    Height = 39
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton3Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000B4B4B43B3B3B
      9897959F9D94A8A597A8A598A8A597A8A497A8A497A8A497A8A497A8A497A8A4
      97A8A597A9A596A9A596A9A597A9A596A9A596A9A697A9A597A09E959998963B
      3B3BB3B3B3989896FFFFFF687CC90C29A10F2EA21330A51431A41531A31431A6
      1431A71432AA1231A9102FA80D2EAC0C2EAD0B2BA9092BAD092AAD0628AC0625
      A45D71BEFFFFFF999896B3B3B39F9D92677FDD0019B51032C01639C21B3DC41D
      3EC41C3EC21C3EC41A3EC5193DC4163CC6133BC90F39CA0C38CC0934C90631CA
      012FCB002CCA0027C1000CA05E71BEA09E95B3B3B3A8A4920D36D91038D61F43
      D8264BD92B4FDB2F52DB2D50DB2A4FDC244BDB1E48DB1A46DD1746DE1646DF17
      48E11345E10C43E2073CE10238E00032D80027C20525A3A9A597B3B3B3A8A491
      113CE61940DD284CE13053E03558E2395BE33155E23256E25E7CE98098EE8BA2
      F17A97EF5077EB184DE70F46E71248E80B44E8063FE60137E0002CCB0629ACAA
      A697B3B3B3A8A390143FE82046DF3053E1375AE13D5DE43659E35874E8E5EAFB
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EAFC426EED0643E80E48EA0942E8043A
      E1002DCC0729ADAAA697B3B3B3A7A3901943E8274BE0385BE34162E43C5CE391
      A3EFFFFFFFE3E9FA899FF03E65E61C4CE33461E87B9BF1DBE3FBFFFFFF7396F2
      0340E80C45E8073DE20332CE092BADA9A597B3B3B3A7A2901D47E92D51E13F5F
      E34060E3627CE8FFFFFFDEE4F9496BE6385DE53961E62352E32D5BE71F53E725
      59E8D6E1FBFFFFFF3A6AEC0640E80C41E10934CE0B2DAEA9A596B3B3B3A6A290
      224AE93658E34463E54866E4E9ECFCE5EAFA506FE64466E54365E65C7CEAFFFF
      FF5177EA2A5AE82155E82054E8DAE2FBE2E8FC0F46E61144E10C38CD0E2FAFA9
      A596B3B3B3A6A190284FEB3B5CE34765E4758BEBFFFFFF93A4EF4564E44B6BE5
      4365E65979EAFFFFFF4E73E92A59E62858E81349E77393F0FFFFFE4770EB1042
      E0123BCD1231AEA8A596B3B3B3A5A1902D53EB4463E54A67E596A7F0FFFFFF54
      6FE74F6CE54B69E54264E55777E9FFFFFF4D70E82957E52756E71E4FE51E4FE7
      FFFFFF7996EF1241DF173FCD1534ADA8A497B3B3B3A5A0903257EC4967E54C69
      E6A3B2F2FFFFFF3D5BE3516DE54B68E64262E45675E8FFFFFF4C6EE72854E327
      53E52250E50035E1FFFFFF839DF01643DE1C41CB1736ADA8A497B3B3B3A4A090
      365BEC4F6CE7536EE79BABF0FFFFFF5771E74F6CE54B68E54262E45774E7FFFF
      FF4C6EE62852E32851E4214DE31645E1FFFFFF7D97EF1B45DD1F43CB1A37ADA7
      A497B3B3B3A39F903C5FEE5773E75D78E78095ECFFFFFF97A5F04763E44B67E4
      4260E35672E6FFFFFF4C6AE5284FE12950E31742E06E89EBFFFFFF5B78E9224A
      DC2245CA1B38ACA7A497B3B3B3A39F903E60EE5E78E96780E9617AE7EBEEFCE2
      E6FA546DE74965E54360E35A76E7FFFFFF516EE62A50E1254CE1274EE1DAE1FA
      E4E9FB254CE12A50DD2447CA1D39ACA7A497B3B3B3A29F904365EE657EE9718A
      EB6680E97F94EDFFFFFFE2E5FA506BE5405DE23E5DE2284AE03255E2274CE030
      53E1BEC9F6FFFFFF4E6DE7244AE02E52DE2647C91D3AACA7A497B3B3B3A29E90
      4666EF6A84EA778FEC718AEB5E79E89EAEF1FFFFFFE1E6FA91A1EF4966E5284B
      E03557E17C91ECDCE1FAFFFFFF8096EC2047DF2E52E12F52DE2848CA1D3AABA7
      A497B3B3B3A19E8F4B6BEF778EEC899EEE8197ED738CEA5E79E87D92ECECEEFC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEDFB5D79E82D50E13659E23356E13153
      DD2445C91A36AAA7A497B3B3B3A09D8F5473F1869BED99AAF18EA2EF7F95EC71
      8BEB6781E9637CE88397ECA3B1F1A7B5F39FAFF18094ED4F6CE64665E44768E4
      4263E53A5DE33153DD2042C81533A9A8A497B3B3B3A09D8F5573F18DA2EFA2B2
      F297A9F1859AED7790EC738BEB6C85E9657FE85F79E75D78E75B76E75B76E85C
      76E75673E7506EE54A67E53D5FE33053DD1C3DC61330A7A7A497B3B3B39B988E
      8A9FF9607BE88CA0EF8298ED728AEA6982E9667FE95D78E85C76E85975E85773
      E65672E7516DE64E6BE54868E54464E43C5DE23154E12449D90226BB6479C99F
      9D94B3B3B3979795FFFFFF8CA1F85070F04E6DF04566EF4062EE4162EE3B5EEE
      3D5FEE3D5FEE3A5DEE3659ED3459ED2F55EC2D53EB2F54EC284EEB2249E91A42
      DF677EDDFFFFFF999896B4B4B43B3B3B9797949A988EA09D8FA19D8FA29E8FA2
      9F8FA39F8FA39F8FA39F8FA39F8FA39F90A4A090A4A090A5A090A5A190A5A190
      A5A190A6A290A6A2919F9C919898953B3B3BF4F4F4B4B4B4B3B3B3B3B3B3B3B3
      B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
      B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B4B4B4}
    LookAndFeel.NativeStyle = True
  end
  object luBco: TcxLookupComboBox [9]
    Left = 402
    Top = 36
    Width = 257
    Height = 21
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBancos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  inherited ds: TDataSource
    DataSet = rsResumen
    Left = 156
    Top = 242
  end
  object rsResumen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsResumenAfterScroll
    CommandText = 'bcoResumenDisp;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 218
    Top = 166
    object rsResumenidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsResumenNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsResumenBalInicial: TBCDField
      FieldName = 'BalInicial'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenckTotal: TBCDField
      FieldName = 'ckTotal'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumendpTotal: TBCDField
      FieldName = 'dpTotal'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumendbTotal: TBCDField
      FieldName = 'dbTotal'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsResumencrTotal: TBCDField
      FieldName = 'crTotal'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object rsResumenBalFinal: TBCDField
      FieldName = 'BalFinal'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenckDesde: TStringField
      FieldName = 'ckDesde'
      ReadOnly = True
    end
    object rsResumenckHasta: TStringField
      FieldName = 'ckHasta'
      ReadOnly = True
    end
    object rsResumendpDesde: TStringField
      FieldName = 'dpDesde'
      ReadOnly = True
    end
    object rsResumendpHasta: TStringField
      FieldName = 'dpHasta'
      ReadOnly = True
    end
    object rsResumenachTotal: TBCDField
      FieldName = 'achTotal'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderColor = 12109242
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 558
    Top = 33
  end
  object dsBancos: TDataSource
    DataSet = rsBancos
    Left = 130
    Top = 178
  end
  object rsCksTransito: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoReporteCksTransito;1'
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
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 58
    Top = 210
    object rsCksTransitoNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object rsCksTransitoIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsCksTransitoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCksTransitoCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsCksTransitoNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
    object rsCksTransitoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCksTransitoDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsCksTransitoValorCheque: TBCDField
      FieldName = 'ValorCheque'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsCksTransitoTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 500
    end
    object rsCksTransitoST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 140
    Top = 294
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = 64
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.Inactive = cxStyle7
      Styles.IncSearch = cxStyle8
      Styles.Selection = cxStyle10
      Styles.CaptionRow = cxStyle2
      Styles.CardBorder = cxStyle3
      Styles.RowCaption = cxStyle9
      BuiltIn = True
    end
  end
  object dsTransito: TDataSource
    DataSet = rsCksTransito
    Left = 238
    Top = 244
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsResumenAfterScroll
    CommandText = 
      'select idCuentaBanco, Nombre'#13#10'from cxpBancos'#13#10'union'#13#10'select -1, ' +
      #39'(todos)'#39#13#10'order by 2'
    Parameters = <>
    Left = 320
    Top = 146
    object rsBancosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
  end
  object plDisponibilidad: TppDBPipeline
    DataSource = ds
    UserName = 'plDisponibilidad'
    Left = 324
    Top = 210
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plDisponibilidad
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 458
    Top = 188
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDisponibilidad'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 8731
        mmLeft = 0
        mmTop = 16933
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta de banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 21167
        mmWidth = 73290
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 79375
        mmTop = 17727
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 101071
        mmTop = 17727
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Depositos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 121179
        mmTop = 17727
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Otros Debitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 138642
        mmTop = 17727
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Otros Creditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 155840
        mmTop = 17727
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 180446
        mmTop = 17727
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde el cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 195263
        mmTop = 17727
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta el cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 212461
        mmTop = 17727
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde el deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 229659
        mmTop = 17727
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta el deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 246328
        mmTop = 17727
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Disponibilidad bancaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8509
        mmLeft = 1058
        mmTop = 529
        mmWidth = 109538
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6085
        mmLeft = 1058
        mmTop = 9525
        mmWidth = 138113
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 11377
        mmWidth = 121444
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 206111
        mmTop = 794
        mmWidth = 56356
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
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
        mmLeft = 218811
        mmTop = 4763
        mmWidth = 43392
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape2'
        Brush.Color = 15000804
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plDisponibilidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 445
        mmWidth = 73290
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'BalInicial'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 75936
        mmTop = 445
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'ckTotal'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 97102
        mmTop = 445
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'dpTotal'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3175
        mmLeft = 117211
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'dbTotal'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'crTotal'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3175
        mmLeft = 155840
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'BalFinal'
        DataPipeline = plDisponibilidad
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 174890
        mmTop = 445
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'ckDesde'
        DataPipeline = plDisponibilidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 195263
        mmTop = 445
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'ckHasta'
        DataPipeline = plDisponibilidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 212461
        mmTop = 445
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'dpDesde'
        DataPipeline = plDisponibilidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3260
        mmLeft = 229659
        mmTop = 445
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'dpHasta'
        DataPipeline = plDisponibilidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDisponibilidad'
        mmHeight = 3175
        mmLeft = 246063
        mmTop = 529
        mmWidth = 15875
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsACHTransito: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoReporteACHTransito;1'
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
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 64
    Top = 142
    object rsACHTransitoNumero: TStringField
      FieldName = 'Numero'
    end
    object rsACHTransitoIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsACHTransitoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsACHTransitoCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsACHTransitoNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
    object rsACHTransitoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsACHTransitoDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsACHTransitoValorCheque: TBCDField
      FieldName = 'ValorCheque'
      Precision = 19
      Size = 2
    end
    object rsACHTransitoTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 500
    end
    object rsACHTransitoST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsACH: TDataSource
    DataSet = rsACHTransito
    Left = 38
    Top = 284
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Disponibilidad.xls'
    Left = 448
    Top = 176
  end
end
