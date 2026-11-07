object MainActivos: TMainActivos
  Left = 306
  Top = 123
  Width = 843
  Height = 602
  Caption = 'Admin. de Activos Fijos'
  Color = 14342874
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    835
    568)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TcxSplitter
    Left = 198
    Top = 0
    Width = 8
    Height = 568
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = Panel1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 198
    Height = 568
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    inline PanUbics1: TPanUbics
      Left = 0
      Top = 0
      Width = 198
      Height = 568
      Align = alClient
      TabOrder = 0
      inherited cxTreeView1: TcxTreeView
        Width = 198
        Height = 410
      end
      inherited Panel1: TPanel
        Width = 198
        inherited cxButton1: TcxButton
          Left = 3
          Width = 93
          Caption = 'Nueva ubic.'
        end
        inherited cxButton2: TcxButton
          Left = 99
          Width = 93
          Anchors = [akTop, akRight]
          Caption = 'Ver ubic'
        end
      end
      inherited tlUbicacion: TdxDBTreeList
        Width = 198
        Height = 529
      end
      inherited rsUbics: TADODataSet
        Left = 64
        Top = 156
      end
      inherited Images: TImageList
        Left = 103
      end
      inherited dsUbics: TDataSource
        Left = 100
      end
    end
  end
  object Panel2: TPanel
    Left = 206
    Top = 0
    Width = 629
    Height = 568
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    inline frBrowseActivos1: TfrBrowseActivos
      Left = 0
      Top = 0
      Width = 629
      Height = 568
      Align = alClient
      TabOrder = 0
      inherited cxGrid1: TcxGrid
        Width = 629
        Height = 529
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OptionsBehavior.ImmediateEditor = False
          inherited cxGrid1DBTableView1Categoria: TcxGridDBColumn
            Width = 116
          end
          inherited cxGrid1DBTableView1idActivo: TcxGridDBColumn
            Width = 72
          end
          inherited cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            Width = 257
          end
          inherited cxGrid1DBTableView1FechaAdq: TcxGridDBColumn
            Width = 95
          end
        end
      end
      inherited Panel1: TPanel
        Width = 629
        inherited cxButton1: TcxButton
          OnClick = frBrowseActivos1cxButton1Click
        end
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 587
    Top = 0
    Width = 248
    Height = 24
    UseSystemFont = False
    ActionManager = Acciones
    Align = alNone
    Anchors = [akTop, akRight]
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = True
    Spacing = 0
  end
  object Acciones: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ListaActivos
                Caption = '&Lista de activos'
              end
              item
                Action = ListadoActivos
                Caption = '&Consulta de Activos'
              end
              item
                Action = ReporteDepreciacion
                Caption = '&Depreciacion'
              end
              item
                Action = DepResumido
                Caption = 'D&epreciacion resumido'
              end
              item
                Action = AjusteInf
              end
              item
                Action = ConsultaActivoDepreciacion
                Caption = '&Activos (Depreciacion)'
              end>
            Caption = '&Reportes'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 304
    Top = 236
    StyleName = 'XP Style'
    object MantActivos: TAction
      Category = 'Mantenimientos'
      Caption = 'Activos'
      OnExecute = MantActivosExecute
    end
    object aSalir: TAction
      Tag = 5
      Category = 'Mantenimientos'
      Caption = 'Retornar a Manu Principal'
      OnExecute = aSalirExecute
    end
    object ListaActivos: TAction
      Category = 'Reportes'
      Caption = 'Lista de activos'
      OnExecute = ListaActivosExecute
    end
    object ReporteDepreciacion: TAction
      Category = 'Reportes'
      Caption = 'Depreciacion'
      OnExecute = ReporteDepreciacionExecute
    end
    object DepResumido: TAction
      Category = 'Reportes'
      Caption = 'Depreciacion resumido'
      OnExecute = DepResumidoExecute
    end
    object ConsultaActivoDepreciacion: TAction
      Category = 'Reportes'
      Caption = 'Activos (Depreciacion)'
      OnExecute = ConsultaActivoDepreciacionExecute
    end
    object ListadoActivos: TAction
      Category = 'Reportes'
      Caption = 'Consulta de Activos'
      OnExecute = ListadoActivosExecute
    end
    object AjusteInf: TAction
      Category = 'Reportes'
      Caption = 'Reporte por Inflacion'
      OnExecute = AjusteInfExecute
    end
  end
end
