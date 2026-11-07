unit uSetup;
            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, ComCtrls, StdCtrls, ExtCtrls,
  Buttons, ValEdit, uform, wwrcdpnl, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  ADODB, DBGrids, dxExEdtr, dxDBGrid, dxTL, dxDBCtrl, dxCntner, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxMaskEdit, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxLookAndFeelPainters, cxButtons, cxContainer, cxImage, cxDBEdit,
  dxDBTLCl, dxGrClms;

type
  TSetup = class(TFForm)
    Paginas: TPageControl;
    Button1: TButton;
    TabSheet6: TTabSheet;
    DSConfiguracion: TwwDataSource;
    wwRecordViewPanel1: TwwRecordViewPanel;
    Button2: TButton;
    Defaults: TTabSheet;
    DefaultsValues: TADODataSet;
    DSDefaults: TDataSource;
    DefaultsValuesClave: TStringField;
    DefaultsValuesValor: TVariantField;
    TabSheet1: TTabSheet;
    dsContadores: TDataSource;
    Contadores: TADODataSet;
    DefaultsValuesDescripcion: TStringField;
    DefaultsValuesCategoria: TStringField;
    ContadoresContador: TStringField;
    ContadoresValor: TLargeintField;
    ContadoresLongitud: TSmallintField;
    ContadoresCaracter: TStringField;
    ContadoresPrefijo: TStringField;
    ContadoresUContador: TGuidField;
    ContadoresCategoria: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Categoria: TdxDBGridMaskColumn;
    dxDBGrid2Contador: TdxDBGridMaskColumn;
    dxDBGrid2Valor: TdxDBGridColumn;
    dxDBGrid2Longitud: TdxDBGridMaskColumn;
    dxDBGrid2Caracter: TdxDBGridMaskColumn;
    dxDBGrid2Prefijo: TdxDBGridMaskColumn;
    dxDBGrid2UContador: TdxDBGridColumn;
    ContadoresReorden: TIntegerField;
    dxDBGrid2Column8: TdxDBGridMaskColumn;
    CompFisc: TTabSheet;
    Comprobantes: TADODataSet;
    ComprobantesTerminal: TStringField;
    ComprobantesSerie: TStringField;
    ComprobantesDivision: TStringField;
    ComprobantesSucursal: TStringField;
    ComprobantesCaja: TStringField;
    ComprobantesTipoNCF: TStringField;
    ComprobantesContador: TStringField;
    dxDBGrid3: TdxDBGrid;
    dsComprobantes: TDataSource;
    dxDBGrid3Terminal: TdxDBGridMaskColumn;
    dxDBGrid3Serie: TdxDBGridMaskColumn;
    dxDBGrid3Division: TdxDBGridMaskColumn;
    dxDBGrid3Sucursal: TdxDBGridMaskColumn;
    dxDBGrid3Caja: TdxDBGridMaskColumn;
    dxDBGrid3TipoNCF: TdxDBGridMaskColumn;
    dxDBGrid3Contador: TdxDBGridMaskColumn;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1Clave: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    DefaultsValuesUidClave: TGuidField;
    DefaultsValuesTipo: TStringField;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxDBImage1: TcxDBImage;
    cxDBImage2: TcxDBImage;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    dsecf_emisor: TDataSource;
    ecf_emisor: TADODataSet;
    pnlEcfEmisor: TwwRecordViewPanel;
    chkUsarECF: TCheckBox;
    rgAmbiente: TRadioGroup;
    ComprobantesDet: TADODataSet;
    dsComprobantesDet: TDataSource;
    ComprobantesDetidCompFiscalSecuencia: TGuidField;
    ComprobantesDetuidCompFiscal: TGuidField;
    ComprobantesDetSecuencia: TIntegerField;
    ComprobantesDetSecuenciaFinal: TIntegerField;
    ComprobantesDetValidoHasta: TDateTimeField;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGrid1Column4: TdxDBGridDateColumn;
    ComprobantesuidCompFiscal: TGuidField;
    ComprobantesDescripcion: TStringField;
    dxDBGrid3Column8: TdxDBGridColumn;
    ComprobantesDetinactivo: TBooleanField;
    ComprobantesDetreorden: TIntegerField;
    dxDBGrid1Column5: TdxDBGridMaskColumn;
    dxDBGrid1Column6: TdxDBGridCheckColumn;
    ComprobantesLongitud: TIntegerField;
    dxDBGrid3Column9: TdxDBGridColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComprobantesAfterScroll(DataSet: TDataSet);
    procedure ComprobantesDetNewRecord(DataSet: TDataSet);
  private
    procedure ModificarValor;
    procedure ecf_emisorNewRecord(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setup: TSetup;

implementation

uses Udata, uSetupEdit, UUtiles;

{$R *.dfm}

procedure TSetup.Button1Click(Sender: TObject);
begin
  inherited;
  close();
end;

procedure TSetup.Button2Click(Sender: TObject);
var
  vAmbiente, vUrlQr: string;
begin
  inherited;

  // Insert security seeds first so TienePermiso can find them if they were just created
  dm.Coneccion.Execute('if not exists (select 1 from SegObjeto where idSegObjeto=''ECFSeguridad'') ' +
    'insert into SegObjeto (idSegObjeto, SegObjeto, TipoObjeto, Categoria, rowguid) Values (''ECFSeguridad'',''ECFSeguridad'',''Pantalla'',''General'',newid())');
  dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ECFSeguridad'' and idSegUserGrp=''Sistemas'') ' +
    'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ECFSeguridad'',''Sistemas'',6,6,6,6,6,6,6,newid())');
  
  if not dm.TienePermiso(pAbrir, 'ECFSeguridad') then
  begin
    ShowMessage('No tiene permiso (ECFSeguridad) para guardar esta configuración.');
    Exit;
  end;

  if dsconfiguracion.DataSet.state in [dsedit] then
    dsconfiguracion.DataSet.Post;

  if Assigned(chkUsarECF) and chkUsarECF.Checked then
  begin
    dm.Coneccion.Execute('if not exists (select 1 from defaults where clave=''USAR_ECF'') ' +
      'insert into defaults (clave,valor,Descripcion, Categoria,Tipo) Values (''USAR_ECF'',''1'',''Usar facturacion electronica'',''ECF'',''S'') ' +
      'else update defaults set valor=''1'' where clave=''USAR_ECF''');

    // Crear objetos de seguridad si no existen
    dm.Coneccion.Execute('if not exists (select 1 from SegObjeto where idSegObjeto=''ECFSeguridad'') ' +
      'insert into SegObjeto (idSegObjeto, SegObjeto, TipoObjeto, Categoria, rowguid) Values (''ECFSeguridad'',''ECFSeguridad'',''Pantalla'',''General'',newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ECFSeguridad'' and idSegUserGrp=''Sistemas'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ECFSeguridad'',''Sistemas'',6,6,6,6,6,6,6,newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegObjeto where idSegObjeto=''ENVIARECF'') ' +
      'insert into SegObjeto (idSegObjeto, SegObjeto, TipoObjeto, Categoria, rowguid) Values (''ENVIARECF'',''ENVIARECF'',''Pantalla'',''General'',newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegObjeto where idSegObjeto=''EcfNoEnviados'') ' +
      'insert into SegObjeto (idSegObjeto, SegObjeto, TipoObjeto, Categoria, rowguid) Values (''EcfNoEnviados'',''EcfNoEnviados'',''Pantalla'',''General'',newid())');

    // Permisos para el grupo Sistemas
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ECFSeguridad'' and idSegUserGrp=''Sistemas'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ECFSeguridad'',''Sistemas'',6,6,6,6,6,6,6,newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ENVIARECF'' and idSegUserGrp=''Sistemas'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ENVIARECF'',''Sistemas'',6,6,6,6,6,6,6,newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''EcfNoEnviados'' and idSegUserGrp=''Sistemas'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''EcfNoEnviados'',''Sistemas'',6,6,6,6,6,6,6,newid())');

    // Permisos para el grupo Seguridad
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ECFSeguridad'' and idSegUserGrp=''Seguridad'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ECFSeguridad'',''Seguridad'',6,6,6,6,6,6,6,newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''ENVIARECF'' and idSegUserGrp=''Seguridad'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''ENVIARECF'',''Seguridad'',6,6,6,6,6,6,6,newid())');
    dm.Coneccion.Execute('if not exists (select 1 from SegPermiso where idSegObjeto=''EcfNoEnviados'' and idSegUserGrp=''Seguridad'') ' +
      'insert into SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar, rowguid) Values (''EcfNoEnviados'',''Seguridad'',6,6,6,6,6,6,6,newid())');

    dm.Coneccion.Execute('if not exists (select 1 from defaults where clave=''AUTO_ENVIAR_ECF'') ' +
       'insert into defaults (clave,valor,Descripcion, Categoria,Tipo) Values (''AUTO_ENVIAR_ECF'',''0'',''Enviar ecfs de facturas tan pronto son registrados'',''ECF'',''S'')');

    dm.Coneccion.Execute('if not exists (select 1 from defaults where clave=''URL_VALQR'') ' +
       'Insert Into Defaults (Clave,Valor,Descripcion,Tipo,Categoria) Values(''URL_VALQR'',''https://ecf.dgii.gov.do/testecf/consultatimbre'',''Url para validar qr de factura'',''S'',''Ventas'')');
  end
  else
  begin
    dm.Coneccion.Execute('if not exists (select 1 from defaults where clave=''USAR_ECF'') ' +
      'insert into defaults (clave,valor,Descripcion, Categoria,Tipo) Values (''USAR_ECF'',''0'',''Usar facturacion electronica'',''ECF'',''S'') ' +
      'else update defaults set valor=''0'' where clave=''USAR_ECF''');
  end;

  if Assigned(rgAmbiente) and (rgAmbiente.ItemIndex = 1) then
  begin
    vAmbiente := 'Ecf';
    vUrlQr := 'https://ecf.dgii.gov.do/ecf/consultatimbre';
  end
  else
  begin
    vAmbiente := 'ECFTest';
    vUrlQr := 'https://ecf.dgii.gov.do/testecf/consultatimbre';
  end;

  // Asegurar registro de emisor en modo edición o inserción
  if ecf_emisor.Active then
  begin
    if ecf_emisor.IsEmpty then
      ecf_emisor.Append
    else if not (ecf_emisor.State in [dsEdit, dsInsert]) then
      ecf_emisor.Edit;

    if ecf_emisor.State in [dsEdit, dsInsert] then
    begin
      if ecf_emisor.FindField('id') <> nil then
        ecf_emisor.FieldByName('id').Value := dm.ConfiguracionUConfiguracion.AsString;
      if ecf_emisor.FindField('Rnc') <> nil then
        ecf_emisor.FieldByName('Rnc').Value := StringReplace(dm.Configuracion.FieldByName('RNC').AsString, '-', '', [rfReplaceAll]);
      if ecf_emisor.FindField('RazonSocial') <> nil then
        ecf_emisor.FieldByName('RazonSocial').Value := dm.Configuracion.FieldByName('Compania').AsString;
      if ecf_emisor.FindField('Direccion') <> nil then
        ecf_emisor.FieldByName('Direccion').Value := dm.Configuracion.FieldByName('Direccion').AsString;
      if ecf_emisor.FindField('Telefono') <> nil then
        ecf_emisor.FieldByName('Telefono').Value := dm.Configuracion.FieldByName('Telefono').AsString;
      if ecf_emisor.FindField('Email') <> nil then
        ecf_emisor.FieldByName('Email').Value := dm.Configuracion.FieldByName('Email').AsString;
      if ecf_emisor.FindField('Ambiente') <> nil then
        ecf_emisor.FieldByName('Ambiente').AsString := vAmbiente;

      try
        ecf_emisor.Post;
      except
        on E: Exception do
        begin
          // Si el Post de ADO falla por metadatos cross-database, ejecutar SQL directo garantizando la inserción/actualización
          dm.Coneccion.Execute(
            'if exists (select 1 from EcfWorker.dbo.ecf_emisor where id = ' + QuotedStr(dm.ConfiguracionUConfiguracion.AsString) + ') ' +
            'update EcfWorker.dbo.ecf_emisor set ' +
            'Rnc = ' + QuotedStr(StringReplace(dm.Configuracion.FieldByName('RNC').AsString, '-', '', [rfReplaceAll])) + ', ' +
            'RazonSocial = ' + QuotedStr(dm.Configuracion.FieldByName('Compania').AsString) + ', ' +
            'Direccion = ' + QuotedStr(dm.Configuracion.FieldByName('Direccion').AsString) + ', ' +
            'Telefono = ' + QuotedStr(dm.Configuracion.FieldByName('Telefono').AsString) + ', ' +
            'Email = ' + QuotedStr(dm.Configuracion.FieldByName('Email').AsString) + ', ' +
            'Ambiente = ' + QuotedStr(vAmbiente) + ', ' +
            'SubscripcionTipo = ' + QuotedStr(ecf_emisor.FieldByName('SubscripcionTipo').AsString) + ', ' +
            'CertPath = ' + QuotedStr(ecf_emisor.FieldByName('CertPath').AsString) + ', ' +
            'CertPwd = ' + QuotedStr(ecf_emisor.FieldByName('CertPwd').AsString) + ', ' +
            'ApiKey = ' + QuotedStr(ecf_emisor.FieldByName('ApiKey').AsString) + ', ' +
            'Status = ' + QuotedStr(ecf_emisor.FieldByName('Status').AsString) + ', ' +
            'PaginaWeb = ' + QuotedStr(ecf_emisor.FieldByName('PaginaWeb').AsString) + ' ' +
            'where id = ' + QuotedStr(dm.ConfiguracionUConfiguracion.AsString) + ' ' +
            'else ' +
            'insert into EcfWorker.dbo.ecf_emisor (id, Rnc, RazonSocial, Direccion, Telefono, Email, MunicipioId, ProvinciaId, Status, FechaStatatus, SubscripcionTipo, ApiKey, Ambiente, CertPath, CertPwd, PaginaWeb) ' +
            'values (' +
            QuotedStr(dm.ConfiguracionUConfiguracion.AsString) + ', ' +
            QuotedStr(StringReplace(dm.Configuracion.FieldByName('RNC').AsString, '-', '', [rfReplaceAll])) + ', ' +
            QuotedStr(dm.Configuracion.FieldByName('Compania').AsString) + ', ' +
            QuotedStr(dm.Configuracion.FieldByName('Direccion').AsString) + ', ' +
            QuotedStr(dm.Configuracion.FieldByName('Telefono').AsString) + ', ' +
            QuotedStr(dm.Configuracion.FieldByName('Email').AsString) + ', ' +
            '''010101'', ''010000'', ' +
            QuotedStr(ecf_emisor.FieldByName('Status').AsString) + ', getdate(), ' +
            QuotedStr(ecf_emisor.FieldByName('SubscripcionTipo').AsString) + ', ' +
            QuotedStr(ecf_emisor.FieldByName('ApiKey').AsString) + ', ' +
            QuotedStr(vAmbiente) + ', ' +
            QuotedStr(ecf_emisor.FieldByName('CertPath').AsString) + ', ' +
            QuotedStr(ecf_emisor.FieldByName('CertPwd').AsString) + ', ' +
            QuotedStr(ecf_emisor.FieldByName('PaginaWeb').AsString) + ')'
          );
        end;
      end;
    end;
  end;

  dm.Coneccion.Execute('update defaults set valor=' + QuotedStr(vUrlQr) + ' where clave=''URL_VALQR''');
  
  ShowMessage('Los datos se guardaron exitosamente.');
  
  if Assigned(chkUsarECF) then chkUsarECF.Enabled := False;
  if Assigned(rgAmbiente) then rgAmbiente.Enabled := False;
end;

procedure TSetup.FormCreate(Sender: TObject);
var
  vAmb, vRncCia, vRncEmisor: string;
begin
  inherited;
  DefaultsValues.Open;
  Contadores.Open;
  Comprobantes.Open;

  vRncCia := StringReplace(dm.Configuracion.FieldByName('RNC').AsString, '-', '', [rfReplaceAll]);
  
  ecf_emisor.Close;
  ecf_emisor.CommandText := 'select * from EcfWorker.dbo.ecf_emisor where id = ' + QuotedStr(dm.ConfiguracionUConfiguracion.AsString);
  ecf_emisor.OnNewRecord := ecf_emisorNewRecord;
  try
    ecf_emisor.Open;
  except
    on E: Exception do
      ShowMessage('Error al abrir ecf_emisor: ' + E.Message);
  end;

  // Si no se encontró por ID o el emisor pertenece a otra empresa (RNC distinto, ej. clon de DB),
  // buscar por el RNC de esta empresa
  if ecf_emisor.Active then
  begin
    vRncEmisor := '';
    if not ecf_emisor.IsEmpty and (ecf_emisor.FindField('Rnc') <> nil) then
      vRncEmisor := StringReplace(ecf_emisor.FieldByName('Rnc').AsString, '-', '', [rfReplaceAll]);

    if ecf_emisor.IsEmpty or ((vRncEmisor <> '') and (vRncCia <> '') and (vRncEmisor <> vRncCia)) then
    begin
      ecf_emisor.Close;
      ecf_emisor.CommandText := 'select * from EcfWorker.dbo.ecf_emisor where replace(Rnc,''-'','''') = ' + QuotedStr(vRncCia);
      try
        ecf_emisor.Open;
      except
        on E: Exception do
          ShowMessage('Error al buscar emisor por RNC: ' + E.Message);
      end;

      if not ecf_emisor.IsEmpty then
      begin
        // Sincronizar el UConfiguracion de la empresa con el ID del emisor encontrado
        if dm.Configuracion.State = dsBrowse then dm.Configuracion.Edit;
        dm.ConfiguracionUConfiguracion.AsString := ecf_emisor.FieldByName('id').AsString;
        dm.Configuracion.Post;
      end
      else
      begin
        // Nuevo emisor: generar nuevo GUID para esta empresa
        if dm.Configuracion.State = dsBrowse then dm.Configuracion.Edit;
        dm.ConfiguracionUConfiguracion.AsGuid := dm.NewGuid;
        dm.Configuracion.Post;

        ecf_emisor.Close;
        ecf_emisor.CommandText := 'select * from EcfWorker.dbo.ecf_emisor where id = ' + QuotedStr(dm.ConfiguracionUConfiguracion.AsString);
        try
          ecf_emisor.Open;
        except
          on E: Exception do
            ShowMessage('Error al abrir nuevo emisor: ' + E.Message);
        end;
      end;
    end;
  end;

  if ecf_emisor.Active then
  begin
    if ecf_emisor.FindField('id') <> nil then ecf_emisor.FieldByName('id').Visible := False;
    if ecf_emisor.FindField('Rnc') <> nil then ecf_emisor.FieldByName('Rnc').Visible := False;
    if ecf_emisor.FindField('RazonSocial') <> nil then ecf_emisor.FieldByName('RazonSocial').Visible := False;
    if ecf_emisor.FindField('Direccion') <> nil then ecf_emisor.FieldByName('Direccion').Visible := False;
    if ecf_emisor.FindField('Telefono') <> nil then ecf_emisor.FieldByName('Telefono').Visible := False;
    if ecf_emisor.FindField('Email') <> nil then ecf_emisor.FieldByName('Email').Visible := False;
    if ecf_emisor.FindField('Ambiente') <> nil then ecf_emisor.FieldByName('Ambiente').Visible := False;
    if ecf_emisor.FindField('MunicipioId') <> nil then ecf_emisor.FieldByName('MunicipioId').Visible := False;
    if ecf_emisor.FindField('ProvinciaId') <> nil then ecf_emisor.FieldByName('ProvinciaId').Visible := False;

    if ecf_emisor.IsEmpty then
      ecf_emisor.Append;
  end;

  if Assigned(chkUsarECF) then
  begin
    chkUsarECF.Checked := False;
    if DefaultsValues.Locate('Clave', 'USAR_ECF', []) then
      chkUsarECF.Checked := (DefaultsValues.FieldByName('Valor').AsString = '1');
    chkUsarECF.Enabled := False;
  end;

  if ecf_emisor.Active and (ecf_emisor.FindField('Ambiente') <> nil) then
    vAmb := ecf_emisor.FieldByName('Ambiente').AsString
  else
    vAmb := '';

  if Assigned(rgAmbiente) then
  begin
    rgAmbiente.ItemIndex := 0;
    if (UpperCase(vAmb) = 'ECF') or (UpperCase(vAmb) = 'PRODUCCION') or (UpperCase(vAmb) = 'PRODUCCIÓN') then
      rgAmbiente.ItemIndex := 1
    else
      rgAmbiente.ItemIndex := 0;
    rgAmbiente.Enabled := False;
  end;

  pnlEcfEmisor.DataSource := nil;
  pnlEcfEmisor.Selected.Clear;
  pnlEcfEmisor.Selected.Add('SubscripcionTipo' + #9 + '20' + #9 + 'SubscripcionTipo' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('CertPath' + #9 + '50' + #9 + 'CertPath' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('CertPwd' + #9 + '20' + #9 + 'CertPwd' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('ApiKey' + #9 + '40' + #9 + 'ApiKey' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('Status' + #9 + '16' + #9 + 'Status' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('FechaStatatus' + #9 + '18' + #9 + 'FechaStatatus' + #9 + 'F');
  pnlEcfEmisor.Selected.Add('PaginaWeb' + #9 + '40' + #9 + 'PaginaWeb' + #9 + 'F');
  pnlEcfEmisor.DataSource := dsecf_emisor;

  DSConfiguracion.AutoEdit := False;
  dsecf_emisor.AutoEdit := False;

  CrearLog('Acceso');
end;

procedure TSetup.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModificarValor();
end;

procedure TSetup.ModificarValor();
var
  vClave: string;
begin
  inherited;
  vClave := defaultsvaluesclave.AsString;

  ModalShow(TSetupEdit, showedit, defaultsvaluesclave.Value,'',true);
  defaultsvalues.DisableControls;
  defaultsvalues.Close;
  defaultsvalues.Open;
  defaultsvalues.Locate('Clave', vClave, []);
  defaultsvalues.EnableControls;
end;

procedure TSetup.cxButton1Click(Sender: TObject);
begin
  inherited;
  ModificarValor();
end;

procedure TSetup.Button3Click(Sender: TObject);
begin
  inherited;
  if not (dsconfiguracion.DataSet.state in [dsedit]) then
    dsconfiguracion.DataSet.edit;
  if not (ecf_emisor.state in [dsedit, dsInsert]) then
    ecf_emisor.edit;

  if Assigned(chkUsarECF) then chkUsarECF.Enabled := True;
  if Assigned(rgAmbiente) then rgAmbiente.Enabled := True;
end;

procedure TSetup.ComprobantesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ComprobantesDet.Close;
  ComprobantesDet.Parameters[1].Value := DataSet.FieldByName('uidCompFiscal').Value;
  ComprobantesDet.Open;
end;

procedure TSetup.ComprobantesDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  ComprobantesDetuidCompFiscal.Value := ComprobantesuidCompFiscal.Value;
end;

procedure TSetup.ecf_emisorNewRecord(DataSet: TDataSet);
begin
  if DataSet.FindField('id') <> nil then DataSet.FieldByName('id').Value := dm.ConfiguracionUConfiguracion.AsString;
  if DataSet.FindField('Rnc') <> nil then DataSet.FieldByName('Rnc').Value := StringReplace(dm.Configuracion.FieldByName('RNC').AsString, '-', '', [rfReplaceAll]);
  if DataSet.FindField('RazonSocial') <> nil then DataSet.FieldByName('RazonSocial').Value := dm.Configuracion.FieldByName('Compania').AsString;
  if DataSet.FindField('Direccion') <> nil then DataSet.FieldByName('Direccion').Value := dm.Configuracion.FieldByName('Direccion').AsString;
  if DataSet.FindField('Telefono') <> nil then DataSet.FieldByName('Telefono').Value := dm.Configuracion.FieldByName('Telefono').AsString;
  if DataSet.FindField('Email') <> nil then DataSet.FieldByName('Email').Value := dm.Configuracion.FieldByName('Email').AsString;
  
  if DataSet.FindField('MunicipioId') <> nil then DataSet.FieldByName('MunicipioId').Value := '010101';
  if DataSet.FindField('ProvinciaId') <> nil then DataSet.FieldByName('ProvinciaId').Value := '010000';
  if DataSet.FindField('Status') <> nil then DataSet.FieldByName('Status').Value := 'ACTIVA';
  if DataSet.FindField('FechaStatatus') <> nil then DataSet.FieldByName('FechaStatatus').Value := Now;
  if DataSet.FindField('SubscripcionTipo') <> nil then DataSet.FieldByName('SubscripcionTipo').Value := 'CLIENTE';
  if DataSet.FindField('ApiKey') <> nil then DataSet.FieldByName('ApiKey').Value := '**';
  if DataSet.FindField('Ambiente') <> nil then DataSet.FieldByName('Ambiente').Value := 'testecf';
end;

initialization
  RegisterClass(TRadioGroup);
  RegisterClass(TCheckBox);

end.
