object ImageView: TImageView
  Left = 275
  Top = 115
  Width = 585
  Height = 480
  Caption = 'Documentos y Notas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbimg: TcxDBImage
    Left = 246
    Top = 0
    Width = 331
    Height = 446
    Align = alClient
    AutoSize = True
    DataBinding.DataField = 'imagen'
    DataBinding.DataSource = DS
    Properties.Caption = 'Imagen'
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.Stretch = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 246
    Height = 446
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 64
      Width = 244
      Height = 381
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1idImagen: TcxGridDBColumn
          DataBinding.FieldName = 'idImagen'
          Visible = False
        end
        object cxGrid1DBTableView1Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 82
        end
        object cxGrid1DBTableView1DBnota: TcxGridDBColumn
          DataBinding.FieldName = 'Nota'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.WantReturns = False
          Width = 197
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 5
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Nuevo'
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton2: TcxButton
      Left = 84
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Modificar'
      TabOrder = 2
      OnClick = cxButton2Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton3: TcxButton
      Left = 164
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Borrar'
      TabOrder = 3
      OnClick = cxButton3Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton4: TcxButton
      Left = 5
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Scaner'
      TabOrder = 4
      OnClick = cxButton4Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton5: TcxButton
      Left = 84
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Archivo'
      TabOrder = 5
      OnClick = cxButton5Click
      LookAndFeel.NativeStyle = True
    end
    object cxButton6: TcxButton
      Left = 164
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Guardar'
      TabOrder = 6
      OnClick = cxButton6Click
      LookAndFeel.NativeStyle = True
    end
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = RSNewRecord
    CommandText = 'imgrsImagen;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 64
    Top = 326
    object RSidImagen: TGuidField
      FieldName = 'idImagen'
      FixedChar = True
      Size = 38
    end
    object RSidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object RSimagen: TBlobField
      FieldName = 'imagen'
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 16
    end
    object RSNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
  end
  object DS: TDataSource
    DataSet = RS
    Left = 132
    Top = 318
  end
end
