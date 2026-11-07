inherited GenDeposito: TGenDeposito
  Left = 362
  Top = 167
  Caption = 'Generar depositos'
  ClientHeight = 554
  ClientWidth = 815
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 21
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 21
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel [2]
    Left = 411
    Top = 21
    Width = 33
    Height = 13
    Caption = 'Banco:'
  end
  object deDesde: TcxDateEdit [3]
    Left = 44
    Top = 17
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [4]
    Left = 212
    Top = 17
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.ReadOnly = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [5]
    Left = 690
    Top = 13
    Width = 96
    Height = 30
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxPageControl1: TcxPageControl [6]
    Left = 4
    Top = 44
    Width = 807
    Height = 464
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 3
    ClientRectBottom = 460
    ClientRectLeft = 2
    ClientRectRight = 803
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detalle'
      ImageIndex = 0
      DesignSize = (
        801
        438)
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 801
        Height = 438
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DS
          DataController.KeyFieldNames = 'idRecibo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Recibo: TcxGridDBColumn
            DataBinding.FieldName = 'Recibo'
            Options.Editing = False
            Options.Filtering = False
            Width = 87
          end
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 86
          end
          object cxGrid1DBTableView1Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Options.Editing = False
            Options.Filtering = False
            Width = 238
          end
          object cxGrid1DBTableView1idPagoForma: TcxGridDBColumn
            Caption = 'Forma de pago'
            DataBinding.FieldName = 'idPagoForma'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
          end
          object cxGrid1DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Options.Filtering = False
            Width = 98
          end
          object cxGrid1DBTableView1idCuentaBanco: TcxGridDBColumn
            Caption = 'Depositar en'
            DataBinding.FieldName = 'idCuentaBanco'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idCuentaBanco'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsBcos
            Options.Filtering = False
            Width = 167
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Resumen'
      ImageIndex = 1
      DesignSize = (
        801
        438)
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 801
        Height = 260
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid2DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDeps
          DataController.KeyFieldNames = 'idCuentaBanco'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Column = cxGrid2DBTableView1TotalDeposito
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1idCuentaBanco: TcxGridDBColumn
            Caption = 'Cuenta de banco'
            DataBinding.FieldName = 'CtaBanco'
            Options.Editing = False
            Options.Filtering = False
            Width = 217
          end
          object cxGrid2DBTableView1TotalDeposito: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TotalDeposito'
            Options.Editing = False
            Options.Filtering = False
            Width = 102
          end
          object cxGrid2DBTableView1Concepto: TcxGridDBColumn
            DataBinding.FieldName = 'Concepto'
            Options.Editing = False
            Options.Filtering = False
            Width = 456
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 261
        Width = 801
        Height = 174
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDet
          DataController.KeyFieldNames = 'Linea'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1idPagoForma: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'idPagoForma'
            Options.Editing = False
            Options.Filtering = False
            Width = 176
          end
          object cxGridDBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Options.Editing = False
            Options.Filtering = False
            Width = 74
          end
          object cxGridDBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Options.Filtering = False
            Width = 525
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object luBco: TcxLookupComboBox [7]
    Left = 448
    Top = 17
    Width = 231
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBcos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxButton2: TcxButton [8]
    Left = 4
    Top = 511
    Width = 117
    Height = 34
    Caption = 'Generar depositos'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [9]
    Left = 669
    Top = 511
    Width = 117
    Height = 34
    Caption = 'Salir'
    TabOrder = 6
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [10]
    Left = 174
    Top = 511
    Width = 117
    Height = 34
    Caption = 'Imprimir cuadre'
    TabOrder = 7
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [11]
    Left = 332
    Top = 511
    Width = 151
    Height = 34
    Caption = 'Imprimir detalle de depositos'
    TabOrder = 8
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = mRecibos
    Left = 189
    Top = 195
  end
  object rsRecibos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svRecibosADepositar'
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
      end>
    Left = 62
    Top = 176
    object rsRecibosidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object rsRecibosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object rsRecibosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRecibosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object rsRecibosidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object rsRecibosValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsRecibosCC: TStringField
      FieldName = 'CC'
    end
    object rsRecibosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsRecibosMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object mRecibos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idRecibo'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'Recibo'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Fecha'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'idPagoForma'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'CC'
        DataType = ftString
        Size = 20
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
    AfterPost = mRecibosAfterPost
    AfterDelete = mRecibosAfterPost
    OnNewRecord = mRecibosNewRecord
    Left = 166
    Top = 148
    object mRecibosidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object mRecibosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object mRecibosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mRecibosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object mRecibosidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object mRecibosValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object mRecibosCC: TStringField
      FieldName = 'CC'
    end
    object mRecibosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mRecibosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mRecibosMoneda: TStringField
      FieldName = 'Moneda'
      Size = 30
    end
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select idCuentaBanco, Nombre, idCuentaMayor, idMoneda '#13#10'from cxp' +
      'Bancos'#13#10'union'#13#10'select -1, '#39'(No depositar)'#39', null, 1'#13#10'order by 2'
    Parameters = <>
    Left = 60
    Top = 237
    object rsBancosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
  end
  object mDepositos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuentaBanco'
        DataType = ftInteger
      end
      item
        Name = 'CantCks'
        DataType = ftInteger
      end
      item
        Name = 'TotalEfectivo'
        DataType = ftCurrency
      end
      item
        Name = 'TotalCks'
        DataType = ftCurrency
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'idMoneda'
        DataType = ftInteger
      end
      item
        Name = 'Tasa'
        DataType = ftFloat
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CtaBanco'
        DataType = ftString
        Size = 200
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
    AfterScroll = mDepositosAfterScroll
    Left = 148
    Top = 402
    object mDepositosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mDepositosCantCks: TIntegerField
      FieldName = 'CantCks'
    end
    object mDepositosTotalEfectivo: TCurrencyField
      FieldName = 'TotalEfectivo'
    end
    object mDepositosTotalCks: TCurrencyField
      FieldName = 'TotalCks'
    end
    object mDepositosTotalDeposito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalDeposito'
      Calculated = True
    end
    object mDepositosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object mDepositosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mDepositosTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mDepositosidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mDepositosCtaBanco: TStringField
      FieldName = 'CtaBanco'
      Size = 200
    end
  end
  object dsDeps: TwwDataSource
    AutoEdit = False
    DataSet = mDepositos
    OnUpdateData = DSUpdateData
    Left = 353
    Top = 201
  end
  object dsBcos: TwwDataSource
    AutoEdit = False
    DataSet = rsBancos
    OnUpdateData = DSUpdateData
    Left = 263
    Top = 293
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 6452066
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 13686736
    end
  end
  object mDetalle: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuentaBanco'
        DataType = ftInteger
      end
      item
        Name = 'idPagoForma'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Cantidad'
        DataType = ftInteger
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Linea'
        DataType = ftAutoInc
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
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
    Left = 498
    Top = 158
    object mDetalleidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mDetalleidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object mDetalleCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object mDetalleValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mDetalleLinea: TAutoIncField
      FieldName = 'Linea'
    end
    object mDetalleidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object dsDet: TwwDataSource
    AutoEdit = False
    DataSet = mDetalle
    OnUpdateData = DSUpdateData
    Left = 263
    Top = 363
  end
  object cInsDeposito: TADOCommand
    CommandText = 'bcoGuardarDocumento;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idTrans'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idCuentaBanco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Status'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@FechaStatus'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TipoDocOrigen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@DocOrigen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DebCre'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Concepto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6000
        Value = Null
      end
      item
        Name = '@nid'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@CompFiscal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
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
        Name = '@tasa'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Contabilizar'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 366
    Top = 398
  end
  object cInsDet: TADOCommand
    CommandText = 'bcoGuardarDocDtl;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DebCre'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAuxiliar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Automatica'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 478
    Top = 416
  end
  object rsCuadre: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svCuadreRecibos;1'
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
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 342
    Top = 138
    object rsCuadreidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object rsCuadreRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object rsCuadreFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCuadreCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object rsCuadreidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object rsCuadreValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsCuadreCC: TStringField
      FieldName = 'CC'
    end
    object rsCuadreidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsCuadreMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsCuadreUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsCuadreCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
  end
  object dsCuadre: TDataSource
    DataSet = rsCuadre
    Left = 416
    Top = 136
  end
  object RPTCuadre: TppReport
    AutoStop = False
    DataPipeline = plCuadre
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 426
    Top = 220
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plCuadre'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Cuadre de caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6773
        mmLeft = 1588
        mmTop = 0
        mmWidth = 99484
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 165217
        mmTop = 529
        mmWidth = 36661
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 189379
        mmTop = 4498
        mmWidth = 12234
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 3387
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 15198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppShape3: TppShape
        OnPrint = ppShape3Print
        UserName = 'Shape3'
        Brush.Color = 15066597
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Recibo'
        DataPipeline = plCuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCuadre'
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Fecha'
        DataPipeline = plCuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCuadre'
        mmHeight = 3260
        mmLeft = 29104
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Cliente'
        DataPipeline = plCuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCuadre'
        mmHeight = 3260
        mmLeft = 60061
        mmTop = 0
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Valor'
        DataPipeline = plCuadre
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCuadre'
        mmHeight = 3260
        mmLeft = 157692
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Usuario'
      DataPipeline = plCuadre
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCuadre'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 15066597
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'Usuario'
          DataPipeline = plCuadre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 5556
          mmLeft = 1323
          mmTop = 794
          mmWidth = 91811
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plCuadre
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCuadre'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'Moneda'
          DataPipeline = plCuadre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3725
          mmLeft = 1323
          mmTop = 265
          mmWidth = 32808
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15066597
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4233
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Valor'
          DataPipeline = plCuadre
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3387
          mmLeft = 157957
          mmTop = 529
          mmWidth = 32544
          BandType = 5
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 529
          mmWidth = 10054
          BandType = 5
          GroupNo = 1
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'Moneda'
          DataPipeline = plCuadre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3704
          mmLeft = 11906
          mmTop = 529
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'Usuario'
          DataPipeline = plCuadre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 529
          mmWidth = 36777
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'idPagoForma'
      DataPipeline = plCuadre
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCuadre'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 7938
          mmWidth = 203200
          BandType = 3
          GroupNo = 2
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1323
          mmTop = 4233
          mmWidth = 20902
          BandType = 3
          GroupNo = 2
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 29104
          mmTop = 4233
          mmWidth = 20902
          BandType = 3
          GroupNo = 2
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 60061
          mmTop = 4233
          mmWidth = 30956
          BandType = 3
          GroupNo = 2
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'idPagoForma'
          DataPipeline = plCuadre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3725
          mmLeft = 1323
          mmTop = 0
          mmWidth = 26458
          BandType = 3
          GroupNo = 2
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 157692
          mmTop = 4233
          mmWidth = 33073
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Valor'
          DataPipeline = plCuadre
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCuadre'
          mmHeight = 3387
          mmLeft = 157957
          mmTop = 529
          mmWidth = 32544
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
  object plCuadre: TppDBPipeline
    DataSource = dsCuadre
    UserName = 'Cuadre'
    Left = 516
    Top = 224
  end
  object RPTDeps: TppReport
    AutoStop = False
    DataPipeline = plResumen
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 734
    Top = 104
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plResumen'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Depositos a generar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6773
        mmLeft = 1588
        mmTop = 0
        mmWidth = 99484
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158221
        mmTop = 529
        mmWidth = 43656
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 173302
        mmTop = 4498
        mmWidth = 28310
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        CalcOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 3387
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 15198
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppShape4: TppShape
        OnPrint = ppShape3Print
        UserName = 'Shape3'
        Brush.Color = 15066597
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 8467
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        DataField = 'CtaBanco'
        DataPipeline = plResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plResumen'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 4233
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText3'
        DataField = 'Concepto'
        DataPipeline = plResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plResumen'
        mmHeight = 3440
        mmLeft = 74613
        mmTop = 4233
        mmWidth = 81756
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText5'
        DataField = 'TotalDeposito'
        DataPipeline = plResumen
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plResumen'
        mmHeight = 3440
        mmLeft = 157692
        mmTop = 4233
        mmWidth = 32808
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plDet'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 9260
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plDet
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.04'
          mmColumnWidth = 0
          DataPipelineName = 'plDet'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'idPagoForma'
              DataPipeline = plDet
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plDet'
              mmHeight = 3387
              mmLeft = 17992
              mmTop = 1058
              mmWidth = 46831
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'Valor'
              DataPipeline = plDet
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plDet'
              mmHeight = 3440
              mmLeft = 75142
              mmTop = 1058
              mmWidth = 46831
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line1'
              Pen.Color = clSilver
              Pen.Style = psDashDot
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 0
              mmTop = 4763
              mmWidth = 203200
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 74613
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total a depositar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 529
        mmWidth = 30163
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line6'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
    end
  end
  object plResumen: TppDBPipeline
    DataSource = dsDeps
    UserName = 'Depositos'
    Left = 730
    Top = 154
  end
  object plDet: TppDBPipeline
    DataSource = dsDet
    UserName = 'Detalle'
    Left = 642
    Top = 138
  end
end
