inherited CentralEncuesta: TCentralEncuesta
  Left = 268
  Top = 47
  Caption = 'CRM'
  ClientHeight = 607
  ClientWidth = 976
  Color = 15922418
  Font.Name = 'Tahoma'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 9
    Top = 10
    Width = 968
    Height = 593
    ActivePage = cxTabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 589
    ClientRectLeft = 2
    ClientRectRight = 964
    ClientRectTop = 22
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cliente con saldo realizado'
      ImageIndex = 2
      DesignSize = (
        962
        567)
      object Label3: TLabel
        Left = 395
        Top = 17
        Width = 34
        Height = 13
        Caption = 'Desde:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 581
        Top = 17
        Width = 31
        Height = 13
        Caption = 'hasta:'
        Transparent = True
      end
      object cxGrid1: TcxGrid
        Left = 13
        Top = 45
        Width = 944
        Height = 179
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.DataSource = dsSaldo
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
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
          OnCellClick = cxGridDBTableView4CellClick
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.IncSearch = True
          OptionsData.Editing = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView4Registro: TcxGridDBColumn
            DataBinding.FieldName = 'Registro'
            Width = 56
          end
          object cxGridDBTableView4Numero: TcxGridDBColumn
            DataBinding.FieldName = 'Numero'
            Width = 58
          end
          object cxGridDBTableView4fecha: TcxGridDBColumn
            DataBinding.FieldName = 'fecha'
            Width = 60
          end
          object cxGridDBTableView4idCliente: TcxGridDBColumn
            DataBinding.FieldName = 'idCliente'
            Width = 64
          end
          object cxGridDBTableView4Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 129
          end
          object cxGridDBTableView4Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Width = 93
          end
          object cxGridDBTableView4Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            Width = 233
          end
          object cxGridDBTableView4Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Width = 83
          end
          object cxGridDBTableView4usuario: TcxGridDBColumn
            DataBinding.FieldName = 'usuario'
            Width = 90
          end
          object cxGridDBTableView4Sucursal: TcxGridDBColumn
            DataBinding.FieldName = 'Sucursal'
            Width = 95
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object Button1: TButton
        Left = 770
        Top = 7
        Width = 115
        Height = 33
        Caption = 'Mostrar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object deDesde1: TcxDateEdit
        Left = 434
        Top = 13
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object dehasta2: TcxDateEdit
        Left = 614
        Top = 13
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxGrid5: TcxGrid
        Left = 14
        Top = 420
        Width = 943
        Height = 145
        Anchors = [akLeft, akRight]
        TabOrder = 4
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView5: TcxGridDBTableView
          DataController.DataSource = dsEncuesta
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'idPreguntas'
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
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Enabled = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Enabled = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Enabled = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Hint = 'Eliminar'
          NavigatorButtons.Edit.Hint = 'Editar'
          NavigatorButtons.Post.Hint = 'Guardar'
          NavigatorButtons.Post.ImageIndex = 5
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.IncSearch = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.Navigator = True
          OptionsView.NavigatorOffset = 5
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView5idPreguntas: TcxGridDBColumn
            DataBinding.FieldName = 'idPreguntas'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idPreguntas'
            Properties.ListColumns = <
              item
                FieldName = 'Preguntas'
              end>
            Properties.ListSource = dslistpreguntas
            Options.Editing = False
            Options.Filtering = False
            Width = 505
          end
          object cxGridDBTableView5idRepuestas: TcxGridDBColumn
            DataBinding.FieldName = 'idRepuestas'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idRespuestas'
            Properties.ListColumns = <
              item
                FieldName = 'Respuestas'
              end>
            Properties.ListSource = dsListRespuestas
            Options.Editing = False
            Options.Filtering = False
            Width = 263
          end
          object cxGridDBTableView5Nota: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            Options.Filtering = False
            Width = 176
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
      object TipoEncuesta: TcxLookupComboBox
        Left = 13
        Top = 15
        Width = 361
        Height = 21
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idEncuesta'
        Properties.ListColumns = <
          item
            FieldName = 'Encuesta'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipoEncuesta
        Properties.OnValidate = TipoEncuestaPropertiesValidate
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxGrid2: TcxGrid
        Left = 594
        Top = 228
        Width = 363
        Height = 164
        Anchors = [akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsRespuestas
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Respuestas'
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
          OnCellDblClick = cxGridDBTableView1CellDblClick
          Filtering.MaxDropDownCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView1Respuestas: TcxGridDBColumn
            DataBinding.FieldName = 'Respuestas'
            Options.Filtering = False
            Width = 260
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Cual'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.GlyphCount = 100
            Properties.NullStyle = nssUnchecked
            Visible = False
            Options.Filtering = False
            Width = 55
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 13
        Top = 229
        Width = 570
        Height = 163
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = dsPreguntas
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Preguntas'
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView2Preguntas: TcxGridDBColumn
            DataBinding.FieldName = 'Preguntas'
            Options.Filtering = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Reporte Encuesta'
      ImageIndex = 2
      DesignSize = (
        962
        567)
      object Label1: TLabel
        Left = 362
        Top = 19
        Width = 34
        Height = 13
        Caption = 'Desde:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 540
        Top = 19
        Width = 32
        Height = 13
        Caption = 'Hasta:'
        Transparent = True
      end
      object cxButton1: TcxButton
        Left = 718
        Top = 8
        Width = 111
        Height = 33
        Caption = 'Mostrar'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton2: TcxButton
        Left = 841
        Top = 8
        Width = 102
        Height = 33
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = cxButton2Click
        LookAndFeel.NativeStyle = True
      end
      object deDesde: TcxDateEdit
        Left = 400
        Top = 14
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object deHasta: TcxDateEdit
        Left = 580
        Top = 14
        Width = 121
        Height = 21
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object luTipo: TcxLookupComboBox
        Left = 5
        Top = 15
        Width = 324
        Height = 21
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idEncuesta'
        Properties.ListColumns = <
          item
            FieldName = 'Encuesta'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipoEncuesta
        Properties.OnValidate = TipoEncuestaPropertiesValidate
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxGrid4: TcxGrid
        Left = 6
        Top = 47
        Width = 944
        Height = 620
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = dsAgendaRPT
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'idcliente'
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
              Kind = skCount
              FieldName = 'Respuestas'
              Column = cxGridDBTableView3Respuestas
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridDBTableView3Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 159
          end
          object cxGridDBTableView3preguntas: TcxGridDBColumn
            DataBinding.FieldName = 'preguntas'
            Visible = False
            GroupIndex = 0
            Width = 250
          end
          object cxGridDBTableView3Respuestas: TcxGridDBColumn
            DataBinding.FieldName = 'Respuestas'
            Width = 247
          end
          object cxGridDBTableView3Nota: TcxGridDBColumn
            DataBinding.FieldName = 'Nota'
            Width = 250
          end
          object cxGridDBTableView3DBColumn1: TcxGridDBColumn
            Caption = 'Sucursal'
            DataBinding.FieldName = 'idSucursal'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsSaldo
    Left = 822
    Top = 108
  end
  object Report: TppReport
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
    Left = 558
    Top = 142
    Version = '15.02'
    mmColumnWidth = 0
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
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
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
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
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
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
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
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
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          DisplayFormat = '"Estado al: " dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 18
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
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
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
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
  object StyleController: TdxEditStyleController
    BorderColor = 14065456
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 358
    Top = 134
  end
  object dsAgendaRPT: TDataSource
    DataSet = rsRPTAgenda
    Left = 373
    Top = 318
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
    Left = 47
    Top = 434
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
    Left = 43
    Top = 484
  end
  object dbp_agenda: TppDBPipeline
    DataSource = dsAgendaRPT
    UserName = 'plEstado1'
    Left = 556
    Top = 196
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
    Left = 560
    Top = 104
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
      mmHeight = 30692
      mmPrintPosition = 0
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
        LayerName = Foreground
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
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ENCUESTA'
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
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 29369
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
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
        LayerName = Foreground
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
        LayerName = Foreground
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
        LayerName = Foreground
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
        LayerName = Foreground
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
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Encuesta'
        DataPipeline = dbp_agenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp_agenda'
        mmHeight = 6085
        mmLeft = 794
        mmTop = 22225
        mmWidth = 135996
        BandType = 0
        LayerName = Foreground
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
        DataField = 'Fecha'
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
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Respuestas'
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
        LayerName = Foreground
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
        LayerName = Foreground
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
    object ppGroup2: TppGroup
      BreakName = 'preguntas'
      DataPipeline = dbp_agenda
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbp_agenda'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppDBText40: TppDBText
          UserName = 'DBText22'
          HyperlinkEnabled = False
          AutoSize = True
          DataField = 'preguntas'
          DataPipeline = dbp_agenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 12
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          WordWrap = True
          DataPipelineName = 'dbp_agenda'
          mmHeight = 4763
          mmLeft = 265
          mmTop = 1060
          mmWidth = 178594
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape9: TppShape
          UserName = 'Shape1'
          Brush.Color = 16053492
          Pen.Color = clGray
          mmHeight = 5027
          mmLeft = 265
          mmTop = 6336
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
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
          mmTop = 7130
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel24: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Respuestas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114829
          mmTop = 7130
          mmWidth = 64029
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
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
          mmTop = 7130
          mmWidth = 77788
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'Respuestas'
          DataPipeline = dbp_agenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbp_agenda'
          mmHeight = 4498
          mmLeft = 74613
          mmTop = 1852
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de Encuestado para esta pregunta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1588
          mmTop = 1852
          mmWidth = 71967
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 10053
          mmWidth = 196321
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Respuestas'
      DataPipeline = dbp_agenda
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbp_agenda'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Respuestas'
          DataPipeline = dbp_agenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbp_agenda'
          mmHeight = 4498
          mmLeft = 154782
          mmTop = 1588
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total de Respuestas :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 114829
          mmTop = 1588
          mmWidth = 38894
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 372
    Top = 191
    object VerCliente1: TMenuItem
      Caption = 'Ver Cliente'
    end
    object EstadodeCuenta1: TMenuItem
      Caption = 'Estado de Cuenta'
    end
    object AntiguedaddeSaldos1: TMenuItem
      Caption = 'Antiguedad de Saldos'
    end
  end
  object dsSaldo: TDataSource
    DataSet = rsSaldo
    Left = 752
    Top = 102
  end
  object rsSaldo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RSVentasSaldadas;1'
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
    Left = 693
    Top = 100
    object rsSaldoRegistro: TStringField
      FieldName = 'Registro'
      ReadOnly = True
      Size = 7
    end
    object rsSaldoNumero: TStringField
      FieldName = 'Numero'
      ReadOnly = True
      Size = 16
    end
    object rsSaldofecha: TDateTimeField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object rsSaldoCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 60
    end
    object rsSaldoTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
    end
    object rsSaldoProducto: TStringField
      FieldName = 'Producto'
      ReadOnly = True
      Size = 120
    end
    object rsSaldoValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsSaldousuario: TStringField
      FieldName = 'usuario'
      ReadOnly = True
      Size = 100
    end
    object rsSaldoSucursal: TStringField
      FieldName = 'Sucursal'
      ReadOnly = True
      Size = 16
    end
    object rsSaldoidCliente: TIntegerField
      FieldName = 'idCliente'
      ReadOnly = True
    end
  end
  object rsEncuesta: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsEncuestaNewRecord
    CommandText = 'EncuestasRS '
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
      end
      item
        Name = '@idEncuesta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 208
    Top = 438
    object rsEncuestaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsEncuestaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEncuestaNota: TWideStringField
      FieldName = 'Nota'
      FixedChar = True
      Size = 1000
    end
    object rsEncuestaidEncuesta: TStringField
      FieldName = 'idEncuesta'
      Size = 16
    end
    object rsEncuestaidPreguntas: TStringField
      FieldName = 'idPreguntas'
      Size = 16
    end
    object rsEncuestaidRepuestas: TStringField
      FieldName = 'idRepuestas'
      Size = 16
    end
    object rsEncuestaFechaEncuesta: TDateTimeField
      FieldName = 'FechaEncuesta'
    end
    object rsEncuestaidSucursal: TStringField
      FieldName = 'idSucursal'
      Size = 16
    end
  end
  object dsEncuesta: TDataSource
    DataSet = rsEncuesta
    Left = 206
    Top = 484
  end
  object rsTipoEncuesta: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'SELECT '#13#10'  * '#13#10'FROM '#13#10'  EncuestaTipo'#13#10
    Parameters = <>
    Left = 121
    Top = 436
    object rsTipoEncuestaidEncuesta: TStringField
      FieldName = 'idEncuesta'
      Size = 16
    end
    object rsTipoEncuestaEncuesta: TStringField
      FieldName = 'Encuesta'
      Size = 500
    end
  end
  object dsTipoEncuesta: TDataSource
    DataSet = rsTipoEncuesta
    Left = 119
    Top = 484
  end
  object dsPreguntas: TDataSource
    DataSet = rsPreguntas
    Left = 295
    Top = 488
  end
  object dsRespuestas: TDataSource
    DataSet = rsRespuestas
    Left = 363
    Top = 490
  end
  object rsRespuestas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select * from EncuestaRespuestas where idPreguntas = :idPregunta' +
      's'#13#10'order by idRespuestas'
    DataSource = dsPreguntas
    IndexFieldNames = 'IdPreguntas'
    MasterFields = 'idPreguntas'
    Parameters = <
      item
        Name = 'idPreguntas'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '1.1'
      end>
    Left = 366
    Top = 442
    object rsRespuestasRespuestas: TStringField
      DisplayWidth = 1000
      FieldName = 'Respuestas'
      Size = 1000
    end
    object rsRespuestasidRespuestas: TStringField
      DisplayWidth = 16
      FieldName = 'idRespuestas'
      Visible = False
      Size = 16
    end
    object rsRespuestasidPreguntas: TStringField
      FieldName = 'idPreguntas'
      Visible = False
      Size = 16
    end
  end
  object rsPreguntas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'EncuestaPreguntaslist'
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
        Name = '@idEncuesta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 294
    Top = 446
    object rsPreguntasPreguntas: TStringField
      DisplayWidth = 1000
      FieldName = 'Preguntas'
      Size = 1000
    end
    object rsPreguntasidPreguntas: TStringField
      DisplayWidth = 16
      FieldName = 'idPreguntas'
      Visible = False
      Size = 16
    end
    object rsPreguntasidEncuesta: TStringField
      FieldName = 'idEncuesta'
      Visible = False
      Size = 16
    end
  end
  object listpreguntas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from EncuestaPreguntas'
    Parameters = <>
    Left = 457
    Top = 448
    object listpreguntasidPreguntas: TStringField
      FieldName = 'idPreguntas'
      Size = 16
    end
    object listpreguntasidEncuesta: TStringField
      FieldName = 'idEncuesta'
      Size = 16
    end
    object listpreguntasPreguntas: TStringField
      FieldName = 'Preguntas'
      Size = 1000
    end
  end
  object dslistpreguntas: TDataSource
    DataSet = listpreguntas
    Left = 469
    Top = 492
  end
  object listRespuestas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from EncuestaRespuestas'
    Parameters = <>
    Left = 531
    Top = 454
    object listRespuestasidPreguntas: TStringField
      FieldName = 'idPreguntas'
      Size = 16
    end
    object listRespuestasidRespuestas: TStringField
      FieldName = 'idRespuestas'
      Size = 16
    end
    object listRespuestasRespuestas: TStringField
      FieldName = 'Respuestas'
      Size = 1000
    end
  end
  object dsListRespuestas: TDataSource
    DataSet = listRespuestas
    Left = 573
    Top = 482
  end
  object rsRPTAgenda: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'EncuestasRPT;1'
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
        Name = '@idEncuesta'
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
    Left = 363
    Top = 258
    object rsRPTAgendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object rsRPTAgendaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRPTAgendaCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 50
    end
    object rsRPTAgendaRespuestas: TStringField
      FieldName = 'Respuestas'
      ReadOnly = True
      Size = 1000
    end
    object rsRPTAgendaNota: TWideStringField
      FieldName = 'Nota'
      FixedChar = True
      Size = 1000
    end
    object rsRPTAgendapreguntas: TStringField
      FieldName = 'preguntas'
      Size = 1000
    end
    object rsRPTAgendaEncuesta: TStringField
      FieldName = 'Encuesta'
      Size = 500
    end
    object rsRPTAgendaidSucursal: TStringField
      FieldName = 'idSucursal'
      Size = 16
    end
  end
end
