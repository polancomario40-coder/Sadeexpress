unit uMantSolicitudes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, StdCtrls, Buttons,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, cxLabel, cxDBLabel,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ImgList, ActnList,
  Wwdatsrc, cxLookAndFeelPainters, cxButtons, cxCheckBox, uCodifCtas, cxPC,
  cxMRUEdit, ADODB, cxGroupBox, cxImageComboBox;

const
  NIVEL_EDIT_SOL = 4;

type
  TMantSolicitudes = class(TMantClass)
    Label1: TLabel;
    edValor: TcxDBCurrencyEdit;
    Label3: TLabel;
    deFecha: TcxDBDateEdit;
    Label2: TLabel;
    dsdet: TDataSource;
    sbCheque: TcxButton;
    cxDBLabel1: TcxDBLabel;
    dsBancos: TDataSource;
    luBcos: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    btEditar: TcxButton;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNotaAdd: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    grDetalle: TcxGrid;
    tvDocs: TcxGridDBTableView;
    tvDocsidDocumento: TcxGridDBColumn;
    tvDocsAbrev: TcxGridDBColumn;
    tvDocsReferencia: TcxGridDBColumn;
    tvDocsFecha: TcxGridDBColumn;
    tvDocsTotal: TcxGridDBColumn;
    tvDocsValor: TcxGridDBColumn;
    grDetalleLevel1: TcxGridLevel;
    Label8: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    tvDocsTasa: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tabACH: TcxTabSheet;
    Label10: TLabel;
    dsBcosSuplidor: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton2: TcxButton;
    Label11: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Label4: TLabel;
    edDir: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edRNC: TcxDBTextEdit;
    beSuplidor: TcxDBButtonEdit;
    edSup: TcxDBMRUEdit;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    Label9: TLabel;
    Label13: TLabel;
    cxDBMemo2: TcxDBMemo;
    grRets: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsRets: TDataSource;
    cxGridDBTableView1Porcentaje: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    cxGridDBTableView1idRetencion: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label14: TLabel;
    frCtas: TfrCodifCtas;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure grDetalleEnter(Sender: TObject);
    procedure grDetalleExit(Sender: TObject);
    procedure tvDocsNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure sbChequeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure luBcosPropertiesChange(Sender: TObject);
    procedure cxDBCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure frCtasEnter(Sender: TObject);
    procedure frCtasExit(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBImageComboBox1PropertiesChange(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure frCtastvCtasStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    FormatoSolicitud : String;

    procedure RefreshButtons;
    procedure UpdatePageControl;
    procedure LlenarListaSuplidores;
    { Private declarations }
  protected
    procedure doPrint; override;
    procedure doAnular;
    function Localizar(const id: Variant): Boolean; override;
  public
    { Public declarations }
    procedure Nuevo; override;
    procedure Cancelar; override;
    procedure Salir; override;
    procedure Guardar; override;
    procedure AbrirDocumento(const idSol: Integer);

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  MantSolicitudes: TMantSolicitudes;

implementation

uses uSolDM, uListaSups, Utils, uBuscarSolicitudes, uBuscarPend, urcheques,
  Udata, UUtiles, uBuscarACHSuplidor, uBusquedaRangoDX;

{$R *.dfm}

procedure TMantSolicitudes.AbrirDocumento(const idSol: Integer);
begin
  soldm.AbrirSolicitud(idSol);
end;

procedure TMantSolicitudes.LlenarListaSuplidores;
begin
  edSup.Properties.LookupItems.Clear();
  with soldm.rsEnts do begin
    First();
    while not Eof do begin
      edSup.AddItem(soldm.rsEntsNombre.AsString);
      Next();
    end;
  end;
end;

procedure TMantSolicitudes.beSuplidorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  if appEstado = appBrowse then
    Exit;

  if soldm.mSol.ReadOnly then
    exit;

  i := BuscarSuplidor();
  if i > 0 then begin
    ///Floading := True;
    //rsEnts.Locate('idSuplidor',i,[]);

    if not (soldm.mSol.State in dsEditModes) then
      soldm.mSol.Edit();

    soldm.mSolIdSuplidor.AsInteger := i;

    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TMantSolicitudes.Cancelar;
begin
  inherited;
  if soldm.mSolidSolicitud.AsInteger = 0 then
    soldm.CerrarSolicitud()
  else
    soldm.AbrirSolicitud(soldm.mSolIdSolicitud.AsInteger);

  frCtas.GUIDDocumento := soldm.mSolGUIDSolicitud.Value;

  appEstado := appBrowse;
  RefreshButtons();
end;

constructor TMantSolicitudes.Create(AOwner: TComponent);
begin
  soldm := TSoldm.Create(Application);

  Inherited Create(AOwner);

  soldm.Codificacion := frCtas;
end;

destructor TMantSolicitudes.Destroy;
begin
  if Assigned(soldm) then
    FreeAndNil(soldm);

  inherited Destroy;
end;

procedure TMantSolicitudes.Guardar;
begin
  if soldm.mSolmostrarEncxp.AsBoolean = False then begin
    if frCtas.TotalDB <> frCtas.TotalCR then begin
      if dm.PermitirDescuadre then begin
        if MessageDlg('Hay un descuadre en el documento, desea guardarlo',mtConfirmation,[mbYes,mbNo],0) = mrNo then
          Exit;
      end
      else
        raise Exception.Create('Hay un descuadre en el documento, no puede guardarlo');
    end;
  end
  else begin
    if soldm.mSolTotal.Value = 0 then
      raise Exception.Create('Tiene que especificar documentos a pagar con esta solicitud');
  end;

  dm.Coneccion.BeginTrans();
  try
    inherited Guardar();

    soldm.GuardarSolicitud();
    frCtas.idSuplidor := soldm.mSolidSuplidor.Value;
    frCtas.Suplidor := soldm.mSolNombre.Value;
    frCtas.Tipo := 'COSTO';
    frCtas.Fecha := soldm.mSolFecha.Value;
    frCtas.Referencia := soldm.mSolNumero.AsString;
    frCtas.TipoDocumento := 'SOLPAGO';
    frCtas.GuardarCodificacion();
    dm.Coneccion.CommitTrans();
  except
    dm.Coneccion.RollbackTrans();
    raise;
  end;

  appEstado := appBrowse;
  RefreshButtons();
end;

procedure TMantSolicitudes.Nuevo;
begin
  inherited Nuevo();
  soldm.NuevaSolicitud(1);
  frCtas.GUIDDocumento := soldm.mSolGUIDSolicitud.Value;
  appEstado := appInsert;
  RefreshButtons();
end;

procedure TMantSolicitudes.Salir;
begin
  inherited Salir();
  ModalResult := mrCancel;
end;

procedure TMantSolicitudes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Nuevo();
end;

procedure TMantSolicitudes.FormCreate(Sender: TObject);
begin
  inherited;
  Modulo := 'CXP';
  LogField := 'idSolicitud';
  ds.DataSet := soldm.mSol;

  if not soldm.rsBancos.Active then
    soldm.rsBancos.Open();

  SolDM.rsListaRetDGII.Open();
  soldm.rsListaPagoForma.Open();

  luBcos.EditValue := soldm.rsBancosidCuentaBanco.AsInteger;
  Nuevo();
  FormatoSolicitud := dm.GetDefaultStr('FormatoSolicitud');
  SolDM.mSol.Open ;
  soldm.rsTiposRets.Open();

  LlenarListaSuplidores();

  grRets.Visible := False;
  grDetalle.Height := 167;
end;

procedure TMantSolicitudes.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Salir();
end;

procedure TMantSolicitudes.grDetalleEnter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
  if SolDM.mSolRets.RecordCount = 0 then
    SolDM.mSolRets.Append();
end;

procedure TMantSolicitudes.grDetalleExit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TMantSolicitudes.RefreshButtons;
begin
  if appEstado = appBrowse then begin
    AGuardar.Enabled := False;

    ACancelar.Enabled := False;
    sbCheque.Enabled := (soldm.mSol.Active) and (soldm.mSolStatus.Value = 'A');

    dsRets.AutoEdit := False;
    dsDet.AutoEdit := False;
  end
  else begin
    AGuardar.Enabled := True;

    ACancelar.Enabled := True;
    sbCheque.Enabled := False;
    dsRets.AutoEdit := True;
    dsDet.AutoEdit := True;    
  end;

  frCtas.isReadOnly := (appEstado = appBrowse); //soldm.mSol.ReadOnly;
  UpdatePageControl();
end;

procedure TMantSolicitudes.tvDocsNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  ADone := False;
  //showmessage(IntToStr(AButtonIndex));

  if AButtonIndex = 6 then begin
    ADone := True;
    if soldm.mSolidSuplidor.AsInteger = 0 then
      ShowMessage('Seleccione un suplidor antes de buscar los documentos')
    else begin
      soldm.AbrirPendientes(soldm.mSolIdSuplidor.AsInteger);
      if SeleccionarPend(soldm.mDocsPendientes) then
        soldm.AceptarPendientes();
    end;
  end;
end;

procedure TMantSolicitudes.sbChequeClick(Sender: TObject);
var
  idDoc: Integer;
begin
  inherited;

  if soldm.mSolidSolicitud.AsInteger > 0 then begin

    if soldm.mSolStatus.AsString = 'P' then
      raise Exception.Create('Esta solicitud ya fue pagada');

    if soldm.mSolStatus.AsString = '1' then
      raise Exception.Create('Esta solicitud no tiene la primera aprobacion');

    if soldm.mSolStatus.AsString = '3' then
      raise Exception.Create('Esta solicitud no ha sido revisada');

    if soldm.mSolStatus.AsString = '4' then
      raise Exception.Create('Esta solicitud no tiene la segunda aprobacion');

    if soldm.mSolStatus.AsString = 'C' then
      raise Exception.Create('Esta solicitud esta cancelada');

    if (soldm.mSolidCuentabanco.Isnull) then   
      raise exception.create('Debe seleccionar la cuenta de banco');

    idDoc := soldm.ProcesarSolicitud(soldm.mSolidSolicitud.AsInteger);
    
    if (idDoc > 0) then begin
      if (soldm.mSolTipoSolicitud.AsInteger = 1) then begin
        if MessageDlg('Desea imprimir el Cheque?' + chr(13) + 'Si elije no imprimir debera hacerlo luego por la opcion de consultar cheques',mtConfirmation,[mbYes,mbNo],0) = mrYes then
          PrintChk(idDoc);
      end;
      soldm.AbrirSolicitud(soldm.mSolidSolicitud.asInteger);
      RefreshButtons();

      ShowMessage('La solicitud se ha procesado con exito');
    end
    else
      ShowMessage('Error procesando solicitud');
  end
  else
    ShowMessage('Debe guardar la solicitud antes de procesarla');
end;

procedure TMantSolicitudes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if soldm.mSolTotal.AsCurrency > 0 then begin
    if MessageDlg('Esta seguro de cancelar esta solicitud',mtConfirmation, [mbYes, mbNo],0) = mrNo then
      Exit;
  end;
  ModalResult := mrOk;
end;

procedure TMantSolicitudes.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if soldm.mSolidSolicitud.AsInteger > 0 then begin
    if soldm.mSolStatus.AsString = 'P' then
      raise Exception.Create('No puede borrar solicitudes pagadas');

    soldm.BorrarSolicitud(soldm.mSolidSolicitud.AsInteger);
    Nuevo();
  end;
end;

procedure TMantSolicitudes.ALocalizarExecute(Sender: TObject);
var
  i: Integer;
  oldst : boolean;
begin
  //inherited;
  oldst := SolDM.NoValidar;
  SolDM.NoValidar := true;
  i := BuscarRegistro(TBuscarSolicitudes);
  if i <> -1 then
    Localizar(i);
  SolDM.NoValidar := oldst;

{  if i <> -1 then begin
    soldm.AbrirSolicitud(i);
    frCtas.GUIDDocumento := soldm.mSolGUIDSolicitud.Value;
  end;

  appEstado := appBrowse;
  RefreshButtons();}
end;

procedure TMantSolicitudes.doPrint;
begin
  inherited;
  with soldm.rsRPTSol do begin
    Close();
    Parameters[1].Value := SolDM.mSolidSolicitud.Value;
    Open();
  end;

  with soldm.rsSolCtas do begin
    Close();
    Parameters[1].Value := soldm.mSolidSolicitud.Value;
    Parameters[2].Value := luBcos.EditValue;
    Open();
  end;
  If luBcos.EditValue <> Null Then
  Begin
    soldm.lCuenta.Caption := solDm.rsBancosNumCuenta.Value;
    soldm.lBanco.Caption := solDm.rsBancosNombre.Value;
  End
  Else
  Begin
    soldm.lCuenta.Caption := '';
    soldm.lBanco.Caption := '';
  End;
  if FormatoSolicitud <> '' then begin
    if FileExists(FormatoSolicitud) then begin
      soldm.Report.Template.FileName := FormatoSolicitud;
      soldm.Report.Template.LoadFromFile();
    end;
  end;

  Imprimir(soldm.Report);
end;

procedure TMantSolicitudes.ABorrarExecute(Sender: TObject);
begin
  inherited;
  if (soldm.mSolStatus.Value <> 'C') and (soldm.mSolStatus.Value <> 'P') then begin
    if MessageDlg('Esta seguro de borrar la solicitud',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      soldm.BorrarSolicitud(soldm.mSolidSolicitud.AsInteger);
      Nuevo();
    end;
  end;
end;

procedure TMantSolicitudes.luBcosPropertiesChange(Sender: TObject);
begin
  inherited;
  solDm.rsBancos.Locate('IdCuentaBanco', luBcos.EditValue, []);
end;

procedure TMantSolicitudes.UpdatePageControl;
begin
  if not soldm.mSol.ReadOnly then begin
    if soldm.mSolmostrarEncxp.AsBoolean then begin
      cxPageControl1.ActivePageIndex := 0;
      cxPageControl1.Pages[1].TabVisible := False;
      cxPageControl1.Pages[0].TabVisible := True;
      edValor.Properties.ReadOnly := True;
    end
    else begin
      cxPageControl1.ActivePageIndex := 1;
      cxPageControl1.Pages[1].TabVisible := True;
      cxPageControl1.Pages[0].TabVisible := False;
      edValor.Properties.ReadOnly := False;
    end;                 
  end;
end;


procedure TMantSolicitudes.cxDBCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  UpdatePageControl();
end;

procedure TMantSolicitudes.frCtasEnter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
end;

procedure TMantSolicitudes.frCtasExit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TMantSolicitudes.AEditarExecute(Sender: TObject);
var
  StatusInicial: string;
begin
  if soldm.mSolStatus.Value = 'C' then
    raise Exception.Create('No puede editar una solicitud cancelada');
    
  StatusInicial := dm.GetDefaultStr('SOL_DEF_STATUS');
  if StatusInicial = '' then
    StatusInicial := 'A';

  if soldm.mSolStatus.AsString <> StatusInicial then begin
   if not dm.Autorizar(NIVEL_EDIT_SOL,soldm.mSolNumero.AsString,'Editar sol. aprob.') then
     raise Exception.Create('Usted no tiene permiso de editar esta solicitud');
  end;
  inherited;
  appEstado := appEdit;
  RefreshButtons();
end;

function TMantSolicitudes.Localizar(const id: Variant): Boolean;
var
  i : Integer;
begin
  if id = null then
    i := -1
  else
    i := id;

  soldm.AbrirSolicitud(i);
  frCtas.GUIDDocumento := soldm.mSolGUIDSolicitud.Value;

  appEstado := appBrowse;
  RefreshButtons();

  Result := soldm.mSol.Active and (soldm.mSolidSolicitud.AsInteger > 0);
end;

procedure TMantSolicitudes.cxButton2Click(Sender: TObject);
var
  id: Variant;
  Cdgo,Cta: string;
begin
  inherited;
  if appEstado = appBrowse then
    Exit;

  BuscarBancoACHSuplidor(soldm.mSolIdSuplidor.AsInteger, soldm.mSolidMoneda.AsInteger, id, Cdgo, Cta);
  if id <> null then begin

    if not (soldm.mSol.State in dsEditModes) then
      soldm.mSol.Edit();

    soldm.mSolCuentaDestino.Value := cta;
    soldm.mSolBancoDestino.Value := cdgo;
  end;
end;

procedure TMantSolicitudes.cxDBImageComboBox1PropertiesChange(
  Sender: TObject);
begin
  inherited;
  if soldm.mSolTipoSolicitud.AsInteger = 3 then
    cxPageControl2.ActivePageIndex := 1
  else begin
    cxPageControl2.ActivePageIndex := 0;
    
    if soldm.mSolmostrarEncxp.AsBoolean then
      cxPageControl1.ActivePageIndex := 0
    else
      cxPageControl1.ActivePageIndex := 1;

    tabACH.TabVisible := soldm.mSolTipoSolicitud.AsInteger = 2;
  end;
end;

procedure TMantSolicitudes.doAnular;
begin
  with soldm do begin
    if mSol.Active and (mSolIdSolicitud.AsInteger > 0) then begin
      CancelarSolicitud(mSolidSolicitud.AsInteger, mSolStatus.Value, dm.UsuarioActual);

      Localizar(mSolIdSolicitud.AsInteger);
    end;
  end;
end;

procedure TMantSolicitudes.AAnularExecute(Sender: TObject);
//var
//  StatusInicial: string;
begin
  if Confirmar('Esta seguro de anular esta solicitud') then begin
    //StatusInicial := dm.GetDefaultStr('SOL_DEF_STATUS');
    //if StatusInicial = '' then
    //  StatusInicial := 'A';

    //if soldm.mSolStatus.AsString <> StatusInicial then begin
    // if not dm.Autorizar(NIVEL_EDIT_SOL,soldm.mSolNumero.AsString,'Anular sol. aprob.') then
    //   raise Exception.Create('Usted no tiene permiso de anular esta solicitud');
    //end;

    inherited;

    doAnular();
  end;
end;

procedure TMantSolicitudes.cxButton3Click(Sender: TObject);
begin
  inherited;
  if grRets.Visible then begin
    grRets.Visible := False;
    grDetalle.Height := 167;
    cxButton3.Caption := '+ Rets';
  end
  else begin
    grDetalle.Height := 108;
    grRets.Visible := True;
    cxButton3.Caption := '- Rets';    
  end;
end;

procedure TMantSolicitudes.frCtastvCtasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[5] = True then
    AStyle := frCtas.StyleAutomatica
  else
    AStyle := nil;
end;

end.

