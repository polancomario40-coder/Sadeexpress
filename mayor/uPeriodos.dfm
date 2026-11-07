inherited Periodo: TPeriodo
  Left = 387
  Top = 219
  Caption = 'Periodos Fiscales'
  ClientHeight = 519
  ClientWidth = 699
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = -2
    Top = 481
    Width = 699
    Height = 3
    Anchors = [akLeft, akTop, akRight]
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 699
    Height = 36
    Align = alTop
    ColorBegin = 15922418
    ColorEnd = 9516803
    Reverse = True
    Style = gsLinearV
  end
  object Label3: TLabel
    Left = 615
    Top = 312
    Width = 80
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Log de salida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Grid: TcxGrid
    Left = 3
    Top = 32
    Width = 693
    Height = 447
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'uidPeriodoFiscal'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      Styles.Group = cxStyle1
      object GridDBTableView1idPeriodoFiscal: TcxGridDBColumn
        Caption = 'Periodo'
        DataBinding.FieldName = 'idPeriodoFiscal'
        Width = 275
      end
      object GridDBTableView1Inicio: TcxGridDBColumn
        DataBinding.FieldName = 'Inicio'
        Width = 143
      end
      object GridDBTableView1Final: TcxGridDBColumn
        DataBinding.FieldName = 'Final'
        Width = 160
      end
      object GridDBTableView1uidPeriodoFiscal: TcxGridDBColumn
        DataBinding.FieldName = 'uidPeriodoFiscal'
        Visible = False
      end
      object GridDBTableView1General: TcxGridDBColumn
        DataBinding.FieldName = 'Cerrado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Width = 113
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 589
    Top = 486
    Width = 108
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object DS: TDataSource
    DataSet = RS
    Left = 26
    Top = 144
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 118
    Top = 148
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15120802
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14898176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'cgRSPeriodoFiscal;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 218
    Top = 148
    object RSidPeriodoFiscal: TStringField
      FieldName = 'idPeriodoFiscal'
      Size = 16
    end
    object RSInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object RSFinal: TDateTimeField
      FieldName = 'Final'
    end
    object RSuidPeriodoFiscal: TGuidField
      FieldName = 'uidPeriodoFiscal'
      FixedChar = True
      Size = 38
    end
    object RSCerrado: TBooleanField
      DefaultExpression = 'true'
      FieldName = 'Cerrado'
      OnValidate = RSCerradoValidate
    end
  end
end
