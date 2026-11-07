inherited MantConciliacion: TMantConciliacion
  Left = 499
  Top = 195
  Caption = 'Conciliacion'
  ClientHeight = 573
  ClientWidth = 550
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 527
    Width = 550
    Height = 3
    Align = alNone
  end
  inherited Gradient2: TGradient
    Width = 550
    Height = 36
    ColorBegin = 15922418
    ColorEnd = 9516803
    Reverse = True
    Style = gsLinearV
  end
  object Label2: TLabel [2]
    Left = 19
    Top = 41
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label3: TLabel [3]
    Left = 13
    Top = 64
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label13: TLabel [4]
    Left = 208
    Top = 41
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label15: TLabel [5]
    Left = 371
    Top = 8
    Width = 172
    Height = 19
    Anchors = [akTop, akRight]
    Caption = 'Conciliacion bancaria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15922418
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object luCta: TcxDBLookupComboBox [6]
    Left = 52
    Top = 60
    Width = 311
    Height = 21
    DataBinding.DataField = 'idCuentaBanco'
    DataBinding.DataSource = ds
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsbcos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [7]
    Left = 368
    Top = 48
    Width = 105
    Height = 35
    Caption = 'Buscar balance'
    TabOrder = 1
    OnClick = cxButton1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF314B62
      AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
      106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
      00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
      9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
      E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
      FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
      B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
      FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
      DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
      B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
      BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
      D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
      6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [8]
    Left = 438
    Top = 534
    Width = 105
    Height = 35
    Caption = 'Salir'
    TabOrder = 2
    OnClick = cxButton2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000AFAEA8BAC0D3
      263FC3001FB0082BB60A2CB40A2CB5082CB8062BB80128BA0028BE0024BC0021
      BE001EBE0014B25D68C7BBB7A6475EBA032DD82347D92A4FDC2E51DC2349DC1F
      48DB1E49DD1947DF0D41E00D41E10B41E3033AE20031DA0014B2BCB7A54A63C3
      153EE33053E2385AE32B50E3647FEABECAF6DEE4FCD6E0FAA0B5F53160EB003C
      E80A44EA0139E2001EBFBAB6A54D65C21E45E53B5EE22F51E1A2B1F1FFFFFFA7
      B7F44F74E9597DECC9D6F9FFFFFF3C6DED003AE8053DE30021C0B9B6A55068C3
      2A4FE63A5AE27A8FEBFFFFFF5D7AE72850E25377E93863E7033DE46F92F0FFFF
      FE285AEB063CE20026C1B9B5A5546BC43155E74664E4EEF0FC8CA0ED3B5CE23C
      61E5CBD5F97895ED2153E60038E4C6D3F89AB1F4063CE0012AC0B8B5A5596EC4
      395CE9667EE9FFFEFE3A5AE24D69E5395DE4BECBF6708CEC2050E4194AE54870
      EBD7E0FA1443E0082EC0B8B3A55C71C54160EA6D84EAFFFFFF3352E14E6BE539
      5AE3BFCAF66E8AEB1F4CE21F4BE3355FE6DDE5FB1B46DF0D31BDB7B3A55F74C6
      4E6CEC637CE7F9FAFE6C82E9425FE23A59E2C4CEF6728AEA2049E10A38DE8FA4
      F0BFCBF71D46DD1134BDB6B3A56175C65C77EE5D77E6B3BFF4E6E9FB4F69E634
      54E08EA1EE5B77E7143EDD3659E2FFFFFF5A77E82249DD1437BDB6B3A56376C6
      637EEE718BEB5773E7EAEDFCE5E9FA657BE81138DD123ADC748BEAFFFFFE93A6
      EF1940DE2E52DF1638BDB5B2A46779C6778EF18CA1EE778FEB5672E6B3BFF3F9
      FBFEFFFFFFFFFFFFF2F3FD7990EB2349E03659E23154DE1133BBB4B2A36678C6
      8AA0F4A2B1F2899DED738CEB617BE76A82E8798FEB748BEA5873E74A68E54E6D
      E44464E53254DE0529B7B0AEA496A1D16A86F5879DF4718AF0627DEE5B78ED53
      70EC4E6DEB4C6AEB4967EB4566EA3D5EE93054E7183FDC2445C7989898B3B0A3
      97A3D16276C66477C66074C55F73C56073C56073C65D71C55A70C5586EC4596E
      C55469C44D64BDB9BED2D4D4D4979797B0AEA5B5B1A4B6B2A4B6B3A4B7B3A4B7
      B3A4B7B3A5B7B4A5B8B4A5B8B4A5B8B5A5B9B5A5B9B5A6AFAEA8}
    LookAndFeel.NativeStyle = True
  end
  object deDesde: TcxDBDateEdit [9]
    Left = 52
    Top = 38
    Width = 121
    Height = 21
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = ds
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxPageControl1: TcxPageControl [10]
    Left = 10
    Top = 90
    Width = 535
    Height = 434
    ActivePage = cxTabSheet1
    LookAndFeel.NativeStyle = True
    TabOrder = 4
    ClientRectBottom = 430
    ClientRectLeft = 2
    ClientRectRight = 531
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 116
        Height = 13
        Caption = 'Balance seg'#250'n el banco:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 9
        Top = 30
        Width = 106
        Height = 13
        Caption = 'Depositos en transito:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 9
        Top = 53
        Width = 101
        Height = 13
        Caption = 'Cheques en transito:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 11
        Top = 100
        Width = 165
        Height = 13
        Caption = 'Balance conciliado segun el Banco:'
        Transparent = True
      end
      object Label7: TLabel
        Left = 9
        Top = 152
        Width = 47
        Height = 13
        Caption = 'Depositos'
        Transparent = True
      end
      object Label8: TLabel
        Left = 9
        Top = 244
        Width = 119
        Height = 13
        Caption = 'Notas de debito del mes:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 9
        Top = 267
        Width = 150
        Height = 13
        Caption = 'Balance conciliado segun libros:'
        Transparent = True
      end
      object Shape2: TShape
        Left = 2
        Top = 121
        Width = 460
        Height = 3
        Brush.Color = 15066597
        Pen.Style = psClear
      end
      object Shape4: TShape
        Left = 100
        Top = 287
        Width = 362
        Height = 3
        Brush.Color = 15066597
        Pen.Style = psClear
      end
      object Label9: TLabel
        Left = 9
        Top = 129
        Width = 172
        Height = 13
        Caption = 'Balance mes anterior (segun libros):'
        Transparent = True
      end
      object Label11: TLabel
        Left = 9
        Top = 198
        Width = 88
        Height = 13
        Caption = 'Cheques emitidos:'
        Transparent = True
      end
      object Label12: TLabel
        Left = 9
        Top = 175
        Width = 122
        Height = 13
        Caption = 'Notas de credito del mes:'
        Transparent = True
      end
      object Label14: TLabel
        Left = 9
        Top = 221
        Width = 57
        Height = 13
        Caption = 'Pagos ACH:'
        Transparent = True
      end
      object Label16: TLabel
        Left = 9
        Top = 76
        Width = 112
        Height = 13
        Caption = 'Pagos ACH en transito:'
        Transparent = True
      end
      object dxDBMemo1: TcxDBMemo
        Left = 8
        Top = 313
        Width = 516
        Height = 89
        DataBinding.DataField = 'Notas'
        DataBinding.DataSource = ds
        Style.BorderColor = 14789952
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edBanco: TcxDBCurrencyEdit
        Left = 187
        Top = 3
        Width = 169
        Height = 21
        DataBinding.DataField = 'BalanceBanco'
        DataBinding.DataSource = ds
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object edDeps: TcxDBCurrencyEdit
        Left = 187
        Top = 26
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'DepsTran'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object edTrans: TcxDBCurrencyEdit
        Left = 187
        Top = 49
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'CksTransito'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object edNCR: TcxDBCurrencyEdit
        Left = 187
        Top = 148
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Depositos'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object edBancoConc: TcxDBCurrencyEdit
        Left = 187
        Top = 96
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'BalConcilBco'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object edNDB: TcxDBCurrencyEdit
        Left = 187
        Top = 240
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'NDB'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object edLibro: TcxDBCurrencyEdit
        Left = 187
        Top = 263
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'BalLibros'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 7
      end
      object Panel1: TPanel
        Left = 8
        Top = 298
        Width = 517
        Height = 15
        BevelOuter = bvNone
        Caption = 'Observaciones'
        Color = 15066597
        TabOrder = 8
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 187
        Top = 125
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'BalAnterior'
        DataBinding.DataSource = ds
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 187
        Top = 194
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Cheques'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 10
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 187
        Top = 171
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'NCR'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 11
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 187
        Top = 217
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'PagosACH'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object edACHTransito: TcxDBCurrencyEdit
        Left = 187
        Top = 72
        Width = 169
        Height = 21
        TabStop = False
        DataBinding.DataField = 'achTransito'
        DataBinding.DataSource = ds
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Style.BorderColor = 14789952
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cheques en transito'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsCksTran
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
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
          object cxGridDBTableView1TextoConcepto: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 227
          end
          object cxGridDBTableView1ValorCheque: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'ACH en transito'
      ImageIndex = 6
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView6: TcxGridDBTableView
          DataController.DataSource = dsACHTrans
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn24
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'Numero'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 227
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 113
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Cheques emitidos'
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsCks
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
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
            Caption = 'Beneficiario'
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Options.Filtering = False
            Width = 238
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 164
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'Pagos ACH emitidos'
      ImageIndex = 7
      object cxGrid7: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView7: TcxGridDBTableView
          DataController.DataSource = dsAchs
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn28
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn25: TcxGridDBColumn
            DataBinding.FieldName = 'Numero'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn26: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Beneficiario'
            DataBinding.FieldName = 'Nombre'
            Options.Editing = False
            Options.Filtering = False
            Width = 238
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'ValorCheque'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'TextoConcepto'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 164
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBTableView7
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Depositos'
      ImageIndex = 3
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = dsDeps
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Valor'
              Column = cxGridDBColumn9
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Numero'
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'Concepto'
            Options.Editing = False
            Options.Filtering = False
            Width = 197
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Options.Filtering = False
            Width = 99
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Estatus'
            DataBinding.FieldName = 'DescStatus'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 164
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Creditos'
      ImageIndex = 4
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.DataSource = dsCreds
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Valor'
              Column = cxGridDBColumn14
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Numero'
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 89
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Options.Filtering = False
            Width = 99
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'Concepto'
            Options.Editing = False
            Options.Filtering = False
            Width = 197
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Debitos'
      ImageIndex = 5
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView5: TcxGridDBTableView
          DataController.DataSource = dsDebs
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Valor'
              Column = cxGridDBColumn19
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Numero'
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Editing = False
            Options.Filtering = False
            Width = 89
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Options.Filtering = False
            Width = 99
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'Concepto'
            Options.Editing = False
            Options.Filtering = False
            Width = 197
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
  end
  object cxButton3: TcxButton [11]
    Left = 304
    Top = 534
    Width = 105
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = cxButton3Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
      6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
      6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
      B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
      3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
      CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
      090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
      DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
      FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
      C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
      92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
      FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
      CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
      B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
      D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
      E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
      8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object deHasta: TcxDBDateEdit [12]
    Left = 241
    Top = 38
    Width = 121
    Height = 21
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = ds
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  inherited StyleController: TdxEditStyleController
    Left = 506
    Top = 47
  end
  inherited ds: TDataSource
    DataSet = mConcil
    Left = 30
    Top = 520
  end
  object plConcil: TppDBPipeline
    DataSource = ds
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'plConcil'
    Left = 388
    Top = 68
    object plConcilppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plConcilppField2: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plConcilppField3: TppField
      FieldAlias = 'BalanceBanco'
      FieldName = 'BalanceBanco'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object plConcilppField4: TppField
      FieldAlias = 'DepsTran'
      FieldName = 'DepsTran'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object plConcilppField5: TppField
      FieldAlias = 'NDB'
      FieldName = 'NDB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object plConcilppField6: TppField
      FieldAlias = 'NCR'
      FieldName = 'NCR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object plConcilppField7: TppField
      FieldAlias = 'BalLibros'
      FieldName = 'BalLibros'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object plConcilppField8: TppField
      FieldAlias = 'CksTransito'
      FieldName = 'CksTransito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object plConcilppField9: TppField
      FieldAlias = 'Notas'
      FieldName = 'Notas'
      FieldLength = 500
      DisplayWidth = 500
      Position = 8
    end
    object plConcilppField10: TppField
      FieldAlias = 'Diferencia'
      FieldName = 'Diferencia'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object plConcilppField11: TppField
      FieldAlias = 'BalConcilBco'
      FieldName = 'BalConcilBco'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object plConcilppField12: TppField
      FieldAlias = 'BalConcilLibros'
      FieldName = 'BalConcilLibros'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object plConcilppField13: TppField
      FieldAlias = 'BalAnterior'
      FieldName = 'BalAnterior'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object plConcilppField14: TppField
      FieldAlias = 'Cheques'
      FieldName = 'Cheques'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object plConcilppField15: TppField
      FieldAlias = 'Depositos'
      FieldName = 'Depositos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object plConcilppField16: TppField
      FieldAlias = 'Inicio'
      FieldName = 'Inicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object plConcilppField17: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object plConcilppField18: TppField
      FieldAlias = 'PagosACH'
      FieldName = 'PagosACH'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object plConcilppField19: TppField
      FieldAlias = 'ACHTransito'
      FieldName = 'ACHTransito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
  end
  object mConcil: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuentaBanco'
        DataType = ftInteger
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
      end
      item
        Name = 'BalanceBanco'
        DataType = ftCurrency
      end
      item
        Name = 'DepsTran'
        DataType = ftCurrency
      end
      item
        Name = 'NDB'
        DataType = ftCurrency
      end
      item
        Name = 'NCR'
        DataType = ftCurrency
      end
      item
        Name = 'BalLibros'
        DataType = ftCurrency
      end
      item
        Name = 'CksTransito'
        DataType = ftCurrency
      end
      item
        Name = 'Notas'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'Diferencia'
        DataType = ftCurrency
      end
      item
        Name = 'BalConcilBco'
        DataType = ftCurrency
      end
      item
        Name = 'BalConcilLibros'
        DataType = ftCurrency
      end
      item
        Name = 'BalAnterior'
        DataType = ftCurrency
      end
      item
        Name = 'Cheques'
        DataType = ftCurrency
      end
      item
        Name = 'Depositos'
        DataType = ftCurrency
      end
      item
        Name = 'Desde'
        DataType = ftDateTime
      end
      item
        Name = 'PagosACH'
        DataType = ftCurrency
      end
      item
        Name = 'ACHTransito'
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
    OnCalcFields = mConcilCalcFields
    Left = 266
    Top = 458
    object mConcilidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mConcilHasta: TDateTimeField
      FieldName = 'Hasta'
      OnValidate = mConcilHastaValidate
    end
    object mConcilBalanceBanco: TCurrencyField
      FieldName = 'BalanceBanco'
      OnValidate = mConcilBalanceBancoValidate
    end
    object mConcilDepsTran: TCurrencyField
      FieldName = 'DepsTran'
    end
    object mConcilNDB: TCurrencyField
      FieldName = 'NDB'
    end
    object mConcilNCR: TCurrencyField
      FieldName = 'NCR'
    end
    object mConcilBalLibros: TCurrencyField
      FieldName = 'BalLibros'
    end
    object mConcilCksTransito: TCurrencyField
      FieldName = 'CksTransito'
    end
    object mConcilNotas: TStringField
      FieldName = 'Notas'
      Size = 500
    end
    object mConcilDiferencia: TCurrencyField
      FieldName = 'Diferencia'
    end
    object mConcilBalConcilBco: TCurrencyField
      FieldName = 'BalConcilBco'
    end
    object mConcilBalConcilLibros: TCurrencyField
      FieldName = 'BalConcilLibros'
    end
    object mConcilBalAnterior: TCurrencyField
      FieldName = 'BalAnterior'
    end
    object mConcilCheques: TCurrencyField
      FieldName = 'Cheques'
    end
    object mConcilDepositos: TCurrencyField
      FieldName = 'Depositos'
    end
    object mConcilInicio: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'Inicio'
      Calculated = True
    end
    object mConcilDesde: TDateTimeField
      FieldName = 'Desde'
      OnValidate = mConcilHastaValidate
    end
    object mConcilPagosACH: TCurrencyField
      FieldName = 'PagosACH'
    end
    object mConcilACHTransito: TCurrencyField
      FieldName = 'ACHTransito'
    end
  end
  object rsConcil: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoResumenConciliacion;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 336
    Top = 471
    object rsConcilCksTransito: TBCDField
      FieldName = 'CksTransito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilDepsTransito: TBCDField
      FieldName = 'DepsTransito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilBalLibros: TBCDField
      FieldName = 'BalLibros'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilDebitos: TBCDField
      FieldName = 'Debitos'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilCreditos: TBCDField
      FieldName = 'Creditos'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilCheques: TBCDField
      FieldName = 'Cheques'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilDepositos: TBCDField
      FieldName = 'Depositos'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilBalAnterior: TBCDField
      FieldName = 'BalAnterior'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilPagosACH: TBCDField
      FieldName = 'PagosACH'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsConcilACHTransito: TBCDField
      FieldName = 'ACHTransito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object plBancos: TppDBPipeline
    DataSource = dsbcos
    UserName = 'plBancos'
    Left = 386
    Top = 128
    object plBancosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object plBancosppField2: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plBancosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plBancosppField4: TppField
      FieldAlias = 'TipoCuenta'
      FieldName = 'TipoCuenta'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object plBancosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'UltimoCheque'
      FieldName = 'UltimoCheque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plBancosppField6: TppField
      FieldAlias = 'idCuentaMayor'
      FieldName = 'idCuentaMayor'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plBancosppField7: TppField
      FieldAlias = 'NumCuenta'
      FieldName = 'NumCuenta'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
  end
  object dsbcos: TDataSource
    DataSet = dmBanco.rsBancos
    Left = 94
    Top = 537
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
    Left = 98
    Top = 234
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
    object rsCksTransitoNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
  end
  object dsCksTran: TDataSource
    DataSet = rsCksTransito
    Left = 42
    Top = 463
  end
  object ReportNew: TppReport
    AutoStop = False
    DataPipeline = plConcil
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    Left = 462
    Top = 224
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plConcil'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        OnCalc = ppVariable2Calc
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 39158
        mmTop = 8731
        mmWidth = 122502
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5821
        mmLeft = 19050
        mmTop = 2381
        mmWidth = 164836
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 127265
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        Anchors = [atLeft, atBottom]
        Brush.Color = 15987699
        ParentWidth = True
        mmHeight = 5556
        mmLeft = 0
        mmTop = 39158
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plBancos'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 1852
        mmWidth = 111125
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 11938
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plConcil
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 41804
        mmTop = 6615
        mmWidth = 34925
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Balance segun estado a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3440
        mmTop = 6615
        mmWidth = 37634
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'DepsTran'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 11377
        mmWidth = 69850
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Mas: Depositos en transito: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3440
        mmTop = 11377
        mmWidth = 43519
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'CksTransito'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 16140
        mmWidth = 69850
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Menos: cheques en transito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3440
        mmTop = 16140
        mmWidth = 44111
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plTransito'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 24606
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plTransito
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
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'plTransito'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              Brush.Color = 15987699
              ParentWidth = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 265
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Fecha '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 794
              mmWidth = 20373
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Numero '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 24606
              mmTop = 794
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Beneficiario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 48419
              mmTop = 794
              mmWidth = 73819
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136261
              mmTop = 794
              mmWidth = 36513
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              ParentWidth = True
              mmHeight = 4763
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              HyperlinkEnabled = False
              DataField = 'Fecha'
              DataPipeline = plTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTransito'
              mmHeight = 3704
              mmLeft = 529
              mmTop = 529
              mmWidth = 19579
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              HyperlinkEnabled = False
              DataField = 'Numero'
              DataPipeline = plTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTransito'
              mmHeight = 3704
              mmLeft = 24606
              mmTop = 529
              mmWidth = 19579
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              HyperlinkEnabled = False
              DataField = 'Nombre'
              DataPipeline = plTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTransito'
              mmHeight = 3704
              mmLeft = 48419
              mmTop = 529
              mmWidth = 82815
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              HyperlinkEnabled = False
              DataField = 'ValorCheque'
              DataPipeline = plTransito
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plTransito'
              mmHeight = 3704
              mmLeft = 136261
              mmTop = 529
              mmWidth = 36777
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkEnabled = False
              DataField = 'ValorCheque'
              DataPipeline = plTransito
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plTransito'
              mmHeight = 3440
              mmLeft = 135996
              mmTop = 265
              mmWidth = 37042
              BandType = 7
            end
          end
        end
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Hasta'
        DataPipeline = plConcil
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 62177
        mmTop = 39952
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Balance segun el banco, conciliado a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 39952
        mmWidth = 57944
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'BalConcilBco'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 39952
        mmWidth = 52388
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Detalle de cheques en transito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 72496
        mmTop = 20373
        mmWidth = 57944
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Mas: Depositos del mes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 59002
        mmWidth = 40746
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Balance segun libros a '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 51858
        mmWidth = 36513
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Depositos'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 59002
        mmWidth = 69850
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'BalAnterior'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 51858
        mmWidth = 69850
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Inicio'
        DataPipeline = plConcil
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 41275
        mmTop = 51858
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Notas de credito del mes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 64029
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'NCR'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 64029
        mmWidth = 69850
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Menos: cheques del mes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 72496
        mmWidth = 41010
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Cheques'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 72496
        mmWidth = 69850
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Notas de debito del mes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12965
        mmTop = 83344
        mmWidth = 39952
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'NDB'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 83344
        mmWidth = 69850
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Anchors = [atLeft, atBottom]
        Brush.Color = 15987699
        ParentWidth = True
        mmHeight = 5556
        mmLeft = 0
        mmTop = 89429
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Hasta'
        DataPipeline = plConcil
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 57150
        mmTop = 90223
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Balance segun libros, conciliado a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 90223
        mmWidth = 52917
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'BalConcilLibros'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 90223
        mmWidth = 52388
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Preparado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 36248
        mmTop = 110067
        mmWidth = 36777
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Revisado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 127265
        mmTop = 110067
        mmWidth = 36777
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 15081
        mmTop = 109273
        mmWidth = 78846
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 105834
        mmTop = 109273
        mmWidth = 79375
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 128059
        mmTop = 15610
        mmWidth = 74083
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 20373
        mmWidth = 74083
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line102'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 128059
        mmTop = 51329
        mmWidth = 74083
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 56092
        mmWidth = 74083
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 63236
        mmWidth = 74083
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 68263
        mmWidth = 74083
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 82550
        mmWidth = 74083
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Anchors = [atLeft, atBottom]
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 87577
        mmWidth = 74083
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'BalanceBanco'
        DataPipeline = plConcil
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 6615
        mmWidth = 70115
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Menos: pagos ACH del mes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 76994
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'PagosACH'
        DataPipeline = plConcil
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plConcil'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 76994
        mmWidth = 69850
        BandType = 4
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'plACHTransito'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 33602
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plACHTransito
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
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'plACHTransito'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppShape1: TppShape
              UserName = 'Shape2'
              Brush.Color = 15987699
              ParentWidth = True
              mmHeight = 9525
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label17'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Fecha '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 5821
              mmWidth = 20373
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label18'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Numero '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 24606
              mmTop = 5821
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label19'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Beneficiario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 48419
              mmTop = 5821
              mmWidth = 73819
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label20'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136261
              mmTop = 5821
              mmWidth = 36513
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              HyperlinkEnabled = False
              Anchors = [atLeft, atBottom]
              AutoSize = False
              Caption = 'Detalle de ACH en transito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 72496
              mmTop = 1058
              mmWidth = 57944
              BandType = 1
            end
          end
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape6: TppShape
              UserName = 'Shape3'
              ParentWidth = True
              mmHeight = 4763
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText17'
              HyperlinkEnabled = False
              DataField = 'Fecha'
              DataPipeline = plACHTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plACHTransito'
              mmHeight = 3704
              mmLeft = 529
              mmTop = 529
              mmWidth = 19579
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText18'
              HyperlinkEnabled = False
              DataField = 'Numero'
              DataPipeline = plACHTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plACHTransito'
              mmHeight = 3704
              mmLeft = 24606
              mmTop = 529
              mmWidth = 19579
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText19'
              HyperlinkEnabled = False
              DataField = 'Nombre'
              DataPipeline = plACHTransito
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plACHTransito'
              mmHeight = 3704
              mmLeft = 48419
              mmTop = 529
              mmWidth = 82815
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText20'
              HyperlinkEnabled = False
              DataField = 'ValorCheque'
              DataPipeline = plACHTransito
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plACHTransito'
              mmHeight = 3704
              mmLeft = 136261
              mmTop = 529
              mmWidth = 36777
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkEnabled = False
              DataField = 'ValorCheque'
              DataPipeline = plACHTransito
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plACHTransito'
              mmHeight = 3440
              mmLeft = 135996
              mmTop = 265
              mmWidth = 37042
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plTransito: TppDBPipeline
    DataSource = dsCksTran
    UserName = 'plTransito'
    Left = 386
    Top = 292
    object plTransitoppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plTransitoppField2: TppField
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plTransitoppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plTransitoppField4: TppField
      FieldAlias = 'CuentaBanco'
      FieldName = 'CuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plTransitoppField5: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plTransitoppField6: TppField
      FieldAlias = 'DescripcionCuenta'
      FieldName = 'DescripcionCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plTransitoppField7: TppField
      FieldAlias = 'ValorCheque'
      FieldName = 'ValorCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plTransitoppField8: TppField
      FieldAlias = 'TextoConcepto'
      FieldName = 'TextoConcepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plTransitoppField9: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plTransitoppField10: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object rsDeps: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoConcilDepositos;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
    Left = 458
    Top = 158
    object rsDepsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDepsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDepsValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDepsDescStatus: TStringField
      FieldName = 'DescStatus'
      ReadOnly = True
      Size = 9
    end
    object rsDepsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsDepsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
  end
  object rsCreds: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoConcilNotasDbCr;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
      end
      item
        Name = '@debcre'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 394
    Top = 172
    object rsCredsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsCredsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsCredsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCredsTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object rsCredsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsCredsValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
  end
  object rsDebs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoConcilNotasDbCr;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
      end
      item
        Name = '@debcre'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 466
    Top = 296
    object rsDebsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsDebsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDebsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDebsTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object rsDebsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsDebsValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
  end
  object rsCks: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpReporteCksEmitidos;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 296
    Top = 368
    object rsCksNumero: TStringField
      FieldName = 'Numero'
    end
    object rsCksIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsCksFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCksIdSuplidor: TIntegerField
      FieldName = 'IdSuplidor'
    end
    object rsCksCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsCksNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsCksidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCksDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsCksValorCheque: TBCDField
      FieldName = 'ValorCheque'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsCksTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 600
    end
    object rsCksST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object rsCksFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
  end
  object dsCks: TDataSource
    DataSet = rsCks
    Left = 62
    Top = 378
  end
  object rsCreditos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoConcilNotasDbCr;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
      end
      item
        Name = '@debcre'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 392
    Top = 470
    object rsCreditosidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsCreditosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsCreditosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCreditosTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object rsCreditosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsCreditosValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
  end
  object dsDeps: TDataSource
    DataSet = rsDeps
    Left = 164
    Top = 476
  end
  object dsCreds: TDataSource
    DataSet = rsCreditos
    Left = 108
    Top = 472
  end
  object dsDebs: TDataSource
    DataSet = rsDebs
    Left = 130
    Top = 538
  end
  object cBuscarBalance: TADOCommand
    CommandText = 'bcoBuscarBalanceEstado;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@bal'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 19
        Value = Null
      end>
    Left = 386
    Top = 232
  end
  object cGuardarBalance: TADOCommand
    CommandText = 'bcoGuardarBalanceEstado;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Bal'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end>
    Left = 412
    Top = 392
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
    Left = 202
    Top = 222
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
    object rsACHTransitoNumero: TStringField
      FieldName = 'Numero'
    end
  end
  object dsACHTrans: TDataSource
    DataSet = rsACHTransito
    Left = 306
    Top = 252
  end
  object dsAchs: TDataSource
    DataSet = rsAchs
    Left = 66
    Top = 336
  end
  object rsAchs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpReporteACHEmitidos;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 330
    Top = 296
    object rsAchsNumero: TStringField
      FieldName = 'Numero'
    end
    object rsAchsIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsAchsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsAchsIdSuplidor: TIntegerField
      FieldName = 'IdSuplidor'
      ReadOnly = True
    end
    object rsAchsCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsAchsNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
    object rsAchsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsAchsDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsAchsValorCheque: TBCDField
      FieldName = 'ValorCheque'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsAchsTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 500
    end
    object rsAchsST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object rsAchsfechastatus: TDateTimeField
      FieldName = 'fechastatus'
    end
    object rsAchsDescStatus: TStringField
      FieldName = 'DescStatus'
      ReadOnly = True
      Size = 9
    end
  end
  object plACHTransito: TppDBPipeline
    DataSource = dsACHTrans
    UserName = 'plACHTransito'
    Left = 466
    Top = 352
    object plACHTransitoppField1: TppField
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField3: TppField
      FieldAlias = 'CuentaBanco'
      FieldName = 'CuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField4: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField5: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField6: TppField
      FieldAlias = 'DescripcionCuenta'
      FieldName = 'DescripcionCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField7: TppField
      FieldAlias = 'ValorCheque'
      FieldName = 'ValorCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField8: TppField
      FieldAlias = 'TextoConcepto'
      FieldName = 'TextoConcepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField9: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plACHTransitoppField10: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
end
