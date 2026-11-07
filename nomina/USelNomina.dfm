inherited SelNomina: TSelNomina
  Left = 390
  Top = 226
  Caption = 'Nominas'
  ClientHeight = 407
  ClientWidth = 685
  Color = 14870499
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 248
    Top = 57
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 420
    Top = 57
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 685
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    Color = 14870499
    TabOrder = 0
    DesignSize = (
      685
      50)
    object Gradient4: TGradient
      Left = 2
      Top = 42
      Width = 681
      Height = 6
      Align = alBottom
      ColorBegin = 14898176
      ColorEnd = 16511468
      Style = gsReflectedH
    end
    object cxButton1: TcxButton
      Left = 2
      Top = 3
      Width = 81
      Height = 39
      Action = Nuevo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton3: TcxButton
      Left = 82
      Top = 3
      Width = 83
      Height = 39
      Action = Refrescar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton4: TcxButton
      Left = 164
      Top = 3
      Width = 83
      Height = 39
      Action = Calcular
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton5: TcxButton
      Left = 246
      Top = 3
      Width = 83
      Height = 39
      Action = CargarAvance
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton6: TcxButton
      Left = 328
      Top = 3
      Width = 83
      Height = 39
      Action = aPropina
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton7: TcxButton
      Left = 502
      Top = 3
      Width = 90
      Height = 38
      Action = Cerrar
      Caption = 'Cerrar N'#243'mina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      WordWrap = True
      Colors.Default = clRed
      Colors.Normal = clRed
      Colors.Hot = clRed
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      Layout = blGlyphTop
      LookAndFeel.Kind = lfFlat
      NumGlyphs = 2
    end
    object cxButton8: TcxButton
      Left = 410
      Top = 3
      Width = 83
      Height = 39
      Action = aComisiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
    object cxButton9: TcxButton
      Left = 599
      Top = 3
      Width = 83
      Height = 39
      Action = Salir
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      WordWrap = True
      LookAndFeel.NativeStyle = True
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 358
    Width = 685
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    Color = 14870499
    TabOrder = 1
    object Gradient1: TGradient
      Left = 2
      Top = 2
      Width = 681
      Height = 6
      Align = alTop
      ColorBegin = 14898176
      ColorEnd = 16511468
      Style = gsReflectedH
    end
    object cxButton2: TcxButton
      Left = 2
      Top = 8
      Width = 96
      Height = 39
      Caption = 'Auto Salarios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = pAutoSalarios
      TabOrder = 0
      WordWrap = True
      OnClick = GenHorasExecute
      LookAndFeel.NativeStyle = True
    end
    object cxButton10: TcxButton
      Left = 97
      Top = 8
      Width = 103
      Height = 39
      Caption = 'Ing/Desc Clase 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = GenerarIDExecute
      LookAndFeel.NativeStyle = True
    end
    object cxButton11: TcxButton
      Left = 199
      Top = 8
      Width = 101
      Height = 39
      Caption = 'Ing/Desc Clase 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = GenerarID2Execute
      LookAndFeel.NativeStyle = True
    end
    object cxButton12: TcxButton
      Left = 299
      Top = 8
      Width = 101
      Height = 39
      Caption = 'Auto Comisiones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PMenu
      TabOrder = 3
      WordWrap = True
      OnClick = GenProduccionExecute
      LookAndFeel.NativeStyle = True
    end
    object cxButton13: TcxButton
      Left = 476
      Top = 8
      Width = 106
      Height = 39
      Caption = 'Transacciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      WordWrap = True
      OnClick = IngDesExecute
      LookAndFeel.NativeStyle = True
    end
    object cxButton14: TcxButton
      Left = 582
      Top = 8
      Width = 100
      Height = 39
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PMenu
      TabOrder = 5
      WordWrap = True
      OnClick = ImprimirExecute
      LookAndFeel.NativeStyle = True
    end
    object Reloj: TcxCheckBox
      Left = 401
      Top = 18
      Width = 73
      Height = 21
      Caption = 'Usar Reloj'
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 6
    end
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 77
    Width = 685
    Height = 279
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = PMenu
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'NominaID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle3
      Styles.Selection = cxStyle2
      Bands = <
        item
          Caption = 'Datos [Nomina - Tipo]'
        end
        item
          Caption = 'Fechas'
        end
        item
          Caption = 'Otros'
        end>
      object cxGrid1DBBandedTableView1NominaID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NominaID'
        Options.Filtering = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TipoNomina: TcxGridDBBandedColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'TipoNomina'
        Options.Filtering = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TipoEmpleado: TcxGridDBBandedColumn
        Caption = 'Empleados'
        DataBinding.FieldName = 'TipoEmpleado'
        Options.Filtering = False
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Fecha: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Mes: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Mes'
        Options.Filtering = False
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Desde: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Desde'
        Options.Filtering = False
        Width = 77
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Hasta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Hasta'
        Options.Filtering = False
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ProdDesde: TcxGridDBBandedColumn
        Caption = 'Prod. Desde'
        DataBinding.FieldName = 'ProdDesde'
        Options.Filtering = False
        Width = 77
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ProdHasta: TcxGridDBBandedColumn
        Caption = 'Prod. Hasta'
        DataBinding.FieldName = 'ProdHasta'
        Options.Filtering = False
        Width = 77
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Cerrada: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cerrada'
        Options.Filtering = False
        Width = 45
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ISR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISR'
        Options.Filtering = False
        Width = 27
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Numero: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Numero'
        Visible = False
        Options.Filtering = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1cfMes: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cfMes'
        Visible = False
        Options.Filtering = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object dtpDesde: TcxDateEdit [5]
    Left = 286
    Top = 53
    Width = 106
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object dtpHasta: TcxDateEdit [6]
    Left = 456
    Top = 53
    Width = 106
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object bRefrescarNominas: TcxButton [7]
    Left = 575
    Top = 51
    Width = 110
    Height = 25
    Action = aRefrescarAccion
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    OnDataChange = DSDataChange
    Left = 485
    Top = 221
  end
  object ActionList1: TActionList
    Left = 424
    Top = 264
    object Salir: TAction
      Caption = 'Salir'
      OnExecute = SalirExecute
    end
    object Refrescar: TAction
      Caption = 'Refrescar'
      OnExecute = RefrescarExecute
    end
    object GenHoras: TAction
      Caption = 'Auto Salarios'
      OnExecute = GenHorasExecute
    end
    object Calcular: TAction
      Caption = 'Calcular'
      OnExecute = CalcularExecute
    end
    object Nuevo: TAction
      Caption = 'Mantenim'
      OnExecute = NuevoExecute
    end
    object Cerrar: TAction
      Caption = 'Cerrar'
      OnExecute = CerrarExecute
    end
    object IngDes: TAction
      Caption = 'Transacciones'
      OnExecute = IngDesExecute
    end
    object Resultados: TAction
      Caption = 'Resultados'
    end
    object GenerarID: TAction
      Caption = 'Auto Ing / Desc 1'
      OnExecute = GenerarIDExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object ImpIngDes: TAction
      Caption = 'Ingresos y Descuentos'
      OnExecute = ImpIngDesExecute
    end
    object GenProduccion: TAction
      Caption = 'Auto Comisiones'
      OnExecute = GenProduccionExecute
    end
    object GenRegalia: TAction
      Caption = 'Regalia Pascual'
      OnExecute = GenRegaliaExecute
    end
    object GenerarID2: TAction
      Caption = 'Ing/Desc 2'
      OnExecute = GenerarID2Execute
    end
    object aPropina: TAction
      Caption = 'Propina'
      OnExecute = aPropinaExecute
    end
    object GenCheques: TAction
      Caption = 'Generar cheques'
      OnExecute = GenChequesExecute
    end
    object ImpCheques: TAction
      Caption = 'Imprimir cheques'
      OnExecute = ImpChequesExecute
    end
    object CargarAvance: TAction
      Caption = 'Cargar Avance'
      OnExecute = CargarAvanceExecute
    end
    object aComisiones: TAction
      Caption = 'Comisiones'
      OnExecute = aComisionesExecute
    end
    object aRefrescarAccion: TAction
      Caption = 'Mostrar N'#243'minas'
      OnExecute = aRefrescarAccionExecute
    end
  end
  object PMenu: TPopupMenu
    Left = 528
    Top = 266
    object ReportesdeNomina1: TMenuItem
      Caption = 'Reportes de Nomina'
      object ImprimirNomina1: TMenuItem
        Caption = 'Imprimir Nomina'
        OnClick = ImprimirNomina1Click
      end
      object NominaDetallada1: TMenuItem
        Caption = 'Nomina Detallada'
        OnClick = NominaDetallada1Click
      end
      object Nominadetalladadotmatrix1: TMenuItem
        Caption = 'Nomina detallada (dot matrix)'
        OnClick = Nominadetalladadotmatrix1Click
      end
      object Nominaparafirma1: TMenuItem
        Caption = 'Nomina para firma'
        OnClick = Nominaparafirma1Click
      end
      object ExportNomina1: TMenuItem
        Caption = 'Export Nomina'
        OnClick = ExportNomina1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object CCM1: TMenuItem
        Caption = 'CCM'
        OnClick = CCM1Click
      end
      object Arboleda1: TMenuItem
        Caption = 'Arboleda'
        OnClick = Arboleda1Click
      end
      object Formato85por141: TMenuItem
        Caption = 'Formato 8.5 por 14'
        OnClick = Formato85por141Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Empleadosporformadepago1: TMenuItem
        Caption = 'Empleados por forma de pago'
        OnClick = Empleadosporformadepago1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object NovedadesVolantes1: TMenuItem
      Caption = 'Novedades/Volantes'
      object IngresosyDescuentos1: TMenuItem
        Action = ImpIngDes
      end
      object NovedadesporDpto1: TMenuItem
        Caption = 'Novedades por Dpto'
        OnClick = NovedadesporDpto1Click
      end
      object ResumendeTransacciones1: TMenuItem
        Caption = 'Resumen de Transacciones'
        OnClick = ResumendeTransacciones1Click
      end
      object ResumenNomina1: TMenuItem
        Caption = 'Resumen Nomina'
        OnClick = ResumenNomina1Click
      end
      object AplicacindePago1: TMenuItem
        Caption = 'Aplicaci'#243'n de Pago'
        OnClick = AplicacindePago1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object DescuentosdeCxCEmpleados1: TMenuItem
        Caption = 'Descuentos de CxC Empleados'
        OnClick = DescuentosdeCxCEmpleados1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object VolantesdePago1: TMenuItem
        Caption = 'Volantes de Pago'
        OnClick = VolantesdePago1Click
      end
      object Volantesdepago85x111: TMenuItem
        Caption = 'Volantes de pago 8.5 x 11'
        OnClick = Volantesdepago85x111Click
      end
      object Volantesdepago85x551: TMenuItem
        Caption = 'Volantes de pago 8.5 x 5.5'
        OnClick = Volantesdepago85x551Click
      end
      object Volantesporcorreoelectronico1: TMenuItem
        Caption = 'Volantes por correo electronico'
        OnClick = Volantesporcorreoelectronico1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GenerarEDalmayor1: TMenuItem
      Caption = 'Generar ED al Mayor'
      OnClick = GenerarEDalmayor1Click
    end
    object Entra1: TMenuItem
      Caption = 'Reporte Entrada de Diario'
      OnClick = Entra1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Generar1: TMenuItem
      Caption = 'Generar Regal'#237'a'
      object GenerarNminadeRegala1: TMenuItem
        Action = GenRegalia
      end
    end
    object Cargas1: TMenuItem
      Caption = 'Cargas'
      object DesdeBasedeDatos1: TMenuItem
        Caption = 'Desde Base de Datos'
        OnClick = DesdeBasedeDatos1Click
      end
      object DesdeArchivodeText1: TMenuItem
        Caption = 'Desde Archivo de Texto'
        OnClick = DesdeArchivodeText1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Cargararchivodehorasreloj1: TMenuItem
        Caption = 'Cargar archivo de horas (reloj)'
        OnClick = ArchivodeHorasResumendeHoras1Click
      end
    end
    object CrditodeImpuestoISR1: TMenuItem
      Caption = 'Cr'#233'dito de Impuesto (ISR)'
      OnClick = CrditodeImpuestoISR1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object OtrosReportes1: TMenuItem
      Caption = 'Otros Reportes'
      object RelacindeDescuentosSeguroSocial1: TMenuItem
        Caption = 'Relaci'#243'n de Aportes Seguro Social'
        OnClick = RelacindeDescuentosSeguroSocial1Click
      end
      object RelacndeAporteSeguridadSocialMes1: TMenuItem
        Caption = 'Relac'#243'n de Aporte Seguridad Social (Mes)'
        OnClick = RelacndeAporteSeguridadSocialMes1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object EmpleadosenNmina1: TMenuItem
        Caption = 'Empleados en N'#243'mina (Consulta Monto)'
        OnClick = EmpleadosenNmina1Click
      end
    end
    object FormatoparaBancos1: TMenuItem
      Caption = 'Formato para Bancos'
      object FormatosACH1: TMenuItem
        Caption = 'Formatos ACH'
        object BancoPopular2: TMenuItem
          Caption = 'Banco Popular'
          OnClick = BancoPopular2Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ExporttoBanco1: TMenuItem
        Caption = 'Banco Mercantil'
        OnClick = ExporttoBanco1Click
      end
      object ExpoertPROCEM1: TMenuItem
        Caption = 'Banco Reservas'
        OnClick = ExpoertPROCEM1Click
      end
      object BancoPopular1: TMenuItem
        Caption = 'Banco Popular'
        OnClick = BancoPopular1Click
      end
      object BancodelProgreso1: TMenuItem
        Caption = 'Banco del Progreso'
        OnClick = BancodelProgreso1Click
      end
      object BancoBHD1: TMenuItem
        Caption = 'Banco BHD'
        OnClick = BancoBHD1Click
      end
      object BancoLen1: TMenuItem
        Caption = 'Banco Le'#243'n'
        OnClick = BancoLen1Click
      end
    end
    object Cheques1: TMenuItem
      Caption = 'Cheques'
      object Generarcheques1: TMenuItem
        Action = GenCheques
      end
      object Imprimircheques1: TMenuItem
        Action = ImpCheques
      end
      object Imprimirnominacondecheques1: TMenuItem
        Caption = 'Imprimir nomina con # de cheques'
        OnClick = Imprimirnominacondecheques1Click
      end
    end
  end
  object save: TSaveDialog
    Ctl3D = False
    DefaultExt = 'txt'
    FileName = 'Nomina.txt'
    Filter = 'csv|*.csv|prn|*.prn|txt|*.txt|todos|*.*'
    FilterIndex = 3
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofEnableSizing]
    Title = 'Guardar'
    Left = 516
    Top = 98
  end
  object AutoTrans: TPopupMenu
    Left = 120
    Top = 168
    object Regalia: TMenuItem
      Action = GenRegalia
    end
  end
  object spToBanco4: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'ToBanco4;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 306
    Top = 186
    object spToBanco4RNC: TStringField
      FieldName = 'RNC'
      ReadOnly = True
      Size = 8000
    end
    object spToBanco4Tipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 5
    end
    object spToBanco4Cuenta: TStringField
      FieldName = 'Cuenta'
      ReadOnly = True
      Size = 30
    end
    object spToBanco4Monto: TStringField
      FieldName = 'Monto'
      ReadOnly = True
      Size = 8000
    end
    object spToBanco4Fecha: TStringField
      FieldName = 'Fecha'
      ReadOnly = True
      Size = 8
    end
    object spToBanco4Cantidad: TStringField
      FieldName = 'Cantidad'
      ReadOnly = True
      Size = 8000
    end
    object spToBanco4Nombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 62
    end
  end
  object spToBanco5: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'ToBanco5;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 228
    Top = 250
    object spToBanco5COLUMN1: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 346
    end
  end
  object Openx: TOpenDialog
    DefaultExt = '*.txt'
    Left = 560
    Top = 130
  end
  object mTable: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    DefaultFormat = kbmFormat
    CommaTextFormat = kbmFormat
    PersistentFormat = kbmFormat
    AllDataFormat = kbmFormat
    FormFormat = kbmFormat
    Left = 468
    Top = 130
    object mTablec1: TStringField
      FieldName = 'c1'
      Size = 10
    end
    object mTablec2: TStringField
      FieldName = 'c2'
      Size = 10
    end
    object mTablec3: TStringField
      FieldName = 'c3'
      Size = 10
    end
    object mTablec4: TStringField
      FieldName = 'c4'
      Size = 100
    end
    object mTablec5: TStringField
      FieldName = 'c5'
      Size = 10
    end
    object mTablec6: TStringField
      FieldName = 'c6'
      Size = 10
    end
    object mTablec7: TStringField
      FieldName = 'c7'
      Size = 10
    end
    object mTablec8: TStringField
      FieldName = 'c8'
      Size = 10
    end
    object mTablec9: TStringField
      FieldName = 'c9'
      Size = 10
    end
    object mTablec10: TStringField
      FieldName = 'c10'
      Size = 10
    end
    object mTablec11: TStringField
      FieldName = 'c11'
      Size = 10
    end
    object mTablec12: TStringField
      FieldName = 'c12'
      Size = 10
    end
    object mTablec13: TStringField
      FieldName = 'c13'
      Size = 10
    end
    object mTablec14: TStringField
      FieldName = 'c14'
      Size = 10
    end
    object mTablec15: TStringField
      FieldName = 'c15'
      Size = 10
    end
    object mTablec16: TStringField
      FieldName = 'c16'
      Size = 10
    end
  end
  object kbmFormat: TkbmCSVStreamFormat
    CSVQuote = '"'
    CSVFieldDelimiter = #9
    CSVRecordDelimiter = #0
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    sfLocalFormat = []
    sfQuoteOnlyStrings = []
    sfNoHeader = [sfLoadNoHeader]
    Version = '3.00'
    sfData = [sfSaveData, sfLoadData]
    sfCalculated = []
    sfLookup = []
    sfNonVisible = [sfSaveNonVisible, sfLoadNonVisible]
    sfBlobs = [sfSaveBlobs, sfLoadBlobs]
    sfDef = [sfSaveDef, sfLoadDef]
    sfIndexDef = [sfSaveIndexDef, sfLoadIndexDef]
    sfPlaceHolders = []
    sfFiltered = [sfSaveFiltered]
    sfIgnoreRange = [sfSaveIgnoreRange]
    sfIgnoreMasterDetail = [sfSaveIgnoreMasterDetail]
    sfDeltas = []
    sfDontFilterDeltas = []
    sfAppend = []
    sfFieldKind = [sfSaveFieldKind]
    sfFromStart = [sfLoadFromStart]
    Left = 400
    Top = 170
  end
  object spInsTrans: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomInsTransaccion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@Monto'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TipoTransaccionId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@xCantidad'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 218
    Top = 130
  end
  object spInsAvance: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomInsAvance;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TransIn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TransOut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 122
    Top = 238
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14069419
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 13758202
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 5592405
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object EmpleadoCodExternoAct: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomEmpleadoCodExternoAct;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CodExterno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 52
    Top = 302
    object EmpleadoCodExternoActEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadoCodExternoActEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object spToBancoPopularACH: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomToBancoACHPopular;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 600
    Top = 198
    object spToBancoPopularACHCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 8000
    end
    object spToBancoPopularACHNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      ReadOnly = True
      Size = 40
    end
  end
  object mTableResHoras: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Normales'
        DataType = ftCurrency
      end
      item
        Name = 'Al35'
        DataType = ftCurrency
      end
      item
        Name = 'Doble'
        DataType = ftCurrency
      end
      item
        Name = 'Feriado'
        DataType = ftCurrency
      end
      item
        Name = 'Nocturna'
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
    DefaultFormat = kbmFormatResHoras
    CommaTextFormat = kbmFormatResHoras
    PersistentFormat = kbmFormatResHoras
    AllDataFormat = kbmFormatResHoras
    FormFormat = kbmFormatResHoras
    Left = 40
    Top = 136
    object mTableResHorasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 16
    end
    object mTableResHorasNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mTableResHorasNormales: TCurrencyField
      FieldName = 'Normales'
    end
    object mTableResHorasNocturna: TCurrencyField
      FieldName = 'Nocturna'
    end
    object mTableResHorasFeriado: TCurrencyField
      FieldName = 'Feriado'
    end
    object mTableResHorasAl35: TCurrencyField
      FieldName = 'Al35'
    end
    object mTableResHorasDoble: TCurrencyField
      FieldName = 'Doble'
    end
  end
  object spInsTransHoras: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomInsTransaccionHoras;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TipoTransaccionId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 338
    Top = 304
  end
  object pAutoSalarios: TPopupMenu
    Left = 204
    Top = 308
    object ArchivodeHorasResumendeHoras1: TMenuItem
      Caption = 'Archivo de Horas (Resumen de Horas)'
      OnClick = ArchivodeHorasResumendeHoras1Click
    end
  end
  object spCarga: TADOStoredProc
    Connection = dm.Coneccion
    Parameters = <>
    Left = 196
    Top = 198
  end
  object spGenerarCreditoISR: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomGenCreditoISR;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 33
    Top = 216
  end
  object kbmFormatResHoras: TkbmCSVStreamFormat
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = #0
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    sfLocalFormat = []
    sfQuoteOnlyStrings = []
    sfNoHeader = [sfLoadNoHeader]
    Version = '3.00'
    sfData = [sfSaveData, sfLoadData]
    sfCalculated = []
    sfLookup = []
    sfNonVisible = [sfSaveNonVisible, sfLoadNonVisible]
    sfBlobs = [sfSaveBlobs, sfLoadBlobs]
    sfDef = [sfSaveDef, sfLoadDef]
    sfIndexDef = [sfSaveIndexDef, sfLoadIndexDef]
    sfPlaceHolders = []
    sfFiltered = [sfSaveFiltered]
    sfIgnoreRange = [sfSaveIgnoreRange]
    sfIgnoreMasterDetail = [sfSaveIgnoreMasterDetail]
    sfDeltas = []
    sfDontFilterDeltas = []
    sfAppend = []
    sfFieldKind = [sfSaveFieldKind]
    sfFromStart = [sfLoadFromStart]
    Left = 512
    Top = 182
  end
  object spToBancoLeon: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomToBancoLeon;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 628
    Top = 118
    object spToBancoLeonCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 8000
    end
  end
  object spFromTransParaNomina: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomInsTransFromParaNomina;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdTransParaNomina'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 325
    Top = 246
  end
  object mTrans: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CodigoExterno'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TipoTransaccionId'
        DataType = ftInteger
      end
      item
        Name = 'Transaccion'
        DataType = ftFloat
      end
      item
        Name = 'Nota'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'xCantidad'
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
    DefaultFormat = kbmFormatTrans
    CommaTextFormat = kbmFormatTrans
    PersistentFormat = kbmFormatTrans
    AllDataFormat = kbmFormatTrans
    FormFormat = kbmFormatTrans
    Left = 332
    Top = 88
    object mTransCodigoExterno: TStringField
      FieldName = 'CodigoExterno'
      Size = 30
    end
    object mTransNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mTransTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object mTransTransaccion: TStringField
      FieldName = 'Transaccion'
    end
    object mTransNota: TStringField
      FieldName = 'Nota'
      Size = 50
    end
    object mTransxCantidad: TFloatField
      FieldName = 'xCantidad'
    end
  end
  object kbmFormatTrans: TkbmCSVStreamFormat
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = #0
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    sfLocalFormat = []
    sfQuoteOnlyStrings = []
    sfNoHeader = [sfLoadNoHeader]
    Version = '3.00'
    sfData = [sfSaveData, sfLoadData]
    sfCalculated = []
    sfLookup = []
    sfNonVisible = [sfSaveNonVisible, sfLoadNonVisible]
    sfBlobs = [sfSaveBlobs, sfLoadBlobs]
    sfDef = [sfSaveDef, sfLoadDef]
    sfIndexDef = [sfSaveIndexDef, sfLoadIndexDef]
    sfPlaceHolders = []
    sfFiltered = [sfSaveFiltered]
    sfIgnoreRange = [sfSaveIgnoreRange]
    sfIgnoreMasterDetail = [sfSaveIgnoreMasterDetail]
    sfDeltas = []
    sfDontFilterDeltas = []
    sfAppend = []
    sfFieldKind = [sfSaveFieldKind]
    sfFromStart = [sfLoadFromStart]
    Left = 333
    Top = 136
  end
end
