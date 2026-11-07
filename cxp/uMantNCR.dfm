inherited MantNCR: TMantNCR
  Left = 404
  Top = 173
  Caption = 'Cuentas x pagar'
  ClientHeight = 616
  ClientWidth = 892
  Color = 15922418
  Font.Color = 5859929
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 558
    Width = 887
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  inherited Gradient2: TGradient
    Width = 892
    Height = 36
    ColorBegin = 14124890
    ColorEnd = 15922418
    Style = gsLinearV
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 42
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 109
    Width = 33
    Height = 13
    Caption = 'Fecha:'
    Transparent = True
  end
  object Label2: TLabel [4]
    Left = 197
    Top = 109
    Width = 56
    Height = 13
    Caption = 'Referencia:'
    Transparent = True
  end
  object Label3: TLabel [5]
    Left = 210
    Top = 131
    Width = 28
    Height = 13
    Caption = 'Valor:'
    Transparent = True
  end
  object Label5: TLabel [6]
    Left = 8
    Top = 131
    Width = 42
    Height = 13
    Caption = 'Moneda:'
    Transparent = True
  end
  object DBText1: TDBText [7]
    Left = 814
    Top = 1
    Width = 71
    Height = 19
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'Descripcion'
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [8]
    Left = 715
    Top = 447
    Width = 16
    Height = 13
    Caption = 'ST:'
    Transparent = True
  end
  object Label7: TLabel [9]
    Left = 456
    Top = 131
    Width = 47
    Height = 13
    Caption = 'Retenido:'
    Transparent = True
  end
  object Label8: TLabel [10]
    Left = 708
    Top = 496
    Width = 120
    Height = 13
    Caption = '# de comprobante fiscal:'
    Transparent = True
  end
  object Label9: TLabel [11]
    Left = 731
    Top = 475
    Width = 27
    Height = 13
    Caption = 'Tasa:'
    Transparent = True
  end
  object SpeedButton1: TSpeedButton [12]
    Left = 5
    Top = 4
    Width = 23
    Height = 22
    Action = aAnterior
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00003100000042000000520000005200000042
      000000310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000042000000420000007B0800009C0800009C0800009C0800009C
      0800007B0800004A0000004A0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A08000063080000A5080000A5080000A50800009C0800009C080000A5
      080000A5080000A50800006B000000310000FF00FF00FF00FF00FF00FF00004A
      0800006B100008AD180000A51000009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006B0000004A0000FF00FF00FF00FF00004A
      080010AD310008AD290008A51800009C08004AC65200EFFFEF00D6F7DE0010AD
      2100009C0800009C0800009C080000A50800004A0000FF00FF00005200000884
      210010B5420008AD290000A5100042BD4A00F7FFF700FFFFFF0084D68C0000A5
      1000009C0800009C0800009C080000A50800007B0800004200000052000010A5
      420018B54A0010AD310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C
      0800009C0800009C0800009C080000A508000094080000420000006B080021B5
      520018B5520073D69400F7FFF700FFFFFF00F7FFFF00B5EFC600B5E7BD00ADE7
      B500ADE7B500ADE7B500B5E7B50000A50800009C0800004A00000873100039BD
      6B0029BD5A00BDEFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000A50800009C080000520000007B080052C6
      7B0042C6730029BD5A00A5E7BD00FFFFFF00FFFFFF0084DEA50039BD5A0042C6
      5A0042BD5A0042BD5A0042BD520000A51800009C080000420000007B08004ABD
      6B0084DEA50021B5520018B54A0094DEB500FFFFFF00E7F7EF004AC6730010AD
      310008AD310008AD290008A5210000A51000008C080000420000FF00FF00109C
      2100ADE7C6006BD68C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD
      520010AD310008A5290008A5210008AD1800006B0800FF00FF00FF00FF00109C
      210052C67300C6F7DE0063CE8C0021B5520018B54A0094DEB500ADE7C60018B5
      4A0010AD390010AD310008B52900089C1800006B0800FF00FF00FF00FF00FF00
      FF00109C21006BCE8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD
      630029BD5A0021BD4A0010A5310000630800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00109C2100109C21009CE7B500BDEFD600A5E7C60094E7B5007BDE
      9C004AC67B00189C3900189C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0018A53100109C2100109C2100109C2100109C
      2100108C2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object SpeedButton2: TSpeedButton [13]
    Left = 32
    Top = 4
    Width = 23
    Height = 22
    Action = aProximo
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00003100000042000000520000005200000042
      000000310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000042000000420000007B0800009C0800009C0800009C0800009C
      0800007B0800004A0000004A0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A08000063080000A5080000A5080000A50800009C0800009C080000A5
      080000A5080000A50800006B000000310000FF00FF00FF00FF00FF00FF00004A
      0800006B100008AD180000A51000009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006B0000004A0000FF00FF00FF00FF00004A
      080010AD310008AD290008A51800009C080010AD2100D6F7DE00EFFFEF004AC6
      5200009C0800009C0800009C080000A50800004A0000FF00FF00005200000884
      210010B5420008AD290000A51000009C080000A5100084D68C00FFFFFF00F7FF
      F70042BD4A00009C0800009C080000A50800007B0800004200000052000010A5
      420018B54A0010AD310000A51000009C0800009C0800009C080073D67B00FFFF
      FF00F7FFF70039BD4A00009C080000A508000094080000420000006B080021B5
      520018B55200BDEFCE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FF
      F700FFFFFF00EFFFEF0052C65A0000A50800009C0800004A00000873100039BD
      6B0029BD5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADE7B50000A50800009C080000520000007B080052C6
      7B0042C6730052C67B0052CE840052CE840052CE84004AC673007BD69400FFFF
      FF00FFFFFF0094DEA50018AD310000A51800009C080000420000007B08004ABD
      6B0084DEA50021B5520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFF
      FF008CDE9C0010AD290008A5210000A51000008C080000420000FF00FF00109C
      2100ADE7C6006BD68C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE
      9C0010AD310008A5290008A5210008AD1800006B0800FF00FF00FF00FF00109C
      210052C67300C6F7DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B5
      4A0010AD390010AD310008B52900089C1800006B0800FF00FF00FF00FF00FF00
      FF00109C21006BCE8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD
      630029BD5A0021BD4A0010A5310000630800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00109C2100109C21009CE7B500BDEFD600A5E7C60094E7B5007BDE
      9C004AC67B00189C3900189C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0018A53100109C2100109C2100109C2100109C
      2100108C2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Label10: TLabel [14]
    Left = 4
    Top = 540
    Width = 33
    Height = 13
    Caption = 'Banco:'
    Transparent = True
  end
  object Label11: TLabel [15]
    Left = 740
    Top = 42
    Width = 36
    Height = 13
    Caption = 'Doc ID:'
    Transparent = True
  end
  object Label12: TLabel [16]
    Left = 750
    Top = 88
    Width = 25
    Height = 13
    Caption = 'RNC:'
    Transparent = True
  end
  object Label13: TLabel [17]
    Left = 739
    Top = 65
    Width = 38
    Height = 13
    Caption = 'Tipo ID:'
    Transparent = True
  end
  object Label14: TLabel [18]
    Left = 438
    Top = 540
    Width = 24
    Height = 13
    Caption = 'Tipo:'
    Transparent = True
  end
  object Label19: TLabel [19]
    Left = 649
    Top = 131
    Width = 34
    Height = 13
    Caption = 'O/C #:'
    Transparent = True
  end
  object Label15: TLabel [20]
    Left = 426
    Top = 491
    Width = 72
    Height = 13
    Caption = 'Forma de Pago'
    Transparent = True
  end
  inherited btImprimir: TcxButton
    Top = 566
    Width = 55
    Height = 47
    Action = Aprint
    TabOrder = 21
  end
  inherited btLocalizar: TcxButton
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 22
  end
  inherited btNuevo: TcxButton
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 23
  end
  inherited btCancelar: TcxButton
    Left = 238
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 25
  end
  inherited btGuardar: TcxButton
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 26
  end
  inherited btBorrar: TcxButton
    Left = 741
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 27
  end
  inherited btSalir: TcxButton
    Left = 824
    Top = 566
    Width = 55
    Height = 47
    TabOrder = 28
  end
  object beSuplidor: TcxDBButtonEdit [28]
    Left = 54
    Top = 39
    Width = 121
    Height = 21
    DataBinding.DataField = 'idSuplidor'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 116
    Properties.OnButtonClick = beSuplidorPropertiesButtonClick
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deFecha: TcxDBDateEdit [29]
    Left = 54
    Top = 105
    Width = 131
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object edNombre: TcxDBTextEdit [30]
    Left = 176
    Top = 39
    Width = 521
    Height = 21
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object edDir: TcxDBTextEdit [31]
    Left = 54
    Top = 61
    Width = 643
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Direccion'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object edTel1: TcxDBTextEdit [32]
    Left = 54
    Top = 83
    Width = 197
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono1'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object edTel2: TcxDBTextEdit [33]
    Left = 256
    Top = 83
    Width = 197
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono2'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object edRef: TcxDBTextEdit [34]
    Left = 256
    Top = 105
    Width = 145
    Height = 21
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edValor: TcxDBCurrencyEdit [35]
    Left = 256
    Top = 127
    Width = 145
    Height = 21
    DataBinding.DataField = 'Valor'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '0.00;(0.00)'
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object luMoneda: TcxDBLookupComboBox [36]
    Left = 54
    Top = 127
    Width = 131
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMon
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBMemo1: TcxDBMemo [37]
    Left = 4
    Top = 471
    Width = 418
    Height = 60
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object grDetalle: TcxGrid [38]
    Left = 5
    Top = 161
    Width = 872
    Height = 268
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnEnter = grDetalleEnter
    OnExit = grDetalleExit
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvDocs: TcxGridDBTableView
      DataController.DataSource = detds
      DataController.KeyFieldNames = 'idDocXPagar'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.OnButtonClick = tvDocsNavigatorButtonsButtonClick
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Delete.Hint = 'Borrar documento de la solicitud'
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvDocsidDocumento: TcxGridDBColumn
        Caption = 'Numero'
        DataBinding.FieldName = 'idDocXPagar'
        Options.Filtering = False
        Width = 59
      end
      object tvDocsAbrev: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'Abrev'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 40
      end
      object tvDocsReferencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 80
      end
      object tvDocsFecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FechaDoc'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 77
      end
      object tvDocsTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 81
      end
      object tvDocsValor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Filtering = False
        Width = 78
      end
      object tvDocsDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Tasa'
        Options.Filtering = False
        Width = 48
      end
      object tvDocsAplicacion: TcxGridDBColumn
        Caption = 'Aplicacion'
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Options.Filtering = False
        Width = 81
      end
    end
    object tvCtas: TcxGridDBTableView
      DataController.DataSource = Dsctas
      DataController.KeyFieldNames = 'LineaNum'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = tvCtasDebito
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = tvCtasCredito
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = tvCtasStylesGetContentStyle
      object tvCtasidCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvCtasidCuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 93
      end
      object tvCtasDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 287
      end
      object tvCtasDebito: TcxGridDBColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 99
      end
      object tvCtasCredito: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
        Options.Filtering = False
        Width = 95
      end
      object tvCtasDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Automatica'
        Visible = False
      end
      object tvCtasDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'LineaNum'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvCtasidCentroCosto: TcxGridDBColumn
        Caption = 'Proyecto/CC'
        DataBinding.FieldName = 'CentroCosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvCtasidCentroCostoPropertiesButtonClick
        Options.Filtering = False
        Width = 152
      end
      object tvCtasidPartida: TcxGridDBColumn
        Caption = 'Partida'
        DataBinding.FieldName = 'idPartida'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idPartida'
        Properties.ListColumns = <
          item
            FieldName = 'Partida'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.dsPartidas
        Options.Filtering = False
        Width = 108
      end
    end
    object grDetalleDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsRets
      DataController.KeyFieldNames = 'idPagoRetencion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grDetalleDBTableView1idRetencion: TcxGridDBColumn
        Caption = 'Retencion'
        DataBinding.FieldName = 'idRetencion'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.IncrementalFiltering = False
        Properties.KeyFieldNames = 'idRetencion'
        Properties.ListColumns = <
          item
            FieldName = 'Retencion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ncrdm.dsTiposRets
        Options.Filtering = False
        Width = 337
      end
      object grDetalleDBTableView1Porcentaje: TcxGridDBColumn
        DataBinding.FieldName = 'Porcentaje'
        Options.Filtering = False
        Width = 64
      end
      object grDetalleDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Filtering = False
        Width = 120
      end
      object grDetalleDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Tipo Retenci'#243'n'
        DataBinding.FieldName = 'idTipoRetencionDGII'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idTiposRetencionDGII'
        Properties.ListColumns = <
          item
            FieldName = 'TiposRetencionDGII'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTiposRetencion
        Options.Filtering = False
        Width = 349
      end
    end
    object levDocs: TcxGridLevel
      Caption = 'Distribucion'
      GridView = tvDocs
    end
    object levCtas: TcxGridLevel
      Caption = 'Codificacion'
      GridView = tvCtas
    end
    object grDetalleLevel2: TcxGridLevel
      Caption = 'Retenciones'
      GridView = grDetalleDBTableView1
    end
  end
  object cxDBCheckBox1: TcxDBCheckBox [39]
    Left = 772
    Top = 106
    Width = 100
    Height = 21
    TabStop = False
    Caption = 'Guardar codificacion'
    DataBinding.DataField = 'CodifManual'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  object gbTotales: TcxGroupBox [40]
    Left = 6
    Top = 432
    Width = 406
    Height = 34
    Caption = ' Totales '
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
    object cxDBLabel2: TcxDBLabel
      Left = 5
      Top = 13
      Width = 122
      Height = 17
      DataBinding.DataField = 'Aplicado'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlue
      Style.TextStyle = []
    end
    object cxDBLabel1: TcxDBLabel
      Left = 291
      Top = 13
      Width = 110
      Height = 17
      DataBinding.DataField = 'Diferencia'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.TextStyle = []
    end
    object cxDBLabel3: TcxDBLabel
      Left = 150
      Top = 13
      Width = 117
      Height = 17
      DataBinding.DataField = 'PorAplicar'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlue
      Style.TextStyle = []
    end
  end
  object cxDBCheckBox2: TcxDBCheckBox [41]
    Left = 648
    Top = 106
    Width = 95
    Height = 21
    TabStop = False
    Caption = 'Mostrar en cxp'
    DataBinding.DataField = 'MostrarEnCXP'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 20
  end
  object cxDBDateEdit1: TcxDBDateEdit [42]
    Left = 761
    Top = 443
    Width = 113
    Height = 21
    TabStop = False
    DataBinding.DataField = 'FechaStatus'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 29
  end
  object btEditar: TcxButton [43]
    Left = 179
    Top = 567
    Width = 55
    Height = 47
    Action = AEditar
    Anchors = [akLeft, akBottom]
    TabOrder = 24
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF000073
      AD000073AD000073AD000073AD000073AD000073AD000073AD000073AD000073
      AD00006B08000073AD000073AD000073AD00FF00FF00FF00FF000073AD00108C
      C60052B5E7006BCEFF004ABDF7004ABDF7004ABDF7004ABDF7004ABDF7004ABD
      F700006B0800006B0800219CCE000073AD00FF00FF00FF00FF000073AD0031AD
      E7002194C6008CDEFF0052C6FF0052C6F70052C6FF0052C6F70052C6FF0052C6
      FF00006B080010A52900006B08006BCEE7000073AD00FF00FF000073AD0052CE
      FF000073AD009CE7FF005AD6FF00006B0800006B0800006B0800006B0800006B
      0800006B080018AD310010A52900006B08000073AD00FF00FF000073AD005AD6
      FF0008739C0094ADB50094949400006B080042E77B0042DE730039D66B0031CE
      5A0029BD4A0021B5390018AD310010A52900006B0800FF00FF000073AD006BDE
      FF00396B840063B5C600E7EFD600006B080042E77B0042E77B0042DE730039D6
      6B0031CE5A0029C64A0021B5390018AD310010A52900006B08000073AD0073E7
      FF007B636B001084B500FFFFFF00006B080042E77B0042E77B0042E77B0042DE
      730039D66B0031CE5A0029C64A0021B53900006B08000073AD000073AD007BEF
      FF009C6B6300107BAD000073AD00006B0800006B0800006B0800006B0800006B
      0800006B080039D6630031CE5A00006B08000073AD000073AD000073AD0084F7
      FF00A5736300F7E7D600FFF7DE00FFE7CE00FFE7C600FFDEBD00FFDEB500FFD6
      A500006B080042DE7300006B0800FF00FF00FF00FF00FF00FF000073AD00FFFF
      FF00B57B6300F7EFE700FFFFEF00FFEFDE00FFEFD600FFE7CE00FFE7C600FFDE
      BD00006B0800006B0800006BA500FF00FF00FF00FF00FF00FF00FF00FF000073
      AD00BD8C6B00FFF7EF00FFFFFF00FFF7EF00FFF7E700FFF7E700FFF7E700F7E7
      CE00006B08000073AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00CE947300FFF7EF00FFFFFF00FFFFFF00FFFFF700E7CEC600D6B5AD00BDA5
      9C0073424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D69C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00A5635A00A5635A00A563
      5A00A5635A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00DEA57B00FFF7EF00FFFFFF00FFFFFF00FFFFFF00A5635A00E7A55A00EF9C
      3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00E7AD7B00D6946B00D6946B00D6946B00D6946B00A5635A00D69C6300FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [44]
    Left = 509
    Top = 127
    Width = 118
    Height = 21
    DataBinding.DataField = 'MontoRetenciones'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBTextEdit1: TcxDBTextEdit [45]
    Left = 734
    Top = 443
    Width = 25
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 30
  end
  object cxDBTextEdit2: TcxDBTextEdit [46]
    Left = 708
    Top = 510
    Width = 165
    Height = 21
    DataBinding.DataField = 'CompFiscal'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit [47]
    Left = 761
    Top = 471
    Width = 112
    Height = 21
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '0.00;(0.00)'
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object luBanco: TcxDBLookupComboBox [48]
    Left = 40
    Top = 536
    Width = 381
    Height = 21
    DataBinding.DataField = 'idCuentaBanco'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBancos
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object luTipoID: TcxDBLookupComboBox [49]
    Left = 779
    Top = 61
    Width = 106
    Height = 21
    DataBinding.DataField = 'idTipoIdentificacion'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idTipoIdentificacion'
    Properties.ListColumns = <
      item
        FieldName = 'TipoIdentificacion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ncrdm.dsTipoId
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBTextEdit3: TcxDBTextEdit [50]
    Left = 779
    Top = 83
    Width = 106
    Height = 21
    DataBinding.DataField = 'RNC'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit4: TcxDBTextEdit [51]
    Left = 779
    Top = 39
    Width = 105
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idDocumento'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 31
  end
  object boTipoGasto: TcxDBImageComboBox [52]
    Left = 468
    Top = 536
    Width = 122
    Height = 21
    TabStop = False
    DataBinding.DataField = 'TipoGasto'
    DataBinding.DataSource = DS
    Properties.DefaultImageIndex = 1
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Description = 'Costo'
        ImageIndex = 0
        Value = 'COSTO'
      end
      item
        Description = 'Pago'
        Value = 'PAGO'
      end
      item
        Description = 'Ingreso'
        Value = 'INGRESO'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 32
  end
  object cxDBTextEdit5: TcxDBTextEdit [53]
    Left = 690
    Top = 127
    Width = 135
    Height = 21
    DataBinding.DataField = 'OrdenCompra'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxButton1: TcxButton [54]
    Left = 441
    Top = 566
    Width = 55
    Height = 47
    Action = AAnular
    Anchors = [akLeft, akBottom]
    TabOrder = 33
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00632910006329100063291000632910006329
      100063291000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF006B29100063291000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A00006329100063291000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0084310800B5420000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00FF00FF008431
      0800B5420000BD4A0000B5420000B5420000B5420000B5420000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00AD42
      0000B5420000B5420000B5420000B5521000C6733100CE7B4200CE7B4200C66B
      2900BD4A0000BD4A0000BD4A0000BD4A00006B291000FF00FF0094390000BD4A
      0000B54A0000B54A0000CE844200FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B5
      8C00B5420000BD4A0000BD4A0000BD4A0000BD4A00006329100094390000BD52
      0800BD520800BD520800FFFFFF00DEAD8400BD631800B55A1000B5520800AD42
      0000B5420000BD4A0000BD4A0000BD4A0000BD4A00006B29100094390000C66B
      1800C6631800BD631800FFFFFF00C66B2100BD5A1000B5520800B54A0000DEB5
      8C00B5420000B5420000BD4A0000BD4A0000BD4A00006B29100094390800D68C
      4A00CE7B3100C6732900FFFFFF00DEA56B00C66B2100BD631000B5520800FFFF
      FF00DEAD8400B5420000BD4A0000BD4A0000BD4A00006B29100094390000DEA5
      6B00DE9C6300CE843900EFC6A500FFFFFF00F7DECE00F7DEC600F7E7DE00FFFF
      FF00FFFFFF00E7C69C00BD4A0000BD4A0000BD4A00006B29100094390000E79C
      6300EFC6A500DE9C5A00DE945200E7B58400EFCEAD00E7C69C00EFD6BD00FFFF
      FF00FFFFFF00E7BD9400BD4A0000BD4A0000BD4A000063291000FF00FF009C42
      1000EFCEAD00F7CEAD00E7AD7300DE945200D6844200CE732900C66B1800FFFF
      FF00E7AD7B00BD4A0000BD4A0000BD4A00006B291000FF00FF00FF00FF009439
      0000E7A56B00F7E7CE00F7D6BD00E7AD7300D68C4200CE732900C66B1800E7AD
      7300C65A0800BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00FF00
      FF0094390000E7A56B00F7D6BD00F7DEC600EFC69C00E7A57300DE945200D68C
      4200CE732900C6520000B54A000073290800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00943900009C4A1000E7AD7300EFBD9400EFBD8C00E7AD7300DE8C
      4A00C66310009C4208006B291000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF009C3900009C4208009C4208009C4208009C42
      080084310800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [55]
    Left = 519
    Top = 566
    Width = 76
    Height = 47
    Anchors = [akLeft, akBottom]
    Caption = 'Cert. Retenciones'
    TabOrder = 34
    WordWrap = True
    OnClick = cxButton2Click
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [56]
    Left = 426
    Top = 510
    Width = 275
    Height = 21
    DataBinding.DataField = 'idPagoForma'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'idPagoForma'
    Properties.ListColumns = <
      item
        FieldName = 'PagoForma'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ncrdm.dsListaPagoForma
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 35
  end
  inherited DS: TwwDataSource
    DataSet = ncrdm.mDocumento
    Left = 190
    Top = 69
  end
  inherited Acciones: TActionList
    Left = 16
    Top = 16
    object aProximo: TAction
      OnExecute = aProximoExecute
    end
    object aAnterior: TAction
      OnExecute = aAnteriorExecute
    end
  end
  inherited ImageList: TImageList
    Left = 74
    Top = 69
  end
  object detds: TDataSource
    DataSet = ncrdm.mDocDtl
    Left = 16
    Top = 69
  end
  object dsMon: TDataSource
    AutoEdit = False
    DataSet = ncrdm.rsMonedas
    Left = 246
    Top = 16
  end
  object Dsctas: TDataSource
    AutoEdit = False
    DataSet = ncrdm.mCtasDoc
    Left = 132
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 74
    Top = 16
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15199207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 7237230
    end
  end
  object dsBancos: TDataSource
    DataSet = ncrdm.rsBancos
    Left = 190
    Top = 16
  end
  object dsRets: TwwDataSource
    AutoEdit = False
    DataSet = ncrdm.mDocRets
    OnUpdateData = DSUpdateData
    Left = 132
    Top = 69
  end
  object dsTiposRetencion: TDataSource
    DataSet = ncrdm.rsTiposRetencion
    Left = 247
    Top = 68
  end
end
