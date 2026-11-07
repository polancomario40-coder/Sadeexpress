inherited PuntoReorden: TPuntoReorden
  Left = 526
  Top = 263
  Caption = 'PuntoReorden'
  ClientHeight = 489
  ClientWidth = 765
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Fecha :'
  end
  object Label2: TLabel [1]
    Left = 192
    Top = 16
    Width = 86
    Height = 13
    Caption = 'Meses  Estadisct :'
  end
  object fecha: TcxDateEdit [2]
    Left = 54
    Top = 12
    Width = 115
    Height = 21
    TabOrder = 0
  end
  object meses: TcxSpinEdit [3]
    Left = 286
    Top = 12
    Width = 53
    Height = 21
    Properties.LargeIncrement = 2.000000000000000000
    Properties.MaxValue = 12.000000000000000000
    Properties.MinValue = 1.000000000000000000
    TabOrder = 1
    Value = 4
  end
  object cxButton1: TcxButton [4]
    Left = 485
    Top = 7
    Width = 78
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [5]
    Left = 682
    Top = 7
    Width = 74
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton6: TcxButton [6]
    Left = 574
    Top = 7
    Width = 100
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  object PageControl1: TPageControl [7]
    Left = 1
    Top = 42
    Width = 763
    Height = 439
    ActivePage = TabSheet2
    TabOrder = 5
    object TabSheet2: TTabSheet
      Caption = 'Punto de Reorden'
      ImageIndex = 1
      DesignSize = (
        755
        411)
      object Grid: TcxGrid
        Left = 1
        Top = 0
        Width = 754
        Height = 411
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object GridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DS
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          object GridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object GridDBTableView1Clase: TcxGridDBColumn
            DataBinding.FieldName = 'Clase'
            Width = 50
          end
          object GridDBTableView1idProducto: TcxGridDBColumn
            Caption = 'Cod'
            DataBinding.FieldName = 'idProducto'
            Width = 68
          end
          object GridDBTableView1Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            Width = 208
          end
          object GridDBTableView1Reserva: TcxGridDBColumn
            DataBinding.FieldName = 'Reserva'
            Visible = False
            Width = 65
          end
          object GridDBTableView1Demanda: TcxGridDBColumn
            DataBinding.FieldName = 'Demanda'
            Width = 71
          end
          object GridDBTableView1ValorUtil: TcxGridDBColumn
            DataBinding.FieldName = 'ValorUtil'
            Width = 70
          end
          object GridDBTableView1Existencia: TcxGridDBColumn
            DataBinding.FieldName = 'Existencia'
            Width = 79
          end
          object GridDBTableView1BackOrder: TcxGridDBColumn
            DataBinding.FieldName = 'BackOrder'
            Width = 77
          end
          object GridDBTableView1Comprar: TcxGridDBColumn
            DataBinding.FieldName = 'Comprar'
            Width = 89
          end
          object GridDBTableView1Entrega: TcxGridDBColumn
            DataBinding.FieldName = 'Entrega'
            Width = 65
          end
          object GridDBTableView1Costo: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
            Width = 64
          end
          object GridDBTableView1Linea: TcxGridDBColumn
            DataBinding.FieldName = 'Linea'
            Width = 118
          end
          object GridDBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Width = 112
          end
          object GridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Ubicacion'
            Width = 119
          end
        end
        object GridLevel1: TcxGridLevel
          GridView = GridDBTableView1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Clases'
      DesignSize = (
        755
        411)
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 411
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsclases
          DataController.DetailKeyFieldNames = 'Clase'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Clase: TcxGridDBColumn
            DataBinding.FieldName = 'Clase'
            Width = 117
          end
          object cxGrid1DBTableView1Porcentaje: TcxGridDBColumn
            DataBinding.FieldName = 'Porcentaje'
            Width = 120
          end
          object cxGrid1DBTableView1MesesReserva: TcxGridDBColumn
            Caption = 'Meses a Comprar'
            DataBinding.FieldName = 'MesesReserva'
            Width = 156
          end
          object cxGrid1DBTableView1FactorReserva: TcxGridDBColumn
            Caption = 'Meses de Resevas'
            DataBinding.FieldName = 'FactorReserva'
            Width = 206
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'invPuntoReorden;1'
    CommandTimeout = 300
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Meses'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 376
    Top = 198
    object RSID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object RSLinea: TStringField
      FieldName = 'Linea'
      Size = 16
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 16
    end
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object RSEntrega: TBCDField
      FieldName = 'Entrega'
      Precision = 19
      Size = 2
    end
    object RSDemanda: TBCDField
      FieldName = 'Demanda'
      Precision = 19
      Size = 2
    end
    object RSCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object RSValorUtil: TBCDField
      FieldName = 'ValorUtil'
      Precision = 19
      Size = 2
    end
    object RSClase: TStringField
      FieldName = 'Clase'
      FixedChar = True
      Size = 1
    end
    object RSReserva: TBCDField
      FieldName = 'Reserva'
      Precision = 19
      Size = 2
    end
    object RSExistencia: TBCDField
      FieldName = 'Existencia'
      Precision = 19
      Size = 2
    end
    object RSBackOrder: TBCDField
      FieldName = 'BackOrder'
      Precision = 19
      Size = 2
    end
    object RSComprar: TBCDField
      FieldName = 'Comprar'
      Precision = 19
      Size = 2
    end
    object RSMeses: TBCDField
      FieldName = 'Meses'
      Precision = 19
      Size = 2
    end
    object RSUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
  end
  object Clases: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from invClase order by Clase'
    Parameters = <>
    Left = 50
    Top = 132
    object ClasesClase: TStringField
      FieldName = 'Clase'
      FixedChar = True
      Size = 10
    end
    object ClasesPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 18
      Size = 2
    end
    object ClasesMesesReserva: TBCDField
      FieldName = 'MesesReserva'
      Precision = 18
      Size = 2
    end
    object ClasesFactorReserva: TBCDField
      FieldName = 'FactorReserva'
      Precision = 18
      Size = 2
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 480
    Top = 154
  end
  object dsclases: TDataSource
    DataSet = Clases
    Left = 92
    Top = 216
  end
end
