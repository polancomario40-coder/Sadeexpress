inherited DocumentoRec: TDocumentoRec
  Left = 346
  Top = 146
  Caption = 'Registro de cargos de cxp recurrentes'
  ClientHeight = 546
  ClientWidth = 890
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 890
  end
  inherited Gradient2: TGradient
    Width = 890
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 41
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
    Transparent = True
  end
  object Label13: TLabel [3]
    Left = 555
    Top = 67
    Width = 38
    Height = 13
    Caption = 'Tipo ID:'
    Transparent = True
  end
  object Label12: TLabel [4]
    Left = 735
    Top = 67
    Width = 15
    Height = 13
    Caption = 'ID:'
    Transparent = True
  end
  object Label1: TLabel [5]
    Left = 8
    Top = 116
    Width = 54
    Height = 13
    Caption = 'Generar el:'
    Transparent = True
  end
  object Label5: TLabel [6]
    Left = 8
    Top = 139
    Width = 42
    Height = 13
    Caption = 'Moneda:'
    Transparent = True
  end
  object Label3: TLabel [7]
    Left = 261
    Top = 139
    Width = 28
    Height = 13
    Caption = 'Valor:'
    Transparent = True
  end
  object Label2: TLabel [8]
    Left = 235
    Top = 116
    Width = 56
    Height = 13
    Caption = 'Referencia:'
    Transparent = True
  end
  object Label10: TLabel [9]
    Left = 542
    Top = 162
    Width = 75
    Height = 13
    Caption = 'Clase de gasto:'
    Transparent = True
  end
  object Label11: TLabel [10]
    Left = 510
    Top = 139
    Width = 27
    Height = 13
    Caption = 'Tasa:'
    Transparent = True
  end
  object Label17: TLabel [11]
    Left = 700
    Top = 92
    Width = 50
    Height = 13
    Caption = 'Condicion:'
    Transparent = True
  end
  object Label18: TLabel [12]
    Left = 795
    Top = 92
    Width = 20
    Height = 13
    Caption = 'Dias'
    Transparent = True
  end
  object Label6: TLabel [13]
    Left = 451
    Top = 92
    Width = 87
    Height = 13
    Caption = 'Orden de compra:'
    Transparent = True
  end
  object Label7: TLabel [14]
    Left = 146
    Top = 116
    Width = 60
    Height = 13
    Caption = 'de cada mes'
    Transparent = True
  end
  object Label8: TLabel [15]
    Left = 546
    Top = 216
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label9: TLabel [16]
    Left = 726
    Top = 216
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label14: TLabel [17]
    Left = 8
    Top = 164
    Width = 54
    Height = 13
    Caption = 'Impuestos:'
    Transparent = True
  end
  inherited btImprimir: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  inherited btLocalizar: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  inherited btNuevo: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  inherited btCancelar: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  inherited btGuardar: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  inherited btBorrar: TcxButton
    Left = 748
    Top = 492
    Width = 56
    Height = 50
    Anchors = [akRight, akBottom]
  end
  inherited btSalir: TcxButton
    Left = 831
    Top = 492
    Width = 56
    Height = 50
    Anchors = [akRight, akBottom]
  end
  inherited btEditar: TcxButton
    Top = 492
    Width = 56
    Height = 50
  end
  object beSuplidor: TcxDBButtonEdit [26]
    Left = 68
    Top = 38
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
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object edNombre: TcxDBTextEdit [27]
    Left = 191
    Top = 38
    Width = 536
    Height = 21
    DataBinding.DataField = 'Suplidor'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object edDir: TcxDBTextEdit [28]
    Left = 68
    Top = 63
    Width = 477
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Direccion'
    DataBinding.DataSource = dsSuplidorAct
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object luTipoID: TcxDBLookupComboBox [29]
    Left = 595
    Top = 63
    Width = 135
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
    Properties.ListSource = dsTipoId
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object cxDBTextEdit2: TcxDBTextEdit [30]
    Left = 753
    Top = 63
    Width = 135
    Height = 21
    DataBinding.DataField = 'RNC'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object edTel1: TcxDBTextEdit [31]
    Left = 68
    Top = 88
    Width = 133
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono1'
    DataBinding.DataSource = dsSuplidorAct
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object edTel2: TcxDBTextEdit [32]
    Left = 295
    Top = 88
    Width = 149
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono2'
    DataBinding.DataSource = dsSuplidorAct
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object luMoneda: TcxDBLookupComboBox [33]
    Left = 68
    Top = 135
    Width = 134
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.ImmediatePost = True
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object edValor: TcxDBCurrencyEdit [34]
    Left = 295
    Top = 135
    Width = 149
    Height = 21
    DataBinding.DataField = 'Valor'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object edRef: TcxDBTextEdit [35]
    Left = 295
    Top = 112
    Width = 149
    Height = 21
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object cxDBButtonEdit1: TcxDBButtonEdit [36]
    Left = 542
    Top = 88
    Width = 134
    Height = 21
    DataBinding.DataField = 'OrdenCompra'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  object luClase: TcxDBLookupComboBox [37]
    Left = 542
    Top = 178
    Width = 342
    Height = 21
    DataBinding.DataField = 'idClaseGasto'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idClasegasto'
    Properties.ListColumns = <
      item
        FieldName = 'ClaseGasto'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsclaseGasto
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
  object cxDBMemo1: TcxDBMemo [38]
    Left = 7
    Top = 184
    Width = 530
    Height = 51
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 20
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [39]
    Left = 542
    Top = 135
    Width = 114
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 21
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit [40]
    Left = 753
    Top = 88
    Width = 33
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Dias'
    DataBinding.DataSource = DS
    Properties.AssignedValues.DisplayFormat = True
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 22
  end
  object cxDBCheckBox1: TcxDBCheckBox [41]
    Left = 542
    Top = 112
    Width = 176
    Height = 21
    TabStop = False
    Caption = 'Guardar codificacion contable'
    DataBinding.DataField = 'CodifManual'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 23
  end
  object cxDBCheckBox2: TcxDBCheckBox [42]
    Left = 752
    Top = 112
    Width = 51
    Height = 21
    TabStop = False
    Caption = 'CXP ?'
    DataBinding.DataField = 'MostrarEnCXP'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 24
  end
  object cxPageControl1: TcxPageControl [43]
    Left = 7
    Top = 240
    Width = 880
    Height = 245
    ActivePage = cxTabSheet2
    LookAndFeel.NativeStyle = True
    TabOrder = 25
    ClientRectBottom = 241
    ClientRectLeft = 2
    ClientRectRight = 876
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Codificacion'
      ImageIndex = 0
      inline frCodifCtas1: TfrCodifCtas
        Left = 0
        Top = 0
        Width = 874
        Height = 219
        Align = alClient
        TabOrder = 0
        inherited Grid: TcxGrid
          Width = 874
          Height = 219
          inherited tvCtas: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '###,###,##0.00'
                Kind = skSum
                FieldName = 'Debito'
                Column = frCodifCtas1.tvCtasDebito
              end
              item
                Format = '###,###,##0.00'
                Kind = skSum
                FieldName = 'Credito'
                Column = frCodifCtas1.tvCtasCredito
              end>
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Retenciones'
      ImageIndex = 1
      object GridRets: TcxGrid
        Left = 0
        Top = 0
        Width = 874
        Height = 219
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        OnEnter = GridRetsEnter
        LookAndFeel.NativeStyle = True
        object tvRetenciones: TcxGridDBTableView
          DataController.DataSource = dsDet
          DataController.KeyFieldNames = 'idDocumentoRecRetencion'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object GridRetsCodigo: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'idRetencion'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = GridRetsCodigoPropertiesButtonClick
            Options.Filtering = False
            Width = 156
          end
          object GridRetsRetencion: TcxGridDBColumn
            DataBinding.FieldName = 'Retencion'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 424
          end
          object GridRetsPorc: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'Porcentaje'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 99
          end
          object GridRetsMonto: TcxGridDBColumn
            DataBinding.FieldName = 'Monto'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;($,0.00)'
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Width = 123
          end
        end
        object glRetenciones: TcxGridLevel
          Caption = 'Retenciones'
          GridView = tvRetenciones
        end
      end
    end
  end
  object seGenDia: TcxDBSpinEdit [44]
    Left = 68
    Top = 112
    Width = 75
    Height = 21
    DataBinding.DataField = 'GenerarDia'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.MaxValue = 31.000000000000000000
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 26
  end
  object cxDBDateEdit1: TcxDBDateEdit [45]
    Left = 582
    Top = 212
    Width = 121
    Height = 21
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 27
  end
  object cxDBDateEdit2: TcxDBDateEdit [46]
    Left = 762
    Top = 212
    Width = 121
    Height = 21
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 28
  end
  object cxDBCheckBox3: TcxDBCheckBox [47]
    Left = 660
    Top = 136
    Width = 203
    Height = 21
    TabStop = False
    Caption = 'Usar tasa del dia de la generacion'
    DataBinding.DataField = 'UsarTasaDia'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 29
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [48]
    Left = 68
    Top = 160
    Width = 134
    Height = 21
    DataBinding.DataField = 'idTipoImpuesto'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.ImmediatePost = True
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'TipoImpuesto'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipoImp
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 30
  end
  inherited DS: TwwDataSource
    Left = 147
    Top = 47
  end
  inherited Acciones: TActionList
    Top = 184
  end
  inherited ImageList: TImageList
    Top = 188
  end
  inherited RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpRSDocumentoRec;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 24
    object RSidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object RSidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = RSidSuplidorValidate
    end
    object RSSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object RSRNC: TStringField
      FieldName = 'RNC'
    end
    object RSidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object RSidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object RSValor: TBCDField
      FieldName = 'Valor'
      OnValidate = RSValorValidate
      Precision = 19
      Size = 2
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 19
    end
    object RSUsarTasaDia: TBooleanField
      FieldName = 'UsarTasaDia'
    end
    object RSCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object RSMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSDias: TIntegerField
      FieldName = 'Dias'
    end
    object RSOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      OnValidate = RSOrdenCompraValidate
      Size = 16
    end
    object RSidOrdenCompra: TGuidField
      FieldName = 'idOrdenCompra'
      OnValidate = RSidOrdenCompraValidate
      FixedChar = True
      Size = 38
    end
    object RSidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object RSMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object RSMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object RSStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object RSDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object RSHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object RSGenerarDia: TIntegerField
      FieldName = 'GenerarDia'
    end
    object RSidTipoImpuesto: TIntegerField
      FieldName = 'idTipoImpuesto'
      OnValidate = RSidTipoImpuestoValidate
    end
    object RSPorcImpuesto: TFloatField
      FieldName = 'PorcImpuesto'
      OnValidate = RSPorcImpuestoValidate
    end
  end
  inherited RSDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpRSDocumentoRecRetencion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 80
    Top = 187
    object RSDetidDocumentoRecRetencion: TGuidField
      FieldName = 'idDocumentoRecRetencion'
      FixedChar = True
      Size = 38
    end
    object RSDetidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object RSDetidRetencion: TIntegerField
      FieldName = 'idRetencion'
      OnValidate = RSDetidRetencionValidate
    end
    object RSDetRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object RSDetPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      OnValidate = RSDetPorcentajeValidate
    end
    object RSDetMonto: TBCDField
      FieldName = 'Monto'
      OnValidate = RSDetMontoValidate
      Precision = 19
      Size = 2
    end
  end
  inherited dsDet: TwwDataSource
    Left = 157
    Top = 157
  end
  object rsSuplidorAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from cxpSuplidores where idSuplidor = :idSuplidor'
    Parameters = <
      item
        Name = 'idSuplidor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 460
    Top = 106
    object rsSuplidorActidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsSuplidorActNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsSuplidorActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object rsSuplidorActCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 50
    end
    object rsSuplidorActProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object rsSuplidorActPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object rsSuplidorActTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object rsSuplidorActTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object rsSuplidorActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
    end
    object rsSuplidorActDiasCredito: TIntegerField
      FieldName = 'DiasCredito'
    end
    object rsSuplidorActTipoSuplidor: TIntegerField
      FieldName = 'TipoSuplidor'
    end
    object rsSuplidorActRNC: TStringField
      FieldName = 'RNC'
    end
    object rsSuplidorActFechaIngreso: TDateTimeField
      FieldName = 'FechaIngreso'
    end
    object rsSuplidorActEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object rsSuplidorActEMail: TStringField
      FieldName = 'EMail'
      Size = 50
    end
    object rsSuplidorActContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rsSuplidorActTelContacto: TStringField
      FieldName = 'TelContacto'
      Size = 30
    end
    object rsSuplidorActFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object rsSuplidorActCod: TStringField
      FieldName = 'Cod'
    end
    object rsSuplidorActidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsSuplidorActTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
    end
    object rsSuplidorActidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsSuplidorActMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsSuplidorActAbrev: TStringField
      FieldName = 'Abrev'
    end
    object rsSuplidorActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsSuplidorActidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsSuplidorActPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object rsSuplidorActFormaPago: TStringField
      FieldName = 'FormaPago'
      Size = 50
    end
    object rsSuplidorActUidcxpSuplidores: TGuidField
      FieldName = 'UidcxpSuplidores'
      FixedChar = True
      Size = 38
    end
    object rsSuplidorActidSuplidorParent: TIntegerField
      FieldName = 'idSuplidorParent'
    end
  end
  object dsSuplidorAct: TDataSource
    DataSet = rsSuplidorAct
    Left = 440
    Top = 190
  end
  object rsTiposRets: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpListaRetenciones;1'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 616
    Top = 238
    object rsTiposRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
      ReadOnly = True
    end
    object rsTiposRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsTiposRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsTiposRetsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsClaseGasto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpRSClaseGasto;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 616
    Top = 408
    object rsClaseGastoidClasegasto: TStringField
      FieldName = 'idClasegasto'
      Size = 2
    end
    object rsClaseGastoClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
  end
  object dsRets: TDataSource
    DataSet = rsTiposRets
    Left = 617
    Top = 334
  end
  object dsclaseGasto: TDataSource
    DataSet = rsClaseGasto
    Left = 699
    Top = 318
  end
  object rsTipoDocID: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RSTipoIdentificacion;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 408
    Top = 309
    object rsTipoDocIDidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsTipoDocIDTipoIdentificacion: TStringField
      FieldName = 'TipoIdentificacion'
      Size = 30
    end
  end
  object dsTipoId: TDataSource
    DataSet = rsTipoDocID
    Left = 504
    Top = 308
  end
  object rsTipoImpuesto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from ocTiposImpuestos order by descripcion'
    Parameters = <>
    Left = 398
    Top = 166
    object rsTipoImpuestoTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
      ReadOnly = True
    end
    object rsTipoImpuestoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsTipoImpuestoPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 6
      Size = 2
    end
    object rsTipoImpuestoTitulo: TStringField
      FieldName = 'Titulo'
    end
    object rsTipoImpuestoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsTipoImpuestoAutoIncluir: TBooleanField
      FieldName = 'AutoIncluir'
    end
    object rsTipoImpuestoUidTipoImpuesto: TGuidField
      FieldName = 'UidTipoImpuesto'
      FixedChar = True
      Size = 38
    end
    object rsTipoImpuestoITBIS: TBooleanField
      FieldName = 'ITBIS'
    end
    object rsTipoImpuestoActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
  object dsTipoImp: TDataSource
    DataSet = rsTipoImpuesto
    Left = 659
    Top = 294
  end
  object rsBuscarCtaSup: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpBuscarCtaSuplidor'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 230
    Top = 164
    object rsBuscarCtaSupidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsBuscarCtaSupidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBuscarCtaSupidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsbuscarOCPorNumero: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select idOrden from ocOrdenes where Numero = :Numero'
    Parameters = <
      item
        Name = 'Numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 413
    Top = 374
    object rsbuscarOCPorNumeroidOrden: TGuidField
      FieldName = 'idOrden'
      FixedChar = True
      Size = 38
    end
  end
  object rsBuscarOCPorID: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select Numero from ocOrdenes where idOrden = :idOrden'
    Parameters = <
      item
        Name = 'idOrden'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 505
    Top = 380
    object rsBuscarOCPorIDNumero: TIntegerField
      FieldName = 'Numero'
    end
  end
end
