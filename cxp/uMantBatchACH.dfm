inherited MantBatchACH: TMantBatchACH
  Left = 260
  Top = 147
  Caption = 'Batch ACH'
  ClientHeight = 468
  ClientWidth = 781
  Color = 15922418
  Font.Color = 5794136
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 411
    Width = 781
    Height = 3
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  inherited Gradient2: TGradient
    Width = 781
    Height = 36
    ColorBegin = 14124890
    ColorEnd = 15922418
    Style = gsLinearV
  end
  object Label1: TLabel [2]
    Left = 618
    Top = 45
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 45
    Width = 31
    Height = 13
    Caption = 'Batch:'
  end
  object Label3: TLabel [4]
    Left = 8
    Top = 69
    Width = 58
    Height = 13
    Caption = 'Descripcion:'
  end
  object Label4: TLabel [5]
    Left = 616
    Top = 69
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  inherited btImprimir: TcxButton
    Top = 418
    Width = 56
    Height = 48
    Action = Aprint
  end
  inherited btLocalizar: TcxButton
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btNuevo: TcxButton
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btCancelar: TcxButton
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btGuardar: TcxButton
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btBorrar: TcxButton
    Left = 640
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btSalir: TcxButton
    Left = 723
    Top = 418
    Width = 56
    Height = 48
  end
  inherited btEditar: TcxButton
    Top = 418
    Width = 56
    Height = 48
  end
  object cxDBTextEdit1: TcxDBTextEdit [14]
    Left = 68
    Top = 41
    Width = 119
    Height = 21
    TabStop = False
    DataBinding.DataField = 'BatchACH'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBTextEdit2: TcxDBTextEdit [15]
    Left = 68
    Top = 65
    Width = 535
    Height = 21
    DataBinding.DataField = 'Descripcion'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBTextEdit3: TcxDBTextEdit [16]
    Left = 653
    Top = 65
    Width = 120
    Height = 21
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBDateEdit1: TcxDBDateEdit [17]
    Left = 653
    Top = 41
    Width = 121
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object GridImpuestos: TcxGrid [18]
    Left = 5
    Top = 95
    Width = 770
    Height = 306
    TabOrder = 12
    OnEnter = GridImpuestosEnter
    OnExit = GridImpuestosExit
    LookAndFeel.NativeStyle = True
    object tvDet: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'idBatchACHDet'
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
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object tvDetNumero: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvDetNumeroPropertiesButtonClick
        Options.Filtering = False
        Width = 75
      end
      object tvDetCuentoOrigen: TcxGridDBColumn
        Caption = 'Cta origen'
        DataBinding.FieldName = 'CuentaOrigen'
        Options.Editing = False
        Options.Filtering = False
        Width = 84
      end
      object tvDetSuplidor: TcxGridDBColumn
        DataBinding.FieldName = 'Suplidor'
        Options.Editing = False
        Options.Filtering = False
        Width = 129
      end
      object tvDetCuentaDestino: TcxGridDBColumn
        Caption = 'Cta destino'
        DataBinding.FieldName = 'CuentaDestino'
        Options.Editing = False
        Options.Filtering = False
        Width = 105
      end
      object tvDetBanco: TcxGridDBColumn
        Caption = 'Banco destino'
        DataBinding.FieldName = 'Banco'
        Options.Editing = False
        Options.Filtering = False
        Width = 76
      end
      object tvDetCuentaTipo: TcxGridDBColumn
        Caption = 'Tipo cuenta'
        DataBinding.FieldName = 'CuentaTipo'
        Options.Editing = False
        Options.Filtering = False
        Width = 76
      end
      object tvDetTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Options.Filtering = False
      end
      object tvDetDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Editing = False
        Options.Filtering = False
        Width = 152
      end
      object tvDetEmail: TcxGridDBColumn
        DataBinding.FieldName = 'Email'
        Options.Editing = False
        Options.Filtering = False
        Width = 100
      end
      object tvDetNota: TcxGridDBColumn
        DataBinding.FieldName = 'Nota'
        Options.Filtering = False
        Width = 180
      end
    end
    object glDet: TcxGridLevel
      Caption = 'Impuestos'
      GridView = tvDet
    end
  end
  object cxButton1: TcxButton [19]
    Left = 412
    Top = 418
    Width = 56
    Height = 48
    Action = GenArchivo
    Anchors = [akLeft, akBottom]
    TabOrder = 13
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B2929007B292900A5848400A5848400A5848400A5848400A5848400A584
      8400A58484007B1818007B292900FF00FF00FF00FF00FF00FF00FF00FF007B29
      2900CE4A4A00B5424200DED6D6007B1010007B101000DEE7E700D6DEDE00CED6
      D600BDBDBD00731008009C2929007B292900FF00FF00FF00FF00FF00FF007B29
      2900C64A4A00B5424200E7DEDE007B1010007B101000DEDEDE00DEDEE700D6DE
      DE00C6BDC600731010009C2929007B292900FF00FF00FF00FF00FF00FF007B29
      2900C64A4A00B5424200E7DEDE007B1010007B101000D6D6D600DEDEE700D6DE
      E700C6C6C60073080800942929007B292900FF00FF00FF00FF00FF00FF007B29
      2900C64A4A00B5424200EFDEDE00E7DEDE00DED6D600D6D6D600D6D6DE00D6DE
      DE00CEC6C6007B1010009C3131007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD424A00BD424200BD4A4A00BD525200BD525200B54A4A00B54A4A00BD52
      5200BD4A4A00B5424200BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900A5393900B5635A00C6848400CE948C00CE949400CE948C00CE8C8C00CE8C
      8C00CE949400CE949400BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF007B29
      2900BD4A4A00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700BD4A4A007B292900FF00FF00FF00FF00FF00FF00FF00
      FF007B292900F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7007B292900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [20]
    Left = 530
    Top = 418
    Width = 56
    Height = 48
    Action = aProcesar
    Anchors = [akLeft, akBottom]
    TabOrder = 14
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00003100000042000000520000005200000042
      000000310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000042000000420000007B0800009C0800009C0800009C0800009C
      0800007B0800004A0000004A0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A08000063080000A5080000A5080000A50800009C0800009C080000A5
      080000A5080000A50800006B000000310000FF00FF00FF00FF00FF00FF00004A
      0800006B100008AD180000A51000009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006B0000004A0000FF00FF00FF00FF00004A
      080010AD310008AD290008A51800009C080010AD2100D6F7DE00EFFFEF004AC6
      5200009C0800009C0800009C080000A50800004A0000FF00FF00005200000884
      210010B5420008AD290000A51000009C080000A5100084D68C00FFFFFF00F7FF
      F70042BD4A00009C0800009C080000A50800007B0800004200000052000010A5
      420018B54A0010AD310000A51000009C0800009C0800009C080073D67B00FFFF
      FF00F7FFF70039BD4A00009C080000A508000094080000420000006B080021B5
      520018B55200BDEFCE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FF
      F700FFFFFF00EFFFEF0052C65A0000A50800009C0800004A00000873100039BD
      6B0029BD5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADE7B50000A50800009C080000520000007B080052C6
      7B0042C6730052C67B0052CE840052CE840052CE84004AC673007BD69400FFFF
      FF00FFFFFF0094DEA50018AD310000A51800009C080000420000007B08004ABD
      6B0084DEA50021B5520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFF
      FF008CDE9C0010AD290008A5210000A51000008C080000420000FF00FF00109C
      2100ADE7C6006BD68C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE
      9C0010AD310008A5290008A5210008AD1800006B0800FF00FF00FF00FF00109C
      210052C67300C6F7DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B5
      4A0010AD390010AD310008B52900089C1800006B0800FF00FF00FF00FF00FF00
      FF00109C21006BCE8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD
      630029BD5A0021BD4A0010A5310000630800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00109C2100109C21009CE7B500BDEFD600A5E7C60094E7B5007BDE
      9C004AC67B00189C3900189C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0018A53100109C2100109C2100109C2100109C
      2100108C2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    Left = 159
    Top = 129
  end
  inherited Acciones: TActionList
    object GenArchivo: TAction
      Caption = 'Archivo'
      ImageIndex = 5
      OnExecute = GenArchivoExecute
    end
    object aProcesar: TAction
      Caption = 'Procesar'
      ImageIndex = 9
      OnExecute = aProcesarExecute
    end
  end
  inherited RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'cxpRSBatchACH;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idBatchACH'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 92
    Top = 130
    object RSidBatchACH: TGuidField
      FieldName = 'idBatchACH'
      FixedChar = True
      Size = 38
    end
    object RSBatchACH: TStringField
      FieldName = 'BatchACH'
      Size = 16
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSStatus: TStringField
      FieldName = 'Status'
      OnValidate = RSStatusValidate
      Size = 16
    end
    object RSFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  inherited RSDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpRSBatchACHDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idBatchACH'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 94
    Top = 178
    object RSDetidBatchACHDet: TGuidField
      FieldName = 'idBatchACHDet'
      FixedChar = True
      Size = 38
    end
    object RSDetidBatchACH: TGuidField
      FieldName = 'idBatchACH'
      FixedChar = True
      Size = 38
    end
    object RSDetGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object RSDetNumero: TIntegerField
      FieldName = 'Numero'
      OnValidate = RSDetNumeroValidate
    end
    object RSDetSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object RSDetUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSDetNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object RSDetCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object RSDetBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object RSDetCuentaTipo: TStringField
      FieldName = 'CuentaTipo'
      Size = 2
    end
    object RSDetTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object RSDetDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object RSDetEmail: TStringField
      FieldName = 'Email'
      Size = 150
    end
    object RSDetCuentaOrigen: TStringField
      FieldName = 'CuentaOrigen'
    end
    object RSDetCuentaOrigenTipo: TStringField
      FieldName = 'CuentaOrigenTipo'
      Size = 2
    end
    object RSDetBancoOrigen: TStringField
      FieldName = 'BancoOrigen'
      Size = 5
    end
  end
  inherited dsDet: TwwDataSource
    Left = 163
    Top = 170
  end
  object rsSol: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarSol2ACH;1'
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
        Name = '@numero'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 518
    Top = 232
    object rsSolidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsSolNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsSolFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsSolidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsSolTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsSolConcepto: TStringField
      FieldName = 'Concepto'
      Size = 6000
    end
    object rsSolStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsSolUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsSolFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsSolValidadaPor: TStringField
      FieldName = 'ValidadaPor'
      Size = 30
    end
    object rsSolValidadaEn: TDateTimeField
      FieldName = 'ValidadaEn'
    end
    object rsSolRevisadaPor: TStringField
      FieldName = 'RevisadaPor'
      Size = 30
    end
    object rsSolRevisadaEn: TDateTimeField
      FieldName = 'RevisadaEn'
    end
    object rsSolValidadaFinalPor: TStringField
      FieldName = 'ValidadaFinalPor'
      Size = 30
    end
    object rsSolValidadaFinalEn: TDateTimeField
      FieldName = 'ValidadaFinalEn'
    end
    object rsSolNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsSolmostrarEncxp: TBooleanField
      FieldName = 'mostrarEncxp'
    end
    object rsSolGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object rsSolTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsSolidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsSolidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsSolTipoAbono: TStringField
      FieldName = 'TipoAbono'
      Size = 1
    end
    object rsSolBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 5
    end
    object rsSolCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsSolTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object rsSolidCuentaBancoDestino: TIntegerField
      FieldName = 'idCuentaBancoDestino'
    end
    object rsSolNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsSolTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object rsSolTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object rsSolRNC: TStringField
      FieldName = 'RNC'
    end
    object rsSolDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object rsSolemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object rsSolCuentaTipo: TStringField
      FieldName = 'CuentaTipo'
      ReadOnly = True
      Size = 2
    end
    object rsSolCuentaOrigenTipo: TStringField
      FieldName = 'CuentaOrigenTipo'
      ReadOnly = True
      Size = 2
    end
    object rsSolCuentaTransfer: TStringField
      FieldName = 'CuentaTransfer'
      Size = 100
    end
    object rsSolTotalNeto: TFloatField
      FieldName = 'TotalNeto'
      ReadOnly = True
    end
    object rsSolCuentaOrigen: TStringField
      FieldName = 'CuentaOrigen'
      Size = 30
    end
    object rsSolBancoOrigen: TStringField
      FieldName = 'BancoOrigen'
      Size = 5
    end
  end
  object sd: TSaveDialog
    Left = 248
    Top = 132
  end
  object plRelacionPagoACH: TppDBPipeline
    DataSource = dsRPT
    UserName = 'plRelacionPagoACH'
    Left = 430
    Top = 148
    object plRelacionPagoACHppField1: TppField
      FieldAlias = 'BatchACH'
      FieldName = 'BatchACH'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plRelacionPagoACHppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plRelacionPagoACHppField3: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 16
      DisplayWidth = 16
      Position = 2
    end
    object plRelacionPagoACHppField4: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object plRelacionPagoACHppField5: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 4
    end
    object plRelacionPagoACHppField6: TppField
      FieldAlias = 'idBatchACHDet'
      FieldName = 'idBatchACHDet'
      FieldLength = 38
      DisplayWidth = 38
      Position = 5
    end
    object plRelacionPagoACHppField7: TppField
      FieldAlias = 'idBatchACH'
      FieldName = 'idBatchACH'
      FieldLength = 38
      DisplayWidth = 38
      Position = 6
    end
    object plRelacionPagoACHppField8: TppField
      FieldAlias = 'GUIDSolicitud'
      FieldName = 'GUIDSolicitud'
      FieldLength = 38
      DisplayWidth = 38
      Position = 7
    end
    object plRelacionPagoACHppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object plRelacionPagoACHppField10: TppField
      FieldAlias = 'Suplidor'
      FieldName = 'Suplidor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object plRelacionPagoACHppField11: TppField
      FieldAlias = 'Usuario_1'
      FieldName = 'Usuario_1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object plRelacionPagoACHppField12: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 500
      DisplayWidth = 500
      Position = 11
    end
    object plRelacionPagoACHppField13: TppField
      FieldAlias = 'CuentaDestino'
      FieldName = 'CuentaDestino'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plRelacionPagoACHppField14: TppField
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 5
      DisplayWidth = 5
      Position = 13
    end
    object plRelacionPagoACHppField15: TppField
      FieldAlias = 'CuentaTipo'
      FieldName = 'CuentaTipo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object plRelacionPagoACHppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object plRelacionPagoACHppField17: TppField
      FieldAlias = 'Descripcion_1'
      FieldName = 'Descripcion_1'
      FieldLength = 80
      DisplayWidth = 80
      Position = 16
    end
    object plRelacionPagoACHppField18: TppField
      FieldAlias = 'CuentaOrigen'
      FieldName = 'CuentaOrigen'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object plRelacionPagoACHppField19: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 150
      DisplayWidth = 150
      Position = 18
    end
    object plRelacionPagoACHppField20: TppField
      FieldAlias = 'CuentaOrigenTipo'
      FieldName = 'CuentaOrigenTipo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 19
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plRelacionPagoACH
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 428
    Top = 200
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRelacionPagoACH'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = 15000804
        Pen.Color = clGray
        mmHeight = 6350
        mmLeft = 0
        mmTop = 24077
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 25400
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 29369
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 45244
        mmTop = 25400
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Suplidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 59002
        mmTop = 25400
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 237861
        mmTop = 25400
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 135467
        mmTop = 26194
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 25400
        mmWidth = 73025
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relaci'#243'n de Batch ACH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 8996
        mmWidth = 115623
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 232569
        mmTop = 1588
        mmWidth = 31221
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 252678
        mmTop = 6615
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 143934
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'BatchACH'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3429
        mmLeft = 18256
        mmTop = 16404
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Batch No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 1058
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3429
        mmLeft = 58738
        mmTop = 16140
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 47096
        mmTop = 16140
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Status'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 5027
        mmLeft = 233098
        mmTop = 10848
        mmWidth = 32015
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 109273
        mmTop = 16404
        mmWidth = 128588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Descripcion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 88636
        mmTop = 16140
        mmWidth = 19844
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'CuentaDestino'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Banco'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 29369
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'CuentaTipo'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 45244
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plRelacionPagoACH
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 237861
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Numero'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Suplidor'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3704
        mmLeft = 59002
        mmTop = 0
        mmWidth = 69586
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Descripcion_1'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 0
        mmWidth = 72761
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 4763
        mmLeft = 0
        mmTop = 7144
        mmWidth = 266701
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 6350
        mmWidth = 266171
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plRelacionPagoACH
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3831
        mmLeft = 219340
        mmTop = 1852
        mmWidth = 46038
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 529
        mmWidth = 266171
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 4128
        mmLeft = 19844
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Cantidad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 15134
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsRPT: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBatchACHRPT;1'
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
        Name = '@idBatchACH'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 164
    Top = 292
    object rsRPTBatchACH: TStringField
      FieldName = 'BatchACH'
      Size = 16
    end
    object rsRPTFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRPTStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object rsRPTUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsRPTDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsRPTidBatchACHDet: TGuidField
      FieldName = 'idBatchACHDet'
      FixedChar = True
      Size = 38
    end
    object rsRPTidBatchACH: TGuidField
      FieldName = 'idBatchACH'
      FixedChar = True
      Size = 38
    end
    object rsRPTGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object rsRPTNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsRPTSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsRPTUsuario_1: TStringField
      FieldName = 'Usuario_1'
      Size = 30
    end
    object rsRPTNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsRPTCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsRPTBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object rsRPTCuentaTipo: TStringField
      FieldName = 'CuentaTipo'
      Size = 2
    end
    object rsRPTTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsRPTDescripcion_1: TStringField
      FieldName = 'Descripcion_1'
      Size = 80
    end
    object rsRPTCuentaOrigen: TStringField
      FieldName = 'CuentaOrigen'
    end
    object rsRPTEmail: TStringField
      FieldName = 'Email'
      Size = 150
    end
    object rsRPTCuentaOrigenTipo: TStringField
      FieldName = 'CuentaOrigenTipo'
      Size = 2
    end
  end
  object dsRPT: TwwDataSource
    AutoEdit = False
    DataSet = rsRPT
    OnUpdateData = DSUpdateData
    Left = 45
    Top = 271
  end
  object cProcesar: TADOCommand
    CommandText = 'cxpProcesarBatchACH;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idBatchACH'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 380
    Top = 238
  end
end
