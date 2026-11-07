inherited PedirAnulacion: TPedirAnulacion
  Left = 604
  Top = 290
  Caption = 'Anular documento'
  ClientHeight = 319
  ClientWidth = 474
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 240
    Width = 474
    Height = 2
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
    ColorBegin = 10201755
    ColorEnd = 15922418
  end
  inherited Gradient2: TGradient
    Width = 474
    Height = 65
    ColorBegin = 15922418
    ColorEnd = 16759699
    Reverse = True
    Style = gsLinearV
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 6
    Width = 219
    Height = 31
    Caption = 'Anular documento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5329233
    Font.Height = -27
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 58
    Width = 108
    Height = 13
    Caption = 'Causa de la anulacion:'
    Transparent = True
  end
  object Label3: TLabel [4]
    Left = 8
    Top = 99
    Width = 108
    Height = 13
    Caption = 'Causa de la anulacion:'
    Transparent = True
  end
  object luCausa: TcxLookupComboBox [5]
    Left = 8
    Top = 74
    Width = 405
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idCausaAnulacion'
    Properties.ListColumns = <
      item
        FieldName = 'CausaAnulacion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ds
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object mNota: TcxMemo [6]
    Left = 8
    Top = 116
    Width = 457
    Height = 119
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [7]
    Left = 8
    Top = 248
    Width = 95
    Height = 63
    Caption = 'Anular'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [8]
    Left = 152
    Top = 248
    Width = 95
    Height = 63
    Caption = 'Salir'
    ModalResult = 2
    TabOrder = 3
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svRSCausaAnulacion;1'
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
        Name = '@TipoDocumento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 160
    Top = 32
    object rsidCausaAnulacion: TStringField
      FieldName = 'idCausaAnulacion'
      Size = 16
    end
    object rsCausaAnulacion: TStringField
      FieldName = 'CausaAnulacion'
      Size = 100
    end
    object rsRequiereComentario: TBooleanField
      FieldName = 'RequiereComentario'
    end
  end
end
