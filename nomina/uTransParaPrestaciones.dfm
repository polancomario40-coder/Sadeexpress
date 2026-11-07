inherited MantTransParaPrestaciones: TMantTransParaPrestaciones
  Left = 447
  Top = 303
  Caption = 'Transacciones para Prestaciones'
  ClientHeight = 334
  ClientWidth = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 485
  end
  inherited Gradient2: TGradient
    Width = 485
  end
  object Gradient5: TGradient [2]
    Left = 6
    Top = 279
    Width = 373
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  inherited btImprimir: TcxButton
    Left = 18
    Top = 217
    Visible = False
  end
  inherited btLocalizar: TcxButton
    Left = 76
    Top = 217
    Visible = False
  end
  inherited btNuevo: TcxButton
    Left = 5
    Top = 287
  end
  inherited btCancelar: TcxButton
    Left = 122
    Top = 287
  end
  inherited btGuardar: TcxButton
    Left = 181
    Top = 287
  end
  inherited btBorrar: TcxButton
    Left = 237
    Top = 287
  end
  inherited btSalir: TcxButton
    Left = 320
    Top = 287
  end
  inherited btEditar: TcxButton
    Left = 64
    Top = 288
  end
  object cxGrid1: TcxGrid [11]
    Left = 4
    Top = 37
    Width = 477
    Height = 237
    TabOrder = 8
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1IdTransParaPrestaciones: TcxGridDBColumn
        DataBinding.FieldName = 'IdTransParaPrestaciones'
        Visible = False
      end
      object cxGrid1DBTableView1IdTipoTrans: TcxGridDBColumn
        Caption = 'Id Tipo Trans'
        DataBinding.FieldName = 'IdTipoTrans'
        Options.Filtering = False
        Width = 77
      end
      object cxGrid1DBTableView1TipoTrans: TcxGridDBColumn
        Caption = 'Tipo de Transacci'#243'n'
        DataBinding.FieldName = 'TipoTrans'
        Options.Filtering = False
        Width = 380
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = qryTransParaPrestaciones
  end
  object qryTipoTransaccion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  tipotransaccionid,'
      '  tipotransaccion'
      'from'
      '  tipotransaccion')
    Left = 414
    Top = 256
    object qryTipoTransacciontipotransaccionid: TIntegerField
      FieldName = 'tipotransaccionid'
    end
    object qryTipoTransacciontipotransaccion: TStringField
      FieldName = 'tipotransaccion'
      Size = 50
    end
  end
  object qryTransParaPrestaciones: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  nomTransParaPrestaciones')
    Left = 156
    Top = 110
    object qryTransParaPrestacionesIdTransParaPrestaciones: TAutoIncField
      FieldName = 'IdTransParaPrestaciones'
      ReadOnly = True
    end
    object qryTransParaPrestacionesIdTipoTrans: TIntegerField
      FieldName = 'IdTipoTrans'
    end
    object qryTransParaPrestacionesTipoTrans: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoTrans'
      LookupDataSet = qryTipoTransaccion
      LookupKeyFields = 'tipotransaccionid'
      LookupResultField = 'tipotransaccion'
      KeyFields = 'IdTipoTrans'
      Size = 80
      Lookup = True
    end
  end
end
