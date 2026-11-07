inherited Prestaciones: TPrestaciones
  Left = 252
  Top = 128
  Caption = 'Prestaciones'
  ClientHeight = 556
  ClientWidth = 701
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 701
  end
  inherited Gradient2: TGradient
    Width = 701
  end
  object Label2: TLabel [2]
    Left = 426
    Top = 4
    Width = 247
    Height = 25
    Caption = 'C'#225'lculo de Prestaciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 148
    Width = 74
    Height = 13
    Caption = 'Fecha Ent./Sal:'
  end
  object Label3: TLabel [4]
    Left = 8
    Top = 125
    Width = 73
    Height = 13
    Caption = 'Departamento:'
  end
  object Label4: TLabel [5]
    Left = 342
    Top = 125
    Width = 40
    Height = 13
    Caption = 'Secci'#243'n:'
  end
  object Label5: TLabel [6]
    Left = 8
    Top = 101
    Width = 63
    Height = 13
    Caption = 'C'#233'dula/Pass:'
  end
  object Label6: TLabel [7]
    Left = 342
    Top = 102
    Width = 21
    Height = 13
    Caption = 'Roll:'
  end
  object Gradient4: TGradient [8]
    Left = 4
    Top = 195
    Width = 670
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label7: TLabel [9]
    Left = 343
    Top = 174
    Width = 65
    Height = 13
    Caption = 'Tiempo Emp.:'
  end
  object Label9: TLabel [10]
    Left = 8
    Top = 173
    Width = 56
    Height = 13
    Caption = 'Acumulado:'
  end
  object Label11: TLabel [11]
    Left = 9
    Top = 210
    Width = 52
    Height = 13
    Caption = 'Preaviso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [12]
    Left = 342
    Top = 210
    Width = 52
    Height = 13
    Caption = 'Cesantia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel [13]
    Left = 9
    Top = 234
    Width = 66
    Height = 13
    Caption = 'Vacaciones:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel [14]
    Left = 342
    Top = 234
    Width = 45
    Height = 13
    Caption = 'Regalia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel [15]
    Left = 372
    Top = 259
    Width = 62
    Height = 25
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Gradient3: TGradient [16]
    Left = 5
    Top = 288
    Width = 670
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label16: TLabel [17]
    Left = 8
    Top = 41
    Width = 50
    Height = 13
    Caption = 'Empleado:'
  end
  object Label17: TLabel [18]
    Left = 8
    Top = 65
    Width = 78
    Height = 13
    Caption = 'Fecha de salida:'
  end
  object Label18: TLabel [19]
    Left = 568
    Top = 37
    Width = 86
    Height = 13
    Caption = 'Tomo vacaciones:'
  end
  object Gradient5: TGradient [20]
    Left = 5
    Top = 87
    Width = 670
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label19: TLabel [21]
    Left = 589
    Top = 69
    Width = 65
    Height = 13
    Caption = 'Preavisado ?:'
  end
  object Label20: TLabel [22]
    Left = 578
    Top = 53
    Width = 75
    Height = 13
    Caption = 'Pagar regalia ?:'
  end
  object Label22: TLabel [23]
    Left = 327
    Top = 65
    Width = 102
    Height = 13
    Caption = 'Fecha l'#237'mite de pago:'
  end
  object Label23: TLabel [24]
    Left = 342
    Top = 148
    Width = 69
    Height = 13
    Caption = 'Salario Actual:'
  end
  object Label8: TLabel [25]
    Left = 8
    Top = 253
    Width = 111
    Height = 11
    Caption = 'Salario Promedio Mensual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [26]
    Left = 150
    Top = 253
    Width = 100
    Height = 11
    Caption = 'Salario Promedio Diario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object cxPageControl1: TcxPageControl [27]
    Left = 3
    Top = 298
    Width = 674
    Height = 218
    ActivePage = tsTransacciones
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 214
    ClientRectLeft = 2
    ClientRectRight = 670
    ClientRectTop = 22
    object tsTransacciones: TcxTabSheet
      Caption = 'Transacciones'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 24
        Width = 324
        Height = 128
        TabOrder = 0
        OnEnter = cxGrid1Enter
        OnExit = cxGrid1Exit
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsIngresos
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
              FieldName = 'Monto'
              Column = cxGrid1DBTableView1Monto
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGrid1DBTableView1Id: TcxGridDBColumn
            DataBinding.FieldName = 'Id'
            Visible = False
          end
          object cxGrid1DBTableView1IdTransaccion: TcxGridDBColumn
            DataBinding.FieldName = 'IdTransaccion'
            Options.Filtering = False
            Width = 46
          end
          object cxGrid1DBTableView1Transaccion: TcxGridDBColumn
            DataBinding.FieldName = 'Transaccion'
            Options.Filtering = False
            Options.Focusing = False
            Width = 176
          end
          object cxGrid1DBTableView1Monto: TcxGridDBColumn
            DataBinding.FieldName = 'Monto'
            Options.Filtering = False
            Width = 78
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 326
        Top = 24
        Width = 341
        Height = 128
        TabOrder = 1
        OnEnter = cxGrid3Enter
        OnExit = cxGrid3Exit
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsDescuentos
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
              FieldName = 'Monto'
              Column = cxGridDBTableView2Monto
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGridDBTableView2Id: TcxGridDBColumn
            DataBinding.FieldName = 'Id'
            Visible = False
            Options.Filtering = False
          end
          object cxGridDBTableView2IdTransaccion: TcxGridDBColumn
            DataBinding.FieldName = 'IdTransaccion'
            Options.Filtering = False
            Width = 43
          end
          object cxGridDBTableView2Transaccion: TcxGridDBColumn
            DataBinding.FieldName = 'Transaccion'
            Options.Filtering = False
            Options.Focusing = False
            Width = 197
          end
          object cxGridDBTableView2Monto: TcxGridDBColumn
            DataBinding.FieldName = 'Monto'
            Options.Filtering = False
            Width = 81
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 324
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Gradient9: TGradient
          Left = 0
          Top = 0
          Width = 322
          Height = 21
          Align = alClient
          ColorBegin = 16312800
          ColorEnd = 16412443
          Style = gsLinearV
        end
        object cxLabel6: TcxLabel
          Left = 2
          Top = 0
          Width = 61
          Height = 20
          Caption = 'Ingresos'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel1: TPanel
        Left = 326
        Top = 1
        Width = 341
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object Gradient6: TGradient
          Left = 0
          Top = 0
          Width = 339
          Height = 21
          Align = alClient
          ColorBegin = 16312800
          ColorEnd = 16412443
          Style = gsLinearV
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 0
          Width = 80
          Height = 20
          Caption = 'Descuentos'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
    end
    object tsXDepartamento: TcxTabSheet
      Caption = 'Prestaciones por Departamento'
      ImageIndex = 1
      DesignSize = (
        668
        192)
      object Label21: TLabel
        Left = 8
        Top = 170
        Width = 73
        Height = 13
        Caption = 'Departamento:'
        Transparent = True
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 666
        Height = 158
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsPresXDep
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'EmpleadoId'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1EmpleadoId: TcxGridDBColumn
            DataBinding.FieldName = 'EmpleadoId'
          end
          object cxGridDBTableView1Empleado: TcxGridDBColumn
            DataBinding.FieldName = 'Empleado'
            Width = 233
          end
          object cxGridDBTableView1Preaviso: TcxGridDBColumn
            DataBinding.FieldName = 'Preaviso'
            Width = 85
          end
          object cxGridDBTableView1Cesantia: TcxGridDBColumn
            DataBinding.FieldName = 'Cesantia'
            Width = 81
          end
          object cxGridDBTableView1Vacaciones: TcxGridDBColumn
            DataBinding.FieldName = 'Vacaciones'
            Width = 79
          end
          object cxGridDBTableView1Regalia: TcxGridDBColumn
            DataBinding.FieldName = 'Regalia'
            Width = 77
          end
          object cxGridDBTableView1Total: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            Width = 89
          end
          object cxGridDBTableView1Departamento: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
          end
          object cxGridDBTableView1Seccion: TcxGridDBColumn
            DataBinding.FieldName = 'Seccion'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object lkDepartamento: TcxLookupComboBox
        Left = 90
        Top = 165
        Width = 246
        Height = 21
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'DepartamentoId'
        Properties.ListColumns = <
          item
            FieldName = 'Departamento'
          end>
        Properties.ListSource = dsDepartamento
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object bBuscar: TcxButton
        Left = 572
        Top = 161
        Width = 92
        Height = 30
        Anchors = [akLeft, akBottom]
        Caption = '&Filtrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bBuscarClick
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00ABA7A6008C888800C0959600FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ACA8
          A70086868A002A669A004B7BA000C0949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009B9D
          9D005492C2002E99FF001B7CCB00557A9700C1959500FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DAD
          FF0057C1FF004DB1FF003196FA00197CC90053799700C1949500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0041ABFF005DBFFE004DAFFF003196FA00197BC8005A7A9700C2959400FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0042ABFE005CC0FE004DAFFF003096FA00197AC800587A9600C194
          9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0042ACFE005CC0FE004DAFFF002E94FA00187AC7005F7C
          9700BB939600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0044ADFE005CBFFE004DB0FF002D94F8001979
          C60043739700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0046AEFE005CBFFE004CB0FF003F97
          ED00577B9400FF00FF00FF00FF00FF00FF00AE837E00AE837E00AE837E00AE83
          7E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0046AFFE0066C5FF00A3CC
          F100BEB3AB0086717000A9807A00AE837E00E5D8BD00FFFFE200FFFFE200FFFF
          E000EEDFC600AE837E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00DCBFB800C69E8E00D8BDA300FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFF
          DB00FFFFDD00FFFFE900DEC9B700AE837E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00AE857F00DEC0A500FFF3C100FCF1C800FFFFDA00FFFFD900FFFFDA00FFFF
          E000FFFFE400FFFFEF00FFFFFF00DDCAC800AE837E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00AE837E00FFEFB900F5D4A500FBF0C600FFFFDB00FFFFDA00FFFFDD00FFFF
          EB00FFFFF500FFFFFB00FFFFFD00FFFFFE00AE837E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
          7E00ECD5B400F8D6A200F2C99700FCEDC400FFFFDB00FFFFDA00FFFFE000FFFF
          F000FFFFFE00FFFFFD00FFFFF500FFFFEB00E1D3B800AE837E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
          7E00FFF3BF00F4CB9500F0C18E00F9E5BA00FEFDD700FFFFDC00FFFFDF00FFFF
          EC00FFFFF800FFFFF800FFFFEC00FFFFE000FFFFE300AE837E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
          7E00FFF4C000F3C99400EEB88400F5D5A500FDF3CB00FFFFDC00FFFFDD00FFFF
          E200FFFFE800FFFFE900FFFFE200FFFFDD00FFFFE300AE837E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
          7E00FFF5C300F6D19C00EEB27D00F1C59300F7E0B300FDF7D000FFFFDC00FFFF
          DD00FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFFE100AE837E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
          7E00ECD5B400FDE6B200F3C99600F2C79200F3D09C00F8E3B500FCF5CD00FFFF
          DA00FFFFDC00FFFFDB00FFFFDB00FFFFDC00E2D3B800AE837E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00AE837E00FFFED000FCF0D600F8E0BE00F4CF9D00F3CD9A00F6D8AA00FBEA
          BF00FDF4CB00FCF7CF00FEF8D100FFFFDE00AE837E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00AE837E00E0CAB200FFFFFF00FEF9F200F8E1BE00F1C48D00EEBA8500F1C4
          9100F4D1A100F8DEB000FFF7C600DDC7AE00AE837E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AE837E00D9C6C000FFFFFF00FFF7D700F8DAA600F4CB9500F5CD
          9900F9D9A600FFF1BB00DEC2A900AE837E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00AE837E00AE837E00E8D5B400FFF9C500FFF5C000FFF5
          C200EED8B700AE837E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00AE837E00AE837E00AE837E00AE83
          7E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        LookAndFeel.NativeStyle = True
      end
      object cxButton3: TcxButton
        Left = 471
        Top = 161
        Width = 96
        Height = 30
        Anchors = [akLeft, akBottom]
        Caption = 'Exportar a Excel'
        TabOrder = 3
        OnClick = cxButton3Click
        Layout = blGlyphTop
        LookAndFeel.NativeStyle = True
      end
      object cxButton1: TcxButton
        Left = 346
        Top = 163
        Width = 119
        Height = 27
        Caption = 'Imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        WordWrap = True
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
    end
    object tsIngresosAcum: TcxTabSheet
      Caption = 'Ingresos Acumulados'
      ImageIndex = 2
      object cxGrid4: TcxGrid
        Left = 1
        Top = 1
        Width = 666
        Height = 190
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = dsIngresosAcum
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'TipoTransaccionId'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
              FieldName = 'Total'
              Column = cxGridDBTableView3Total
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView3TipoTransaccionId: TcxGridDBColumn
            Caption = 'C'#243'digo Tipo Transacci'#243'n'
            DataBinding.FieldName = 'TipoTransaccionId'
            Options.Filtering = False
            Width = 127
          end
          object cxGridDBTableView3TipoTransaccion: TcxGridDBColumn
            Caption = 'Tipo Transacci'#243'n'
            DataBinding.FieldName = 'TipoTransaccion'
            Options.Filtering = False
            Width = 346
          end
          object cxGridDBTableView3Total: TcxGridDBColumn
            Caption = 'Monto Total'
            DataBinding.FieldName = 'Total'
            Options.Filtering = False
            Width = 169
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object tsObservacion: TcxTabSheet
      Caption = 'Observaciones'
      ImageIndex = 3
      object cxMemo1: TcxMemo
        Left = 1
        Top = 1
        Width = 666
        Height = 189
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
    end
  end
  object beIdEmpleado: TcxButtonEdit [28]
    Left = 86
    Top = 37
    Width = 104
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnEditValueChanged = beIdEmpleadoPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBTextEdit1: TcxDBTextEdit [29]
    Left = 196
    Top = 37
    Width = 343
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Empleado'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 2
  end
  object cxDBTextEdit2: TcxDBTextEdit [30]
    Left = 84
    Top = 97
    Width = 247
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Cedula'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit3: TcxDBTextEdit [31]
    Left = 84
    Top = 121
    Width = 247
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Departamento'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBTextEdit4: TcxDBTextEdit [32]
    Left = 416
    Top = 121
    Width = 257
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Seccion'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBTextEdit5: TcxDBTextEdit [33]
    Left = 416
    Top = 97
    Width = 257
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Roll'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBTextEdit6: TcxDBTextEdit [34]
    Left = 416
    Top = 169
    Width = 257
    Height = 21
    TabStop = False
    DataBinding.DataField = 'cfTiempoEmpresa'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxDBTextEdit8: TcxDBTextEdit [35]
    Left = 84
    Top = 169
    Width = 125
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Acumulado12Meses'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBTextEdit9: TcxDBTextEdit [36]
    Left = 84
    Top = 145
    Width = 125
    Height = 21
    TabStop = False
    DataBinding.DataField = 'FechaInicio'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBTextEdit10: TcxDBTextEdit [37]
    Left = 112
    Top = 206
    Width = 130
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Preaviso'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBTextEdit11: TcxDBTextEdit [38]
    Left = 470
    Top = 206
    Width = 121
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Cesantia'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object cxDBTextEdit12: TcxDBTextEdit [39]
    Left = 112
    Top = 230
    Width = 130
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Vacaciones'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object cxDBTextEdit13: TcxDBTextEdit [40]
    Left = 444
    Top = 230
    Width = 147
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Regalia'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object cxDBTextEdit14: TcxDBTextEdit [41]
    Left = 446
    Top = 250
    Width = 224
    Height = 37
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'Total'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Color = 14870499
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 8404992
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    Style.TransparentBorder = True
    TabOrder = 14
  end
  object dtpFechaSalida: TcxDateEdit [42]
    Left = 86
    Top = 61
    Width = 104
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnChange = dtpFechaSalidaPropertiesChange
    Properties.OnEditValueChanged = dtpFechaSalidaPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cbTomoVacaciones: TcxCheckBox [43]
    Left = 654
    Top = 33
    Width = 22
    Height = 21
    TabOrder = 16
  end
  object cbPreaviso: TcxCheckBox [44]
    Left = 654
    Top = 65
    Width = 21
    Height = 21
    TabOrder = 17
  end
  object cbPagarRegalia: TcxCheckBox [45]
    Left = 654
    Top = 49
    Width = 21
    Height = 21
    State = cbsChecked
    TabOrder = 18
  end
  object btSalir: TcxButton [46]
    Left = 580
    Top = 520
    Width = 89
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 19
    OnClick = btSalirClick
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
  object cxButton6: TcxButton [47]
    Left = 4
    Top = 524
    Width = 119
    Height = 32
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    WordWrap = True
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  object dtpFechaLimite: TcxDateEdit [48]
    Left = 435
    Top = 61
    Width = 104
    Height = 21
    TabStop = False
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 21
  end
  object cxDBTextEdit15: TcxDBTextEdit [49]
    Left = 212
    Top = 145
    Width = 119
    Height = 21
    TabStop = False
    DataBinding.DataField = 'FechaFin'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 22
  end
  object cxDBTextEdit16: TcxDBTextEdit [50]
    Left = 416
    Top = 145
    Width = 257
    Height = 21
    TabStop = False
    DataBinding.DataField = 'SalarioActual'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 23
  end
  object cxDBTextEdit7: TcxDBTextEdit [51]
    Left = 84
    Top = 206
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'DiasPreaviso'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 24
  end
  object cxDBTextEdit17: TcxDBTextEdit [52]
    Left = 84
    Top = 230
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'DiasVacaciones'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 25
  end
  object cxDBTextEdit18: TcxDBTextEdit [53]
    Left = 416
    Top = 206
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'DiasCesantiaCodAnt'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 26
  end
  object cxDBTextEdit19: TcxDBTextEdit [54]
    Left = 443
    Top = 206
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'DiasCesantiaCodActual'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 27
  end
  object cxDBTextEdit20: TcxDBTextEdit [55]
    Left = 416
    Top = 230
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'DiasRegalia'
    DataBinding.DataSource = ds
    ParentFont = False
    Style.Color = 11336697
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 28
  end
  object cxDBTextEdit21: TcxDBTextEdit [56]
    Left = 10
    Top = 265
    Width = 110
    Height = 21
    TabStop = False
    DataBinding.DataField = 'SalarioPromedioMensual'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 29
  end
  object cxDBTextEdit22: TcxDBTextEdit [57]
    Left = 151
    Top = 265
    Width = 113
    Height = 21
    TabStop = False
    DataBinding.DataField = 'SalarioPromedioDiario'
    DataBinding.DataSource = ds
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 30
  end
  object bDisenarRpt: TcxButton [58]
    Left = 140
    Top = 524
    Width = 119
    Height = 32
    Caption = 'Dise'#241'ar Reporte'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
    WordWrap = True
    OnClick = bDisenarRptClick
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = spPrestaciones
    Left = 310
    Top = 362
  end
  object spPrestaciones: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterScroll = spPrestacionesAfterScroll
    OnCalcFields = spPrestacionesCalcFields
    ProcedureName = 'nomPrestaciones;1'
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
        Name = '@FechaFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TomoVacaciones'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Preaviso'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@PagarRegalia'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 179
    Top = 356
    object spPrestacionesEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 200
    end
    object spPrestacionesFechaInicio: TDateTimeField
      FieldName = 'FechaInicio'
      ReadOnly = True
    end
    object spPrestacionesAcumulado12Meses: TBCDField
      FieldName = 'Acumulado12Meses'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesAno: TIntegerField
      FieldName = 'Ano'
      ReadOnly = True
    end
    object spPrestacionesMeses: TIntegerField
      FieldName = 'Meses'
      ReadOnly = True
    end
    object spPrestacionesDepartamento: TStringField
      FieldName = 'Departamento'
      ReadOnly = True
      Size = 100
    end
    object spPrestacionesSeccion: TStringField
      FieldName = 'Seccion'
      ReadOnly = True
      Size = 100
    end
    object spPrestacionesCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
    end
    object spPrestacionesRoll: TStringField
      FieldName = 'Roll'
      ReadOnly = True
      Size = 100
    end
    object spPrestacionesPreaviso: TBCDField
      FieldName = 'Preaviso'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesCesantia: TBCDField
      FieldName = 'Cesantia'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesVacaciones: TBCDField
      FieldName = 'Vacaciones'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesRegalia: TBCDField
      FieldName = 'Regalia'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 21
      Size = 2
    end
    object spPrestacionesFechaFin: TDateTimeField
      FieldName = 'FechaFin'
      ReadOnly = True
    end
    object spPrestacionesSalarioActual: TBCDField
      FieldName = 'SalarioActual'
      ReadOnly = True
      DisplayFormat = '#0,0.00'
      Precision = 18
      Size = 2
    end
    object spPrestacionesSalarioPromedioMensual: TBCDField
      FieldName = 'SalarioPromedioMensual'
      ReadOnly = True
      DisplayFormat = '#0,0.00'
      Precision = 29
      Size = 13
    end
    object spPrestacionesSalarioPromedioDiario: TBCDField
      FieldName = 'SalarioPromedioDiario'
      ReadOnly = True
      DisplayFormat = '#0,0.00'
      Precision = 32
      Size = 18
    end
    object spPrestacionesDiasPreaviso: TIntegerField
      FieldName = 'DiasPreaviso'
      ReadOnly = True
    end
    object spPrestacionesDiasCesantiaCodAnt: TIntegerField
      FieldName = 'DiasCesantiaCodAnt'
      ReadOnly = True
    end
    object spPrestacionesDiasCesantiaCodActual: TIntegerField
      FieldName = 'DiasCesantiaCodActual'
      ReadOnly = True
    end
    object spPrestacionesDiasVacaciones: TIntegerField
      FieldName = 'DiasVacaciones'
      ReadOnly = True
    end
    object spPrestacionesDiasRegalia: TIntegerField
      FieldName = 'DiasRegalia'
      ReadOnly = True
    end
    object spPrestacionescfTiempoEmpresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'cfTiempoEmpresa'
      Size = 50
      Calculated = True
    end
    object spPrestacionesCodigoForm: TStringField
      FieldName = 'CodigoForm'
      ReadOnly = True
    end
    object spPrestacionesDias: TIntegerField
      FieldName = 'Dias'
      ReadOnly = True
    end
    object spPrestacionesOrigMeses: TIntegerField
      FieldName = 'OrigMeses'
      ReadOnly = True
    end
    object spPrestacionesOrigDias: TIntegerField
      FieldName = 'OrigDias'
      ReadOnly = True
    end
    object spPrestacionesorigAnos: TIntegerField
      FieldName = 'origAnos'
      ReadOnly = True
    end
  end
  object EmpleadoList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'NomEmpleadoList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 410
    object EmpleadoListEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object EmpleadoListEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object spPresXDep: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'nomPrestacionesXDepartamento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DepartamentoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 422
    Top = 446
    object spPresXDepEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spPresXDepEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 150
    end
    object spPresXDepDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 80
    end
    object spPresXDepSeccion: TStringField
      FieldName = 'Seccion'
      Size = 80
    end
    object spPresXDepPreaviso: TBCDField
      FieldName = 'Preaviso'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPresXDepCesantia: TBCDField
      FieldName = 'Cesantia'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPresXDepVacaciones: TBCDField
      FieldName = 'Vacaciones'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPresXDepRegalia: TBCDField
      FieldName = 'Regalia'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spPresXDepTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 21
      Size = 2
    end
  end
  object qryDepartamento: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  -1 As DepartamentoId,'
      '  '#39'TODOS'#39' As Departamento'
      'UNION'
      'SELECT'
      '  DepartamentoId,'
      '  Departamento'
      'FROM'
      '  Departamento')
    Left = 544
    Top = 370
  end
  object dsDepartamento: TDataSource
    DataSet = qryDepartamento
    Left = 440
    Top = 370
  end
  object dsPresXDep: TDataSource
    DataSet = spPresXDep
    Left = 299
    Top = 430
  end
  object SaveDialog1: TSaveDialog
    Left = 200
    Top = 418
  end
  object mtblIngresos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftAutoInc
      end
      item
        Name = 'IdTransaccion'
        DataType = ftInteger
      end
      item
        Name = 'Transaccion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Monto'
        DataType = ftFloat
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
    Left = 66
    Top = 480
    object mtblIngresosId: TAutoIncField
      FieldName = 'Id'
    end
    object mtblIngresosIdTransaccion: TIntegerField
      FieldName = 'IdTransaccion'
      OnValidate = mtblIngresosIdTransaccionValidate
    end
    object mtblIngresosTransaccion: TStringField
      FieldName = 'Transaccion'
      Size = 50
    end
    object mtblIngresosMonto: TFloatField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
    end
  end
  object mTblDescuentos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftAutoInc
      end
      item
        Name = 'IdTransaccion'
        DataType = ftInteger
      end
      item
        Name = 'Transaccion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Monto'
        DataType = ftFloat
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
    Left = 246
    Top = 474
    object mTblDescuentosId: TAutoIncField
      FieldName = 'Id'
    end
    object mTblDescuentosIdTransaccion: TIntegerField
      FieldName = 'IdTransaccion'
      OnValidate = mTblDescuentosIdTransaccionValidate
    end
    object mTblDescuentosTransaccion: TStringField
      FieldName = 'Transaccion'
      Size = 50
    end
    object mTblDescuentosMonto: TFloatField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
    end
  end
  object dsIngresos: TDataSource
    DataSet = mtblIngresos
    Left = 116
    Top = 464
  end
  object dsDescuentos: TDataSource
    DataSet = mTblDescuentos
    Left = 357
    Top = 480
  end
  object qryIngresos: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  TipoTransaccionId,'
      '  TipoTransaccion'
      'FROM'
      '  TipoTransaccion'
      'WHERE'
      '  Debito = 1')
    Left = 171
    Top = 474
    object qryIngresosTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object qryIngresosTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
  end
  object qryDescuentos: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  TipoTransaccionId,'
      '  TipoTransaccion'
      'FROM'
      '  TipoTransaccion'
      'WHERE'
      '  Debito = 0')
    Left = 481
    Top = 504
    object qryDescuentosTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object qryDescuentosTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
  end
  object rptPrestaciones: TppReport
    AutoStop = False
    DataPipeline = plPrestaciones
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
    Template.FileName = 'C:\CBSDG2007\RRHH\Prestaciones.rtm'
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
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 19
    Top = 426
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plPrestaciones'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 127794
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Anchors = [atLeft, atBottom]
        Pen.Width = 2
        mmHeight = 8731
        mmLeft = 0
        mmTop = 119063
        mmWidth = 203200
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Anchors = [atLeft, atBottom]
        Brush.Color = clSilver
        Pen.Color = 8158332
        mmHeight = 7408
        mmLeft = 0
        mmTop = 77258
        mmWidth = 202936
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Anchors = [atLeft, atBottom]
        Brush.Color = 15263976
        Pen.Color = 9803157
        Pen.Width = 2
        mmHeight = 19579
        mmLeft = 265
        mmTop = 84931
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Nombre Completo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 42069
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 42069
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Departamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 48154
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Secci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 48154
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Puesto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 54240
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Preaviso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 87842
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Vacaciones:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 96309
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Cesantia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 87313
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Regalia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 96309
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 134938
        mmTop = 107156
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 42069
        mmWidth = 74613
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Departamento'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 48154
        mmWidth = 74613
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Seccion'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 48154
        mmWidth = 61648
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Roll'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 54240
        mmWidth = 74613
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Preaviso'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 43921
        mmTop = 88106
        mmWidth = 29898
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Vacaciones'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 96309
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Regalia'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 96309
        mmWidth = 29898
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Total'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 5821
        mmLeft = 153988
        mmTop = 107156
        mmWidth = 45508
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'Cesantia'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 87577
        mmWidth = 29898
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 132821
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'C'#225'lculo de Prestaciones Laborales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 59531
        mmTop = 13494
        mmWidth = 84138
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180446
        mmTop = 1852
        mmWidth = 19844
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Anchors = [atLeft, atBottom]
        Pen.Color = 10658466
        Pen.Width = 4
        Weight = 3.000000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 105040
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'INDEMNIZACIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83608
        mmTop = 79111
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        Caption = 'Otras Transacciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 77258
        mmTop = 120915
        mmWidth = 48154
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 42069
        mmWidth = 61648
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = clSilver
        Pen.Color = 5855577
        mmHeight = 7408
        mmLeft = 0
        mmTop = 33073
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        Caption = 'DATOS DE EMPLEADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 82021
        mmTop = 34925
        mmWidth = 38894
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Color = 7237230
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 65352
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkEnabled = False
        Caption = 'Fecha Salida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 26988
        mmWidth = 20659
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkEnabled = False
        Caption = 'Fecha L'#237'mite de Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 95515
        mmTop = 26988
        mmWidth = 38629
        BandType = 0
      end
      object lFechaSalida: TppLabel
        OnPrint = lFechaSalidaPrint
        UserName = 'lFechaSalida'
        HyperlinkEnabled = False
        Caption = 'lFechaSalida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 26988
        mmWidth = 29369
        BandType = 0
      end
      object lFechaLimite: TppLabel
        OnPrint = lFechaLimitePrint
        UserName = 'lFechaLimite'
        HyperlinkEnabled = False
        Caption = 'lFechaLimite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 26988
        mmWidth = 31750
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataField = 'cfTiempoEmpresa'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 60061
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkEnabled = False
        Caption = 'Tiempo Emp.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 60061
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkEnabled = False
        Caption = 'Salario Mens.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 54240
        mmWidth = 24934
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkEnabled = False
        Caption = 'Fecha Ent./Sal.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 60061
        mmWidth = 28109
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkEnabled = False
        DataField = 'FechaInicio'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 60061
        mmWidth = 33867
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'FechaFin'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 73290
        mmTop = 60061
        mmWidth = 38365
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        DataField = 'SalarioActual'
        DataPipeline = plPrestaciones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 54240
        mmWidth = 61648
        BandType = 0
      end
      object ppRegion3: TppRegion
        UserName = 'Region3'
        Brush.Style = bsClear
        Caption = 'Region3'
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 8731
        mmLeft = 265
        mmTop = 67204
        mmWidth = 202407
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppSubReport3: TppSubReport
          UserName = 'SubReport3'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'plIngresoAcum'
          mmHeight = 5027
          mmLeft = 265
          mmTop = 68527
          mmWidth = 202407
          BandType = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport3: TppChildReport
            AutoStop = False
            DataPipeline = plIngresoAcum
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
            DataPipelineName = 'plIngresoAcum'
            object ppTitleBand4: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 7673
              mmPrintPosition = 0
              object ppShape8: TppShape
                UserName = 'Shape8'
                Brush.Color = clSilver
                Pen.Color = 8158332
                mmHeight = 7408
                mmLeft = 265
                mmTop = 265
                mmWidth = 202936
                BandType = 1
              end
              object ppLabel48: TppLabel
                UserName = 'Label48'
                HyperlinkEnabled = False
                Caption = 'INGRESOS ACUMULADOS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4233
                mmLeft = 79111
                mmTop = 2117
                mmWidth = 44979
                BandType = 1
              end
            end
            object ppDetailBand5: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object lBanda: TppShape
                OnPrint = lBandaPrint
                UserName = 'lBanda'
                Brush.Color = 13887443
                Pen.Style = psClear
                mmHeight = 5027
                mmLeft = 1852
                mmTop = 0
                mmWidth = 200025
                BandType = 4
              end
              object ppDBText36: TppDBText
                UserName = 'DBText36'
                HyperlinkEnabled = False
                DataField = 'TipoTransaccionId'
                DataPipeline = plIngresoAcum
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plIngresoAcum'
                mmHeight = 4233
                mmLeft = 3175
                mmTop = 265
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText37: TppDBText
                UserName = 'DBText37'
                HyperlinkEnabled = False
                DataField = 'TipoTransaccion'
                DataPipeline = plIngresoAcum
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plIngresoAcum'
                mmHeight = 4233
                mmLeft = 23283
                mmTop = 265
                mmWidth = 112977
                BandType = 4
              end
              object ppDBText38: TppDBText
                UserName = 'DBText38'
                HyperlinkEnabled = False
                DataField = 'Total'
                DataPipeline = plIngresoAcum
                DisplayFormat = '#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plIngresoAcum'
                mmHeight = 4233
                mmLeft = 149490
                mmTop = 265
                mmWidth = 51065
                BandType = 4
              end
            end
            object ppSummaryBand5: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 7144
              mmPrintPosition = 0
              object ppLine14: TppLine
                UserName = 'Line14'
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 1323
                mmTop = 0
                mmWidth = 201084
                BandType = 7
              end
              object ppDBText39: TppDBText
                UserName = 'DBText39'
                HyperlinkEnabled = False
                DataField = 'SalarioPromedioMensual'
                DataPipeline = plPrestaciones
                DisplayFormat = '#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plPrestaciones'
                mmHeight = 4233
                mmLeft = 50006
                mmTop = 794
                mmWidth = 28840
                BandType = 7
              end
              object ppDBText40: TppDBText
                UserName = 'DBText40'
                HyperlinkEnabled = False
                DataField = 'SalarioPromedioDiario'
                DataPipeline = plPrestaciones
                DisplayFormat = '#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'plPrestaciones'
                mmHeight = 4233
                mmLeft = 124619
                mmTop = 794
                mmWidth = 26458
                BandType = 7
              end
              object ppDBCalc18: TppDBCalc
                UserName = 'DBCalc18'
                HyperlinkEnabled = False
                DataField = 'Total'
                DataPipeline = plIngresoAcum
                DisplayFormat = '#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plIngresoAcum'
                mmHeight = 4233
                mmLeft = 156369
                mmTop = 529
                mmWidth = 44186
                BandType = 7
              end
              object ppLine15: TppLine
                UserName = 'Line15'
                Pen.Width = 2
                Weight = 1.500000000000000000
                mmHeight = 1323
                mmLeft = 1588
                mmTop = 5821
                mmWidth = 201084
                BandType = 7
              end
              object ppLabel49: TppLabel
                UserName = 'Label49'
                HyperlinkEnabled = False
                Caption = 'Salario promedio mensual:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3810
                mmLeft = 1852
                mmTop = 794
                mmWidth = 42884
                BandType = 7
              end
              object ppLabel50: TppLabel
                UserName = 'Label50'
                HyperlinkEnabled = False
                Caption = 'Salario promedio diario:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3810
                mmLeft = 81492
                mmTop = 794
                mmWidth = 38523
                BandType = 7
              end
            end
          end
        end
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'DiasPreaviso'
        DataPipeline = plPrestaciones
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 88106
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'D'#237'a(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 88106
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'DiasCesantiaCodAnt'
        DataPipeline = plPrestaciones
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 119856
        mmTop = 87577
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'DiasCesantiaCodActual'
        DataPipeline = plPrestaciones
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 87577
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'D'#237'a(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 87577
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'DiasVacaciones'
        DataPipeline = plPrestaciones
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 23813
        mmTop = 96309
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'D'#237'a(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 96309
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        DataField = 'DiasRegalia'
        DataPipeline = plPrestaciones
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 96309
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Mes(es)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 138113
        mmTop = 96309
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        AutoSize = True
        DataField = 'CodigoForm'
        DataPipeline = plPrestaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPrestaciones'
        mmHeight = 2879
        mmLeft = 180213
        mmTop = 8996
        mmWidth = 19812
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Caption = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 7408
        mmLeft = 1852
        mmTop = 0
        mmWidth = 100013
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'plIngreso'
          mmHeight = 5027
          mmLeft = 1852
          mmTop = 794
          mmWidth = 100013
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = plIngreso
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
            PrinterSetup.mmPaperWidth = 107950
            PrinterSetup.PaperSize = 125
            Version = '15.02'
            mmColumnWidth = 0
            DataPipelineName = 'plIngreso'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 12965
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                Brush.Color = 14278623
                Pen.Color = 10658466
                Pen.Width = 2
                mmHeight = 12700
                mmLeft = 0
                mmTop = 265
                mmWidth = 95515
                BandType = 1
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                HyperlinkEnabled = False
                Caption = 'Id Trasn.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 1323
                mmTop = 7408
                mmWidth = 14351
                BandType = 1
              end
              object ppLabel17: TppLabel
                UserName = 'Label17'
                HyperlinkEnabled = False
                Caption = 'Transacci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 17727
                mmTop = 7408
                mmWidth = 19092
                BandType = 1
              end
              object ppLabel18: TppLabel
                UserName = 'Label18'
                HyperlinkEnabled = False
                Caption = 'Monto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 83079
                mmTop = 7408
                mmWidth = 10118
                BandType = 1
              end
              object ppLabel19: TppLabel
                UserName = 'Label19'
                HyperlinkEnabled = False
                Caption = 'Ingresos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 39688
                mmTop = 1588
                mmWidth = 14055
                BandType = 1
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Pen.Color = 10658466
                Pen.Width = 2
                Weight = 1.500000000000000000
                mmHeight = 1852
                mmLeft = 0
                mmTop = 6085
                mmWidth = 94986
                BandType = 1
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText11: TppDBText
                UserName = 'DBText11'
                HyperlinkEnabled = False
                DataField = 'IdTransaccion'
                DataPipeline = plIngreso
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plIngreso'
                mmHeight = 4233
                mmLeft = 529
                mmTop = 0
                mmWidth = 15346
                BandType = 4
              end
              object ppDBText12: TppDBText
                UserName = 'DBText12'
                HyperlinkEnabled = False
                DataField = 'Transaccion'
                DataPipeline = plIngreso
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plIngreso'
                mmHeight = 4233
                mmLeft = 17727
                mmTop = 0
                mmWidth = 55827
                BandType = 4
              end
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                HyperlinkEnabled = False
                DataField = 'Monto'
                DataPipeline = plIngreso
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plIngreso'
                mmHeight = 4233
                mmLeft = 74613
                mmTop = 0
                mmWidth = 20373
                BandType = 4
              end
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 6879
              mmPrintPosition = 0
              object ppLine1: TppLine
                UserName = 'Line1'
                Pen.Width = 2
                Weight = 1.500000000000000000
                mmHeight = 2117
                mmLeft = 1058
                mmTop = 265
                mmWidth = 93927
                BandType = 7
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkEnabled = False
                DataField = 'Monto'
                DataPipeline = plIngreso
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plIngreso'
                mmHeight = 3704
                mmLeft = 59267
                mmTop = 1058
                mmWidth = 35454
                BandType = 7
              end
            end
          end
        end
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Caption = 'Region2'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 7144
        mmLeft = 102394
        mmTop = 264
        mmWidth = 100542
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppSubReport2: TppSubReport
          UserName = 'SubReport2'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'plDescuento'
          mmHeight = 5027
          mmLeft = 102394
          mmTop = 793
          mmWidth = 100542
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport2: TppChildReport
            AutoStop = False
            DataPipeline = plDescuento
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
            PrinterSetup.mmPaperWidth = 107950
            PrinterSetup.PaperSize = 125
            Version = '15.02'
            mmColumnWidth = 0
            DataPipelineName = 'plDescuento'
            object ppTitleBand2: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 12965
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape1'
                Brush.Color = 14278623
                Pen.Color = 10658466
                Pen.Width = 2
                mmHeight = 12700
                mmLeft = 0
                mmTop = 265
                mmWidth = 95515
                BandType = 1
              end
              object ppLabel20: TppLabel
                UserName = 'Label16'
                HyperlinkEnabled = False
                Caption = 'Id Trasn.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 1323
                mmTop = 7408
                mmWidth = 14351
                BandType = 1
              end
              object ppLabel21: TppLabel
                UserName = 'Label17'
                HyperlinkEnabled = False
                Caption = 'Transacci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 17727
                mmTop = 7408
                mmWidth = 19092
                BandType = 1
              end
              object ppLabel22: TppLabel
                UserName = 'Label18'
                HyperlinkEnabled = False
                Caption = 'Monto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3831
                mmLeft = 83079
                mmTop = 7408
                mmWidth = 10118
                BandType = 1
              end
              object ppLabel23: TppLabel
                UserName = 'Label19'
                HyperlinkEnabled = False
                Caption = 'Descuentos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 38365
                mmTop = 1588
                mmWidth = 18521
                BandType = 1
              end
              object ppLine3: TppLine
                UserName = 'Line2'
                Pen.Color = 10658466
                Pen.Width = 2
                Weight = 1.500000000000000000
                mmHeight = 1852
                mmLeft = 0
                mmTop = 6085
                mmWidth = 94986
                BandType = 1
              end
            end
            object ppDetailBand3: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText14: TppDBText
                UserName = 'DBText11'
                HyperlinkEnabled = False
                DataField = 'IdTransaccion'
                DataPipeline = plDescuento
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plDescuento'
                mmHeight = 4233
                mmLeft = 529
                mmTop = 0
                mmWidth = 15346
                BandType = 4
              end
              object ppDBText15: TppDBText
                UserName = 'DBText12'
                HyperlinkEnabled = False
                DataField = 'Transaccion'
                DataPipeline = plDescuento
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'plDescuento'
                mmHeight = 4233
                mmLeft = 17727
                mmTop = 0
                mmWidth = 55827
                BandType = 4
              end
              object ppDBText16: TppDBText
                UserName = 'DBText13'
                HyperlinkEnabled = False
                DataField = 'Monto'
                DataPipeline = plDescuento
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plDescuento'
                mmHeight = 4233
                mmLeft = 74613
                mmTop = 0
                mmWidth = 20373
                BandType = 4
              end
            end
            object ppSummaryBand2: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 6879
              mmPrintPosition = 0
              object ppLine4: TppLine
                UserName = 'Line1'
                Pen.Width = 2
                Weight = 1.500000000000000000
                mmHeight = 2117
                mmLeft = 1058
                mmTop = 265
                mmWidth = 93927
                BandType = 7
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkEnabled = False
                DataField = 'Monto'
                DataPipeline = plDescuento
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plDescuento'
                mmHeight = 3704
                mmLeft = 59267
                mmTop = 1058
                mmWidth = 35454
                BandType = 7
              end
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 64294
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkEnabled = False
        Caption = 'Preparado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 32015
        mmWidth = 22098
        BandType = 8
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkEnabled = False
        Caption = 'Revisado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 32015
        mmWidth = 20108
        BandType = 8
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 7673
        mmTop = 30692
        mmWidth = 62971
        BandType = 8
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 132027
        mmTop = 30692
        mmWidth = 62971
        BandType = 8
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkEnabled = False
        Caption = 'Revisado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91017
        mmTop = 51329
        mmWidth = 20108
        BandType = 8
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 67733
        mmTop = 50006
        mmWidth = 62971
        BandType = 8
      end
      object memoObservacion: TppMemo
        OnPrint = memoObservacionPrint
        UserName = 'memoObservacion'
        Caption = 'memoObservacion'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 10848
        mmLeft = 22225
        mmTop = 7938
        mmWidth = 175684
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkEnabled = False
        Caption = 'OBSERVACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 3969
        mmTop = 3175
        mmWidth = 30734
        BandType = 8
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkEnabled = False
        Caption = 'ASISTENTE RECURSOS HUMANOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12171
        mmTop = 36513
        mmWidth = 53340
        BandType = 8
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkEnabled = False
        Caption = 'GTE RECURSOS HUMANOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 36513
        mmWidth = 41995
        BandType = 8
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkEnabled = False
        Caption = 'COORDINADOR DE CONTABILIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 71702
        mmTop = 55827
        mmWidth = 55457
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        Caption = 'NETO A PAGAR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 102659
        mmTop = 2117
        mmWidth = 44715
        BandType = 7
      end
      object lNetoaPagar: TppLabel
        OnPrint = lNetoaPagarPrint
        UserName = 'lNetoaPagar'
        HyperlinkEnabled = False
        Caption = 'lNetoaPagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 148696
        mmTop = 2117
        mmWidth = 50536
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 794
        mmWidth = 202936
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plPrestaciones: TppDBPipeline
    DataSource = ds
    UserName = 'plPrestaciones'
    Left = 17
    Top = 376
  end
  object plIngreso: TppDBPipeline
    DataSource = dsIngresos
    UserName = 'plIngreso'
    Left = 466
    Top = 264
  end
  object plDescuento: TppDBPipeline
    DataSource = dsDescuentos
    UserName = 'plDescuento'
    Left = 564
    Top = 272
  end
  object plPorDepartamento: TppDBPipeline
    DataSource = dsPresXDep
    UserName = 'plPorDepartamento'
    Left = 364
    Top = 276
    object plPorDepartamentoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoId'
      FieldName = 'EmpleadoId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plPorDepartamentoppField2: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 150
      DisplayWidth = 150
      Position = 1
    end
    object plPorDepartamentoppField3: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object plPorDepartamentoppField4: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object plPorDepartamentoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Preaviso'
      FieldName = 'Preaviso'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object plPorDepartamentoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cesantia'
      FieldName = 'Cesantia'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object plPorDepartamentoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Vacaciones'
      FieldName = 'Vacaciones'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object plPorDepartamentoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regalia'
      FieldName = 'Regalia'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object plPorDepartamentoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 22
      Position = 8
    end
  end
  object rptPorDept: TppReport
    AutoStop = False
    DataPipeline = plPorDepartamento
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
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 288
    Top = 270
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plPorDepartamento'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 10224
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 121973
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 2117
        mmWidth = 35190
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 189527
        mmTop = 6350
        mmWidth = 12086
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkEnabled = False
        Caption = 'Prestaciones Laborales x Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 62706
        mmTop = 23283
        mmWidth = 77523
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        Pen.Width = 2
        mmHeight = 6085
        mmLeft = 265
        mmTop = 265
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 10319
        mmTop = 1323
        mmWidth = 74877
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Preaviso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 96309
        mmTop = 1323
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cesantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 117740
        mmTop = 1323
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vacaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 138907
        mmTop = 1323
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Regalia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 162984
        mmTop = 1323
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 1323
        mmWidth = 16669
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'EmpleadoId'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 264
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 10319
        mmTop = 264
        mmWidth = 75142
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Preaviso'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Cesantia'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 112713
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Vacaciones'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Regalia'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 158221
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plPorDepartamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3969
        mmLeft = 180446
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 0
        mmWidth = 201877
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        HyperlinkEnabled = False
        DataField = 'Preaviso'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 1323
        mmWidth = 20902
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkEnabled = False
        DataField = 'Cesantia'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3704
        mmLeft = 114565
        mmTop = 1323
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc101'
        HyperlinkEnabled = False
        DataField = 'Vacaciones'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 1323
        mmWidth = 22225
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        HyperlinkEnabled = False
        DataField = 'Regalia'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 1323
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plPorDepartamento
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPorDepartamento'
        mmHeight = 3704
        mmLeft = 181505
        mmTop = 1323
        mmWidth = 21431
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 529
        mmWidth = 202936
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkEnabled = False
        Caption = 'Totales Generales:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3831
        mmLeft = 61648
        mmTop = 1323
        mmWidth = 26988
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Departamento'
      DataPipeline = plPorDepartamento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPorDepartamento'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          HyperlinkEnabled = False
          DataField = 'Departamento'
          DataPipeline = plPorDepartamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 6615
          mmLeft = 40481
          mmTop = 265
          mmWidth = 153988
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkEnabled = False
          Caption = 'Departamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5948
          mmLeft = 1852
          mmTop = 265
          mmWidth = 37507
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'Preaviso'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 89429
          mmTop = 794
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          DataField = 'Cesantia'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 112977
          mmTop = 794
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'Vacaciones'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 134938
          mmTop = 794
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          HyperlinkEnabled = False
          DataField = 'Regalia'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 158221
          mmTop = 794
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 180975
          mmTop = 794
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line101'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 529
          mmTop = 0
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkEnabled = False
          Caption = 'Totales por departamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 47096
          mmTop = 794
          mmWidth = 39952
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Seccion'
      DataPipeline = plPorDepartamento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPorDepartamento'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          HyperlinkEnabled = False
          DataField = 'Seccion'
          DataPipeline = plPorDepartamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 6085
          mmLeft = 39688
          mmTop = 0
          mmWidth = 154252
          BandType = 3
          GroupNo = 1
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkEnabled = False
          Caption = 'Secci'#243'n:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5948
          mmLeft = 18256
          mmTop = 0
          mmWidth = 20743
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'Preaviso'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 89429
          mmTop = 1058
          mmWidth = 20902
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'Cesantia'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 112977
          mmTop = 1058
          mmWidth = 19579
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'Vacaciones'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 134938
          mmTop = 1058
          mmWidth = 22225
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          DataField = 'Regalia'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 158221
          mmTop = 1058
          mmWidth = 21431
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plPorDepartamento
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plPorDepartamento'
          mmHeight = 3704
          mmLeft = 180711
          mmTop = 1058
          mmWidth = 21431
          BandType = 5
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 265
          mmWidth = 202936
          BandType = 5
          GroupNo = 1
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkEnabled = False
          Caption = 'Totales por secci'#243'n:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 56621
          mmTop = 1058
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object spIngresosAcum: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomIngresosAcumulados;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FechaFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 260
    Top = 174
    object spIngresosAcumTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object spIngresosAcumTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object spIngresosAcumTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#0,0.00'
      Precision = 32
      Size = 2
    end
  end
  object dsIngresosAcum: TDataSource
    DataSet = spIngresosAcum
    Left = 282
    Top = 224
  end
  object plIngresoAcum: TppDBPipeline
    DataSource = dsIngresosAcum
    UserName = 'plIngresoAcum'
    Left = 133
    Top = 180
    object plIngresoAcumppField1: TppField
      FieldAlias = 'TipoTransaccionId'
      FieldName = 'TipoTransaccionId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plIngresoAcumppField2: TppField
      FieldAlias = 'TipoTransaccion'
      FieldName = 'TipoTransaccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plIngresoAcumppField3: TppField
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object rptDesigner: TppDesigner
    Caption = 'Prestaciones'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptPrestaciones
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 136
    Top = 104
  end
end
