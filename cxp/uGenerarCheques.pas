unit uGenerarCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, StdCtrls, kbmMemTable,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters,
  cxButtons, cxButtonEdit, uSimpleForm;

type
  TfGenerarCheques = class(TSimpleForm)
    mSols: TkbmMemTable;
    mSolsNumero: TIntegerField;
    mSolsidSolicitud: TIntegerField;
    mSolsNombre: TStringField;
    mSolsFecha: TDateTimeField;
    mSolsTotal: TCurrencyField;
    mSolsCheque: TIntegerField;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Cheque: TcxGridDBColumn;
    dsBancos: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    mSolsidCuentaBanco: TIntegerField;
    mSolsTipoSolicitud: TIntegerField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    procedure mSolsNumeroValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure mSolsidSolicitudValidate(Sender: TField);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    FLoading: Boolean;
    procedure GenerarCheques;
    procedure AceptarSolicitudes;
    procedure PreSeleccionarSols;    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGenerarCheques: TfGenerarCheques;

implementation

uses uSolDM, urcheques, uSolicitudesPendientes;

{$R *.dfm}

procedure TfGenerarCheques.mSolsNumeroValidate(Sender: TField);
var
  idSol: Integer;
  fec: TDateTime;
  Nom: string;
  st: string;
  Valor: Currency;
begin
  inherited;
  if FLoading then
    exit;

  FLoading := True;
  try
    soldm.ValidarSolicitud(mSolsNumero.AsInteger, idSol, Nom, fec, Valor, st);
    if idSol <= 0 then
      raise Exception.Create('Esta solicitud no existe')
    else begin
      if st = 'P' then
        raise Exception.Create('Esta solicitud ya fue pagada')
      else if st = 'C' then
        raise Exception.Create('Esta solicitud esta anulada')
      else begin
        mSolsIdSolicitud.AsInteger := idSol;
        mSolsFecha.Value := fec;
        mSolsNombre.Asstring := Nom;
        mSolsTotal.asCurrency := valor;
      end;
    end;
  finally
    FLoading := False;
  end;
end;

procedure TfGenerarCheques.GenerarCheques;
var
  idDoc: Integer;
begin
  with mSols do begin
    First();
    while not Eof do begin
      idDoc := soldm.ProcesarSolicitud(mSolsIdSolicitud.AsInteger);
      if (mSolsTipoSolicitud.Value = 1) and (idDoc > 0) then begin
        mSols.Edit();
        mSolsCheque.asInteger := idDoc;
        mSols.Post();
      end;
      Next();
    end;
  end;
end;

procedure TfGenerarCheques.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(soldm) then
    soldm := TSolDM.Create(Application);

  soldm.rsBancos.Open();
  //luCuentas.EditValue := soldm.rsBancosIdCuentaBanco.AsInteger;

  mSols.Open();
  Floading := False;
end;

procedure TfGenerarCheques.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfGenerarCheques.cxButton1Click(Sender: TObject);
begin
  inherited;
  GenerarCheques();
end;

procedure TfGenerarCheques.FormDestroy(Sender: TObject);
begin
  if Assigned(soldm) then
    FreeAndNil(soldm);

  inherited;
end;

procedure TfGenerarCheques.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
  if mSols.RecordCount = 0 then
    mSols.Append();
end;

procedure TfGenerarCheques.mSolsidSolicitudValidate(Sender: TField);
var
  Num: Integer;
  fec: TDateTime;
  Nom: string;
  st: string;
  Valor: Currency;
  Tipo:Integer;
  Banco: Integer;

begin
  inherited;
  if FLoading then
    exit;

  FLoading := True;
  try
    soldm.ValidarSolicitudID(mSolsidSolicitud.AsInteger, Num, Nom, fec, Valor, st,tipo,Banco);
    if Num <= 0 then
      raise Exception.Create('Esta solicitud no existe')
    else begin
      if st = 'P' then
        raise Exception.Create('Esta solicitud ya fue pagada')
      else if st = 'C' then
        raise Exception.Create('Esta solicitud esta anulada')
      else begin
        mSolsNumero.AsInteger := Num;
        mSolsFecha.Value := fec;
        mSolsNombre.Asstring := Nom;
        mSolsTotal.asCurrency := valor;
        mSolsIdCuentaBanco.Value := Banco;
        mSolsTipoSolicitud.Value := Tipo;
      end;
    end;
  finally
    FLoading := False;
  end;
end;

procedure TfGenerarCheques.cxButton3Click(Sender: TObject);
begin
  inherited;
  with mSols do begin
    First();
    while not Eof do begin
      if mSolsCheque.AsInteger > 0 then
        PrintChk(mSolsCheque.AsInteger);
      Next();
    end;
  end;
end;

procedure TfGenerarCheques.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TfGenerarCheques.AceptarSolicitudes;
begin
  mSols.DisableControls();
  try
    mSols.Close();
    mSols.Open();
    with soldm.mSolsPend do begin
      First();
      while not Eof do begin
        if soldm.mSolsPendSel.AsBoolean then begin
          mSols.Append();
          mSolsidSolicitud.AsInteger := soldm.mSolsPendidSolicitud.asInteger;
          mSols.Post();
        end;
        Next();
      end;
    end;
  finally
    mSols.EnableControls();
  end;
end;

procedure TfGenerarCheques.PreSeleccionarSols;
begin
  with mSols do begin
    First();
    while not Eof do begin
      if soldm.mSolsPend.Locate('idSolicitud',mSolsIdSolicitud.AsInteger,[]) then begin
        soldm.mSolsPend.Edit();
        soldm.mSolsPendSel.AsBoolean := True;
        soldm.mSolsPend.Post();
      end;
      Next();
    end;
  end;
end;

procedure TfGenerarCheques.cxButton4Click(Sender: TObject);
begin
  inherited;
  soldm.AbrirSolsPendientes();
  PreSeleccionarSols();
  if MostrarSolsPend() then
    AceptarSolicitudes();
end;

end.
