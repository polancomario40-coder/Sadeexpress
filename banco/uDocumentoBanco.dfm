inherited DocumentoBanco: TDocumentoBanco
  Left = 491
  Top = 128
  Caption = 'Transacciones bancarias'
  ClientHeight = 422
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient2: TGradient [0]
    Height = 7
    ColorBegin = 233266
    ColorEnd = 233266
    Style = gsLinearV
    Visible = False
  end
  inherited Gradient1: TGradient [1]
    Top = 361
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  object Label1: TLabel [2]
    Left = 7
    Top = 41
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object Label2: TLabel [3]
    Left = 190
    Top = 41
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label7: TLabel [4]
    Left = 407
    Top = 41
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel [5]
    Left = 471
    Top = 41
    Width = 46
    Height = 13
    Caption = 'Fecha St:'
  end
  object Label4: TLabel [6]
    Left = 384
    Top = 64
    Width = 56
    Height = 13
    Caption = 'Referencia:'
  end
  object Label3: TLabel [7]
    Left = 7
    Top = 64
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label5: TLabel [8]
    Left = 7
    Top = 87
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label10: TLabel [9]
    Left = 185
    Top = 87
    Width = 42
    Height = 13
    Caption = 'Moneda:'
  end
  object Label11: TLabel [10]
    Left = 412
    Top = 87
    Width = 27
    Height = 13
    Caption = 'Tasa:'
  end
  object Label9: TLabel [11]
    Left = 416
    Top = 110
    Width = 24
    Height = 13
    Caption = 'NCF:'
  end
  object Label6: TLabel [12]
    Left = 7
    Top = 110
    Width = 50
    Height = 13
    Caption = 'Concepto:'
  end
  inherited btImprimir: TcxButton
    Top = 369
    Width = 55
    Height = 49
    OnClick = btImprimirClick
  end
  inherited btLocalizar: TcxButton
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btNuevo: TcxButton
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btCancelar: TcxButton
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btGuardar: TcxButton
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btBorrar: TcxButton
    Left = 481
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btSalir: TcxButton
    Left = 564
    Top = 369
    Width = 55
    Height = 49
  end
  inherited btEditar: TcxButton
    Top = 369
    Width = 55
    Height = 49
  end
  object edId: TcxDBTextEdit [21]
    Left = 60
    Top = 37
    Width = 121
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idDocumento'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 15000804
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object deFecha: TcxDBDateEdit [22]
    Left = 228
    Top = 37
    Width = 121
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBTextEdit1: TcxDBTextEdit [23]
    Left = 444
    Top = 37
    Width = 23
    Height = 21
    TabStop = False
    BeepOnEnter = False
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBDateEdit1: TcxDBDateEdit [24]
    Left = 516
    Top = 37
    Width = 97
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'FechaStatus'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object edRef: TcxDBTextEdit [25]
    Left = 444
    Top = 60
    Width = 169
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object luCta: TcxDBLookupComboBox [26]
    Left = 60
    Top = 60
    Width = 289
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'idCuentaBanco'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBcos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object ceValor: TcxDBCurrencyEdit [27]
    Left = 60
    Top = 83
    Width = 121
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Valor'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '$,0.00;($,0.00)'
    Properties.ValidateOnEnter = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [28]
    Left = 230
    Top = 83
    Width = 119
    Height = 21
    TabStop = False
    BeepOnEnter = False
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [29]
    Left = 444
    Top = 83
    Width = 121
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '$,0.00;($,0.00)'
    Properties.ValidateOnEnter = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object cxDBTextEdit2: TcxDBTextEdit [30]
    Left = 444
    Top = 106
    Width = 174
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'CompFiscal'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object edConcepto: TcxDBTextEdit [31]
    Left = 60
    Top = 106
    Width = 315
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  object grConceptos: TcxGrid [32]
    Left = 17
    Top = 126
    Width = 614
    Height = 198
    TabOrder = 19
    LookAndFeel.NativeStyle = True
    object tvDetalle: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'idCuenta'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = tvDetalleDebito
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = tvDetalleCredito
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
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
      Styles.OnGetContentStyle = tvDetalleStylesGetContentStyle
      object tvDetalleidCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvDetalleidCuentaPropertiesButtonClick
        Options.Filtering = False
      end
      object tvDetalleDescripcion: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idCuenta'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dscat
        Options.Filtering = False
        Options.Focusing = False
        Width = 238
      end
      object tvDetalleDebito: TcxGridDBColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 87
      end
      object tvDetalleCredito: TcxGridDBColumn
        DataBinding.FieldName = 'Credito'
        Options.Filtering = False
        Width = 83
      end
      object tvDetalleDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Automatica'
        Visible = False
      end
      object tvDetalleDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'LineaNum'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object grConceptosLevel1: TcxGridLevel
      GridView = tvDetalle
    end
  end
  object cbContablizar: TcxDBCheckBox [33]
    Left = 2
    Top = 336
    Width = 193
    Height = 21
    Caption = 'Contabilizar esta transaccion'
    DataBinding.DataField = 'Contabilizar'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 20
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox [34]
    Left = 444
    Top = 11
    Width = 169
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'idTrans'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idTrans'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 21
  end
  inherited DS: TwwDataSource
    Left = 439
    Top = 171
  end
  inherited RS: TADODataSet
    CursorType = ctStatic
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'bcoRSDocumento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GuidDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 394
    Top = 218
    object RSidDocumento: TAutoIncField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object RSidTrans: TIntegerField
      FieldName = 'idTrans'
      OnValidate = RSidTransValidate
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      OnValidate = RSFechaValidate
    end
    object RSidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      OnValidate = RSidCuentaBancoValidate
    end
    object RSStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object RSFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object RSTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 3
    end
    object RSDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSValor: TBCDField
      FieldName = 'Valor'
      OnValidate = RSValorValidate
      Precision = 19
      Size = 2
    end
    object RSDebCre: TWordField
      FieldName = 'DebCre'
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Size = 500
    end
    object RSGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object RSTasa: TFloatField
      FieldName = 'Tasa'
      OnValidate = RSTasaValidate
    end
    object RSContabilizar: TBooleanField
      FieldName = 'Contabilizar'
      OnValidate = RSContabilizarValidate
    end
    object RSusuario: TStringField
      FieldName = 'usuario'
      Size = 16
    end
  end
  inherited RSDet: TADODataSet
    CursorType = ctStatic
    BeforeEdit = RSDetBeforeEdit
    CommandText = 'bcoRSDocumentoDtl'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 44
    Top = 174
    object RSDetidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object RSDetLineaNum: TAutoIncField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object RSDetidConcepto: TIntegerField
      FieldName = 'idConcepto'
    end
    object RSDetDebCre: TWordField
      FieldName = 'DebCre'
    end
    object RSDetValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object RSDetidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = RSDetidCuentaValidate
      Size = 16
    end
    object RSDetAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object RSDetidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object RSDetGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object RSDetIdDocumentosDtl: TGuidField
      FieldName = 'IdDocumentosDtl'
      FixedChar = True
      Size = 38
    end
    object RSDetDebito: TBCDField
      FieldName = 'Debito'
      OnValidate = RSDetDebitoValidate
      Precision = 19
      Size = 2
    end
    object RSDetCredito: TBCDField
      FieldName = 'Credito'
      OnValidate = RSDetDebitoValidate
      Precision = 19
      Size = 2
    end
  end
  inherited dsDet: TwwDataSource
    Left = 203
    Top = 164
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cxpBancos'
    Parameters = <>
    Left = 374
    Top = 156
    object rsBancosidCuentaBanco: TAutoIncField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBancosTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Size = 30
    end
  end
  object rsbuscarPrima: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgcuentaPrimaBuscar'
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
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Debito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 52
    Top = 256
    object rsbuscarPrimaCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 16
    end
    object rsbuscarPrimaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsbuscarPrimaDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 32
    end
    object rsbuscarPrimaCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 32
    end
  end
  object rsConceptos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from bcoConceptos'#13#10'order by descripcion'
    Parameters = <>
    Left = 140
    Top = 192
    object rsConceptosidConcepto: TIntegerField
      FieldName = 'idConcepto'
      ReadOnly = True
    end
    object rsConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsConceptosDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsConceptosidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsTipoTrans: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from bcoTiposTrans'#13#10' '
    Parameters = <>
    Left = 294
    Top = 164
    object rsTipoTransidTrans: TIntegerField
      FieldName = 'idTrans'
      ReadOnly = True
    end
    object rsTipoTransDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsTipoTransDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsTipoTransAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
    object rsTipoTransContador: TStringField
      FieldName = 'Contador'
      Size = 16
    end
    object rsTipoTransidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object dsBcos: TDataSource
    DataSet = rsBancos
    Left = 224
    Top = 221
  end
  object rsCat: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cgCatalogoCuentas'
    Parameters = <>
    Left = 12
    Top = 214
    object rsCatidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCatDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCatOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 1
    end
    object rsCatNivel: TSmallintField
      FieldName = 'Nivel'
    end
    object rsCatCtadescargue: TStringField
      FieldName = 'Ctadescargue'
      Size = 16
    end
    object rsCatFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object rsCatDetalle: TBooleanField
      FieldName = 'Detalle'
    end
    object rsCatTipoNivel: TStringField
      FieldName = 'TipoNivel'
      FixedChar = True
      Size = 1
    end
    object rsCatCtaVieja: TStringField
      FieldName = 'CtaVieja'
      Size = 16
    end
    object rsCatCtaCierre: TStringField
      FieldName = 'CtaCierre'
      Size = 16
    end
    object rsCatStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsCatFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsCatSoloAuxiliares: TBooleanField
      FieldName = 'SoloAuxiliares'
    end
    object rsCatuidCuenta: TGuidField
      FieldName = 'uidCuenta'
      FixedChar = True
      Size = 38
    end
  end
  object dscat: TDataSource
    DataSet = rsCat
    Left = 98
    Top = 163
  end
  object dsTipos: TDataSource
    DataSet = rsTipoTrans
    Left = 176
    Top = 237
  end
  object mPrimas: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idDocumento'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'LineaNum'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idConcepto'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftWord
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 100
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
    Left = 482
    Top = 158
    object mPrimasIdCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mPrimasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object mPrimasDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mPrimasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mPrimasDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object mPrimasCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object mPrimasAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
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
  object ReciboRPT: TppReport
    AutoStop = False
    DataPipeline = plRptRecibo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = 'E:\cbsexpress\cbsexpress\Recibo.rtm'
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
    Left = 360
    Top = 65
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'plRptRecibo'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 61383
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 2381
        mmTop = 14288
        mmWidth = 96044
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Pitch = fpFixed
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 9017
        mmLeft = 1588
        mmTop = 3969
        mmWidth = 115359
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 17463
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'SUCURSARDireccion'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 13229
        mmWidth = 128588
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'SUCURSARLTelefono'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 22225
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 65352
        mmTop = 22225
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 16140
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idDocumento'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 4233
        mmTop = 21696
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 62706
        mmTop = 16140
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 62706
        mmTop = 21696
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 16140
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 33073
        mmTop = 21696
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TRANSACCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 22
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8996
        mmLeft = 136525
        mmTop = 2117
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 17727
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TEL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 22225
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FAX :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 48948
        mmTop = 22225
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 31195
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label201'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 36249
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1849
        mmTop = 46845
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Banco'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 22754
        mmTop = 31220
        mmWidth = 74348
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 22754
        mmTop = 36249
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Concepto'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 22754
        mmTop = 46840
        mmWidth = 120915
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Moneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 50609
        mmTop = 36245
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'idMoneda'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 71511
        mmTop = 36245
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 98497
        mmTop = 35715
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Tasa'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 119399
        mmTop = 35715
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Transaccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 17465
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'idTrans'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 171461
        mmTop = 17465
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 22492
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 171458
        mmTop = 22496
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 54769
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 29898
        mmTop = 55033
        mmWidth = 73290
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 104511
        mmTop = 55033
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 130704
        mmTop = 54769
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 1588
        mmLeft = 2379
        mmTop = 59002
        mmWidth = 158486
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 12437
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'usuario'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 171452
        mmTop = 12437
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 1855
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'descripcion'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 29898
        mmTop = 1855
        mmWidth = 73290
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 104511
        mmTop = 1855
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 130704
        mmTop = 1855
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Realizado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 22754
        mmTop = 6615
        mmWidth = 32808
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Autorizado Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 101071
        mmTop = 6615
        mmWidth = 32808
        BandType = 8
        LayerName = Foreground
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 794
        mmLeft = 1588
        mmTop = 4233
        mmWidth = 75671
        BandType = 8
        LayerName = Foreground
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 794
        mmLeft = 85196
        mmTop = 4233
        mmWidth = 75671
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plRptRecibo: TppDBPipeline
    DataSource = dsRPT
    UserName = 'plRptRecibo'
    Left = 368
    Top = 19
    object plRptReciboppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plRptReciboppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'LineaNum'
      FieldName = 'LineaNum'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 1
    end
    object plRptReciboppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idConcepto'
      FieldName = 'idConcepto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plRptReciboppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 3
    end
    object plRptReciboppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object plRptReciboppField6: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plRptReciboppField7: TppField
      FieldAlias = 'Automatica'
      FieldName = 'Automatica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object plRptReciboppField8: TppField
      FieldAlias = 'idAuxiliar'
      FieldName = 'idAuxiliar'
      FieldLength = 16
      DisplayWidth = 16
      Position = 7
    end
    object plRptReciboppField9: TppField
      FieldAlias = 'GUIDDocumento'
      FieldName = 'GUIDDocumento'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 8
    end
    object plRptReciboppField10: TppField
      FieldAlias = 'IdDocumentosDtl'
      FieldName = 'IdDocumentosDtl'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 9
    end
    object plRptReciboppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object plRptReciboppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plRptReciboppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object plRptReciboppField14: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plRptReciboppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object plRptReciboppField16: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plRptReciboppField17: TppField
      FieldAlias = 'FechaStatus'
      FieldName = 'FechaStatus'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object plRptReciboppField18: TppField
      FieldAlias = 'TipoDocOrigen'
      FieldName = 'TipoDocOrigen'
      FieldLength = 3
      DisplayWidth = 3
      Position = 17
    end
    object plRptReciboppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocOrigen'
      FieldName = 'DocOrigen'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object plRptReciboppField20: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object plRptReciboppField21: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object plRptReciboppField22: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 21
    end
    object plRptReciboppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object plRptReciboppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object plRptReciboppField25: TppField
      FieldAlias = 'Contabilizar'
      FieldName = 'Contabilizar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 24
    end
    object plRptReciboppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento_1'
      FieldName = 'idDocumento_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object plRptReciboppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre_1'
      FieldName = 'DebCre_1'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 26
    end
    object plRptReciboppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_1'
      FieldName = 'Valor_1'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 27
    end
    object plRptReciboppField29: TppField
      FieldAlias = 'GUIDDocumento_1'
      FieldName = 'GUIDDocumento_1'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 28
    end
    object plRptReciboppField30: TppField
      FieldAlias = 'descripcion'
      FieldName = 'descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 29
    end
    object plRptReciboppField31: TppField
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 30
    end
    object plRptReciboppField32: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 16
      DisplayWidth = 16
      Position = 31
    end
  end
  object rsRPTDocumentos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeEdit = RSDetBeforeEdit
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnNewRecord = RSDetNewRecord
    CommandText = 'bcoRPTDocumento'
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
        Name = '@GuidDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 412
    Top = 308
    object IntegerField1: TIntegerField
      FieldName = 'idDocumento'
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'idConcepto'
    end
    object WordField1: TWordField
      FieldName = 'DebCre'
    end
    object BCDField1: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object StringField1: TStringField
      FieldName = 'idCuenta'
      OnValidate = RSDetidCuentaValidate
      Size = 16
    end
    object BooleanField1: TBooleanField
      FieldName = 'Automatica'
    end
    object StringField2: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object GuidField1: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object GuidField2: TGuidField
      FieldName = 'IdDocumentosDtl'
      FixedChar = True
      Size = 38
    end
    object BCDField2: TBCDField
      FieldName = 'Debito'
      OnValidate = RSDetDebitoValidate
      Precision = 19
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'Credito'
      OnValidate = RSDetDebitoValidate
      Precision = 19
      Size = 2
    end
    object rsRPTDocumentosidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsRPTDocumentosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRPTDocumentosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsRPTDocumentosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsRPTDocumentosFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsRPTDocumentosTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 3
    end
    object rsRPTDocumentosDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsRPTDocumentosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsRPTDocumentosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 500
    end
    object rsRPTDocumentosCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsRPTDocumentosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsRPTDocumentosTasa: TFloatField
      FieldName = 'Tasa'
    end
    object rsRPTDocumentosContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
    object rsRPTDocumentosidDocumento_1: TIntegerField
      FieldName = 'idDocumento_1'
    end
    object rsRPTDocumentosDebCre_1: TWordField
      FieldName = 'DebCre_1'
    end
    object rsRPTDocumentosValor_1: TBCDField
      FieldName = 'Valor_1'
      Precision = 19
      Size = 2
    end
    object rsRPTDocumentosGUIDDocumento_1: TGuidField
      FieldName = 'GUIDDocumento_1'
      FixedChar = True
      Size = 38
    end
    object rsRPTDocumentosdescripcion: TStringField
      FieldName = 'descripcion'
      ReadOnly = True
      Size = 60
    end
    object rsRPTDocumentosBanco: TStringField
      FieldName = 'Banco'
      ReadOnly = True
      Size = 100
    end
    object rsRPTDocumentosusuario: TStringField
      FieldName = 'usuario'
      Size = 16
    end
  end
  object dsRPT: TwwDataSource
    AutoEdit = False
    DataSet = rsRPTDocumentos
    OnUpdateData = DSUpdateData
    Left = 361
    Top = 300
  end
end
