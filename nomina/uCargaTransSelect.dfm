inherited CargaTransSelect: TCargaTransSelect
  Left = 389
  Top = 219
  BorderStyle = bsDialog
  Caption = 'Selecci'#243'n de Carga'
  ClientHeight = 220
  ClientWidth = 444
  Color = 16311512
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 3
    Top = 4
    Width = 437
    Height = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsCarga
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdTransParaNomina'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1IdTransParaNomina: TcxGridDBColumn
        DataBinding.FieldName = 'IdTransParaNomina'
        Visible = False
      end
      object cxGrid1DBTableView1TransParaNomina: TcxGridDBColumn
        Caption = 'Transacciones Para Cargar a N'#243'mina'
        DataBinding.FieldName = 'TransParaNomina'
        Options.Filtering = False
        Width = 417
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton4: TcxButton
    Left = 334
    Top = 189
    Width = 107
    Height = 28
    Caption = 'Seleccionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton
    Left = 218
    Top = 189
    Width = 107
    Height = 28
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  object qryCargas: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NominaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select '
      '  IdTransParaNomina,'
      '  TransParaNomina'
      'From '
      '  nomTransParaNomina'
      'Where'
      '  NominaId = :NominaId')
    Left = 252
    Top = 104
    object qryCargasIdTransParaNomina: TGuidField
      FieldName = 'IdTransParaNomina'
      FixedChar = True
      Size = 38
    end
    object qryCargasTransParaNomina: TStringField
      FieldName = 'TransParaNomina'
      Size = 200
    end
  end
  object dsCarga: TDataSource
    DataSet = qryCargas
    Left = 366
    Top = 56
  end
end
