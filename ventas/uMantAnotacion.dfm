inherited MantAnotacion: TMantAnotacion
  Left = 418
  Top = 153
  Caption = 'Anotaciones'
  ClientHeight = 354
  ClientWidth = 538
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Top = 66
    Width = 537
    Height = 288
    ControlType.Strings = (
      'Visible;CheckBox;True;False'
      'PorDefecto;CheckBox;True;False')
    Selected.Strings = (
      'idAnotacion'#9'16'#9'Codigo'
      'Anotacion'#9'56'#9'Anotacion'
      'PorDefecto'#9'9'#9'PorDefecto')
    Align = alNone
    TitleFont.Name = 'Tahoma'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 538
    inherited banterior: TwwNavButton
      Width = 68
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 68
      Width = 68
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 136
      Width = 67
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 203
      Width = 67
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 270
      Width = 67
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 337
      Width = 67
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 404
      Width = 67
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 471
      Width = 67
      ImageIndex = 3
    end
  end
  object luCat: TcxLookupComboBox [2]
    Left = 1
    Top = 40
    Width = 537
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'Tipo'
    Properties.ListColumns = <
      item
        FieldName = 'Tipo'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsCats
    Properties.PostPopupValueOnTab = True
    Properties.OnEditValueChanged = luCatPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = RSNewRecord
    CommandText = 'svRSAnotacion;1'
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
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 164
    Top = 134
    object RSidAnotacion: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 16
      FieldName = 'idAnotacion'
      Size = 16
    end
    object RSAnotacion: TStringField
      DisplayWidth = 56
      FieldName = 'Anotacion'
      Size = 100
    end
    object RSPorDefecto: TBooleanField
      DisplayWidth = 9
      FieldName = 'PorDefecto'
    end
    object RSTipo: TStringField
      FieldName = 'Tipo'
      Visible = False
      Size = 16
    end
  end
  object rsListaCats: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'select Tipo = '#39'CONDUCE'#39#13#10'union'#13#10'select Tipo = '#39'FACTURA'#39#13#10
    Parameters = <>
    Left = 124
    Top = 166
    object rsListaCatsTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 7
    end
  end
  object dsCats: TDataSource
    DataSet = rsListaCats
    Left = 200
    Top = 282
  end
end
