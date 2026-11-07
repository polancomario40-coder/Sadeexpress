inherited fMantSuplidores: TfMantSuplidores
  Left = 526
  Top = 245
  Caption = 'Mantenimiento de Suplidores'
  ClientHeight = 482
  ClientWidth = 643
  Color = 15922418
  Font.Color = clBlack
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 643
  end
  object Label1: TLabel [1]
    Left = 15
    Top = 42
    Width = 24
    Height = 13
    Caption = 'Tipo:'
    Transparent = True
  end
  object Label4: TLabel [2]
    Left = 15
    Top = 64
    Width = 41
    Height = 13
    Caption = 'Nombre:'
    Transparent = True
  end
  object Label5: TLabel [3]
    Left = 15
    Top = 86
    Width = 47
    Height = 13
    Caption = 'Direccion:'
    Transparent = True
  end
  object Label6: TLabel [4]
    Left = 258
    Top = 42
    Width = 30
    Height = 13
    Caption = 'Ident:'
    Transparent = True
  end
  object Label7: TLabel [5]
    Left = 15
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Tel. #1:'
    Transparent = True
  end
  object Label8: TLabel [6]
    Left = 297
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Tel. #2:'
    Transparent = True
  end
  object Label9: TLabel [7]
    Left = 483
    Top = 130
    Width = 23
    Height = 13
    Caption = 'FAX:'
    Transparent = True
  end
  object Label10: TLabel [8]
    Left = 15
    Top = 152
    Width = 28
    Height = 13
    Caption = 'eMail:'
    Transparent = True
  end
  inherited Gradient2: TGradient
    Width = 643
  end
  object Label2: TLabel [10]
    Left = 297
    Top = 152
    Width = 42
    Height = 13
    Caption = 'Moneda:'
  end
  object Label17: TLabel [11]
    Left = 344
    Top = 2
    Width = 289
    Height = 27
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Suplidores '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel [12]
    Left = 15
    Top = 108
    Width = 23
    Height = 13
    Caption = 'Pais:'
    Transparent = True
  end
  object Label19: TLabel [13]
    Left = 297
    Top = 108
    Width = 37
    Height = 13
    Caption = 'Ciudad:'
    Transparent = True
  end
  object Label3: TLabel [14]
    Left = 15
    Top = 197
    Width = 71
    Height = 13
    Caption = 'Relacionado a:'
    Transparent = True
  end
  inherited btImprimir: TcxButton
    Left = 67
    Top = 426
    Width = 56
    Height = 48
    TabOrder = 16
    Visible = False
  end
  inherited btLocalizar: TcxButton
    Left = 4
    Top = 426
    Width = 56
    Height = 48
    TabOrder = 22
  end
  object edNom: TcxDBTextEdit [17]
    Left = 89
    Top = 60
    Width = 546
    Height = 21
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object edRNC: TcxDBTextEdit [18]
    Left = 415
    Top = 38
    Width = 135
    Height = 21
    DataBinding.DataField = 'RNC'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object edDir: TcxDBTextEdit [19]
    Left = 89
    Top = 82
    Width = 546
    Height = 21
    DataBinding.DataField = 'Direccion'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object edTel1: TcxDBTextEdit [20]
    Left = 89
    Top = 126
    Width = 165
    Height = 21
    DataBinding.DataField = 'Telefono1'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object edTel2: TcxDBTextEdit [21]
    Left = 348
    Top = 126
    Width = 131
    Height = 21
    DataBinding.DataField = 'Telefono2'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object edFax: TcxDBTextEdit [22]
    Left = 509
    Top = 126
    Width = 126
    Height = 21
    DataBinding.DataField = 'Fax'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object edMail: TcxDBTextEdit [23]
    Left = 89
    Top = 148
    Width = 202
    Height = 21
    DataBinding.DataField = 'EMail'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object luTipo: TcxDBLookupComboBox [24]
    Left = 89
    Top = 38
    Width = 165
    Height = 21
    DataBinding.DataField = 'TipoSuplidor'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'TipoSuplidor'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object luMon: TcxDBLookupComboBox [25]
    Left = 348
    Top = 148
    Width = 217
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMonedas
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object wwDBEdit1: TcxDBTextEdit [26]
    Left = 559
    Top = 38
    Width = 76
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idSuplidor'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  inherited btNuevo: TcxButton
    Left = 128
    Top = 426
    Width = 55
    Height = 48
    TabOrder = 17
  end
  object edPais: TcxDBTextEdit [28]
    Left = 89
    Top = 104
    Width = 165
    Height = 21
    DataBinding.DataField = 'Pais'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edCiudad: TcxDBTextEdit [29]
    Left = 348
    Top = 104
    Width = 287
    Height = 21
    DataBinding.DataField = 'Ciudad'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object dxDBCheckEdit1: TcxDBCheckBox [30]
    Left = 347
    Top = 170
    Width = 182
    Height = 21
    Caption = 'Este suplidor esta Activo'
    DataBinding.DataField = 'Estatus'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object dxDBCheckEdit2: TcxDBCheckBox [31]
    Left = 87
    Top = 170
    Width = 174
    Height = 21
    Caption = 'Mostrar es Suplid. en CxP'
    DataBinding.DataField = 'MostrarEnCXP'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  inherited btCancelar: TcxButton
    Left = 257
    Top = 426
    Width = 56
    Height = 48
    TabOrder = 18
  end
  inherited btGuardar: TcxButton
    Left = 326
    Top = 426
    Width = 56
    Height = 48
    TabOrder = 19
  end
  inherited btBorrar: TcxButton
    Left = 493
    Top = 426
    Width = 56
    Height = 48
    Anchors = [akRight, akBottom]
    TabOrder = 20
  end
  inherited btSalir: TcxButton
    Left = 581
    Top = 426
    Width = 56
    Height = 48
    Anchors = [akRight, akBottom]
    TabOrder = 21
  end
  inherited btEditar: TcxButton
    Left = 192
    Top = 426
    Width = 56
    Height = 48
    TabOrder = 23
  end
  object luTipoID: TcxDBLookupComboBox [37]
    Left = 293
    Top = 38
    Width = 120
    Height = 21
    DataBinding.DataField = 'idTipoIdentificacion'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idTipoIdentificacion'
    Properties.ListColumns = <
      item
        FieldName = 'TipoIdentificacion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipoId
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object pcSuplidor: TcxPageControl [38]
    Left = 4
    Top = 222
    Width = 633
    Height = 199
    ActivePage = tsBancos
    LookAndFeel.NativeStyle = True
    TabOrder = 24
    ClientRectBottom = 195
    ClientRectLeft = 2
    ClientRectRight = 629
    ClientRectTop = 22
    object tsContacto: TcxTabSheet
      Caption = 'Contacto y condiciones'
      ImageIndex = 0
      object Label11: TLabel
        Left = 10
        Top = 14
        Width = 41
        Height = 13
        Caption = 'Nombre:'
        Transparent = True
      end
      object Label12: TLabel
        Left = 10
        Top = 41
        Width = 46
        Height = 13
        Caption = 'Telefono:'
        Transparent = True
      end
      object Label15: TLabel
        Left = 409
        Top = 14
        Width = 41
        Height = 13
        Caption = 'Dias CR:'
        Transparent = True
      end
      object Label21: TLabel
        Left = 402
        Top = 41
        Width = 48
        Height = 13
        Caption = 'L'#237'mite CR:'
        Transparent = True
      end
      object Label22: TLabel
        Left = 12
        Top = 67
        Width = 41
        Height = 13
        Caption = 'F. Pago:'
        Transparent = True
      end
      object edCont: TcxDBTextEdit
        Left = 62
        Top = 10
        Width = 315
        Height = 21
        DataBinding.DataField = 'Contacto'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edTelCon: TcxDBTextEdit
        Left = 62
        Top = 37
        Width = 315
        Height = 21
        DataBinding.DataField = 'TelContacto'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object edDias: TcxDBTextEdit
        Left = 458
        Top = 10
        Width = 164
        Height = 21
        DataBinding.DataField = 'DiasCredito'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 458
        Top = 37
        Width = 164
        Height = 21
        DataBinding.DataField = 'LimiteCredito'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 62
        Top = 64
        Width = 315
        Height = 21
        DataBinding.DataField = 'FormaPago'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
    end
    object tsImpuestos: TcxTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 1
      object Label13: TLabel
        Left = 8
        Top = 10
        Width = 53
        Height = 13
        Caption = 'Tipo ITBIS:'
        Transparent = True
      end
      object Label20: TLabel
        Left = 264
        Top = 9
        Width = 47
        Height = 13
        Caption = 'Tipo NCF:'
        Transparent = True
      end
      object luItbis: TcxDBLookupComboBox
        Left = 61
        Top = 6
        Width = 183
        Height = 21
        DataBinding.DataField = 'TipoImpuesto'
        DataBinding.DataSource = DS
        Properties.KeyFieldNames = 'TipoImpuesto'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsImp
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object luPedirNCF: TcxDBImageComboBox
        Left = 311
        Top = 5
        Width = 121
        Height = 21
        DataBinding.DataField = 'PedirNCF'
        DataBinding.DataSource = DS
        Properties.Items = <
          item
            Description = 'Exigir NCF'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'Generar NCF'
            Value = 'G'
          end
          item
            Description = 'No pedir NCF'
            Value = 'N'
          end>
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object grCtas: TcxGrid
        Left = 3
        Top = 30
        Width = 620
        Height = 137
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object grCtasDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsCtas
          DataController.KeyFieldNames = 'idMoneda'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grCtasDBTableView1idMoneda: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'idMoneda'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idMoneda'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMonedas
            Options.Filtering = False
            Width = 224
          end
          object grCtasDBTableView1idCuenta: TcxGridDBColumn
            Caption = 'Cuenta del pasivo'
            DataBinding.FieldName = 'idCuenta'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edCtaPropertiesButtonClick
            Options.Filtering = False
            Width = 213
          end
          object grCtasDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Cuenta de compras'
            DataBinding.FieldName = 'idCuentaGasto'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grCtasDBTableView1DBColumn1PropertiesButtonClick
            Options.Filtering = False
            Width = 169
          end
        end
        object grCtasLevel1: TcxGridLevel
          GridView = grCtasDBTableView1
        end
      end
    end
    object tsBancos: TcxTabSheet
      Caption = 'Bancos'
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 2
        Top = 3
        Width = 621
        Height = 168
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsBancoSuplidor
          DataController.KeyFieldNames = 'IdBancoSuplidor'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.Navigator = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1IdBancoSuplidor: TcxGridDBColumn
            DataBinding.FieldName = 'IdBancoSuplidor'
            Visible = False
            Width = 109
          end
          object cxGrid1DBTableView1IdSuplidor: TcxGridDBColumn
            DataBinding.FieldName = 'IdSuplidor'
            Visible = False
          end
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'BancoCodigo'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Codigo'
            Properties.ListColumns = <
              item
                FieldName = 'Banco'
              end>
            Properties.ListSource = dsBancosACH
            Width = 186
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'IdMoneda'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idMoneda'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsMonedas
            Width = 77
          end
          object cxGrid1DBTableView1IdMoneda: TcxGridDBColumn
            DataBinding.FieldName = 'IdMoneda'
            Visible = False
          end
          object cxGrid1DBTableView1BancoCodigo: TcxGridDBColumn
            DataBinding.FieldName = 'BancoCodigo'
            Visible = False
          end
          object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Cuenta'
            Width = 100
          end
          object cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn
            Caption = 'Tipo Cuenta'
            DataBinding.FieldName = 'TipoCuenta'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Cuenta Corriente'
                ImageIndex = 0
                Value = 'CC'
              end
              item
                Description = 'Cuenta Ahorro'
                Value = 'CA'
              end
              item
                Description = 'Tarjeta'
                Value = 'TJ'
              end
              item
                Description = 'Prestamo'
                Value = 'PR'
              end>
            Width = 98
          end
          object cxGrid1DBTableView1BancoDefault: TcxGridDBColumn
            Caption = 'Default'
            DataBinding.FieldName = 'BancoDefault'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 41
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object luSupRef: TcxDBButtonEdit [39]
    Left = 89
    Top = 193
    Width = 102
    Height = 21
    BeepOnEnter = False
    DataBinding.DataField = 'idSuplidorParent'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = luSupRefPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object cxDBTextEdit3: TcxDBTextEdit [40]
    Left = 199
    Top = 193
    Width = 434
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = dsParents
    Properties.ReadOnly = True
    Style.Color = 15922418
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 25
  end
  inherited DS: TwwDataSource
    DataSet = rsEntidades
    OnStateChange = DSStateChange
    Left = 360
    Top = 370
  end
  inherited Acciones: TActionList
    Left = 370
    Top = 368
  end
  inherited ImageList: TImageList
    Left = 342
    Top = 370
  end
  object rsTipoEnt: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TipoSuplidor, Descripcion'#13#10'from cxpTiposSuplidor'#13#10'order b' +
      'y Descripcion'
    Parameters = <>
    Left = 188
    object rsTipoEntTipoSuplidor: TIntegerField
      FieldName = 'TipoSuplidor'
      ReadOnly = True
    end
    object rsTipoEntDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object dsTipos: TDataSource
    DataSet = rsTipoEnt
    Left = 466
    Top = 372
  end
  object dsImp: TDataSource
    DataSet = rsTiposImp
    Left = 402
    Top = 65532
  end
  object rsTiposImp: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'select *  from ocTiposImpuestos'#13#10'order by descripcion'
    Parameters = <>
    Left = 230
    Top = 65532
    object rsTiposImpTipoImpuesto: TAutoIncField
      FieldName = 'TipoImpuesto'
      ReadOnly = True
    end
    object rsTiposImpDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsTiposImpPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 6
      Size = 2
    end
    object rsTiposImpTitulo: TStringField
      FieldName = 'Titulo'
    end
    object rsTiposImpidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsEntidades: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterPost = rsEntidadesAfterPost
    OnNewRecord = rsEntidadesNewRecord
    CommandText = 'select '#9'*'#13#10'from cxpSuplidores'#13#10'order by Nombre'
    CommandTimeout = 120
    Parameters = <>
    Left = 92
    Top = 65535
    object rsEntidadesidSuplidor: TAutoIncField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsEntidadesNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsEntidadesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object rsEntidadesCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 50
    end
    object rsEntidadesProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object rsEntidadesPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object rsEntidadesTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object rsEntidadesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object rsEntidadesLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object rsEntidadesDiasCredito: TIntegerField
      FieldName = 'DiasCredito'
    end
    object rsEntidadesTipoSuplidor: TIntegerField
      FieldName = 'TipoSuplidor'
    end
    object rsEntidadesRNC: TStringField
      FieldName = 'RNC'
    end
    object rsEntidadesFechaIngreso: TDateTimeField
      FieldName = 'FechaIngreso'
    end
    object rsEntidadesEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object rsEntidadesEMail: TStringField
      FieldName = 'EMail'
      Size = 50
    end
    object rsEntidadesContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rsEntidadesTelContacto: TStringField
      FieldName = 'TelContacto'
      Size = 30
    end
    object rsEntidadesFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object rsEntidadesCod: TStringField
      FieldName = 'Cod'
    end
    object rsEntidadesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsEntidadesTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
    end
    object rsEntidadesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsEntidadesMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsEntidadesAbrev: TStringField
      FieldName = 'Abrev'
    end
    object rsEntidadesidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsEntidadesPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object rsEntidadesFormaPago: TStringField
      FieldName = 'FormaPago'
      Size = 50
    end
    object rsEntidadesidSuplidorParent: TIntegerField
      FieldName = 'idSuplidorParent'
      OnValidate = rsEntidadesidSuplidorParentValidate
    end
  end
  object rsMonedas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idMoneda, Moneda as Nombre'#13#10' from moneda '#13#10'order by Moned' +
      'a'
    Parameters = <>
    Left = 364
    Top = 65535
    object rsMonedasidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMonedasNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsMonedas: TDataSource
    DataSet = rsMonedas
    Left = 436
    Top = 65534
  end
  object rsTipoDocID: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RSTipoIdentificacion;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 130
    Top = 65535
    object rsTipoDocIDidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsTipoDocIDTipoIdentificacion: TStringField
      FieldName = 'TipoIdentificacion'
      Size = 30
    end
  end
  object dsTipoId: TDataSource
    DataSet = rsTipoDocID
    Left = 200
    Top = 362
  end
  object rsBancoSuplidor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = rsBancoSuplidorBeforeInsert
    OnNewRecord = rsBancoSuplidorNewRecord
    CommandText = 'cxpRSBancoSuplidor;1'
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
        Name = '@IdSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 284
    Top = 318
    object rsBancoSuplidorIdBancoSuplidor: TGuidField
      FieldName = 'IdBancoSuplidor'
      FixedChar = True
      Size = 38
    end
    object rsBancoSuplidorIdSuplidor: TIntegerField
      FieldName = 'IdSuplidor'
    end
    object rsBancoSuplidorIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object rsBancoSuplidorBancoCodigo: TStringField
      FieldName = 'BancoCodigo'
      Size = 5
    end
    object rsBancoSuplidorTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 2
    end
    object rsBancoSuplidorCuenta: TStringField
      FieldName = 'Cuenta'
    end
    object rsBancoSuplidorBancoDefault: TBooleanField
      FieldName = 'BancoDefault'
    end
  end
  object dsBancoSuplidor: TDataSource
    DataSet = rsBancoSuplidor
    Left = 223
    Top = 362
  end
  object rsBancosACH: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpRSBancosACH;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 53
    Top = 108
    object rsBancosACHCodigo: TStringField
      FieldName = 'Codigo'
      Size = 5
    end
    object rsBancosACHBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object rsBancosACHLongitudCuenta: TIntegerField
      FieldName = 'LongitudCuenta'
    end
  end
  object dsBancosACH: TDataSource
    DataSet = rsBancosACH
    Left = 31
    Top = 44
  end
  object rsParentAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select Nombre from cxpSuplidores where idSuplidor = :idSuplidor'
    Parameters = <
      item
        Name = 'idSuplidor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 366
    Top = 338
    object rsParentActNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
  end
  object dsParents: TDataSource
    DataSet = rsParentAct
    Left = 174
    Top = 364
  end
  object dsCtas: TDataSource
    DataSet = rsCuentas
    Left = 319
  end
  object rsCuentas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = rsCuentasBeforeInsert
    OnNewRecord = rsCuentasNewRecord
    CommandText = 'cxpRSSuplidorCuenta;1'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 286
    object rsCuentasidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsCuentasidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsCuentasidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCuentasidCuentaGasto: TStringField
      FieldName = 'idCuentaGasto'
      Size = 16
    end
  end
end
