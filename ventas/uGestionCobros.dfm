inherited GestionCobros: TGestionCobros
  Left = 215
  Top = 131
  Caption = 'Gestion de Cobros...'
  ClientHeight = 607
  ClientWidth = 986
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 5
    Top = 5
    Width = 978
    Height = 598
    ActivePage = cxTabSheet3
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 594
    ClientRectLeft = 2
    ClientRectRight = 974
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Clientes / Notas'
      ImageIndex = 0
      DesignSize = (
        972
        572)
      object cxGrid2: TcxGrid
        Left = 0
        Top = 398
        Width = 854
        Height = 174
        Align = alCustom
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = dsNotas
          DataController.Summary.DefaultGroupSummaryItems = <>
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
              Kind = skCount
              Column = cxGridDBColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'TipoNota'
            Width = 145
          end
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            Width = 350
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'FechaRegistro'
            Width = 104
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'FechaCerrada'
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'FechaAgenda'
            Width = 99
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Agendar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 94
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Usuario'
            Width = 91
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 43
        Width = 971
        Height = 354
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsClientesDeuda
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
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBTableView2DBColumn1
            end
            item
              Format = '0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBTableView2DBColumn2
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBTableView2DBColumn1
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1AMas90
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1A90
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1A60
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1A30
            end
            item
              Kind = skSum
              Column = cxGridDBTableView2DBColumn2
            end>
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
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 100
            Properties.ReadOnly = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 131
          end
          object cxGrid1DBTableView1A30: TcxGridDBColumn
            Caption = '30 dias'
            DataBinding.FieldName = 'De1a30'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGrid1DBTableView1A60: TcxGridDBColumn
            Caption = '45 dias'
            DataBinding.FieldName = 'De31a45'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGrid1DBTableView1A90: TcxGridDBColumn
            Caption = '60 dias'
            DataBinding.FieldName = 'De46a60'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGrid1DBTableView1AMas90: TcxGridDBColumn
            Caption = '90 dias'
            DataBinding.FieldName = 'De61a90'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGridDBTableView2DBColumn1: TcxGridDBColumn
            Caption = '91 dias+'
            DataBinding.FieldName = 'De91oMas'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGridDBTableView2DBColumn2: TcxGridDBColumn
            Caption = 'Balance Total'
            DataBinding.FieldName = 'BalanceTotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
            Properties.Nullable = False
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Options.Sorting = False
            Width = 90
          end
          object cxGridDBTableView2DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            Options.Filtering = False
            Options.Sorting = False
            Width = 127
          end
          object cxGridDBTableView2DBColumn4: TcxGridDBColumn
            Caption = 'Fecha Age.'
            DataBinding.FieldName = 'FechaAgenda'
            Options.Filtering = False
            Options.Sorting = False
            Width = 80
          end
          object cxGridDBTableView2DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Agendar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Options.Sorting = False
            Width = 60
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxButton3: TcxButton
        Left = 741
        Top = 3
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Recibo'
        TabOrder = 2
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton4: TcxButton
        Left = 864
        Top = 3
        Width = 104
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'ND / CR'
        TabOrder = 3
        OnClick = cxButton4Click
        LookAndFeel.NativeStyle = True
      end
      object btnActualizar: TcxButton
        Left = 10
        Top = 4
        Width = 105
        Height = 36
        Caption = 'Mostrar Clientes'
        TabOrder = 4
        OnClick = btnActualizarClick
        LookAndFeel.NativeStyle = True
      end
      object cxButton8: TcxButton
        Left = 863
        Top = 410
        Width = 105
        Height = 36
        Anchors = [akRight, akBottom]
        Caption = 'Crear Nota'
        TabOrder = 5
        OnClick = cxButton8Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton9: TcxButton
        Left = 864
        Top = 456
        Width = 105
        Height = 36
        Anchors = [akRight, akBottom]
        Caption = 'Cerrar Nota'
        TabOrder = 6
        OnClick = cxButton9Click
        LookAndFeel.NativeStyle = True
      end
      object vercliente: TcxButton
        Left = 369
        Top = 3
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Ver Cliente'
        TabOrder = 7
        OnClick = verclienteClick
        LookAndFeel.NativeStyle = True
      end
      object estadocta: TcxButton
        Left = 494
        Top = 3
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Estado Cta'
        TabOrder = 8
        OnClick = estadoctaClick
        LookAndFeel.NativeStyle = True
      end
      object antsaldos: TcxButton
        Left = 619
        Top = 3
        Width = 105
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Ant de Saldos'
        TabOrder = 9
        OnClick = antsaldosClick
        LookAndFeel.NativeStyle = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Documentos Pendientes'
      ImageIndex = 1
      DesignSize = (
        972
        572)
      object Label12: TLabel
        Left = 11
        Top = 18
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 46
        Width = 972
        Height = 380
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = dsEstado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBTableView1DBColumn2
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1DBColumn8
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1DBColumn9
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1DBColumn10
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
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 48
          end
          object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Width = 96
          end
          object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 87
          end
          object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Vencimiento'
            Width = 86
          end
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Dias V.'
            DataBinding.FieldName = 'diasVencido'
            Width = 65
          end
          object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Moneda'
            Width = 93
          end
          object cxGrid1DBTableView1DBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Width = 91
          end
          object cxGrid1DBTableView1DBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Pagado'
            Width = 91
          end
          object cxGrid1DBTableView1DBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            Width = 97
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 426
        Width = 972
        Height = 146
        Align = alBottom
        TabOrder = 1
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
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 57
        Top = 14
        Width = 357
        Height = 21
        DataBinding.DataField = 'Cliente'
        DataBinding.DataSource = dsClientesDeuda
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxButton11: TcxButton
        Left = 870
        Top = 7
        Width = 91
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'eMail'
        TabOrder = 3
        OnClick = cxButton11Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton12: TcxButton
        Left = 758
        Top = 7
        Width = 91
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 4
        OnClick = cxButton12Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton13: TcxButton
        Left = 420
        Top = 6
        Width = 123
        Height = 33
        Caption = 'Mostrar Documentos'
        TabOrder = 5
        OnClick = cxButton13Click
        LookAndFeel.NativeStyle = True
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Reporte agenda'
      ImageIndex = 2
      DesignSize = (
        972
        572)
      object Label1: TLabel
        Left = 278
        Top = 19
        Width = 34
        Height = 13
        Caption = 'Desde:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 456
        Top = 19
        Width = 32
        Height = 13
        Caption = 'Hasta:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 10
        Top = 18
        Width = 24
        Height = 13
        Caption = 'Tipo:'
        Transparent = True
      end
      object cxButton1: TcxButton
        Left = 634
        Top = 8
        Width = 111
        Height = 33
        Caption = 'Mostrar Agenda'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object cxGrid4: TcxGrid
        Left = 5
        Top = 48
        Width = 963
        Height = 517
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = dsAgendaRPT
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'idNota'
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
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.IncSearch = True
          OptionsData.Editing = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView3FechaAgenda: TcxGridDBColumn
            Caption = 'Fecha/Hora'
            DataBinding.FieldName = 'FechaAgenda'
            Width = 123
          end
          object cxGridDBTableView3TipoNota: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TipoNota'
            Width = 110
          end
          object cxGridDBTableView3Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 235
          end
          object cxGridDBTableView3Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Width = 106
          end
          object cxGridDBTableView3Nota: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            Width = 330
          end
          object cxGridDBTableView3Cerrada: TcxGridDBColumn
            DataBinding.FieldName = 'Cerrada'
            Width = 63
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object luTipo: TcxLookupComboBox
        Left = 48
        Top = 14
        Width = 205
        Height = 21
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'IdTipoNota'
        Properties.ListColumns = <
          item
            FieldName = 'TipoNota'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTiposNota
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxButton2: TcxButton
        Left = 757
        Top = 8
        Width = 102
        Height = 33
        Caption = 'Imprimir'
        TabOrder = 3
        OnClick = cxButton2Click
        LookAndFeel.NativeStyle = True
      end
      object deDesde: TcxDateEdit
        Left = 316
        Top = 14
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object deHasta: TcxDateEdit
        Left = 496
        Top = 14
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxButton7: TcxButton
        Left = 862
        Top = 8
        Width = 105
        Height = 34
        Anchors = [akTop, akRight]
        Caption = 'Cerrar Agenda'
        TabOrder = 6
        OnClick = cxButton7Click
        LookAndFeel.NativeStyle = True
      end
    end
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
    CommandText = 'cxcEstadoCuentaCobros;1'
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
        DataType = ftInteger
        Precision = 10
        Value = 0
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
  object dsClientesDeuda: TDataSource
    DataSet = rsClientesDeuda
    Left = 620
    Top = 186
  end
  object rsClientesDeuda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsClientesDeudaAfterScroll
    CommandText = 'cxcAgingResumido;1'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 623
    Top = 138
    object rsClientesDeudaidAgingCXC: TGuidField
      FieldName = 'idAgingCXC'
      FixedChar = True
      Size = 38
    end
    object rsClientesDeudaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsClientesDeudaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsClientesDeudaCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object rsClientesDeudaDe1a30: TBCDField
      FieldName = 'De1a30'
      Precision = 19
      Size = 2
    end
    object rsClientesDeudaDe31a45: TBCDField
      FieldName = 'De31a45'
      Precision = 19
      Size = 2
    end
    object rsClientesDeudaDe46a60: TBCDField
      FieldName = 'De46a60'
      Precision = 19
      Size = 2
    end
    object rsClientesDeudaDe61a90: TBCDField
      FieldName = 'De61a90'
      Precision = 19
      Size = 2
    end
    object rsClientesDeudaDe91oMas: TBCDField
      FieldName = 'De91oMas'
      Precision = 19
      Size = 2
    end
    object rsClientesDeudaBalanceTotal: TBCDField
      FieldName = 'BalanceTotal'
      ReadOnly = True
      Precision = 23
      Size = 2
    end
    object rsClientesDeudaidNota: TGuidField
      FieldName = 'idNota'
      FixedChar = True
      Size = 38
    end
    object rsClientesDeudaNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsClientesDeudaFechaAgenda: TDateTimeField
      FieldName = 'FechaAgenda'
    end
    object rsClientesDeudaAgendar: TBooleanField
      FieldName = 'Agendar'
      ReadOnly = True
    end
    object rsClientesDeudaHoyNoAgendado: TIntegerField
      FieldName = 'HoyNoAgendado'
      ReadOnly = True
    end
    object rsClientesDeudaAgendadoOtroDia: TIntegerField
      FieldName = 'AgendadoOtroDia'
      ReadOnly = True
    end
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
    Left = 429
    Top = 446
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
    Left = 505
    Top = 448
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
    Left = 426
    Top = 516
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
    Left = 506
    Top = 504
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
end
