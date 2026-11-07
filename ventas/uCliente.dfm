inherited Cliente: TCliente
  Left = 637
  Top = 219
  Caption = 'Mantenimiento de Clientes'
  ClientHeight = 588
  ClientWidth = 864
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 864
  end
  object Label8: TLabel [1]
    Left = 288
    Top = 314
    Width = 33
    Height = 13
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 864
    inherited nuevo: TwwNavButton
      Width = 124
    end
    inherited editar: TwwNavButton
      Left = 124
      Width = 124
    end
    inherited guardar: TwwNavButton
      Left = 248
      Width = 124
    end
    inherited cancelar: TwwNavButton
      Left = 372
      Width = 123
    end
    inherited borrar: TwwNavButton
      Left = 495
      Width = 123
    end
    inherited BLocalizarx: TwwNavButton
      Left = 618
      Width = 123
    end
    inherited salir: TwwNavButton
      Left = 741
      Width = 123
    end
  end
  object cxPageControl1: TcxPageControl [3]
    Left = 2
    Top = 45
    Width = 861
    Height = 401
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight]
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 397
    ClientRectLeft = 2
    ClientRectRight = 857
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Generales'
      ImageIndex = 0
      DesignSize = (
        855
        375)
      object Label1: TLabel
        Left = 18
        Top = 43
        Width = 33
        Height = 13
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 147
        Top = 67
        Width = 37
        Height = 13
        Caption = 'Nombre'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 141
        Top = 138
        Width = 43
        Height = 13
        Caption = 'Direccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 593
        Top = 146
        Width = 33
        Height = 13
        Caption = 'Ciudad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 142
        Top = 43
        Width = 42
        Height = 13
        Caption = 'Telefono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 280
        Top = 217
        Width = 33
        Height = 13
        Caption = 'Celular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 604
        Top = 217
        Width = 24
        Height = 13
        Caption = 'eMail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 663
        Top = 43
        Width = 31
        Height = 13
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 465
        Top = 44
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 357
        Top = 91
        Width = 47
        Height = 13
        Caption = 'Categor'#237'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 595
        Top = 168
        Width = 31
        Height = 13
        Caption = 'Sector'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 156
        Top = 281
        Width = 28
        Height = 13
        Caption = 'Notas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 132
        Top = 346
        Width = 57
        Height = 13
        Caption = 'Fecha Inicio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 325
        Top = 346
        Width = 60
        Height = 13
        Caption = 'Fecha Salida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 137
        Top = 91
        Width = 50
        Height = 13
        Caption = 'RNC / Ced'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 337
        Top = 43
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 602
        Top = 192
        Width = 24
        Height = 13
        Caption = 'Zona'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 567
        Top = 93
        Width = 111
        Height = 13
        Caption = 'Codigo Cliente Principal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 149
        Top = 22
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object Shape2: TShape
        Left = 149
        Top = 120
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object Shape3: TShape
        Left = 149
        Top = 265
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object Label27: TLabel
        Left = 522
        Top = 346
        Width = 62
        Height = 13
        Caption = 'No. Suplidor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 423
        Top = 217
        Width = 54
        Height = 13
        Caption = 'Fecha Nac.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dxDBEdit1: TcxDBTextEdit
        Left = 55
        Top = 39
        Width = 55
        Height = 21
        TabStop = False
        DataBinding.DataField = 'idCliente'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
      end
      object dxDBEdit2: TcxDBTextEdit
        Left = 193
        Top = 63
        Width = 627
        Height = 21
        DataBinding.DataField = 'Cliente'
        DataBinding.DataSource = DS
        Properties.MaxLength = 100
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object dxDBEdit9: TcxDBTextEdit
        Left = 317
        Top = 213
        Width = 93
        Height = 21
        DataBinding.DataField = 'Beeper'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object dxDBEdit10: TcxDBTextEdit
        Left = 636
        Top = 213
        Width = 185
        Height = 21
        DataBinding.DataField = 'EMail'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
      object dxDBLookupEdit1: TcxDBLookupComboBox
        Left = 699
        Top = 39
        Width = 121
        Height = 21
        DataBinding.DataField = 'idClienteStatus'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idClienteStatus'
        Properties.ListColumns = <
          item
            FieldName = 'ClienteStatus'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsClienteStatus
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object dxDBLookupEdit2: TcxDBLookupComboBox
        Left = 489
        Top = 39
        Width = 145
        Height = 21
        DataBinding.DataField = 'idClienteTipo'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idClienteTipo'
        Properties.ListColumns = <
          item
            FieldName = 'ClienteTipo'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsClienteTipo
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object dxDBEdit11: TcxDBTextEdit
        Left = 635
        Top = 164
        Width = 185
        Height = 21
        DataBinding.DataField = 'Sector'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 10
      end
      object dxDBDateEdit1: TcxDBDateEdit
        Left = 193
        Top = 342
        Width = 121
        Height = 21
        TabStop = False
        DataBinding.DataField = 'FechaActivo'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 15
      end
      object dxDBDateEdit2: TcxDBDateEdit
        Left = 389
        Top = 342
        Width = 121
        Height = 21
        TabStop = False
        DataBinding.DataField = 'FechaInactivo'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 16
      end
      object dxDBEdit6: TcxDBTextEdit
        Left = 193
        Top = 87
        Width = 147
        Height = 21
        DataBinding.DataField = 'RNC_Cedula'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object dxDBLookupEdit7: TcxDBLookupComboBox
        Left = 409
        Top = 87
        Width = 145
        Height = 21
        DataBinding.DataField = 'idClienteGrupo'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idClienteGrupo'
        Properties.ListColumns = <
          item
            FieldName = 'ClienteGrupo'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsGrupo
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object dxDBLookupEdit8: TcxDBLookupComboBox
        Left = 635
        Top = 188
        Width = 185
        Height = 21
        DataBinding.DataField = 'idZona'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idZona'
        Properties.ListColumns = <
          item
            FieldName = 'Zona'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsZona
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 11
      end
      object dxDBMemo1: TcxDBMemo
        Left = 193
        Top = 282
        Width = 634
        Height = 57
        DataBinding.DataField = 'Notas'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 14
      end
      object dxDBEdit14: TcxDBButtonEdit
        Left = 684
        Top = 87
        Width = 136
        Height = 21
        TabStop = False
        DataBinding.DataField = 'idClienteParent'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = dxDBEdit14PropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 7
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 635
        Top = 138
        Width = 185
        Height = 21
        DataBinding.DataField = 'Ciudad'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 370
        Top = 39
        Width = 92
        Height = 21
        DataBinding.DataField = 'Grupo'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'IdGrupo'
        Properties.ListColumns = <
          item
            FieldName = 'Grupo'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSvGrupo
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 6
        Width = 136
        Height = 27
        Caption = 'Identificacion'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
      object cxLabel2: TcxLabel
        Left = 8
        Top = 108
        Width = 121
        Height = 27
        Caption = 'Localizacion'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
      object cxDBMemo1: TcxDBMemo
        Left = 192
        Top = 138
        Width = 393
        Height = 71
        DataBinding.DataField = 'Direccion'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
      object cxLabel3: TcxLabel
        Left = 8
        Top = 253
        Width = 116
        Height = 27
        Caption = 'Otros datos'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
      object dxDBEdit12: TcxDBTextEdit
        Left = 584
        Top = 342
        Width = 121
        Height = 21
        DataBinding.DataField = 'NumeroSuplidor'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 17
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 479
        Top = 213
        Width = 106
        Height = 21
        TabStop = False
        DataBinding.DataField = 'fecnac'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 21
      end
      object DBEdit1: TDBEdit
        Left = 192
        Top = 39
        Width = 135
        Height = 19
        DataField = 'Telefono'
        DataSource = DS
        TabOrder = 22
        OnExit = DBEdit1Exit
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Facturacion'
      ImageIndex = 1
      DesignSize = (
        855
        375)
      object Label23: TLabel
        Left = 420
        Top = 96
        Width = 23
        Height = 13
        Caption = 'Tasa'
      end
      object Label26: TLabel
        Left = 153
        Top = 195
        Width = 36
        Height = 13
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 397
        Top = 195
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Shape4: TShape
        Left = 149
        Top = 22
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object Label17: TLabel
        Left = 124
        Top = 42
        Width = 65
        Height = 13
        Caption = '% Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 397
        Top = 44
        Width = 46
        Height = 13
        Caption = 'Condicion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 598
        Top = 70
        Width = 54
        Height = 13
        Caption = 'Lista Precio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 367
        Top = 70
        Width = 76
        Height = 13
        Caption = 'Factor Comision'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 143
        Top = 69
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 151
        Top = 95
        Width = 38
        Height = 13
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape5: TShape
        Left = 149
        Top = 176
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object dxDBLookupEdit5: TcxDBLookupComboBox
        Left = 447
        Top = 92
        Width = 120
        Height = 21
        DataBinding.DataField = 'idTasaTipo'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idTasaTipo'
        Properties.ListColumns = <
          item
            FieldName = 'TasaTipo'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipotasa
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object dxDBEdit16: TcxDBTextEdit
        Left = 193
        Top = 191
        Width = 148
        Height = 21
        DataBinding.DataField = 'UserName'
        DataBinding.DataSource = DS
        TabOrder = 7
      end
      object dxDBEdit15: TcxDBTextEdit
        Left = 447
        Top = 191
        Width = 147
        Height = 21
        DataBinding.DataField = 'Password'
        DataBinding.DataSource = DS
        Properties.EchoMode = eemPassword
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
      object cxLabel4: TcxLabel
        Left = 8
        Top = 10
        Width = 115
        Height = 27
        Caption = 'Facturacion'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
      object dxDBEdit13: TcxDBTextEdit
        Left = 193
        Top = 40
        Width = 147
        Height = 21
        DataBinding.DataField = 'Descuento'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxButton1: TcxButton
        Left = 590
        Top = 40
        Width = 66
        Height = 21
        Caption = 'Cr'#233'dito Lim:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = False
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object limCr: TcxDBTextEdit
        Left = 657
        Top = 40
        Width = 121
        Height = 21
        DataBinding.DataField = 'LimiteCredito'
        DataBinding.DataSource = DS
        Enabled = False
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 11
      end
      object dxDBLookupEdit6: TcxDBLookupComboBox
        Left = 447
        Top = 40
        Width = 120
        Height = 21
        DataBinding.DataField = 'idCondicion'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idCondicion'
        Properties.ListColumns = <
          item
            FieldName = 'Condicion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsCondicion
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object dxDBLookupEdit3: TcxDBLookupComboBox
        Left = 656
        Top = 66
        Width = 122
        Height = 21
        DataBinding.DataField = 'idListaPrecio'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idListaPrecio'
        Properties.ListColumns = <
          item
            FieldName = 'ListaPrecio'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsListaPrecio
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object dxDBEdit18: TcxDBTextEdit
        Left = 447
        Top = 66
        Width = 120
        Height = 21
        DataBinding.DataField = 'ComisionFactor'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object lkEmpleado: TcxDBLookupComboBox
        Left = 193
        Top = 65
        Width = 164
        Height = 21
        DataBinding.DataField = 'idEmpleado'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idEmpleado'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsEmpleado
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object dxDBLookupEdit9: TcxDBLookupComboBox
        Left = 193
        Top = 91
        Width = 165
        Height = 21
        DataBinding.DataField = 'idMoneda'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'idMoneda'
        Properties.ListColumns = <
          item
            FieldName = 'Moneda'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMoneda
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxLabel5: TcxLabel
        Left = 8
        Top = 164
        Width = 88
        Height = 27
        Caption = 'Web site'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 2
      DesignSize = (
        855
        375)
      object Label3: TLabel
        Left = 144
        Top = 33
        Width = 44
        Height = 13
        Caption = 'Contacto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 112
        Top = 57
        Width = 76
        Height = 13
        Caption = 'Representante:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 557
        Top = 57
        Width = 86
        Height = 13
        Caption = 'Cedula/Pasaporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape6: TShape
        Left = 149
        Top = 22
        Width = 661
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object Shape7: TShape
        Left = 163
        Top = 89
        Width = 651
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8623235
        Pen.Style = psClear
      end
      object dxDBEdit3: TcxDBTextEdit
        Left = 193
        Top = 29
        Width = 359
        Height = 21
        DataBinding.DataField = 'Contacto'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 193
        Top = 53
        Width = 359
        Height = 21
        DataBinding.DataField = 'Representante'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 648
        Top = 53
        Width = 157
        Height = 21
        DataBinding.DataField = 'RepresentanteCedula'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxGrid1: TcxGrid
        Left = 43
        Top = 111
        Width = 775
        Height = 254
        TabOrder = 3
        OnEnter = cxGrid1Enter
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsContacto
          DataController.KeyFieldNames = 'idClienteContacto'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Options.Filtering = False
            Width = 254
          end
          object cxGrid1DBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
            Options.Filtering = False
            Width = 102
          end
          object cxGrid1DBTableView1email: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'email'
            Options.Filtering = False
            Width = 145
          end
          object cxGrid1DBTableView1Puesto: TcxGridDBColumn
            DataBinding.FieldName = 'Puesto'
            Options.Filtering = False
            Width = 173
          end
          object cxGrid1DBTableView1FechaNacimiento: TcxGridDBColumn
            Caption = 'Fecha nac'
            DataBinding.FieldName = 'FechaNacimiento'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 79
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxLabel6: TcxLabel
        Left = 8
        Top = 10
        Width = 90
        Height = 27
        Caption = 'Contacto'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
      object cxLabel7: TcxLabel
        Left = 8
        Top = 77
        Width = 148
        Height = 27
        Caption = 'Otras personas'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 8623235
        Style.TextStyle = [fsBold]
      end
    end
  end
  object cxGrid2: TcxGrid [4]
    Left = 2
    Top = 449
    Width = 859
    Height = 131
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnEnter = cxGrid2Enter
    OnExit = cxGrid2Exit
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idClienteObra'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1idClienteObra: TcxGridDBColumn
        DataBinding.FieldName = 'idClienteObra'
        Options.Filtering = False
        Width = 66
      end
      object cxGridDBTableView1ClienteObra: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteObra'
        Width = 133
      end
      object cxGridDBTableView1DireccionObra: TcxGridDBColumn
        DataBinding.FieldName = 'DireccionObra'
        Options.Filtering = False
        Width = 185
      end
      object cxGridDBTableView1CiudadObra: TcxGridDBColumn
        DataBinding.FieldName = 'CiudadObra'
        Options.Filtering = False
        Width = 54
      end
      object cxGridDBTableView1SectorObra: TcxGridDBColumn
        DataBinding.FieldName = 'SectorObra'
        Options.Filtering = False
        Width = 54
      end
      object cxGridDBTableView1ContactoObra: TcxGridDBColumn
        DataBinding.FieldName = 'ContactoObra'
        Options.Filtering = False
        Width = 66
      end
      object cxGridDBTableView1TelefonoObra: TcxGridDBColumn
        DataBinding.FieldName = 'TelefonoObra'
        Options.Filtering = False
        Width = 54
      end
      object cxGridDBTableView1CelularObra: TcxGridDBColumn
        DataBinding.FieldName = 'CelularObra'
        Options.Filtering = False
        Width = 54
      end
      object cxGridDBTableView1FaxObra: TcxGridDBColumn
        DataBinding.FieldName = 'FaxObra'
        Options.Filtering = False
        Width = 55
      end
      object cxGridDBTableView1idZona: TcxGridDBColumn
        Caption = 'Zona'
        DataBinding.FieldName = 'idZona'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idZona'
        Properties.ListColumns = <
          item
            FieldName = 'Zona'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsZonaTrans
        Options.Filtering = False
        Width = 104
      end
      object cxGridDBTableView1ActivoObra: TcxGridDBColumn
        DataBinding.FieldName = 'ActivoObra'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 32
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited Grid: TwwDBGrid
    Left = 756
    Top = 516
    Width = 106
    Height = 68
    ControlType.Strings = (
      'ActivoObra;CheckBox;true;false')
    Selected.Strings = (
      'idClienteObra'#9'18'#9'Obra'#9#9
      'DireccionObra'#9'29'#9'Direccion'#9#9
      'SectorObra'#9'8'#9'Sector'#9#9
      'TelefonoObra'#9'8'#9'Telefono'#9#9
      'CelularObra'#9'8'#9'Celular'#9#9
      'FaxObra'#9'8'#9'Fax'#9#9
      'ActivoObra'#9'4'#9'Act'#9#9
      'ContactoObra'#9'10'#9'Contacto'#9#9
      'CiudadObra'#9'8'#9'Ciudad'#9#9
      'idZona'#9'16'#9'idZona'#9'F'#9)
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
    TitleFont.Name = 'Tahoma'
    Visible = False
  end
  inherited DS: TwwDataSource
    Left = 557
    Top = 491
  end
  inherited ImageList: TImageList
    Left = 336
    Top = 604
  end
  inherited Acciones: TActionList
    Left = 676
    Top = 558
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsCliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 330
    Top = 38
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object RSCliente: TStringField
      DisplayWidth = 100
      FieldName = 'Cliente'
      Required = True
      Size = 100
    end
    object RSContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
      Required = True
      EditMask = '!999-000-0000;1;_'
    end
    object RSFax: TStringField
      FieldName = 'Fax'
    end
    object RSBeeper: TStringField
      FieldName = 'Beeper'
      EditMask = '!999-000-0000;1;_'
    end
    object RSEMail: TStringField
      DisplayWidth = 80
      FieldName = 'EMail'
      Size = 80
    end
    object RSLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      EditFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object RSidClienteTipo: TIntegerField
      DisplayLabel = 'Tipo Cliente'
      FieldName = 'idClienteTipo'
    end
    object RSidClienteStatus: TIntegerField
      FieldName = 'idClienteStatus'
    end
    object RSUidCliente: TGuidField
      FieldName = 'UidCliente'
      FixedChar = True
      Size = 38
    end
    object RSidEmpleado: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'idEmpleado'
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object RSNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
    object RSidClienteGrupo: TIntegerField
      FieldName = 'idClienteGrupo'
    end
    object RSDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object RSidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object RSCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object RSFechaActivo: TDateTimeField
      DisplayLabel = 'Fecha Inicio'
      FieldName = 'FechaActivo'
    end
    object RSFechaInactivo: TDateTimeField
      FieldName = 'FechaInactivo'
    end
    object RSidTasaTipo: TStringField
      FieldName = 'idTasaTipo'
      Size = 16
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 10
    end
    object RSPassword: TStringField
      FieldName = 'Password'
      Size = 16
    end
    object RSUserName: TStringField
      FieldName = 'UserName'
      Size = 30
    end
    object RSidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object RSComisionFactor: TBCDField
      FieldName = 'ComisionFactor'
      Precision = 18
      Size = 2
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object RSNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object RSidClienteParent: TIntegerField
      FieldName = 'idClienteParent'
    end
    object RSRepresentante: TStringField
      FieldName = 'Representante'
      Size = 100
    end
    object RSRepresentanteCedula: TStringField
      FieldName = 'RepresentanteCedula'
    end
    object RSfecnac: TDateTimeField
      FieldName = 'fecnac'
      Required = True
    end
  end
  inherited DS2: TwwDataSource
    Left = 409
    Top = 209
  end
  inherited RSDet: TADODataSet
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsClienteDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 648
    Top = 380
    object RSDetidClienteObra: TStringField
      DisplayLabel = 'Obra'
      DisplayWidth = 18
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSDetDireccionObra: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 29
      FieldName = 'DireccionObra'
      Size = 120
    end
    object RSDetSectorObra: TStringField
      DisplayLabel = 'Sector'
      DisplayWidth = 8
      FieldName = 'SectorObra'
      Size = 50
    end
    object RSDetTelefonoObra: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 8
      FieldName = 'TelefonoObra'
    end
    object RSDetCelularObra: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 8
      FieldName = 'CelularObra'
    end
    object RSDetFaxObra: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 8
      FieldName = 'FaxObra'
    end
    object RSDetActivoObra: TBooleanField
      DisplayLabel = 'Act'
      DisplayWidth = 4
      FieldName = 'ActivoObra'
    end
    object RSDetContactoObra: TStringField
      DisplayLabel = 'Contacto'
      DisplayWidth = 10
      FieldName = 'ContactoObra'
      Size = 40
    end
    object RSDetCiudadObra: TStringField
      DisplayLabel = 'Ciudad'
      DisplayWidth = 8
      FieldName = 'CiudadObra'
    end
    object RSDetidZona: TStringField
      DisplayWidth = 16
      FieldName = 'idZona'
      Size = 16
    end
    object RSDetidCliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'idCliente'
      Visible = False
    end
    object RSDetClienteObra: TStringField
      FieldName = 'ClienteObra'
      Visible = False
      Size = 100
    end
  end
  object ClienteStatus: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * From ClienteStatus'
    Parameters = <>
    Left = 400
    Top = 494
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 472
    Top = 486
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 494
    Top = 564
  end
  object dsClienteStatus: TDataSource
    DataSet = ClienteStatus
    Left = 364
    Top = 560
  end
  object ClienteTipo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * From ClienteTipo'
    Parameters = <>
    Left = 176
    Top = 476
    object ClienteTipoidClienteTipo: TIntegerField
      FieldName = 'idClienteTipo'
    end
    object ClienteTipoClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object ClienteTipoNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object ClienteTipoUidClienteTipo: TGuidField
      FieldName = 'UidClienteTipo'
      FixedChar = True
      Size = 38
    end
  end
  object dsClienteTipo: TDataSource
    DataSet = ClienteTipo
    Left = 332
    Top = 540
  end
  object ListaPrecio: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * From ListaPrecio order by Listaprecio'
    Parameters = <>
    Left = 588
    Top = 524
  end
  object dsListaPrecio: TDataSource
    DataSet = ListaPrecio
    Left = 708
    Top = 404
  end
  object TipoTasa: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from TasaTipo'
    Parameters = <>
    Left = 520
    Top = 492
    object TipoTasaidTasaTipo: TStringField
      FieldName = 'idTasaTipo'
      Size = 16
    end
    object TipoTasaTasaTipo: TStringField
      FieldName = 'TasaTipo'
      Size = 50
    end
    object TipoTasarowguid: TGuidField
      FieldName = 'rowguid'
      FixedChar = True
      Size = 38
    end
  end
  object dsTipotasa: TDataSource
    DataSet = TipoTasa
    Left = 248
    Top = 440
  end
  object qryGrupo: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  ClienteGrupo')
    Left = 442
    Top = 564
  end
  object dsGrupo: TDataSource
    DataSet = qryGrupo
    Left = 624
    Top = 586
  end
  object Zona: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from Zona'
    Parameters = <>
    Left = 396
    Top = 606
    object ZonaidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object ZonaZona: TStringField
      FieldName = 'Zona'
      Size = 50
    end
    object ZonaidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
  end
  object dsZona: TDataSource
    DataSet = Zona
    Left = 538
    Top = 606
  end
  object qryCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 208
    Top = 524
    object qryCondicionidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object qryCondicionCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object qryCondicionCredito: TBooleanField
      FieldName = 'Credito'
    end
    object qryCondicionDias: TIntegerField
      FieldName = 'Dias'
    end
    object qryCondicionPrecioContado: TBooleanField
      FieldName = 'PrecioContado'
    end
  end
  object dsCondicion: TDataSource
    DataSet = qryCondicion
    Left = 166
    Top = 592
  end
  object dsMoneda: TDataSource
    DataSet = dm.Moneda
    Left = 208
    Top = 440
  end
  object qrysvGrupo: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svGrupo')
    Left = 142
    Top = 534
    object qrysvGrupoIdGrupo: TStringField
      FieldName = 'IdGrupo'
      Size = 10
    end
    object qrysvGrupoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
  end
  object dsSvGrupo: TDataSource
    DataSet = qrysvGrupo
    Left = 62
    Top = 512
  end
  object rsClienteContacto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltBatchOptimistic
    OnNewRecord = rsClienteContactoNewRecord
    CommandText = 'svRSClienteContacto'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 280
    Top = 488
    object rsClienteContactoidClienteContacto: TGuidField
      FieldName = 'idClienteContacto'
      FixedChar = True
      Size = 38
    end
    object rsClienteContactoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsClienteContactoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsClienteContactoTelefono: TStringField
      FieldName = 'Telefono'
      Size = 30
    end
    object rsClienteContactoemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object rsClienteContactoPuesto: TStringField
      FieldName = 'Puesto'
      Size = 100
    end
    object rsClienteContactoFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
  end
  object dsContacto: TDataSource
    DataSet = rsClienteContacto
    Left = 68
    Top = 130
  end
  object rsZonaTransp: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'lgZonaFind;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 46
    Top = 226
    object rsZonaTranspidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object rsZonaTranspZona: TStringField
      FieldName = 'Zona'
      Size = 100
    end
  end
  object dsZonaTrans: TDataSource
    DataSet = rsZonaTransp
    Left = 118
    Top = 226
  end
  object Clienteact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'FindClienteTel'
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
        Name = '@Telefono'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@FecNac'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 58
    Top = 367
    object ClienteactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteactCliente: TStringField
      DisplayWidth = 100
      FieldName = 'Cliente'
      Size = 100
    end
    object ClienteactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteactEMail: TStringField
      FieldName = 'EMail'
      Size = 80
    end
  end
end
