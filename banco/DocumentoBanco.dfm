inherited MantClassMD1: TMantClassMD1
  Left = 481
  Top = 253
  Caption = 'Transacciones bancarias'
  ClientHeight = 422
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient2: TGradient [0]
    Height = 27
    ColorBegin = 233266
    ColorEnd = 233266
    Style = gsLinearV
  end
  inherited Gradient1: TGradient [1]
    Top = 361
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  object Label1: TLabel [2]
    Left = 7
    Top = 44
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object Label2: TLabel [3]
    Left = 190
    Top = 44
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label7: TLabel [4]
    Left = 407
    Top = 44
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label8: TLabel [5]
    Left = 471
    Top = 44
    Width = 46
    Height = 13
    Caption = 'Fecha St:'
  end
  object Label4: TLabel [6]
    Left = 384
    Top = 67
    Width = 56
    Height = 13
    Caption = 'Referencia:'
  end
  object Label3: TLabel [7]
    Left = 7
    Top = 67
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label5: TLabel [8]
    Left = 7
    Top = 90
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label10: TLabel [9]
    Left = 185
    Top = 90
    Width = 42
    Height = 13
    Caption = 'Moneda:'
  end
  object Label11: TLabel [10]
    Left = 412
    Top = 90
    Width = 27
    Height = 13
    Caption = 'Tasa:'
  end
  object Label9: TLabel [11]
    Left = 416
    Top = 113
    Width = 24
    Height = 13
    Caption = 'NCF:'
  end
  object Label6: TLabel [12]
    Left = 7
    Top = 113
    Width = 50
    Height = 13
    Caption = 'Concepto:'
  end
  inherited btImprimir: TcxButton
    Top = 369
    Width = 55
    Height = 49
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
    Top = 40
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
    Left = 227
    Top = 40
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
    Top = 40
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
    Top = 40
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
    Top = 63
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
    Top = 63
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
    Top = 86
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
    Top = 86
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
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [29]
    Left = 444
    Top = 86
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
    Top = 109
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
    Top = 109
    Width = 315
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  object grConceptos: TcxGrid [32]
    Left = 5
    Top = 132
    Width = 614
    Height = 198
    TabOrder = 19
    LookAndFeel.NativeStyle = True
    object tvDetalle: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'LineaNum'
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
      object tvDetalleidCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Options.Filtering = False
      end
      object tvDetalleDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
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
  inherited RS: TADODataSet
    Connection = dm.Coneccion
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
    object RSidDocumento: TAutoIncField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object RSidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
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
    end
    object RSContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
  end
  inherited RSDet: TADODataSet
    Connection = dm.Coneccion
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
    Left = 116
    Top = 16
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
    Left = 34
    Top = 316
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
    CommandText = 'select * from bcoTiposTrans'#13#10'where idTrans = :idTr'
    Parameters = <
      item
        Name = 'idTr'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 310
    Top = 92
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
  object StyleController: TdxEditStyleController
    BorderColor = 12109242
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 518
    Top = 175
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
    DataSet = rsBancos
    Left = 88
    Top = 209
  end
end
