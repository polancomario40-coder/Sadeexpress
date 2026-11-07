inherited CentralFacturacion: TCentralFacturacion
  Left = 585
  Top = 286
  Caption = 'Central Facturacion...'
  ClientHeight = 607
  ClientWidth = 1004
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 5
    Top = 2
    Width = 996
    Height = 597
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 593
    ClientRectLeft = 2
    ClientRectRight = 992
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Clientes'
      ImageIndex = 0
      DesignSize = (
        990
        571)
      object GroupBox1: TGroupBox
        Left = 0
        Top = 413
        Width = 990
        Height = 158
        Align = alBottom
        TabOrder = 5
        DesignSize = (
          990
          158)
        object Shape1: TShape
          Left = 353
          Top = 12
          Width = 69
          Height = 18
          Brush.Color = 14066004
          Pen.Color = 14066004
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 12
          Top = 12
          Width = 69
          Height = 18
          Brush.Color = 14066004
          Pen.Color = 14066004
          Shape = stRoundRect
        end
        object Label1: TLabel
          Left = 389
          Top = 92
          Width = 141
          Height = 23
          Caption = 'Por Distribuir :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 20
          Top = 14
          Width = 54
          Height = 13
          Caption = 'Ult. cargo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape
          Left = 86
          Top = 20
          Width = 244
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Label4: TLabel
          Left = 16
          Top = 39
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object Label16: TLabel
          Left = 16
          Top = 62
          Width = 21
          Height = 13
          Caption = 'Ref:'
        end
        object Label17: TLabel
          Left = 8
          Top = 97
          Width = 87
          Height = 23
          Caption = 'Balance :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 158
          Top = 39
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label19: TLabel
          Left = 158
          Top = 62
          Width = 28
          Height = 13
          Caption = 'Valor:'
        end
        object Label20: TLabel
          Left = 361
          Top = 14
          Width = 50
          Height = 13
          Caption = 'Ult. pago'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Shape11: TShape
          Left = 441
          Top = 20
          Width = 314
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Label21: TLabel
          Left = 357
          Top = 62
          Width = 21
          Height = 13
          Caption = 'Ref:'
        end
        object Label22: TLabel
          Left = 357
          Top = 39
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object Shape12: TShape
          Left = 340
          Top = 31
          Width = 3
          Height = 48
          Brush.Color = 14066004
          Pen.Style = psClear
        end
        object Label23: TLabel
          Left = 498
          Top = 40
          Width = 28
          Height = 13
          Caption = 'Valor:'
        end
        object Shape13: TShape
          Left = 6
          Top = 84
          Width = 747
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Shape14: TShape
          Left = 753
          Top = 22
          Width = 2
          Height = 59
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object dxDBEdit1: TdxDBEdit
          Left = 539
          Top = 90
          Width = 217
          Color = 16242350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14066004
          TabOrder = 0
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'PorDist'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit2: TdxDBEdit
          Left = 52
          Top = 35
          Width = 102
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 1
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'FechaUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit3: TdxDBEdit
          Left = 50
          Top = 58
          Width = 102
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 2
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'RefUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit4: TdxDBEdit
          Left = 104
          Top = 89
          Width = 217
          Color = 16242350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14066004
          TabOrder = 3
          TabStop = False
          Alignment = taRightJustify
          CharCase = ecUpperCase
          DataField = 'Balance'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 65
        end
        object dxDBEdit14: TdxDBEdit
          Left = 192
          Top = 58
          Width = 112
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 4
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'MtoUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit15: TdxDBEdit
          Left = 192
          Top = 35
          Width = 112
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 5
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'TipoUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit16: TdxDBEdit
          Left = 393
          Top = 35
          Width = 100
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 6
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'FechaUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit17: TdxDBEdit
          Left = 393
          Top = 58
          Width = 100
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 7
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'RefUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit18: TdxDBEdit
          Left = 532
          Top = 36
          Width = 98
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 8
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'MtoUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object cxButton2: TcxButton
          Left = 869
          Top = 89
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'eMail'
          TabOrder = 9
          OnClick = cxButton7Click
          LookAndFeel.NativeStyle = True
        end
        object cxButton5: TcxButton
          Left = 869
          Top = 56
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          TabOrder = 10
          OnClick = cxButton1Click
          LookAndFeel.NativeStyle = True
        end
        object cxButton23: TcxButton
          Left = 869
          Top = 22
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Mostrar Balance'
          TabOrder = 11
          OnClick = cxButton23Click
          LookAndFeel.NativeStyle = True
        end
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 96
        Width = 989
        Height = 314
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        PopupMenu = PopupMenu1
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsClientes
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'idCliente'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                end>
              SummaryItems.Separator = ', '
              SummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGridDBTableView2CellDblClick
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.IncSearch = True
          OptionsData.Editing = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView2Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Width = 88
          end
          object cxGridDBTableView2idCliente: TcxGridDBColumn
            DataBinding.FieldName = 'idCliente'
            Width = 45
          end
          object cxGridDBTableView2Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 350
          end
          object cxGridDBTableView2DBColumn1: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'Beeper'
          end
          object cxGridDBTableView2Contacto: TcxGridDBColumn
            DataBinding.FieldName = 'Contacto'
            Width = 185
          end
          object cxGridDBTableView2EMail: TcxGridDBColumn
            DataBinding.FieldName = 'EMail'
            Width = 163
          end
          object cxGridDBTableView2RNC_Cedula: TcxGridDBColumn
            DataBinding.FieldName = 'RNC_Cedula'
            Width = 121
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxButton3: TcxButton
        Left = 604
        Top = 49
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Crear Recibo'
        TabOrder = 1
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton4: TcxButton
        Left = 728
        Top = 49
        Width = 104
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'ND / CR'
        TabOrder = 2
        OnClick = cxButton4Click
        LookAndFeel.NativeStyle = True
      end
      object vercliente: TcxButton
        Left = 2
        Top = 49
        Width = 162
        Height = 36
        Caption = 'Facturar Nuevo Cliente'
        TabOrder = 3
        OnClick = verclienteClick
        LookAndFeel.NativeStyle = True
      end
      object estadocta: TcxButton
        Left = 358
        Top = 49
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Facturar'
        TabOrder = 4
        OnClick = estadoctaClick
        LookAndFeel.NativeStyle = True
      end
      object cxButton8: TcxButton
        Left = 270
        Top = 9
        Width = 123
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Buscar'
        TabOrder = 6
        OnClick = cxButton8Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton6: TcxButton
        Left = 481
        Top = 49
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Cliente'
        TabOrder = 7
        OnClick = cxButton6Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton25: TcxButton
        Left = 176
        Top = 49
        Width = 162
        Height = 36
        Caption = 'Receta Nuevo Cliente'
        TabOrder = 8
        OnClick = cxButton25Click
        LookAndFeel.NativeStyle = True
      end
      object buscar: TcxTextEdit
        Left = 5
        Top = 9
        Width = 263
        Height = 21
        TabOrder = 9
      end
      object cxButton26: TcxButton
        Left = 853
        Top = 49
        Width = 104
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Pedido'
        TabOrder = 10
        OnClick = cxButton26Click
        LookAndFeel.NativeStyle = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Historico de CXC'
      ImageIndex = 1
      DesignSize = (
        990
        571)
      object Label12: TLabel
        Left = 11
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Cliente'
        Visible = False
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 404
        Width = 990
        Height = 167
        Align = alBottom
        TabOrder = 0
        object Shape8: TShape
          Left = 353
          Top = 12
          Width = 69
          Height = 18
          Brush.Color = 14066004
          Pen.Color = 14066004
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 12
          Top = 12
          Width = 69
          Height = 18
          Brush.Color = 14066004
          Pen.Color = 14066004
          Shape = stRoundRect
        end
        object Label15: TLabel
          Left = 389
          Top = 92
          Width = 141
          Height = 23
          Caption = 'Por Distribuir :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 20
          Top = 14
          Width = 54
          Height = 13
          Caption = 'Ult. cargo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Shape6: TShape
          Left = 86
          Top = 20
          Width = 244
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Label5: TLabel
          Left = 16
          Top = 39
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object Label7: TLabel
          Left = 16
          Top = 62
          Width = 21
          Height = 13
          Caption = 'Ref:'
        end
        object Label3: TLabel
          Left = 8
          Top = 97
          Width = 87
          Height = 23
          Caption = 'Balance :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 158
          Top = 39
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label8: TLabel
          Left = 158
          Top = 62
          Width = 28
          Height = 13
          Caption = 'Valor:'
        end
        object Label10: TLabel
          Left = 361
          Top = 14
          Width = 50
          Height = 13
          Caption = 'Ult. pago'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Shape10: TShape
          Left = 441
          Top = 20
          Width = 314
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Label13: TLabel
          Left = 357
          Top = 62
          Width = 21
          Height = 13
          Caption = 'Ref:'
        end
        object Label11: TLabel
          Left = 357
          Top = 39
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object Shape9: TShape
          Left = 340
          Top = 31
          Width = 3
          Height = 48
          Brush.Color = 14066004
          Pen.Style = psClear
        end
        object Label14: TLabel
          Left = 498
          Top = 40
          Width = 28
          Height = 13
          Caption = 'Valor:'
        end
        object Shape7: TShape
          Left = 6
          Top = 84
          Width = 747
          Height = 3
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object Shape3: TShape
          Left = 753
          Top = 22
          Width = 2
          Height = 59
          Brush.Color = 14066004
          Pen.Color = 14066004
        end
        object dxDBEdit13: TdxDBEdit
          Left = 539
          Top = 90
          Width = 217
          Color = 16242350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14066004
          TabOrder = 0
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'PorDist'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit6: TdxDBEdit
          Left = 52
          Top = 35
          Width = 102
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 1
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'FechaUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit7: TdxDBEdit
          Left = 52
          Top = 58
          Width = 102
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 2
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'RefUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit9: TdxDBEdit
          Left = 104
          Top = 89
          Width = 217
          Color = 16242350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14066004
          TabOrder = 3
          TabStop = False
          Alignment = taRightJustify
          CharCase = ecUpperCase
          DataField = 'Balance'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 65
        end
        object dxDBEdit8: TdxDBEdit
          Left = 192
          Top = 58
          Width = 112
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 4
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'MtoUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit5: TdxDBEdit
          Left = 192
          Top = 35
          Width = 112
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 5
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'TipoUltCargo'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit10: TdxDBEdit
          Left = 393
          Top = 35
          Width = 100
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 6
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'FechaUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit11: TdxDBEdit
          Left = 393
          Top = 58
          Width = 100
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 7
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'RefUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
        object dxDBEdit12: TdxDBEdit
          Left = 532
          Top = 36
          Width = 98
          Color = 16242350
          Style.BorderColor = 14066004
          TabOrder = 8
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'MtoUltPago'
          DataSource = DS
          ReadOnly = True
          StyleController = StyleController
          StoredValues = 64
        end
      end
      object cxGrid1: TcxGrid
        Left = 6
        Top = 44
        Width = 985
        Height = 361
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = dsEstado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBColumn10
            end
            item
              Kind = skSum
              Column = cxGridDBColumn16
            end
            item
              Kind = skSum
              Column = cxGridDBColumn17
            end
            item
              Kind = skSum
              Column = cxGridDBColumn18
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 48
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Width = 96
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 87
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'Vencimiento'
            Width = 86
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Dias V.'
            DataBinding.FieldName = 'diasVencido'
            Width = 65
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Moneda'
            Width = 93
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Width = 91
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'Pagado'
            Width = 91
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            Width = 97
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxButton1: TcxButton
        Left = 722
        Top = 4
        Width = 105
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton7: TcxButton
        Left = 836
        Top = 4
        Width = 105
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'eMail'
        TabOrder = 3
        OnClick = cxButton7Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton22: TcxButton
        Left = 7
        Top = 4
        Width = 105
        Height = 36
        Caption = 'Mostrar'
        TabOrder = 4
        OnClick = cxButton22Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton13: TcxButton
        Left = 609
        Top = 4
        Width = 105
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Recibo'
        TabOrder = 5
        OnClick = cxButton13Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton24: TcxButton
        Left = 496
        Top = 4
        Width = 105
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Factura'
        TabOrder = 6
        OnClick = cxButton24Click
        LookAndFeel.NativeStyle = True
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Evaluaciones'
      ImageIndex = 2
      DesignSize = (
        990
        571)
      object cxPageControl2: TcxPageControl
        Left = -6
        Top = -26
        Width = 996
        Height = 597
        ActivePage = cxTabSheet5
        Anchors = [akLeft, akTop, akRight, akBottom]
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        TabOrder = 0
        ClientRectBottom = 593
        ClientRectLeft = 2
        ClientRectRight = 992
        ClientRectTop = 22
        object cxTabSheet4: TcxTabSheet
          Caption = 'Clientes'
          ImageIndex = 0
          DesignSize = (
            990
            571)
          object GroupBox2: TGroupBox
            Left = 0
            Top = 423
            Width = 990
            Height = 148
            Align = alBottom
            TabOrder = 7
            DesignSize = (
              990
              148)
            object Shape15: TShape
              Left = 353
              Top = 12
              Width = 69
              Height = 18
              Brush.Color = 14066004
              Pen.Color = 14066004
              Shape = stRoundRect
            end
            object Shape16: TShape
              Left = 12
              Top = 12
              Width = 69
              Height = 18
              Brush.Color = 14066004
              Pen.Color = 14066004
              Shape = stRoundRect
            end
            object Label24: TLabel
              Left = 389
              Top = 92
              Width = 141
              Height = 23
              Caption = 'Por Distribuir :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 20
              Top = 14
              Width = 54
              Height = 13
              Caption = 'Ult. cargo'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Shape17: TShape
              Left = 86
              Top = 20
              Width = 244
              Height = 3
              Brush.Color = 14066004
              Pen.Color = 14066004
            end
            object Label26: TLabel
              Left = 16
              Top = 39
              Width = 33
              Height = 13
              Caption = 'Fecha:'
            end
            object Label27: TLabel
              Left = 16
              Top = 62
              Width = 21
              Height = 13
              Caption = 'Ref:'
            end
            object Label28: TLabel
              Left = 8
              Top = 97
              Width = 87
              Height = 23
              Caption = 'Balance :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 158
              Top = 39
              Width = 24
              Height = 13
              Caption = 'Tipo:'
            end
            object Label30: TLabel
              Left = 158
              Top = 62
              Width = 28
              Height = 13
              Caption = 'Valor:'
            end
            object Label31: TLabel
              Left = 361
              Top = 14
              Width = 50
              Height = 13
              Caption = 'Ult. pago'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Shape18: TShape
              Left = 441
              Top = 20
              Width = 314
              Height = 3
              Brush.Color = 14066004
              Pen.Color = 14066004
            end
            object Label32: TLabel
              Left = 357
              Top = 62
              Width = 21
              Height = 13
              Caption = 'Ref:'
            end
            object Label33: TLabel
              Left = 357
              Top = 39
              Width = 33
              Height = 13
              Caption = 'Fecha:'
            end
            object Shape19: TShape
              Left = 340
              Top = 31
              Width = 3
              Height = 48
              Brush.Color = 14066004
              Pen.Style = psClear
            end
            object Label34: TLabel
              Left = 498
              Top = 40
              Width = 28
              Height = 13
              Caption = 'Valor:'
            end
            object Shape20: TShape
              Left = 6
              Top = 84
              Width = 747
              Height = 3
              Brush.Color = 14066004
              Pen.Color = 14066004
            end
            object Shape21: TShape
              Left = 753
              Top = 22
              Width = 2
              Height = 59
              Brush.Color = 14066004
              Pen.Color = 14066004
            end
            object dxDBEdit19: TdxDBEdit
              Left = 539
              Top = 90
              Width = 217
              Color = 16242350
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14066004
              TabOrder = 0
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'PorDist'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit20: TdxDBEdit
              Left = 52
              Top = 35
              Width = 102
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 1
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'FechaUltCargo'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit21: TdxDBEdit
              Left = 52
              Top = 58
              Width = 102
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 2
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'RefUltCargo'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit22: TdxDBEdit
              Left = 104
              Top = 89
              Width = 217
              Color = 16242350
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Style.BorderColor = 14066004
              TabOrder = 3
              TabStop = False
              Alignment = taRightJustify
              CharCase = ecUpperCase
              DataField = 'Balance'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 65
            end
            object dxDBEdit23: TdxDBEdit
              Left = 192
              Top = 58
              Width = 112
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 4
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'MtoUltCargo'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit24: TdxDBEdit
              Left = 192
              Top = 35
              Width = 112
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 5
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'TipoUltCargo'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit25: TdxDBEdit
              Left = 393
              Top = 35
              Width = 100
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 6
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'FechaUltPago'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit26: TdxDBEdit
              Left = 393
              Top = 58
              Width = 100
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 7
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'RefUltPago'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object dxDBEdit27: TdxDBEdit
              Left = 532
              Top = 36
              Width = 98
              Color = 16242350
              Style.BorderColor = 14066004
              TabOrder = 8
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'MtoUltPago'
              DataSource = DS
              ReadOnly = True
              StyleController = StyleController
              StoredValues = 64
            end
            object cxButton9: TcxButton
              Left = 849
              Top = 87
              Width = 105
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'eMail'
              TabOrder = 9
              OnClick = cxButton7Click
              LookAndFeel.NativeStyle = True
            end
            object cxButton10: TcxButton
              Left = 849
              Top = 55
              Width = 105
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Imprimir'
              TabOrder = 10
              OnClick = cxButton1Click
              LookAndFeel.NativeStyle = True
            end
          end
          object cxGrid2: TcxGrid
            Left = 1
            Top = 44
            Width = 989
            Height = 380
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
            PopupMenu = PopupMenu1
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              DataController.DataSource = dsClientes
              DataController.Filter.MaxValueListCount = 1000
              DataController.KeyFieldNames = 'idCliente'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems.Separator = ', '
                  SummaryItems = <
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end
                    item
                      Format = '###,###,##0.00'
                      Kind = skSum
                      Position = spFooter
                    end>
                end>
              NavigatorButtons.ConfirmDelete = False
              OnCellDblClick = cxGridDBTableView2CellDblClick
              Filtering.MaxDropDownCount = 12
              OptionsBehavior.IncSearch = True
              OptionsData.Editing = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              Preview.AutoHeight = False
              Preview.MaxLineCount = 2
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
                Width = 88
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'idCliente'
                Width = 45
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'Cliente'
                Width = 350
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'Contacto'
                Width = 185
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'EMail'
                Width = 163
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'RNC_Cedula'
                Width = 121
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxButton11: TcxButton
            Left = 759
            Top = 3
            Width = 105
            Height = 36
            Anchors = [akTop, akRight]
            Caption = 'Recibo'
            TabOrder = 1
            OnClick = cxButton3Click
            LookAndFeel.NativeStyle = True
          end
          object cxButton12: TcxButton
            Left = 882
            Top = 3
            Width = 104
            Height = 36
            Anchors = [akTop, akRight]
            Caption = 'ND / CR'
            TabOrder = 2
            OnClick = cxButton4Click
            LookAndFeel.NativeStyle = True
          end
          object cxButton14: TcxButton
            Left = 830
            Top = 444
            Width = 105
            Height = 36
            Caption = 'Mostrar Balance'
            TabOrder = 3
            OnClick = btnActualizarClick
            LookAndFeel.NativeStyle = True
          end
          object cxButton15: TcxButton
            Left = 330
            Top = 3
            Width = 162
            Height = 36
            Anchors = [akTop, akRight]
            Caption = 'Factuar Nuevo Cliente'
            TabOrder = 4
            OnClick = verclienteClick
            LookAndFeel.NativeStyle = True
          end
          object cxButton16: TcxButton
            Left = 512
            Top = 3
            Width = 105
            Height = 36
            Anchors = [akTop, akRight]
            Caption = 'Factura'
            TabOrder = 5
            OnClick = estadoctaClick
            LookAndFeel.NativeStyle = True
          end
          object cxButton17: TcxButton
            Left = 635
            Top = 3
            Width = 105
            Height = 36
            Anchors = [akTop, akRight]
            Caption = 'Imprimir Estado Cta'
            TabOrder = 6
            Visible = False
            OnClick = cxButton6Click
            LookAndFeel.NativeStyle = True
          end
          object cxButton18: TcxButton
            Left = 16
            Top = 3
            Width = 123
            Height = 33
            Caption = 'Mostrar Clientes'
            TabOrder = 8
            OnClick = cxButton13Click
            LookAndFeel.NativeStyle = True
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = 'Evaluaciones'
          ImageIndex = 1
          DesignSize = (
            990
            571)
          object cxButton19: TcxButton
            Left = 8
            Top = 8
            Width = 123
            Height = 33
            Caption = 'Mostrar'
            TabOrder = 0
            OnClick = cxButton19Click
            LookAndFeel.NativeStyle = True
          end
          object cxGrid4: TcxGrid
            Left = 6
            Top = 44
            Width = 985
            Height = 380
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            object cxGridDBTableView4: TcxGridDBTableView
              OnDblClick = cxGrid1DBTableView1DblClick
              DataController.DataSource = dsEvaluaciones
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.ImmediateEditor = False
              OptionsBehavior.IncSearch = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              object cxGridDBTableView4Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Width = 76
              end
              object cxGridDBTableView4Montura: TcxGridDBColumn
                DataBinding.FieldName = 'Montura'
                Width = 93
              end
              object cxGridDBTableView4ColorCristal: TcxGridDBColumn
                DataBinding.FieldName = 'ColorCristal'
                Width = 140
              end
              object cxGridDBTableView4Observaciones: TcxGridDBColumn
                DataBinding.FieldName = 'Observaciones'
                Width = 212
              end
              object cxGridDBTableView4Referencia: TcxGridDBColumn
                DataBinding.FieldName = 'Referencia'
                Width = 97
              end
              object cxGridDBTableView4NotaReferencia: TcxGridDBColumn
                DataBinding.FieldName = 'NotaReferencia'
                Width = 216
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView4
            end
          end
          object cxButton20: TcxButton
            Left = 668
            Top = 7
            Width = 105
            Height = 33
            Anchors = [akTop, akRight]
            Caption = 'Crear Evaluacion'
            TabOrder = 2
            OnClick = cxButton20Click
            LookAndFeel.NativeStyle = True
          end
          object cxButton21: TcxButton
            Left = 836
            Top = 7
            Width = 105
            Height = 33
            Anchors = [akTop, akRight]
            Caption = 'eMail'
            TabOrder = 3
            LookAndFeel.NativeStyle = True
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'cxTabSheet3'
          ImageIndex = 2
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Proforma a Facturar'
      ImageIndex = 3
      DesignSize = (
        990
        571)
      object Label47: TLabel
        Left = 727
        Top = 17
        Width = 44
        Height = 13
        Caption = 'Sucursal:'
      end
      object cxTabSheet8: TcxTabSheet
        Caption = 'Historico de CXC'
        ImageIndex = 1
        DesignSize = (
          990
          571)
        object Label35: TLabel
          Left = 11
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Visible = False
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 408
          Width = 990
          Height = 163
          Align = alBottom
          TabOrder = 0
          object Shape22: TShape
            Left = 353
            Top = 12
            Width = 69
            Height = 18
            Brush.Color = 14066004
            Pen.Color = 14066004
            Shape = stRoundRect
          end
          object Shape23: TShape
            Left = 12
            Top = 12
            Width = 69
            Height = 18
            Brush.Color = 14066004
            Pen.Color = 14066004
            Shape = stRoundRect
          end
          object Label36: TLabel
            Left = 389
            Top = 92
            Width = 141
            Height = 23
            Caption = 'Por Distribuir :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 20
            Top = 14
            Width = 54
            Height = 13
            Caption = 'Ult. cargo'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Shape24: TShape
            Left = 86
            Top = 20
            Width = 244
            Height = 3
            Brush.Color = 14066004
            Pen.Color = 14066004
          end
          object Label38: TLabel
            Left = 16
            Top = 39
            Width = 33
            Height = 13
            Caption = 'Fecha:'
          end
          object Label39: TLabel
            Left = 16
            Top = 62
            Width = 21
            Height = 13
            Caption = 'Ref:'
          end
          object Label40: TLabel
            Left = 8
            Top = 97
            Width = 87
            Height = 23
            Caption = 'Balance :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 158
            Top = 39
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object Label42: TLabel
            Left = 158
            Top = 62
            Width = 28
            Height = 13
            Caption = 'Valor:'
          end
          object Label43: TLabel
            Left = 361
            Top = 14
            Width = 50
            Height = 13
            Caption = 'Ult. pago'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Shape25: TShape
            Left = 441
            Top = 20
            Width = 314
            Height = 3
            Brush.Color = 14066004
            Pen.Color = 14066004
          end
          object Label44: TLabel
            Left = 357
            Top = 62
            Width = 21
            Height = 13
            Caption = 'Ref:'
          end
          object Label45: TLabel
            Left = 357
            Top = 39
            Width = 33
            Height = 13
            Caption = 'Fecha:'
          end
          object Shape26: TShape
            Left = 340
            Top = 31
            Width = 3
            Height = 48
            Brush.Color = 14066004
            Pen.Style = psClear
          end
          object Label46: TLabel
            Left = 498
            Top = 40
            Width = 28
            Height = 13
            Caption = 'Valor:'
          end
          object Shape27: TShape
            Left = 6
            Top = 84
            Width = 747
            Height = 3
            Brush.Color = 14066004
            Pen.Color = 14066004
          end
          object Shape28: TShape
            Left = 753
            Top = 22
            Width = 2
            Height = 59
            Brush.Color = 14066004
            Pen.Color = 14066004
          end
          object dxDBEdit28: TdxDBEdit
            Left = 539
            Top = 90
            Width = 217
            Color = 16242350
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14066004
            TabOrder = 0
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'PorDist'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit29: TdxDBEdit
            Left = 52
            Top = 35
            Width = 102
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 1
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'FechaUltCargo'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit30: TdxDBEdit
            Left = 52
            Top = 58
            Width = 102
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 2
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'RefUltCargo'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit31: TdxDBEdit
            Left = 104
            Top = 89
            Width = 217
            Color = 16242350
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14066004
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            CharCase = ecUpperCase
            DataField = 'Balance'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 65
          end
          object dxDBEdit32: TdxDBEdit
            Left = 192
            Top = 58
            Width = 112
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 4
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'MtoUltCargo'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit33: TdxDBEdit
            Left = 192
            Top = 35
            Width = 112
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 5
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'TipoUltCargo'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit34: TdxDBEdit
            Left = 393
            Top = 35
            Width = 100
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 6
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'FechaUltPago'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit35: TdxDBEdit
            Left = 393
            Top = 58
            Width = 100
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 7
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'RefUltPago'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
          object dxDBEdit36: TdxDBEdit
            Left = 532
            Top = 36
            Width = 98
            Color = 16242350
            Style.BorderColor = 14066004
            TabOrder = 8
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'MtoUltPago'
            DataSource = DS
            ReadOnly = True
            StyleController = StyleController
            StoredValues = 64
          end
        end
        object cxGrid5: TcxGrid
          Left = 6
          Top = 44
          Width = 985
          Height = 361
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          object cxGridDBTableView5: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            DataController.DataSource = dsEstado
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBColumn7
              end
              item
                Kind = skSum
                Column = cxGridDBColumn22
              end
              item
                Kind = skSum
                Column = cxGridDBColumn23
              end
              item
                Kind = skSum
                Column = cxGridDBColumn24
              end>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'Tipo'
              Width = 48
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'Referencia'
              Width = 96
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
              Width = 87
            end
            object cxGridDBColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'Vencimiento'
              Width = 86
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Dias V.'
              DataBinding.FieldName = 'diasVencido'
              Width = 65
            end
            object cxGridDBColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'Moneda'
              Width = 93
            end
            object cxGridDBColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'Valor'
              Width = 91
            end
            object cxGridDBColumn23: TcxGridDBColumn
              DataBinding.FieldName = 'Pagado'
              Width = 91
            end
            object cxGridDBColumn24: TcxGridDBColumn
              DataBinding.FieldName = 'Pendiente'
              Width = 97
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView5
          end
        end
        object cxButton27: TcxButton
          Left = 722
          Top = 4
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          TabOrder = 2
          OnClick = cxButton1Click
          LookAndFeel.NativeStyle = True
        end
        object cxButton28: TcxButton
          Left = 836
          Top = 4
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'eMail'
          TabOrder = 3
          OnClick = cxButton7Click
          LookAndFeel.NativeStyle = True
        end
        object cxButton29: TcxButton
          Left = 7
          Top = 4
          Width = 105
          Height = 36
          Caption = 'Mostrar'
          TabOrder = 4
          OnClick = btnActualizarClick
          LookAndFeel.NativeStyle = True
        end
        object cxButton30: TcxButton
          Left = 609
          Top = 4
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Recibo'
          TabOrder = 5
          OnClick = cxButton13Click
          LookAndFeel.NativeStyle = True
        end
        object cxButton31: TcxButton
          Left = 496
          Top = 4
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Factura'
          TabOrder = 6
          OnClick = cxButton24Click
          LookAndFeel.NativeStyle = True
        end
      end
      object cxButton32: TcxButton
        Left = 7
        Top = 11
        Width = 105
        Height = 36
        Caption = 'Mostrar'
        TabOrder = 2
        OnClick = btnActualizarClick
        LookAndFeel.NativeStyle = True
      end
      object luSucursal: TcxLookupComboBox
        Left = 779
        Top = 13
        Width = 194
        Height = 21
        Enabled = False
        Properties.AutoSelect = False
        Properties.HideSelection = False
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CentroCosto'
        Properties.ListColumns = <
          item
            FieldName = 'CentroCosto'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSucursal
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxGrid6: TcxGrid
        Left = 9
        Top = 58
        Width = 985
        Height = 463
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        object cxGridDBTableView6: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = dsProforma
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxGridDBColumn31
            end
            item
              Kind = skSum
              Column = cxGridDBColumn32
            end
            item
              Kind = skSum
              Column = cxGridDBColumn33
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object cxGridDBColumn35: TcxGridDBColumn
            Caption = 'idCliente'
            DataBinding.FieldName = 'idcliente'
            Width = 62
          end
          object cxGridDBColumn36: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'cliente'
            Width = 188
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Factura'
            DataBinding.FieldName = 'Referencia'
            Width = 104
          end
          object cxGridDBColumn27: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 95
          end
          object cxGridDBColumn30: TcxGridDBColumn
            DataBinding.FieldName = 'Moneda'
            Width = 101
          end
          object cxGridDBColumn31: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Width = 101
          end
          object cxGridDBColumn32: TcxGridDBColumn
            DataBinding.FieldName = 'Pagado'
            Width = 97
          end
          object cxGridDBColumn33: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            Width = 107
          end
          object cxGridDBColumn34: TcxGridDBColumn
            DataBinding.FieldName = 'NCF'
            Width = 128
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
      object cxButton33: TcxButton
        Left = 184
        Top = 10
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Crear Recibo'
        TabOrder = 4
        OnClick = cxButton33Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton34: TcxButton
        Left = 434
        Top = 10
        Width = 267
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Generar Factura con comprobante'
        TabOrder = 5
        OnClick = cxButton34Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton35: TcxButton
        Left = 298
        Top = 10
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Crear NC'
        TabOrder = 6
        OnClick = cxButton35Click
        LookAndFeel.NativeStyle = True
      end
    end
  end
  object Button1: TButton [1]
    Left = 846
    Top = 568
    Width = 133
    Height = 25
    Caption = 'Cuadre de Caja'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [2]
    Left = 706
    Top = 569
    Width = 133
    Height = 25
    Caption = 'Gastos Menores'
    TabOrder = 2
    OnClick = Button2Click
  end
  inherited DS: TwwDataSource
    DataSet = mCliente
    Left = 128
    Top = 218
  end
  object mCliente: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'idCliente'
        DataType = ftInteger
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Telefono'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Balance'
        DataType = ftCurrency
      end
      item
        Name = 'FechaUltCargo'
        DataType = ftDate
      end
      item
        Name = 'TipoUltCargo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RefUltCargo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MtoUltCargo'
        DataType = ftCurrency
      end
      item
        Name = 'FechaUltPago'
        DataType = ftDate
      end
      item
        Name = 'RefUltPago'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MtoUltPago'
        DataType = ftCurrency
      end
      item
        Name = 'PorDist'
        DataType = ftBCD
        Size = 4
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
    OnNewRecord = mClienteNewRecord
    Left = 54
    Top = 136
    object mClienteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mClienteidCliente: TIntegerField
      FieldName = 'idCliente'
      OnValidate = mClienteidClienteValidate
    end
    object mClienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mClienteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 14
    end
    object mClienteDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object mClienteBalance: TCurrencyField
      FieldName = 'Balance'
    end
    object mClienteFechaUltCargo: TDateField
      FieldName = 'FechaUltCargo'
    end
    object mClienteTipoUltCargo: TStringField
      FieldName = 'TipoUltCargo'
      Size = 10
    end
    object mClienteRefUltCargo: TStringField
      FieldName = 'RefUltCargo'
    end
    object mClienteMtoUltCargo: TCurrencyField
      FieldName = 'MtoUltCargo'
    end
    object mClienteFechaUltPago: TDateField
      FieldName = 'FechaUltPago'
    end
    object mClienteRefUltPago: TStringField
      FieldName = 'RefUltPago'
    end
    object mClienteMtoUltPago: TCurrencyField
      FieldName = 'MtoUltPago'
    end
    object mClientePorDist: TBCDField
      FieldName = 'PorDist'
      DisplayFormat = '#,0.00;(#,0.00)'
    end
  end
  object rsEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsEstadoAfterScroll
    CommandText = 'cxcEstadoCuentahistorico;1'
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
        Name = '@idcliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 60
    Top = 222
    object rsEstadoLinea: TIntegerField
      FieldName = 'Linea'
      ReadOnly = True
    end
    object rsEstadoTipo: TStringField
      FieldName = 'Tipo'
    end
    object rsEstadoidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object rsEstadoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsEstadoFecha: TDateTimeField
      FieldName = 'Fecha'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object rsEstadoValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###0.00'
      Precision = 19
      Size = 2
    end
    object rsEstadoPagado: TBCDField
      FieldName = 'Pagado'
      DisplayFormat = '###,###,###0.00'
      Precision = 19
      Size = 2
    end
    object rsEstadoPendiente: TBCDField
      FieldName = 'Pendiente'
      ReadOnly = True
      DisplayFormat = '###,###,###0.00'
      Precision = 20
      Size = 2
    end
    object rsEstadoMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsEstadoValorReal: TBCDField
      FieldName = 'ValorReal'
      Precision = 19
      Size = 2
    end
    object rsEstadoPagadoReal: TBCDField
      FieldName = 'PagadoReal'
      Precision = 19
      Size = 2
    end
    object rsEstadoidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsEstadoPendienteReal: TBCDField
      FieldName = 'PendienteReal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsEstadoVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsEstadoNCF: TStringField
      FieldName = 'NCF'
      Size = 19
    end
    object rsEstadoidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object rsEstadocliente: TStringField
      FieldName = 'cliente'
      Size = 100
    end
    object rsEstadodiasVencido: TIntegerField
      FieldName = 'diasVencido'
      ReadOnly = True
    end
  end
  object dsEstado: TDataSource
    DataSet = rsEstado
    Left = 50
    Top = 278
  end
  object plCliente: TppDBPipeline
    DataSource = DS
    UserName = 'plCliente'
    Left = 280
    Top = 132
    object plClienteppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object plClienteppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plClienteppField3: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object plClienteppField4: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 14
      DisplayWidth = 14
      Position = 3
    end
    object plClienteppField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object plClienteppField6: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object plClienteppField7: TppField
      FieldAlias = 'FechaUltCargo'
      FieldName = 'FechaUltCargo'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object plClienteppField8: TppField
      FieldAlias = 'TipoUltCargo'
      FieldName = 'TipoUltCargo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object plClienteppField9: TppField
      FieldAlias = 'RefUltCargo'
      FieldName = 'RefUltCargo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plClienteppField10: TppField
      FieldAlias = 'MtoUltCargo'
      FieldName = 'MtoUltCargo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object plClienteppField11: TppField
      FieldAlias = 'FechaUltPago'
      FieldName = 'FechaUltPago'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object plClienteppField12: TppField
      FieldAlias = 'RefUltPago'
      FieldName = 'RefUltPago'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plClienteppField13: TppField
      FieldAlias = 'MtoUltPago'
      FieldName = 'MtoUltPago'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object plClienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PorDist'
      FieldName = 'PorDist'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plEstado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 442
    Top = 134
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape2'
        Brush.Color = 16053492
        ParentHeight = True
        ParentWidth = True
        Pen.Color = clGray
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 198120
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Tipo'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3239
        mmLeft = 1323
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 65617
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'ValorReal'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 108744
        mmTop = 265
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'PagadoReal'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 135202
        mmTop = 265
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'PendienteReal'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Vencimiento'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 85990
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'NCF'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 34925
        mmTop = 265
        mmWidth = 30163
        BandType = 4
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plEstado
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 51858
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 16053492
          Pen.Color = clGray
          mmHeight = 5027
          mmLeft = 0
          mmTop = 46831
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 47625
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 13494
          mmTop = 47625
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 65617
          mmTop = 47625
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 108479
          mmTop = 47625
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Pagado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 135467
          mmTop = 47625
          mmWidth = 28575
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Pendiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165629
          mmTop = 47625
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 36513
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3969
          mmLeft = 32808
          mmTop = 36513
          mmWidth = 129911
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Direccion'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3175
          mmLeft = 15081
          mmTop = 41540
          mmWidth = 77258
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3175
          mmLeft = 92869
          mmTop = 41540
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = plCliente
          DisplayFormat = '"Estado al: " dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3175
          mmLeft = 128059
          mmTop = 41540
          mmWidth = 69321
          BandType = 3
          GroupNo = 0
        end
        object ppDBText22: TppDBText
          UserName = 'DBText22'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plEstado
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 18
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 7673
          mmLeft = 165629
          mmTop = 30692
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          HyperlinkEnabled = False
          AutoSize = False
          VarType = vtPageSetDesc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 157692
          mmTop = 22754
          mmWidth = 39158
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          HyperlinkEnabled = False
          AutoSize = False
          VarType = vtPrintDateTime
          DisplayFormat = '"Impreso el" dd/mm/yyyy @ hh:nn AM/PM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 129911
          mmTop = 18521
          mmWidth = 66940
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Estado de Cuenta '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 16
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6879
          mmLeft = 118798
          mmTop = 11113
          mmWidth = 78052
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 29633
          mmWidth = 196321
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'compania'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 18
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 7673
          mmLeft = 529
          mmTop = 529
          mmWidth = 140494
          BandType = 3
          GroupNo = 0
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          HyperlinkEnabled = False
          DataField = 'direccion'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 3969
          mmLeft = 794
          mmTop = 8731
          mmWidth = 114565
          BandType = 3
          GroupNo = 0
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          HyperlinkEnabled = False
          DataField = 'telefono'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 3704
          mmLeft = 794
          mmTop = 17463
          mmWidth = 51329
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          HyperlinkEnabled = False
          DataField = 'rnc'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 3440
          mmLeft = 794
          mmTop = 13229
          mmWidth = 51329
          BandType = 3
          GroupNo = 0
        end
        object ppDBText21: TppDBText
          UserName = 'DBText21'
          HyperlinkEnabled = False
          DataField = 'fax'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 3704
          mmLeft = 53446
          mmTop = 17727
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          HyperlinkEnabled = False
          DataField = 'idCliente'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3969
          mmLeft = 14817
          mmTop = 36513
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Vencimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 85725
          mmTop = 47625
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'NCF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 34925
          mmTop = 47625
          mmWidth = 30163
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 27252
        mmPrintPosition = 0
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = 16053492
          Pen.Color = clGray
          mmHeight = 5027
          mmLeft = 0
          mmTop = 529
          mmWidth = 197644
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'ValorReal'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 102394
          mmTop = 1323
          mmWidth = 28840
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'PagadoReal'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 135467
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'PendienteReal'
          DataPipeline = plEstado
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 165894
          mmTop = 1323
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 13229
          mmLeft = 6615
          mmTop = 11906
          mmWidth = 88900
          BandType = 5
          GroupNo = 0
        end
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 3704
          mmLeft = 8996
          mmTop = 10583
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ultimo cargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 8996
          mmTop = 10583
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'FechaUltCargo'
          DataPipeline = plCliente
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 28840
          mmTop = 15610
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9525
          mmTop = 15610
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          HyperlinkEnabled = False
          DataField = 'TipoUltCargo'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 68263
          mmTop = 15610
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 55563
          mmTop = 15610
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          HyperlinkEnabled = False
          DataField = 'RefUltCargo'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 28840
          mmTop = 20108
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9525
          mmTop = 20108
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          HyperlinkEnabled = False
          DataField = 'MtoUltCargo'
          DataPipeline = plCliente
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 68263
          mmTop = 20108
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 55563
          mmTop = 20108
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          mmHeight = 13229
          mmLeft = 104775
          mmTop = 11906
          mmWidth = 87842
          BandType = 5
          GroupNo = 0
        end
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 3704
          mmLeft = 107421
          mmTop = 10583
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ultimo pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 107421
          mmTop = 10583
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          HyperlinkEnabled = False
          DataField = 'FechaUltPago'
          DataPipeline = plCliente
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 15610
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 107950
          mmTop = 15610
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          HyperlinkEnabled = False
          DataField = 'RefUltPago'
          DataPipeline = plCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 20108
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 107950
          mmTop = 20108
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          HyperlinkEnabled = False
          DataField = 'MtoUltPago'
          DataPipeline = plCliente
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 167217
          mmTop = 20108
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 148696
          mmTop = 20108
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distrib :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 148696
          mmTop = 15610
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'PorDist'
          DataPipeline = plCliente
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plCliente'
          mmHeight = 3704
          mmLeft = 167482
          mmTop = 15610
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsDatosEstado: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxcDatosEstado;1'
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
        Name = '@idCli'
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
      end>
    Left = 286
    Top = 214
    object rsDatosEstadoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltCargo: TDateTimeField
      FieldName = 'FecUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltCargo: TStringField
      FieldName = 'RefUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoTipoUltCargo: TStringField
      FieldName = 'TipoUltCargo'
      ReadOnly = True
      Size = 10
    end
    object rsDatosEstadoMtoUltCargo: TBCDField
      FieldName = 'MtoUltCargo'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltPago: TDateTimeField
      FieldName = 'FecUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltPago: TStringField
      FieldName = 'RefUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoMtoUltPago: TBCDField
      FieldName = 'MtoUltPago'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoPorDist: TBCDField
      FieldName = 'PorDist'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
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
    Left = 378
    Top = 216
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object ClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object ClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object ClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
  end
  object StyleController: TdxEditStyleController
    BorderColor = 14065456
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 360
    Top = 134
  end
  object plEstado: TppDBPipeline
    DataSource = dsEstado
    UserName = 'plEstado'
    Left = 200
    Top = 134
  end
  object rsNotas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcNotasGestionCobrosCliente'
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
        Value = 0
      end>
    Left = 540
    Top = 124
    object rsNotasidNota: TGuidField
      FieldName = 'idNota'
      FixedChar = True
      Size = 38
    end
    object rsNotasFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsNotasFechaAgenda: TDateTimeField
      FieldName = 'FechaAgenda'
    end
    object rsNotasTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 16
    end
    object rsNotasNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsNotasidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsNotasUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsNotasAgendar: TBooleanField
      FieldName = 'Agendar'
    end
    object rsNotasCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object rsNotasCerradaPor: TStringField
      FieldName = 'CerradaPor'
      Size = 30
    end
    object rsNotasFechaCerrada: TDateTimeField
      FieldName = 'FechaCerrada'
    end
  end
  object dsNotas: TDataSource
    DataSet = rsNotas
    Left = 538
    Top = 172
  end
  object rsRPTAgenda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcNotasGestionCobrosRPT'
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
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
    Left = 381
    Top = 374
    object rsRPTAgendaidNota: TGuidField
      FieldName = 'idNota'
      FixedChar = True
      Size = 38
    end
    object rsRPTAgendaFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsRPTAgendaFechaAgenda: TDateTimeField
      FieldName = 'FechaAgenda'
    end
    object rsRPTAgendaTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 16
    end
    object rsRPTAgendaNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsRPTAgendaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsRPTAgendaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsRPTAgendaAgendar: TBooleanField
      FieldName = 'Agendar'
    end
    object rsRPTAgendaCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object rsRPTAgendaCerradaPor: TStringField
      FieldName = 'CerradaPor'
      Size = 30
    end
    object rsRPTAgendaFechaCerrada: TDateTimeField
      FieldName = 'FechaCerrada'
    end
    object rsRPTAgendaCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object rsRPTAgendaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsRPTAgendaTelefono: TStringField
      FieldName = 'Telefono'
    end
  end
  object dsAgendaRPT: TDataSource
    DataSet = rsRPTAgenda
    Left = 453
    Top = 372
  end
  object rsTiposNota: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT '#13#10'  * '#13#10'FROM '#13#10'  cxcTipoNota where Agendar = 1 '#13#10#13#10'union'#13 +
      #10#13#10'Select'#13#10'  NULL,'#13#10'  '#39' (Todos)'#39' ,'#13#10'  NULL,'#13#10' NULL'#13#10'ORDER BY '#13#10' ' +
      ' 2'
    Parameters = <>
    Left = 139
    Top = 410
    object rsTiposNotaIdTipoNota: TStringField
      FieldName = 'IdTipoNota'
      Size = 16
    end
    object rsTiposNotaTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 100
    end
    object rsTiposNotaInformacion: TBooleanField
      FieldName = 'Informacion'
    end
    object rsTiposNotaAgendar: TBooleanField
      FieldName = 'Agendar'
    end
  end
  object dsTiposNota: TDataSource
    DataSet = rsTiposNota
    Left = 215
    Top = 414
  end
  object dbp_agenda: TppDBPipeline
    DataSource = dsAgendaRPT
    UserName = 'plEstado1'
    Left = 382
    Top = 426
  end
  object rptAgenda: TppReport
    AutoStop = False
    DataPipeline = dbp_agenda
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 526
    Top = 404
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbp_agenda'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 44186
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Color = clGray
        mmHeight = 5027
        mmLeft = 265
        mmTop = 39158
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha/Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 39952
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 114829
        mmTop = 39952
        mmWidth = 64029
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cerrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180711
        mmTop = 39952
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'TipoNota'
        DataPipeline = dbp_agenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 30427
        mmWidth = 97896
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 157957
        mmTop = 22490
        mmWidth = 39158
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = '"Impreso el" dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 18256
        mmWidth = 66940
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Lista de agenda '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 119063
        mmTop = 10848
        mmWidth = 78052
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 29369
        mmWidth = 196321
        BandType = 0
      end
      object ppDBText41: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 265
        mmWidth = 140494
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 8467
        mmWidth = 114565
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 17198
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'rnc'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 12965
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 53711
        mmTop = 17463
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35190
        mmTop = 39952
        mmWidth = 77788
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'FechaAgenda'
        DataPipeline = dbp_agenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 529
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Nota'
        DataPipeline = dbp_agenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 3175
        mmLeft = 114829
        mmTop = 529
        mmWidth = 63765
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = dbp_agenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 3175
        mmLeft = 34925
        mmTop = 529
        mmWidth = 77788
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = dbp_agenda
        DataField = 'Cerrada'
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 4498
        mmLeft = 186267
        mmTop = 265
        mmWidth = 3704
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 287
    object VerCliente1: TMenuItem
      Caption = 'Ver Cliente'
      OnClick = verclienteClick
    end
    object EstadodeCuenta1: TMenuItem
      Caption = 'Estado de Cuenta'
      OnClick = estadoctaClick
    end
    object AntiguedaddeSaldos1: TMenuItem
      Caption = 'Antiguedad de Saldos'
      OnClick = antsaldosClick
    end
  end
  object rsClientes: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterScroll = rsClientesAfterScroll
    CommandText = 'svFindClientecentral'
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
        Name = '@mask'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 735
    Top = 139
    object rsClientesidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsClientesCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object rsClientesContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object rsClientesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsClientesEMail: TStringField
      FieldName = 'EMail'
      Size = 80
    end
    object rsClientesRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object rsClientesBeeper: TStringField
      FieldName = 'Beeper'
    end
  end
  object dsClientes: TDataSource
    DataSet = rsClientes
    Left = 815
    Top = 211
  end
  object rsEvaluaciones: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterScroll = rsClientesAfterScroll
    CommandText = 'OpticaEvaluacionlist'
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 695
    Top = 229
    object rsEvaluacionesidEvaluacion: TGuidField
      FieldName = 'idEvaluacion'
      FixedChar = True
      Size = 38
    end
    object rsEvaluacionesidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsEvaluacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEvaluacionesMontura: TStringField
      FieldName = 'Montura'
      Size = 100
    end
    object rsEvaluacionesColorCristal: TStringField
      FieldName = 'ColorCristal'
      Size = 100
    end
    object rsEvaluacionesObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object rsEvaluacionesReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object rsEvaluacionesNotaReferencia: TStringField
      FieldName = 'NotaReferencia'
      Size = 500
    end
  end
  object dsEvaluaciones: TDataSource
    DataSet = rsEvaluaciones
    Left = 697
    Top = 295
  end
  object dsProforma: TDataSource
    AutoEdit = False
    DataSet = rsProforma
    Left = 484
    Top = 306
  end
  object rsProforma: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsEstadoAfterScroll
    CommandText = 'cxcProforma'
    CommandTimeout = 3000
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
        Name = '@Sucursal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 424
    Top = 304
    object rsProformaLinea: TIntegerField
      FieldName = 'Linea'
      ReadOnly = True
    end
    object rsProformaTipo: TStringField
      FieldName = 'Tipo'
    end
    object rsProformaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object rsProformaidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object rsProformaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsProformaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsProformaVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsProformadiasVencido: TIntegerField
      FieldName = 'diasVencido'
      ReadOnly = True
    end
    object rsProformaValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 19
    end
    object rsProformaValorReal: TBCDField
      FieldName = 'ValorReal'
      Precision = 19
      Size = 2
    end
    object rsProformaPagado: TBCDField
      FieldName = 'Pagado'
      ReadOnly = True
      Precision = 19
    end
    object rsProformaPagadoReal: TBCDField
      FieldName = 'PagadoReal'
      Precision = 19
      Size = 2
    end
    object rsProformaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsProformaPendiente: TBCDField
      FieldName = 'Pendiente'
      ReadOnly = True
      Precision = 19
    end
    object rsProformaPendienteReal: TBCDField
      FieldName = 'PendienteReal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsProformaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsProformaNCF: TStringField
      FieldName = 'NCF'
      Size = 19
    end
    object rsProformacliente: TStringField
      DisplayWidth = 100
      FieldName = 'cliente'
      Size = 100
    end
  end
  object rsSucursal: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select idCentroCosto,CentroCosto from CentroCosto where Activo=1'
    Parameters = <>
    Left = 536
    Top = 324
    object rsSucursalidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsSucursalCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object dsSucursal: TwwDataSource
    AutoEdit = False
    DataSet = rsSucursal
    OnUpdateData = DSUpdateData
    Left = 597
    Top = 339
  end
  object rsFacturas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'rsFactura;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 782
    Top = 292
    object rsFacturasidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsFacturasFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rsFacturasCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsFacturasFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
    object rsFacturasTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 16
    end
    object rsFacturasidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsFacturasTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 50
    end
  end
  object dsFacturas: TDataSource
    DataSet = rsFacturas
    Left = 819
    Top = 299
  end
  object cmdProforma: TADOCommand
    CommandText = 'cxcUpdateProforma'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@NCF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
        Value = Null
      end
      item
        Name = '@FecvencimientoNCF'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 873
    Top = 322
  end
end
