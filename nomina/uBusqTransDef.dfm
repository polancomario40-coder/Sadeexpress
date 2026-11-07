inherited BusqTransDef: TBusqTransDef
  Left = 283
  Top = 249
  Caption = 'Transacciones de Ingresos y Egresos'
  ClientHeight = 423
  ClientWidth = 655
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 41
  end
  inherited grid: TDBGrid
    Left = 0
    Top = 64
    Width = 648
    Height = 356
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentFont = False
    Columns = <
      item
        Expanded = False
        FieldName = 'TransaccionDefID'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoTransaccion'
        Title.Caption = 'Tipo Transaccion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cantidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hasta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fijo'
        Visible = True
      end>
  end
  inherited BitBtn1: TBitBtn
    Left = 489
    Top = 35
    Anchors = [akTop, akRight]
  end
  inherited BitBtn2: TBitBtn
    Left = 573
    Top = 35
    Anchors = [akTop, akRight]
  end
  inherited Panel1: TPanel [4]
    Width = 647
    Height = 32
    Anchors = [akLeft, akTop, akRight]
    Caption = ''
  end
  inherited edtBuscar: TEdit [5]
    Left = 52
    Top = 39
    Width = 431
    Anchors = [akLeft, akTop, akRight]
  end
  inherited qryBasico: TADOQuery
    SQL.Strings = (
      
        'SELECT     td.TransaccionDefID, tt.TipoTransaccion, td.Fecha, td' +
        '.Cantidad, td.Desde, td.Hasta, td.Fijo'
      
        'FROM         TransaccionDef td INNER JOIN TipoTransaccion tt ON ' +
        'td.TipoTransaccionID = tt.TipoTransaccionID')
    object qryBasicoTransaccionDefID: TIntegerField
      FieldName = 'TransaccionDefID'
      ReadOnly = True
    end
    object qryBasicoTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
    end
    object qryBasicoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qryBasicoCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qryBasicoDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object qryBasicoHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object qryBasicoFijo: TBooleanField
      FieldName = 'Fijo'
    end
  end
end
