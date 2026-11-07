inherited EditarLista: TEditarLista
  Left = 475
  Top = 216
  Caption = 'Editar definicio de lista rapida'
  ClientHeight = 445
  ClientWidth = 627
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 5
    Width = 85
    Height = 13
    Caption = 'Nombre de la lista'
  end
  object Label2: TLabel [1]
    Left = 6
    Top = 49
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object Label3: TLabel [2]
    Left = 266
    Top = 49
    Width = 81
    Height = 13
    Caption = 'Tipo de comando'
  end
  object Label4: TLabel [3]
    Left = 408
    Top = 49
    Width = 55
    Height = 13
    Caption = 'Parametros'
  end
  object Label5: TLabel [4]
    Left = 6
    Top = 89
    Width = 54
    Height = 13
    Caption = 'Descripcion'
  end
  object Label6: TLabel [5]
    Left = 6
    Top = 151
    Width = 45
    Height = 13
    Caption = 'Comando'
  end
  object cxDBTextEdit1: TcxDBTextEdit [6]
    Left = 6
    Top = 19
    Width = 503
    Height = 21
    DataBinding.DataField = 'Lista'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBCheckBox1: TcxDBCheckBox [7]
    Left = 558
    Top = 17
    Width = 75
    Height = 21
    Caption = 'Visible'
    DataBinding.DataField = 'Activa'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBTextEdit2: TcxDBTextEdit [8]
    Left = 6
    Top = 63
    Width = 241
    Height = 21
    DataBinding.DataField = 'Categoria'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBImageComboBox1: TcxDBImageComboBox [9]
    Left = 266
    Top = 63
    Width = 121
    Height = 21
    DataBinding.DataField = 'ADOCommandType'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = 'Stored Procedure'
        ImageIndex = 0
        Value = 'cmdStoredProc'
      end
      item
        Description = 'Comando SELECT'
        Value = 'cmdText'
      end
      item
        Description = 'Tabla directa'
        Value = 'cmdTable'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBImageComboBox2: TcxDBImageComboBox [10]
    Left = 408
    Top = 63
    Width = 121
    Height = 21
    DataBinding.DataField = 'TipoLista'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = 'Fecha de Corte'
        Value = 'F'
      end
      item
        Description = 'Rango de fechas'
        ImageIndex = 0
        Value = 'R'
      end
      item
        Description = 'Lista simple'
        Value = 'T'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBMemo1: TcxDBMemo [11]
    Left = 6
    Top = 103
    Width = 613
    Height = 41
    DataBinding.DataField = 'Descripcion'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBMemo2: TcxDBMemo [12]
    Left = 6
    Top = 165
    Width = 613
    Height = 240
    DataBinding.DataField = 'ADOCommand'
    DataBinding.DataSource = DS
    ParentFont = False
    Properties.WantTabs = True
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Courier New'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxButton1: TcxButton [13]
    Left = 6
    Top = 410
    Width = 90
    Height = 31
    Caption = 'Guardar'
    TabOrder = 7
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [14]
    Left = 187
    Top = 410
    Width = 90
    Height = 31
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 305
    Top = 186
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    OnNewRecord = rsNewRecord
    CommandText = 'select * from biLista where idLista = :idLista'
    Parameters = <
      item
        Name = 'idLista'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 190
    Top = 143
    object rsidLista: TGuidField
      FieldName = 'idLista'
      FixedChar = True
      Size = 38
    end
    object rsLista: TStringField
      FieldName = 'Lista'
      Size = 300
    end
    object rsFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsActiva: TBooleanField
      FieldName = 'Activa'
    end
    object rsCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object rsADOCommandType: TStringField
      FieldName = 'ADOCommandType'
      Size = 40
    end
    object rsADOCommand: TStringField
      FieldName = 'ADOCommand'
      Size = 1000
    end
    object rsTipoLista: TStringField
      FieldName = 'TipoLista'
      FixedChar = True
      Size = 1
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 300
    end
  end
end
