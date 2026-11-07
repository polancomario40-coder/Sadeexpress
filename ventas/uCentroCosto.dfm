inherited CentroCosto: TCentroCosto
  Left = 933
  Top = 140
  Caption = 'Centros de Costos'
  ClientHeight = 567
  ClientWidth = 794
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 794
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 57
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 88
    Width = 56
    Height = 13
    Caption = 'Descripcion'
  end
  object Label7: TLabel [3]
    Left = 663
    Top = 91
    Width = 21
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Tipo'
  end
  object Label2: TLabel [4]
    Left = 196
    Top = 58
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Label4: TLabel [5]
    Left = 622
    Top = 57
    Width = 60
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Orden Visual'
  end
  object Label5: TLabel [6]
    Left = 18
    Top = 121
    Width = 95
    Height = 13
    Caption = 'Centro Cost. Pricipal'
  end
  object Label6: TLabel [7]
    Left = 660
    Top = 122
    Width = 24
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Nivel'
  end
  object Label8: TLabel [8]
    Left = 378
    Top = 57
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Status'
  end
  object Label10: TLabel [9]
    Left = 19
    Top = 231
    Width = 87
    Height = 13
    Caption = 'Periodo de Gastos'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 794
    inherited nuevo: TwwNavButton
      Width = 114
    end
    inherited editar: TwwNavButton
      Left = 114
      Width = 114
    end
    inherited guardar: TwwNavButton
      Left = 228
      Width = 114
    end
    inherited cancelar: TwwNavButton
      Left = 342
      Width = 113
    end
    inherited borrar: TwwNavButton
      Left = 455
      Width = 113
    end
    inherited BLocalizarx: TwwNavButton
      Left = 568
      Width = 113
    end
    inherited salir: TwwNavButton
      Left = 681
      Width = 113
    end
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [11]
    Left = 533
    Top = 53
    Width = 57
    Style.Edges = []
    TabOrder = 1
    Alignment = taRightJustify
    Caption = 'Activo'
    DataField = 'Activo'
    DataSource = DS
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 1
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [12]
    Left = 122
    Top = 118
    Width = 520
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataBinding.DataField = 'idCentroCostoParent'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idCentroCosto'
    Properties.ListColumns = <
      item
        Caption = 'Centro Costo Principal'
        FieldName = 'CentroCosto'
      end>
    Properties.ListSource = dsParent
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBTextEdit1: TcxDBTextEdit [13]
    Left = 78
    Top = 54
    Width = 95
    Height = 21
    DataBinding.DataField = 'CentroCosto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit2: TcxDBTextEdit [14]
    Left = 257
    Top = 54
    Width = 93
    Height = 21
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBTextEdit3: TcxDBTextEdit [15]
    Left = 690
    Top = 86
    Width = 97
    Height = 21
    TabStop = False
    Anchors = [akTop, akRight]
    DataBinding.DataField = 'Tipo'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBTextEdit4: TcxDBTextEdit [16]
    Left = 690
    Top = 54
    Width = 97
    Height = 21
    Anchors = [akTop, akRight]
    DataBinding.DataField = 'Orden'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBTextEdit5: TcxDBTextEdit [17]
    Left = 78
    Top = 86
    Width = 564
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataBinding.DataField = 'CentroCostoDesc'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxDBTextEdit6: TcxDBTextEdit [18]
    Left = 690
    Top = 118
    Width = 97
    Height = 21
    TabStop = False
    Anchors = [akTop, akRight]
    DataBinding.DataField = 'Nivel'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBTextEdit7: TcxDBTextEdit [19]
    Left = 420
    Top = 54
    Width = 97
    Height = 21
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBMemo1: TcxDBMemo [20]
    Left = 4
    Top = 154
    Width = 786
    Height = 51
    Anchors = [akLeft, akTop, akRight]
    DataBinding.DataField = 'Nota'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object Gridx: TcxGrid [21]
    Left = 4
    Top = 256
    Width = 786
    Height = 308
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    LookAndFeel.NativeStyle = True
    object GridxDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idDocumento'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridxDBTableView1Valor
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = GridxDBTableView1Valor
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object GridxDBTableView1idDocumento: TcxGridDBColumn
        DataBinding.FieldName = 'idDocumento'
        Visible = False
      end
      object GridxDBTableView1idCentroCosto: TcxGridDBColumn
        DataBinding.FieldName = 'idCentroCosto'
        Visible = False
      end
      object GridxDBTableView1idPartida: TcxGridDBColumn
        DataBinding.FieldName = 'idPartida'
        Visible = False
      end
      object GridxDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 82
      end
      object GridxDBTableView1Partida: TcxGridDBColumn
        DataBinding.FieldName = 'Partida'
        Width = 137
      end
      object GridxDBTableView1Documento: TcxGridDBColumn
        DataBinding.FieldName = 'Documento'
        Width = 84
      end
      object GridxDBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Width = 105
      end
      object GridxDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Width = 94
      end
      object GridxDBTableView1Notas: TcxGridDBColumn
        DataBinding.FieldName = 'Notas'
        Width = 241
      end
    end
    object GridxLevel1: TcxGridLevel
      GridView = GridxDBTableView1
    end
  end
  object cxButton1: TcxButton [22]
    Left = 378
    Top = 219
    Width = 132
    Height = 33
    Caption = 'Mostrar Costos y Gastos'
    TabOrder = 12
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object Hasta: TcxDateEdit [23]
    Left = 242
    Top = 227
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object Desde: TcxDateEdit [24]
    Left = 112
    Top = 227
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  inherited DS: TwwDataSource
    Left = 329
    Top = 111
  end
  inherited ImageList: TImageList
    Left = 146
    Top = 153
  end
  inherited Acciones: TActionList
    Left = 396
    Top = 153
    object AGetGrupo: TAction
      Caption = 'AGetGrupo'
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsCentroCosto;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 265
    Top = 110
    object RSidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object RSCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object RSCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 300
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
    end
    object RSTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object RSidCentroCostoParent: TGuidField
      FieldName = 'idCentroCostoParent'
      OnValidate = RSidCentroCostoParentValidate
      FixedChar = True
      Size = 38
    end
    object RSOrden: TIntegerField
      FieldName = 'Orden'
    end
    object RSNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object RSStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object RSNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
  end
  object CCParent: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnNewRecord = RSNewRecord
    CommandText = 'CostCentroCostoList;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 257
    Top = 183
    object CCParentidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object CCParentCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object CCParentNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object CCParentActivo: TBooleanField
      FieldName = 'Activo'
    end
    object CCParentTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
  end
  object dsParent: TwwDataSource
    AutoEdit = False
    DataSet = CCParent
    OnUpdateData = DSUpdateData
    Left = 325
    Top = 182
  end
  object DS2: TwwDataSource
    AutoEdit = False
    DataSet = rsdet
    OnUpdateData = DSUpdateData
    Left = 485
    Top = 399
  end
  object rsdet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsCentroCostoDetalle;1'
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
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
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
    Left = 442
    Top = 334
    object rsdetidDocumento: TGuidField
      FieldName = 'idDocumento'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsdetidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsdetidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object rsdetPartida: TStringField
      FieldName = 'Partida'
      Size = 100
    end
    object rsdetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsdetDocumento: TStringField
      FieldName = 'Documento'
      Size = 16
    end
    object rsdetTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object rsdetValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsdetNotas: TStringField
      FieldName = 'Notas'
      Size = 300
    end
  end
end
