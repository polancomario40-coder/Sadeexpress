inherited GenDocumentoRec: TGenDocumentoRec
  Left = 341
  Top = 117
  Caption = 'Generar documentos recurrentes'
  ClientHeight = 515
  ClientWidth = 812
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 213
    Width = 33
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Fecha:'
  end
  object Label2: TLabel [1]
    Left = 6
    Top = 266
    Width = 24
    Height = 13
    Caption = 'NCF:'
  end
  object Label3: TLabel [2]
    Left = 185
    Top = 212
    Width = 24
    Height = 14
    Caption = 'NCF:'
  end
  object cxGrid1: TcxGrid [3]
    Left = 4
    Top = 30
    Width = 803
    Height = 179
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Preview.Column = cxGrid1DBTableView1Concepto
      Preview.MaxLineCount = 5
      object cxGrid1DBTableView1Suplidor: TcxGridDBColumn
        DataBinding.FieldName = 'Suplidor'
        Width = 365
      end
      object cxGrid1DBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Width = 288
      end
      object cxGrid1DBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Width = 97
      end
      object cxGrid1DBTableView1GenerarDia: TcxGridDBColumn
        Caption = 'Dia'
        DataBinding.FieldName = 'GenerarDia'
        Width = 51
      end
      object cxGrid1DBTableView1Desde: TcxGridDBColumn
        DataBinding.FieldName = 'Desde'
        Width = 77
      end
      object cxGrid1DBTableView1Hasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
        Width = 81
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [4]
    Left = 4
    Top = 312
    Width = 677
    Height = 200
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsHist
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Preview.MaxLineCount = 5
      object cxGridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 136
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'strGenerado'
        Width = 443
      end
      object cxGridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 110
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object deFecha: TcxDateEdit [5]
    Left = 6
    Top = 231
    Width = 171
    Height = 21
    Anchors = [akTop, akRight]
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [6]
    Left = 686
    Top = 228
    Width = 121
    Height = 31
    Anchors = [akTop, akRight]
    Caption = 'Generar'
    TabOrder = 4
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [7]
    Left = 686
    Top = 338
    Width = 121
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Abrir documento'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [8]
    Left = 686
    Top = 374
    Width = 121
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Anular generacion'
    TabOrder = 7
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cbTodos: TcxCheckBox [9]
    Left = 4
    Top = 4
    Width = 347
    Height = 21
    TabStop = False
    Caption = 'Mostrar solo los documentos recurrentes pendientes de generar al'
    Properties.ImmediatePost = True
    Properties.OnChange = cbTodosPropertiesChange
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object deHoy: TcxDateEdit [10]
    Left = 344
    Top = 4
    Width = 121
    Height = 21
    TabStop = False
    Anchors = [akTop, akRight]
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnChange = cbTodosPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object edNCF: TcxTextEdit [11]
    Left = 6
    Top = 284
    Width = 171
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object mConcepto: TcxMemo [12]
    Left = 185
    Top = 228
    Width = 496
    Height = 77
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 331
    Top = 145
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = rsAfterScroll
    CommandText = 'cxpDocumentoRecPendiente;1'
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
        Value = Null
      end
      item
        Name = '@todos'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 68
    Top = 72
    object rsiddocumento: TGuidField
      FieldName = 'iddocumento'
      FixedChar = True
      Size = 38
    end
    object rsidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsGenerarDia: TIntegerField
      FieldName = 'GenerarDia'
    end
    object rsDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object rsHasta: TDateTimeField
      FieldName = 'Hasta'
    end
  end
  object rsHist: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsHistCalcFields
    CommandText = 'cxpRSDocumentoRecHist;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 212
    Top = 128
    object rsHistidDocumentoRecHist: TIntegerField
      FieldName = 'idDocumentoRecHist'
      ReadOnly = True
    end
    object rsHistidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object rsHistGuidDocumento: TGuidField
      FieldName = 'GuidDocumento'
      FixedChar = True
      Size = 38
    end
    object rsHistFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsHistUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsHistFechaGenerado: TDateTimeField
      FieldName = 'FechaGenerado'
    end
    object rsHistStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object rsHiststrGenerado: TStringField
      FieldKind = fkCalculated
      FieldName = 'strGenerado'
      Size = 100
      Calculated = True
    end
    object rsHistidDocumentoGenerado: TIntegerField
      FieldName = 'idDocumentoGenerado'
      ReadOnly = True
    end
  end
  object dsHist: TwwDataSource
    AutoEdit = False
    DataSet = rsHist
    OnUpdateData = DSUpdateData
    Left = 325
    Top = 323
  end
  object rsBuscarHist: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpBuscarDocRecHist;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 72
    Top = 146
    object rsBuscarHistidDocumentoRecHist: TIntegerField
      FieldName = 'idDocumentoRecHist'
      ReadOnly = True
    end
    object rsBuscarHistidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object rsBuscarHistGuidDocumento: TGuidField
      FieldName = 'GuidDocumento'
      FixedChar = True
      Size = 38
    end
    object rsBuscarHistFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsBuscarHistUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsBuscarHistFechaGenerado: TDateTimeField
      FieldName = 'FechaGenerado'
    end
    object rsBuscarHistStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
  end
  object cGenDoc: TADOCommand
    CommandText = 'cxpGenerarDocumentoRec;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@ncf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end
      item
        Name = '@concepto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6000
      end>
    Left = 142
    Top = 68
  end
  object cBorrarGen: TADOCommand
    CommandText = 'cxpBorrarDocRecGenerado'
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
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 248
    Top = 66
  end
end
