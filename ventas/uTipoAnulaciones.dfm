inherited TipoAnulaciones: TTipoAnulaciones
  Left = 362
  Top = 249
  ActiveControl = cxGrid1
  Caption = 'Tipo Anulaciones'
  ClientHeight = 275
  ClientWidth = 501
  Color = 16114392
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 501
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 278
    Top = 4
    Width = 218
    Height = 25
    Caption = 'Tipos de Anulaciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 501
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient3: TGradient
    Left = 3
    Top = 239
    Width = 496
    Height = 6
    Align = alCustom
    ColorBegin = 16749909
    ColorEnd = clWhite
    Style = gsReflectedH
  end
  object cxButton2: TcxButton
    Left = 279
    Top = 247
    Width = 108
    Height = 26
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  object bSalir: TcxButton
    Left = 391
    Top = 247
    Width = 108
    Height = 26
    Caption = '&Ok'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 35
    Width = 496
    Height = 203
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = dsTipoAnulacion
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
      end
      object cxGrid1DBTableView1Codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Options.Filtering = False
        Width = 75
      end
      object cxGrid1DBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Options.Filtering = False
        Width = 418
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object spTipoAnulacion: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svRsTipoAnulaciones;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 86
    Top = 168
    object spTipoAnulacionId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spTipoAnulacionCodigo: TStringField
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 2
    end
    object spTipoAnulacionTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 42
    end
  end
  object dsTipoAnulacion: TDataSource
    DataSet = spTipoAnulacion
    Left = 262
    Top = 166
  end
end
