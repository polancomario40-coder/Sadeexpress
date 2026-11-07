object fEditarEstados: TfEditarEstados
  Left = 493
  Top = 177
  Width = 817
  Height = 644
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edicion de estados financieros'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    809
    610)
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 7
    Top = 5
    Width = 793
    Height = 83
    DisableThemes = False
    Selected.Strings = (
      'idEstado'#9'6'#9'Numeo'
      'Descripcion'#9'46'#9'Titulo del Estado'
      'TextoPie'#9'41'#9'Texto de Pie del Estado'
      'Tipo'#9'5'#9'Tipo'
      'NotaEstado'#9'12'#9'Num. Estado')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = efds
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid2: TwwDBGrid
    Left = 7
    Top = 94
    Width = 793
    Height = 130
    DisableThemes = False
    ControlType.Strings = (
      'DebCre;CustomEdit;wwDBComboBox2;F'
      'MostrarDetalle;CheckBox;True;False'
      'MostrarHeader;CheckBox;True;False'
      'MostrarTotales;CheckBox;True;False')
    Selected.Strings = (
      'Orden'#9'5'#9'Orden'
      'Descripcion'#9'32'#9'Titulo Seccion de Primer Nivel'
      'TextoPie'#9'30'#9'Pie de Seccion de Primer Nivel'
      'DebCre'#9'11'#9'Suma / Resta'
      'MostrarDetalle'#9'12'#9'Ver Contenido'#9'F'
      'MostrarHeader'#9'7'#9'Ver Titulo'
      'MostrarTotales'#9'12'#9'Ver Total al Pie'
      'NotaGrupo'#9'10'#9'Nota')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = grds
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 14024661
  end
  object wwDBGrid5: TwwDBGrid
    Left = 7
    Top = 233
    Width = 793
    Height = 103
    DisableThemes = False
    ControlType.Strings = (
      'Negrita;CheckBox;True;False'
      'Literal;CheckBox;True;False'
      'DebCre;CustomEdit;wwDBComboBox3;F'
      'MostrarTotales;CheckBox;True;False'
      'MostrarHeader;CheckBox;True;False'
      'MostrarDetalle;CheckBox;True;False')
    Selected.Strings = (
      'Orden'#9'6'#9'Orden'
      'Descripcion'#9'31'#9'Titulo Seccion Segundo Nivel'
      'TextoPie'#9'30'#9'Pie de Seccion de Segundo Nivel'
      'DebCre'#9'11'#9'Suma / Resta'
      'MostrarDetalle'#9'12'#9'Ver Contenido'
      'MostrarHeader'#9'7'#9'Ver Titulo'
      'MostrarTotales'#9'12'#9'Ver Total al Pie'
      'NotaSec'#9'10'#9'Nota')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsSecciones
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 14024661
  end
  object wwDBGrid3: TwwDBGrid
    Left = 7
    Top = 345
    Width = 793
    Height = 118
    DisableThemes = False
    ControlType.Strings = (
      'Negrita;CheckBox;True;False'
      'Literal;CheckBox;True;False'
      'DebCre;CustomEdit;wwDBComboBox3;F'
      'MostrarDetalle;CheckBox;True;False'
      'MostrarHeader;CheckBox;True;False'
      'MostrarTotales;CheckBox;True;False')
    Selected.Strings = (
      'Orden'#9'6'#9'Orden'
      'Descripcion'#9'30'#9'Titulo Seccion de Tercer Nivel'
      'TextoPie'#9'31'#9'Pie de Seccion de Tercer Nivel'
      'DebCre'#9'11'#9'Suma / Resta'
      'MostrarDetalle'#9'12'#9'Ver Contenido'
      'MostrarHeader'#9'8'#9'Ver Titulo'
      'MostrarTotales'#9'11'#9'Ver Total al Pie'#9'F'
      'NotaItem'#9'10'#9'Nota')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = itmds
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 14024661
  end
  object grCtas: TcxGrid
    Left = 9
    Top = 474
    Width = 707
    Height = 128
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object grCtasDBTableView1: TcxGridDBTableView
      DataController.DataSource = ctasds
      DataController.KeyFieldNames = 'LineaId;idCuenta'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grCtasDBTableView1idCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        Options.Filtering = False
        Width = 84
      end
      object grCtasDBTableView1DebCre: TcxGridDBColumn
        Caption = 'Sumar ?'
        DataBinding.FieldName = 'DebCre'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '2'
        Options.Filtering = False
        Width = 49
      end
      object grCtasDBTableView1luCuenta: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idCuenta'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsCatalogo
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 503
      end
      object grCtasDBTableView1Orden: TcxGridDBColumn
        DataBinding.FieldName = 'Orden'
        Options.Filtering = False
        Width = 44
      end
    end
    object grCtasLevel1: TcxGridLevel
      GridView = grCtasDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 725
    Top = 480
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Excel'
    TabOrder = 5
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object rsEstados: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterPost = rsEstadosAfterPost
    OnNewRecord = rsEstadosNewRecord
    CommandText = 'select * from cgEstadosFinancieros'
    Parameters = <>
    Left = 18
    Top = 48
    object rsEstadosidEstado: TAutoIncField
      DisplayLabel = 'Numeo'
      DisplayWidth = 6
      FieldName = 'idEstado'
      ReadOnly = True
    end
    object rsEstadosDescripcion: TStringField
      DisplayLabel = 'Titulo del Estado'
      DisplayWidth = 46
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsEstadosTextoPie: TStringField
      DisplayLabel = 'Texto de Pie del Estado'
      DisplayWidth = 41
      FieldName = 'TextoPie'
      Size = 50
    end
    object rsEstadosTipo: TStringField
      DisplayWidth = 5
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object rsEstadosNotaEstado: TStringField
      DisplayLabel = 'Num. Estado'
      DisplayWidth = 12
      FieldName = 'NotaEstado'
    end
  end
  object rsGrupos: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsGruposNewRecord
    CommandText = 
      'select * from cgEstadosGrupos'#13#10'where idEstado = :idEstado'#13#10'order' +
      ' by Orden'
    DataSource = efds
    MasterFields = 'idEstado'
    Parameters = <
      item
        Name = 'idEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 48
    Top = 186
    object rsGruposOrden: TWordField
      DisplayWidth = 5
      FieldName = 'Orden'
    end
    object rsGruposDescripcion: TStringField
      DisplayLabel = 'Titulo Seccion de Primer Nivel'
      DisplayWidth = 32
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsGruposTextoPie: TStringField
      DisplayLabel = 'Pie de Seccion de Primer Nivel'
      DisplayWidth = 30
      FieldName = 'TextoPie'
      Size = 50
    end
    object rsGruposDebCre: TWordField
      DisplayLabel = 'Suma / Resta'
      DisplayWidth = 11
      FieldName = 'DebCre'
    end
    object rsGruposMostrarDetalle: TBooleanField
      DisplayLabel = 'Ver Contenido'
      DisplayWidth = 12
      FieldName = 'MostrarDetalle'
    end
    object rsGruposMostrarHeader: TBooleanField
      DisplayLabel = 'Ver Titulo'
      DisplayWidth = 7
      FieldName = 'MostrarHeader'
    end
    object rsGruposMostrarTotales: TBooleanField
      DisplayLabel = 'Ver Total al Pie'
      DisplayWidth = 12
      FieldName = 'MostrarTotales'
    end
    object rsGruposNotaGrupo: TStringField
      DisplayLabel = 'Nota'
      DisplayWidth = 10
      FieldName = 'NotaGrupo'
      Size = 10
    end
    object rsGruposSeccion: TStringField
      DisplayWidth = 20
      FieldName = 'Seccion'
      Visible = False
    end
    object rsGruposidGrupo: TAutoIncField
      DisplayWidth = 6
      FieldName = 'idGrupo'
      ReadOnly = True
      Visible = False
    end
    object rsGruposidEstado: TIntegerField
      DisplayWidth = 10
      FieldName = 'idEstado'
      Visible = False
    end
  end
  object efds: TDataSource
    DataSet = rsEstados
    Left = 16
    Top = 112
  end
  object grds: TDataSource
    DataSet = rsGrupos
    Left = 88
    Top = 116
  end
  object itmds: TDataSource
    DataSet = rsItems
    Left = 176
    Top = 118
  end
  object ctasds: TDataSource
    DataSet = rsCuentas
    Left = 253
    Top = 122
  end
  object rsItems: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsItemsNewRecord
    CommandText = 
      'select * from cgEstadoDetalle'#13#10'where idEstado = :idEstado and id' +
      'Grupo = :idGrupo and idSeccion = :idSeccion'#13#10'order by Orden'
    DataSource = dsSecciones
    MasterFields = 'idEstado;idGrupo;idSeccion'
    Parameters = <
      item
        Name = 'idEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'idGrupo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'idSeccion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 130
    Top = 216
    object rsItemsOrden: TIntegerField
      DisplayWidth = 6
      FieldName = 'Orden'
    end
    object rsItemsDescripcion: TStringField
      DisplayLabel = 'Titulo Seccion de Tercer Nivel'
      DisplayWidth = 30
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsItemsTextoPie: TStringField
      DisplayLabel = 'Pie de Seccion de Tercer Nivel'
      DisplayWidth = 31
      FieldName = 'TextoPie'
      Size = 50
    end
    object rsItemsDebCre: TWordField
      DisplayLabel = 'Suma / Resta'
      DisplayWidth = 11
      FieldName = 'DebCre'
    end
    object rsItemsMostrarDetalle: TBooleanField
      DisplayLabel = 'Ver Contenido'
      DisplayWidth = 12
      FieldName = 'MostrarDetalle'
    end
    object rsItemsMostrarHeader: TBooleanField
      DisplayLabel = 'Ver Titulo'
      DisplayWidth = 8
      FieldName = 'MostrarHeader'
    end
    object rsItemsMostrarTotales: TBooleanField
      DisplayLabel = 'Ver Total al Pie'
      DisplayWidth = 11
      FieldName = 'MostrarTotales'
    end
    object rsItemsNotaItem: TStringField
      DisplayLabel = 'Nota'
      DisplayWidth = 10
      FieldName = 'NotaItem'
      Size = 10
    end
    object rsItemsidItem: TAutoIncField
      DisplayWidth = 5
      FieldName = 'idItem'
      ReadOnly = True
      Visible = False
    end
    object rsItemsidEstado: TIntegerField
      DisplayWidth = 10
      FieldName = 'idEstado'
      Visible = False
    end
    object rsItemsIdGrupo: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdGrupo'
      Visible = False
    end
    object rsItemsidSeccion: TIntegerField
      FieldName = 'idSeccion'
      Visible = False
    end
  end
  object rsCuentas: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsCuentasNewRecord
    CommandText = 
      'select * from cgEstadoCuentas'#13#10'where idEstado = :idEstado'#13#10'     ' +
      'and idGrupo = :idGrupo'#13#10'     and idItem = :idItem'#13#10'order by Orde' +
      'n, idCuenta'
    DataSource = itmds
    MasterFields = 'idEstado;idGrupo;idItem'
    Parameters = <
      item
        Name = 'idEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'idGrupo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'idItem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 261
    Top = 44
    object rsCuentasidCuenta: TStringField
      DisplayWidth = 8
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCuentasDebCre: TWordField
      DisplayLabel = 'Origen'
      DisplayWidth = 7
      FieldName = 'DebCre'
    end
    object rsCuentasluCuenta: TStringField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 44
      FieldKind = fkLookup
      FieldName = 'luCuenta'
      LookupDataSet = rsCatalogo
      LookupKeyFields = 'idCuenta'
      LookupResultField = 'Descripcion'
      KeyFields = 'idCuenta'
      LookupCache = True
      Size = 60
      Lookup = True
    end
    object rsCuentasOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
    end
    object rsCuentasidEstado: TIntegerField
      DisplayWidth = 10
      FieldName = 'idEstado'
      Visible = False
    end
    object rsCuentasidGrupo: TIntegerField
      DisplayWidth = 10
      FieldName = 'idGrupo'
      Visible = False
    end
    object rsCuentasidItem: TIntegerField
      DisplayWidth = 10
      FieldName = 'idItem'
      Visible = False
    end
    object rsCuentasLineaId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'LineaId'
      ReadOnly = True
      Visible = False
    end
    object rsCuentasidSeccion: TIntegerField
      FieldName = 'idSeccion'
      Visible = False
    end
  end
  object rsCatalogo: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idCuenta, Descripcion'#13#10'from cgCatalogoCuentas'
    Parameters = <>
    Left = 411
    Top = 58
    object rsCatalogoDescripcion: TStringField
      DisplayWidth = 60
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCatalogoidCuenta: TStringField
      FieldName = 'idCuenta'
      Visible = False
      Size = 16
    end
  end
  object rsSecciones: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsSeccionesNewRecord
    CommandText = 
      'select * from cgEstadoSecciones'#13#10'where idEstado = :idEstado and ' +
      'idGrupo = :idGrupo'#13#10'order by Orden'
    DataSource = grds
    MasterFields = 'idEstado;idGrupo'
    Parameters = <
      item
        Name = 'idEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'idGrupo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 357
    Top = 148
    object rsSeccionesOrden: TIntegerField
      DisplayWidth = 6
      FieldName = 'Orden'
    end
    object rsSeccionesDescripcion: TStringField
      DisplayLabel = 'Titulo Seccion Segundo Nivel'
      DisplayWidth = 31
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsSeccionesTextoPie: TStringField
      DisplayLabel = 'Pie de Seccion de Segundo Nivel'
      DisplayWidth = 30
      FieldName = 'TextoPie'
      Size = 100
    end
    object rsSeccionesDebCre: TWordField
      DisplayLabel = 'Suma / Resta'
      DisplayWidth = 11
      FieldName = 'DebCre'
    end
    object rsSeccionesMostrarDetalle: TBooleanField
      DisplayLabel = 'Ver Contenido'
      DisplayWidth = 12
      FieldName = 'MostrarDetalle'
    end
    object rsSeccionesMostrarHeader: TBooleanField
      DisplayLabel = 'Ver Titulo'
      DisplayWidth = 7
      FieldName = 'MostrarHeader'
    end
    object rsSeccionesMostrarTotales: TBooleanField
      DisplayLabel = 'Ver Total al Pie'
      DisplayWidth = 12
      FieldName = 'MostrarTotales'
    end
    object rsSeccionesNotaSec: TStringField
      DisplayLabel = 'Nota'
      DisplayWidth = 10
      FieldName = 'NotaSec'
      Size = 10
    end
    object rsSeccionesidSeccion: TAutoIncField
      FieldName = 'idSeccion'
      ReadOnly = True
      Visible = False
    end
    object rsSeccionesidEstado: TIntegerField
      FieldName = 'idEstado'
      Visible = False
    end
    object rsSeccionesidGrupo: TIntegerField
      FieldName = 'idGrupo'
      Visible = False
    end
  end
  object dsSecciones: TDataSource
    DataSet = rsSecciones
    Left = 355
    Top = 212
  end
  object dsCatalogo: TDataSource
    DataSet = rsCatalogo
    Left = 237
    Top = 196
  end
  object sd: TSaveDialog
    Left = 221
    Top = 292
  end
end
