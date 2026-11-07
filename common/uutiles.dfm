object Seguridad: TSeguridad
  Left = 373
  Top = 143
  Width = 763
  Height = 652
  Caption = 'Seguridad'
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 755
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 755
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 646
    Top = 4
    Width = 105
    Height = 25
    Caption = 'Seguridad'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Gradient8: TGradient
    Left = 6
    Top = 569
    Width = 743
    Height = 4
    Align = alCustom
    ColorBegin = 4227327
    ColorEnd = 14124890
    Style = gsReflectedV
  end
  object pcSeguridad: TcxPageControl
    Left = 3
    Top = 36
    Width = 750
    Height = 527
    ActivePage = tsPermisos
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 523
    ClientRectLeft = 2
    ClientRectRight = 746
    ClientRectTop = 22
    object tsUsuarios: TcxTabSheet
      Caption = 'Usuarios'
      ImageIndex = 2
      object cxGrid4: TcxGrid
        Left = 5
        Top = 31
        Width = 357
        Height = 230
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = DSegUser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView2idSegUserGrp: TcxGridDBColumn
            DataBinding.FieldName = 'idSegUserGrp'
            Options.Filtering = False
            Width = 80
          end
          object cxGridDBTableView2Clave: TcxGridDBColumn
            DataBinding.FieldName = 'Clave'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.EchoMode = eemPassword
            Options.Filtering = False
            Width = 63
          end
          object cxGridDBTableView2Nivel: TcxGridDBColumn
            DataBinding.FieldName = 'Nivel'
            Options.Filtering = False
            Width = 38
          end
          object cxGridDBTableView2Activo: TcxGridDBColumn
            DataBinding.FieldName = 'Activo'
            Options.Filtering = False
            Width = 41
          end
          object cxGridDBTableView2esGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'esGrupo'
            Visible = False
          end
          object cxGridDBTableView2ObjetoDefault: TcxGridDBColumn
            DataBinding.FieldName = 'ObjetoDefault'
            Visible = False
            Options.Filtering = False
            Width = 79
          end
          object cxGridDBTableView2Email: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            Options.Filtering = False
            Width = 133
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxGrid2: TcxGrid
        Left = 375
        Top = 294
        Width = 358
        Height = 200
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DSegUserinGrp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGridDBTableView1idSegGrupo: TcxGridDBColumn
            Caption = 'Grupos'
            DataBinding.FieldName = 'idSegGrupo'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idSegUserGrp'
            Properties.ListColumns = <
              item
                FieldName = 'idSegUserGrp'
              end>
            Properties.ListSource = DQSegUserGrp
            Options.Filtering = False
          end
          object cxGridDBTableView1idSegUser: TcxGridDBColumn
            DataBinding.FieldName = 'idSegUser'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 5
        Top = 294
        Width = 357
        Height = 200
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = DSegGrupo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGridDBTableView3idSegUserGrp: TcxGridDBColumn
            DataBinding.FieldName = 'idSegUserGrp'
            Options.Filtering = False
          end
          object cxGridDBTableView3esGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'esGrupo'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object Panel1: TPanel
        Left = 375
        Top = 271
        Width = 357
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object Gradient3: TGradient
          Left = 0
          Top = 0
          Width = 355
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 1
          Width = 296
          Height = 20
          Caption = 'Miembro de los Grupos (solo empresa actual)'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel2: TPanel
        Left = 5
        Top = 8
        Width = 357
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object Gradient4: TGradient
          Left = 0
          Top = 0
          Width = 355
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel2: TcxLabel
          Left = 2
          Top = 0
          Width = 59
          Height = 20
          Caption = 'Usuarios'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel3: TPanel
        Left = 5
        Top = 271
        Width = 357
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Gradient5: TGradient
          Left = 0
          Top = 0
          Width = 355
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel3: TcxLabel
          Left = 2
          Top = 0
          Width = 49
          Height = 20
          Caption = 'Grupos'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object cxGrid1: TcxGrid
        Left = 375
        Top = 31
        Width = 358
        Height = 230
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView6: TcxGridDBTableView
          DataController.DataSource = dsUsuarioEmp
          DataController.KeyFieldNames = 'idEmpresa'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGridDBTableView6idEmpresa: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'idEmpresa'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idEmpresa'
            Properties.ListColumns = <
              item
                FieldName = 'Empresa'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsEmpresas
            Options.Filtering = False
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
      object Panel8: TPanel
        Left = 375
        Top = 8
        Width = 357
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object Gradient10: TGradient
          Left = 0
          Top = 0
          Width = 355
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel7: TcxLabel
          Left = 2
          Top = 1
          Width = 130
          Height = 20
          Caption = 'Acceso a empresas'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
    end
    object tsPermisos: TcxTabSheet
      Caption = 'Permisos Por Objetos'
      ImageIndex = 0
      object cxGrid5: TcxGrid
        Left = 3
        Top = 30
        Width = 739
        Height = 265
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.DataSource = dm.dsSegObjeto
          DataController.KeyFieldNames = 'idSegObjeto'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsView.ColumnAutoWidth = True
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Width = 112
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'SegObjeto'
            Width = 409
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Objeto'
            DataBinding.FieldName = 'idSegObjeto'
            Options.Editing = False
            Width = 118
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TipoObjeto'
            Width = 97
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object cxGrid6: TcxGrid
        Left = 3
        Top = 324
        Width = 508
        Height = 173
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView5: TcxGridDBTableView
          DataController.DataSource = DQSegPermiso
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView5idSegUserGrp: TcxGridDBColumn
            DataBinding.FieldName = 'idSegUserGrp'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idSegUserGrp'
            Properties.ListColumns = <
              item
                FieldName = 'idSegUserGrp'
              end>
            Properties.ListSource = DQSegUserGrp
            Options.Filtering = False
          end
          object cxGridDBTableView5Agregar: TcxGridDBColumn
            DataBinding.FieldName = 'Agregar'
            Options.Filtering = False
          end
          object cxGridDBTableView5Editar: TcxGridDBColumn
            DataBinding.FieldName = 'Editar'
            Options.Filtering = False
          end
          object cxGridDBTableView5Borrar: TcxGridDBColumn
            DataBinding.FieldName = 'Borrar'
            Options.Filtering = False
          end
          object cxGridDBTableView5Imprimir: TcxGridDBColumn
            DataBinding.FieldName = 'Imprimir'
            Options.Filtering = False
          end
          object cxGridDBTableView5Abrir: TcxGridDBColumn
            DataBinding.FieldName = 'Abrir'
            Options.Filtering = False
          end
          object cxGridDBTableView5Anular: TcxGridDBColumn
            DataBinding.FieldName = 'Anular'
            Options.Filtering = False
          end
          object cxGridDBTableView5Aprobar: TcxGridDBColumn
            DataBinding.FieldName = 'Aprobar'
            Options.Filtering = False
          end
          object cxGridDBTableView5idSegObjeto: TcxGridDBColumn
            DataBinding.FieldName = 'idSegObjeto'
            Visible = False
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
      object Panel4: TPanel
        Left = 3
        Top = 8
        Width = 739
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Gradient6: TGradient
          Left = 0
          Top = 0
          Width = 737
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel4: TcxLabel
          Left = 2
          Top = 0
          Width = 54
          Height = 20
          Caption = 'Objetos'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel5: TPanel
        Left = 3
        Top = 302
        Width = 508
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object Gradient7: TGradient
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel5: TcxLabel
          Left = 2
          Top = 0
          Width = 59
          Height = 20
          Caption = 'Usuarios'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel6: TPanel
        Left = 516
        Top = 302
        Width = 223
        Height = 23
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object Gradient9: TGradient
          Left = 0
          Top = 0
          Width = 221
          Height = 21
          Align = alClient
          ColorBegin = 14124890
          ColorEnd = 9516803
          Style = gsLinearV
        end
        object cxLabel6: TcxLabel
          Left = 2
          Top = 0
          Width = 59
          Height = 20
          Caption = 'Leyenda'
          ParentColor = False
          ParentFont = False
          Properties.Transparent = True
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
        end
      end
      object Panel7: TPanel
        Left = 516
        Top = 324
        Width = 223
        Height = 173
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label1: TLabel
          Left = 34
          Top = 17
          Width = 147
          Height = 14
          Caption = '[ 0 ] Acceso Denegado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 34
          Top = 33
          Width = 154
          Height = 14
          Caption = '[1-5] Codigo Requerido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 34
          Top = 53
          Width = 126
          Height = 14
          Caption = '[ 6 ] Acceso Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 34
          Top = 85
          Width = 133
          Height = 56
          Caption = '[1-5]: Nivel de codigo de autoriz. requerido para acceso.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Consultar Permisos por Usuario/Grupo'
      ImageIndex = 2
      object cxGrid7: TcxGrid
        Left = 5
        Top = 7
        Width = 606
        Height = 182
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView7: TcxGridDBTableView
          DataController.DataSource = dsSegUsrGrps
          DataController.KeyFieldNames = 'GuidUserGrp'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView7idSegUserGrp: TcxGridDBColumn
            Caption = 'Usuarios / Grupo'
            DataBinding.FieldName = 'idSegUserGrp'
            Width = 372
          end
          object cxGridDBTableView7Activo: TcxGridDBColumn
            DataBinding.FieldName = 'Activo'
            Width = 75
          end
          object cxGridDBTableView7DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Nivel'
            Width = 67
          end
          object cxGridDBTableView7esGrupo: TcxGridDBColumn
            DataBinding.FieldName = 'esGrupo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 90
          end
          object cxGridDBTableView7GuidUserGrp: TcxGridDBColumn
            DataBinding.FieldName = 'GuidUserGrp'
            Visible = False
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBTableView7
        end
      end
      object cxGrid8: TcxGrid
        Left = 6
        Top = 192
        Width = 733
        Height = 303
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView8: TcxGridDBTableView
          DataController.DataSource = dsUserGrpPermisos
          DataController.KeyFieldNames = 'rowguid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView8Categoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Width = 109
          end
          object cxGridDBTableView8SegObjeto: TcxGridDBColumn
            DataBinding.FieldName = 'SegObjeto'
            Width = 190
          end
          object cxGridDBTableView8Agregar: TcxGridDBColumn
            DataBinding.FieldName = 'Agregar'
            Width = 62
          end
          object cxGridDBTableView8Editar: TcxGridDBColumn
            DataBinding.FieldName = 'Editar'
            Width = 61
          end
          object cxGridDBTableView8Borrar: TcxGridDBColumn
            DataBinding.FieldName = 'Borrar'
            Width = 63
          end
          object cxGridDBTableView8Imprimir: TcxGridDBColumn
            DataBinding.FieldName = 'Imprimir'
            Width = 60
          end
          object cxGridDBTableView8Abrir: TcxGridDBColumn
            DataBinding.FieldName = 'Abrir'
            Width = 63
          end
          object cxGridDBTableView8Anular: TcxGridDBColumn
            DataBinding.FieldName = 'Anular'
            Width = 61
          end
          object cxGridDBTableView8Aprobar: TcxGridDBColumn
            DataBinding.FieldName = 'Aprobar'
            Width = 62
          end
          object cxGridDBTableView8idSegObjeto: TcxGridDBColumn
            DataBinding.FieldName = 'idSegObjeto'
            Visible = False
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
      object cxButton1: TcxButton
        Left = 621
        Top = 128
        Width = 113
        Height = 58
        Caption = 'Imp. Permisos para el Usuario o Grupo Seleccionado'
        TabOrder = 2
        WordWrap = True
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
    end
  end
  object bSalir: TcxButton
    Left = 676
    Top = 575
    Width = 75
    Height = 39
    Caption = 'Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = bSalirClick
    LookAndFeel.NativeStyle = True
  end
  object DSegGrupo: TDataSource
    DataSet = dm.QSegGrupo
    Left = 230
    Top = 397
  end
  object DSegUser: TDataSource
    DataSet = QSegUser
    Left = 166
    Top = 397
  end
  object DSegUserinGrp: TDataSource
    DataSet = QSegUserinGrp
    Left = 94
    Top = 397
  end
  object DQSegPermiso: TDataSource
    DataSet = dm.QSegPermiso
    Left = 302
    Top = 397
  end
  object DQSegUserGrp: TDataSource
    DataSet = dm.QSegUserGrp
    Left = 366
    Top = 397
  end
  object DQSegObjeto: TDataSource
    DataSet = dm.QSegObjeto
    Left = 458
    Top = 396
  end
  object rsUsuarioEmp: TADODataSet
    Connection = dmRepository.repConx
    OnNewRecord = rsUsuarioEmpNewRecord
    CommandText = 'RSSegUserGrpEmpresa;1'
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
        Name = '@idSegUserGrp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 424
    Top = 216
    object rsUsuarioEmpidEmpresa: TGuidField
      FieldName = 'idEmpresa'
      FixedChar = True
      Size = 38
    end
    object rsUsuarioEmpidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      Size = 30
    end
  end
  object dsUsuarioEmp: TDataSource
    DataSet = rsUsuarioEmp
    Left = 596
    Top = 142
  end
  object dsEmpresas: TDataSource
    DataSet = dmRepository.rsEmpresa
    Left = 460
    Top = 130
  end
  object QSegUser: TADOQuery
    Connection = dmRepository.repConx
    CursorType = ctStatic
    AfterScroll = QSegUserAfterScroll
    OnNewRecord = QSegUserNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From SegUserGrp'
      'Where esGrupo=0'
      'Order by idSegUserGrp')
    Left = 84
    Top = 162
    object QSegUseridSegUserGrp: TStringField
      DisplayLabel = 'Usuarios'
      DisplayWidth = 15
      FieldName = 'idSegUserGrp'
      Size = 30
    end
    object QSegUserClave: TStringField
      DisplayWidth = 8
      FieldName = 'Clave'
      Size = 10
    end
    object QSegUserObjetoDefault: TStringField
      DisplayLabel = 'Ejecutar Automaticamente'
      DisplayWidth = 19
      FieldName = 'ObjetoDefault'
      Size = 50
    end
    object QSegUserNivel: TSmallintField
      DisplayWidth = 5
      FieldName = 'Nivel'
    end
    object QSegUserActivo: TBooleanField
      DisplayWidth = 6
      FieldName = 'Activo'
    end
    object QSegUseresGrupo: TBooleanField
      DisplayLabel = 'Grupo'
      DisplayWidth = 7
      FieldName = 'esGrupo'
      Visible = False
    end
    object QSegUserGuidUserGrp: TGuidField
      FieldName = 'GuidUserGrp'
      FixedChar = True
      Size = 38
    end
    object QSegUserEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
  end
  object QSegUserinGrp: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = QSegUserinGrpNewRecord
    DataSource = DSegUser
    Parameters = <
      item
        Name = 'idSegUserGrp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'adelaida'
      end>
    SQL.Strings = (
      'Select * '
      'from SegUserinGrp'
      'Where idSegUser =:idSegUserGrp')
    Left = 212
    Top = 146
    object QSegUserinGrpidSegGrupo: TStringField
      DisplayWidth = 30
      FieldName = 'idSegGrupo'
      Size = 30
    end
    object QSegUserinGrpidSegUser: TStringField
      DisplayWidth = 30
      FieldName = 'idSegUser'
      Visible = False
      Size = 30
    end
  end
  object SegUserGrps: TADOQuery
    Connection = dmRepository.repConx
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = QSegUserAfterScroll
    OnNewRecord = QSegUserNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select '
      '  '#39'(Todos)'#39' as idSegUserGrp,'
      '  cast(0  as bit) as esGrupo,'
      '  cast (1 as bit)  as Activo,'
      '  newid() as GuidUserGrp,'
      '  0 as Nivel'
      ''
      'union all'
      ''
      'Select '
      '  idSegUserGrp,'
      '  esGrupo,'
      '  Activo,'
      '  GuidUserGrp,'
      '  Nivel '
      'From '
      '  SegUserGrp'
      'Order by '
      '  esGrupo,'
      '  idSegUserGrp')
    Left = 84
    Top = 240
    object StringField1: TStringField
      DisplayLabel = 'Usuarios'
      DisplayWidth = 15
      FieldName = 'idSegUserGrp'
      Size = 30
    end
    object SmallintField1: TSmallintField
      DisplayWidth = 5
      FieldName = 'Nivel'
    end
    object BooleanField1: TBooleanField
      DisplayWidth = 6
      FieldName = 'Activo'
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'Grupo'
      DisplayWidth = 7
      FieldName = 'esGrupo'
      Visible = False
    end
    object GuidField1: TGuidField
      FieldName = 'GuidUserGrp'
      FixedChar = True
      Size = 38
    end
  end
  object UsergrpPermisos: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnNewRecord = QSegUserinGrpNewRecord
    DataSource = dsSegUsrGrps
    Parameters = <
      item
        Name = 'idSegUserGrp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'Reportes'
      end>
    SQL.Strings = (
      'declare'
      '  @cod varchar(50)'
      ''
      'Set @cod = :idSegUserGrp'
      ''
      'select '
      
        '  p.idSegUserGrp, Categoria, SegObjeto, Agregar, Editar, Borrar,' +
        ' Imprimir, Abrir, Anular, Aprobar, o.idSegObjeto, p.rowguid '
      'from '
      
        '  segObjeto o join segpermiso p  on o.idSegObjeto = p.idSegObjet' +
        'o'
      'Where '
      ' (@Cod = '#39'(Todos)'#39') or (idSegUserGrp = @Cod) '
      'Order by'
      '  p.idSegUserGrp, Categoria, SegObjeto')
    Left = 212
    Top = 244
    object UsergrpPermisosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 30
    end
    object UsergrpPermisosSegObjeto: TStringField
      FieldName = 'SegObjeto'
      Size = 100
    end
    object UsergrpPermisosAgregar: TWordField
      FieldName = 'Agregar'
    end
    object UsergrpPermisosEditar: TWordField
      FieldName = 'Editar'
    end
    object UsergrpPermisosBorrar: TWordField
      FieldName = 'Borrar'
    end
    object UsergrpPermisosImprimir: TWordField
      FieldName = 'Imprimir'
    end
    object UsergrpPermisosAbrir: TWordField
      FieldName = 'Abrir'
    end
    object UsergrpPermisosAnular: TWordField
      FieldName = 'Anular'
    end
    object UsergrpPermisosAprobar: TWordField
      FieldName = 'Aprobar'
    end
    object UsergrpPermisosidSegObjeto: TStringField
      FieldName = 'idSegObjeto'
      Size = 40
    end
    object UsergrpPermisosrowguid: TGuidField
      FieldName = 'rowguid'
      FixedChar = True
      Size = 38
    end
    object UsergrpPermisosidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      Size = 30
    end
  end
  object dsSegUsrGrps: TDataSource
    DataSet = SegUserGrps
    Left = 87
    Top = 296
  end
  object dsUserGrpPermisos: TDataSource
    DataSet = UsergrpPermisos
    Left = 219
    Top = 302
  end
  object plPermisos: TppDBPipeline
    DataSource = dsUserGrpPermisos
    UserName = 'plPermisos'
    Left = 373
    Top = 300
    object plPermisosppField1: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plPermisosppField2: TppField
      FieldAlias = 'SegObjeto'
      FieldName = 'SegObjeto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plPermisosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Agregar'
      FieldName = 'Agregar'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 2
    end
    object plPermisosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Editar'
      FieldName = 'Editar'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 3
    end
    object plPermisosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Borrar'
      FieldName = 'Borrar'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 4
    end
    object plPermisosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Imprimir'
      FieldName = 'Imprimir'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 5
    end
    object plPermisosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Abrir'
      FieldName = 'Abrir'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 6
    end
    object plPermisosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Anular'
      FieldName = 'Anular'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 7
    end
    object plPermisosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aprobar'
      FieldName = 'Aprobar'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 8
    end
    object plPermisosppField10: TppField
      FieldAlias = 'idSegObjeto'
      FieldName = 'idSegObjeto'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object plPermisosppField11: TppField
      FieldAlias = 'rowguid'
      FieldName = 'rowguid'
      FieldLength = 38
      DisplayWidth = 38
      Position = 10
    end
    object plPermisosppField12: TppField
      FieldAlias = 'idSegUserGrp'
      FieldName = 'idSegUserGrp'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
  end
  object RptPermisos: TppReport
    AutoStop = False
    DataPipeline = plPermisos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 447
    Top = 300
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plPermisos'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 529
        mmLeft = 6615
        mmTop = 4233
        mmWidth = 258763
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'SegObjeto'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 6615
        mmTop = 529
        mmWidth = 118534
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Agregar'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 126471
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Editar'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 140229
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Borrar'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 153988
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Imprimir'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 167746
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Abrir'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 181505
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Anular'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 195263
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Aprobar'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3344
        mmLeft = 209021
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'idSegObjeto'
        DataPipeline = plPermisos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPermisos'
        mmHeight = 3440
        mmLeft = 227013
        mmTop = 265
        mmWidth = 36513
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 87313
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3344
        mmLeft = 249925
        mmTop = 1323
        mmWidth = 15452
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idSegUserGrp'
      DataPipeline = plPermisos
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPermisos'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 24077
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 7938
          mmLeft = 0
          mmTop = 14288
          mmWidth = 264055
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'idSegUserGrp'
          DataPipeline = plPermisos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plPermisos'
          mmHeight = 5821
          mmLeft = 49742
          mmTop = 14817
          mmWidth = 166159
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = 'USUARIO / GRUPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 794
          mmTop = 14817
          mmWidth = 47361
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Asignacion de Permisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 24
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 9525
          mmLeft = 0
          mmTop = 265
          mmWidth = 216165
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 8996
          mmWidth = 264055
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Categoria'
      DataPipeline = plPermisos
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPermisos'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 15199207
          Pen.Style = psClear
          mmHeight = 10583
          mmLeft = 0
          mmTop = 0
          mmWidth = 266436
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1323
          mmLeft = 6615
          mmTop = 6085
          mmWidth = 258763
          BandType = 3
          GroupNo = 1
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Categoria'
          DataPipeline = plPermisos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plPermisos'
          mmHeight = 4995
          mmLeft = 23283
          mmTop = 529
          mmWidth = 48683
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Objeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6615
          mmTop = 6085
          mmWidth = 118534
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Agregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 126471
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140229
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Borrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 153988
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 167746
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Abrir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 181505
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Anular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 195263
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'Aprobar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 209021
          mmTop = 6085
          mmWidth = 12435
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          AutoSize = False
          Caption = 'idSegObjeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 227013
          mmTop = 6350
          mmWidth = 36248
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 1058
          mmTop = 529
          mmWidth = 21431
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1323
          mmLeft = 6879
          mmTop = 9525
          mmWidth = 258763
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
