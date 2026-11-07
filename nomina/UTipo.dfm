inherited Tipo: TTipo
  Left = 374
  Top = 234
  Caption = 'Tipo'
  ClientHeight = 480
  ClientWidth = 772
  Color = clBtnFace
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TPageControl [0]
    Left = 3
    Top = 4
    Width = 758
    Height = 445
    ActivePage = TabSheet4
    MultiLine = True
    Style = tsButtons
    TabOrder = 0
    object TabSheet4: TTabSheet
      Caption = 'Transacciones'
      ImageIndex = 4
      object wwDBGrid4: TwwDBGrid
        Left = 1
        Top = 0
        Width = 747
        Height = 414
        DisableThemes = False
        ControlType.Strings = (
          'Debito;CheckBox;True;False'
          'Cotizable;CheckBox;true;false'
          'Tipo;CustomEdit;Tipos;F'
          'Adelanto;CheckBox;True;False'
          'Programada;CheckBox;true;false'
          'Regalia;CheckBox;true;false'
          'ISRno;CheckBox;True;False')
        Selected.Strings = (
          'TipoTransaccionID'#9'4'#9'Tipo'
          'TipoTransaccion'#9'20'#9'TipoTransaccion'
          'Debito'#9'6'#9'Ingreso'
          'Cotizable'#9'7'#9'Cotiza ~ARS/AFP'
          'Tipo'#9'7'#9'Tipo'
          'Valor'#9'7'#9'Valor'
          'Multiplo'#9'9'#9'Multiplo'
          'Adelanto'#9'7'#9'Solo ISR'
          'Programada'#9'5'#9'Prog'
          'Nota'#9'13'#9'Nota'
          'Orden'#9'5'#9'Orden'
          'Clasificacion'#9'4'#9'Clasif'
          'Regalia'#9'6'#9'Regalia'
          'ISRno'#9'7'#9'No ISR')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DsTipoTransaccion
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object Tipos: TwwDBComboBox
        Left = 360
        Top = 192
        Width = 121
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Monto'#9'M'
          'Horas'#9'H'
          'Dias30'#9'D'
          'Dias23'#9'V'
          '%'#9'P')
        ItemIndex = 0
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipos de Empleados '
      ImageIndex = 1
      object Label1: TLabel
        Left = 510
        Top = 30
        Width = 225
        Height = 39
        Caption = 
          'Cada grupo de empleados debe tener un sufijo difereente para dif' +
          'erenciar las entradas de diario, Ejm F=Fijos, T=Temporales, etc.'
        WordWrap = True
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 8
        Width = 493
        Height = 397
        DisableThemes = False
        ControlType.Strings = (
          'AFP;CheckBox;true;false')
        Selected.Strings = (
          'TipoEmpleadoID'#9'7'#9'Num'#9#9
          'TipoEmpleado'#9'20'#9'Tipo Empleado'#9#9
          'AFP'#9'17'#9'Incluir en archivo AFP'#9'F'
          'AfpNumero'#9'12'#9'N'#250'mero AFP'#9'F'
          'EntradaDiarioNum'#9'6'#9'Sufijo Entrad Diario'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsTipoEmpleado
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Imp. Renta / SS'
      ImageIndex = 8
      object wwDBGrid9: TwwDBGrid
        Left = 0
        Top = 8
        Width = 384
        Height = 299
        DisableThemes = False
        Selected.Strings = (
          'Hasta'#9'20'#9'Hasta'
          'Porciento'#9'10'#9'Porciento'
          'Mas'#9'17'#9'Mas')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DISR
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tipo Nomina'
      ImageIndex = 4
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 8
        Width = 569
        Height = 403
        DisableThemes = False
        Selected.Strings = (
          'TipoNomina'#9'10'#9'TipoNomina'#9#9
          'Dias'#9'11'#9'Dias (por hora)'#9'F'
          'SalDiasPor'#9'14'#9'Dias (Sueldo Fijo)'#9'F'
          'Anual'#9'10'#9'Anual'#9#9
          'MesSS'#9'10'#9'MesSS'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DSTipoNomina
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
    end
  end
  object Button1: TButton [1]
    Left = 10
    Top = 453
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
    OnClick = Button1Click
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = TipoNomina
    Left = 21
    Top = 301
  end
  object dsTipoEmpleado: TwwDataSource
    DataSet = TipoEmpleado
    Left = 82
    Top = 306
  end
  object DsTipoTransaccion: TwwDataSource
    DataSet = TipoTransaccion
    Left = 215
    Top = 282
  end
  object DSSemanasMes: TwwDataSource
    DataSet = SemanasMes
    Left = 48
    Top = 378
  end
  object DISR: TwwDataSource
    DataSet = ISR
    Left = 140
    Top = 370
  end
  object dsTablaSS: TDataSource
    DataSet = TablaSS
    Left = 311
    Top = 399
  end
  object DSTipoNomina: TDataSource
    DataSet = TipoNomina
    Left = 391
    Top = 255
  end
  object TipoEmpleado: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'TipoEmpleado'
    Left = 626
    Top = 50
    object TipoEmpleadoTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object TipoEmpleadoTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object TipoEmpleadoAFP: TBooleanField
      FieldName = 'AFP'
    end
    object TipoEmpleadoEntradaDiarioNum: TStringField
      FieldName = 'EntradaDiarioNum'
      Size = 6
    end
    object TipoEmpleadouidTipoEmpleado: TGuidField
      FieldName = 'uidTipoEmpleado'
      FixedChar = True
      Size = 38
    end
    object TipoEmpleadoAfpNumero: TIntegerField
      FieldName = 'AfpNumero'
    end
  end
  object ISR: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'ISR'
    Left = 626
    Top = 98
  end
  object TipoNomina: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'TipoNomina'
    Left = 468
    Top = 50
  end
  object TipoTransaccion: TADOTable
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforeDelete = TipoTransaccionBeforeDelete
    OnNewRecord = TipoTransaccionNewRecord
    TableName = 'TipoTransaccion'
    Left = 468
    Top = 100
    object TipoTransaccionTipoTransaccionID: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 4
      FieldName = 'TipoTransaccionID'
    end
    object TipoTransaccionTipoTransaccion: TStringField
      DisplayWidth = 20
      FieldName = 'TipoTransaccion'
    end
    object TipoTransaccionDebito: TBooleanField
      DisplayLabel = 'Ingreso'
      DisplayWidth = 6
      FieldName = 'Debito'
      OnValidate = TipoTransaccionDebitoValidate
    end
    object TipoTransaccionCotizable: TBooleanField
      DisplayLabel = 'Cotiza ~ARS/AFP'
      DisplayWidth = 7
      FieldName = 'Cotizable'
    end
    object TipoTransaccionTipo: TStringField
      DisplayWidth = 7
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object TipoTransaccionValor: TFloatField
      DisplayWidth = 7
      FieldName = 'Valor'
    end
    object TipoTransaccionMultiplo: TFloatField
      DisplayWidth = 9
      FieldName = 'Multiplo'
    end
    object TipoTransaccionAdelanto: TBooleanField
      DisplayLabel = 'Solo ISR'
      DisplayWidth = 7
      FieldName = 'Adelanto'
      OnValidate = TipoTransaccionAdelantoValidate
    end
    object TipoTransaccionProgramada: TBooleanField
      DisplayLabel = 'Prog'
      DisplayWidth = 5
      FieldName = 'Programada'
      ReadOnly = True
    end
    object TipoTransaccionNota: TStringField
      DisplayWidth = 13
      FieldName = 'Nota'
      Size = 60
    end
    object TipoTransaccionOrden: TIntegerField
      DisplayWidth = 5
      FieldName = 'Orden'
    end
    object TipoTransaccionClasificacion: TIntegerField
      DisplayLabel = 'Clasif'
      DisplayWidth = 4
      FieldName = 'Clasificacion'
    end
    object TipoTransaccionRegalia: TBooleanField
      DisplayWidth = 6
      FieldName = 'Regalia'
    end
    object TipoTransaccionISRno: TBooleanField
      DisplayLabel = 'No ISR'
      DisplayWidth = 7
      FieldName = 'ISRno'
    end
    object TipoTransaccionLiquidacion: TBooleanField
      FieldName = 'Liquidacion'
      Visible = False
    end
    object TipoTransaccionuidTipoTransaccion: TGuidField
      FieldName = 'uidTipoTransaccion'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object SemanasMes: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'SemanasMes'
    Left = 692
    Top = 98
  end
  object TablaSS: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'SS'
    Left = 692
    Top = 146
  end
end
