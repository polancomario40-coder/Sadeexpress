inherited ModeloTrans: TModeloTrans
  Left = 233
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Modelo'
  ClientHeight = 439
  ClientWidth = 508
  Color = clBtnFace
  DesignSize = (
    508
    439)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 430
    Top = 16
    Width = 67
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '&Localizar Num'
  end
  object ToolBar1: TToolBar [1]
    Left = 0
    Top = 0
    Width = 508
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 72
    Caption = 'ToolBar1'
    Flat = True
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 84
      Height = 30
      Action = AAgregar
      Caption = '&Agregar Trans'
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 84
      Top = 0
      Width = 83
      Height = 30
      Action = ABuscar
      Caption = '&Buscar Emp'
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton5: TSpeedButton
      Left = 167
      Top = 0
      Width = 82
      Height = 30
      Action = ATipo
      Caption = '&Tipo Trans'
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton2: TSpeedButton
      Left = 249
      Top = 0
      Width = 78
      Height = 30
      Action = ALocate
      ParentShowHint = False
      ShowHint = True
    end
    object busqueda: TEdit
      Left = 327
      Top = 0
      Width = 81
      Height = 30
      TabStop = False
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = busquedaChange
      OnExit = busquedaExit
    end
    object SpeedButton6: TSpeedButton
      Left = 408
      Top = 0
      Width = 76
      Height = 30
      Action = ASalir
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    Left = 341
  end
  object ld: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    Options = [opShowOKCancel]
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    UseTFields = False
    Left = 344
    Top = 168
  end
  object Acciones: TActionList
    Left = 344
    Top = 112
    object AAgregar: TAction
      Caption = '&Agregar'
      Hint = 'Agregar nueva linea'
      OnExecute = AAgregarExecute
    end
    object ABuscar: TAction
      Caption = '&Buscar'
      Hint = 'Buscar un Empleado'
      OnExecute = ABuscarExecute
    end
    object AFiltro: TAction
      Caption = '&Filtro'
      Hint = 'Filtrar los Datos de la Lista'
    end
    object ATipo: TAction
      Caption = '&Tipo'
      Hint = 'Seleccionar el Tipo'
      OnExecute = ATipoExecute
    end
    object ASalir: TAction
      Caption = '&Salir'
      Hint = 'Salir'
      OnExecute = ASalirExecute
    end
    object ALocate: TAction
      Caption = '&Localizar #'
      Hint = 'Localizar un Empleado en la Lista'
      OnExecute = ALocateExecute
    end
  end
end
