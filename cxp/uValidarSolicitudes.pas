unit uValidarSolicitudes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, StdCtrls, cxButtons, Gradient, DB,
  Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, ImgList, cxCurrencyEdit,
  cxDBLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, kbmMemTable,
  cxCheckBox, cxLabel, cxDBLabel;

type
  TValidarSolicitudes = class(TFForm)
    Gradient1: TGradient;
    Gradient2: TGradient;
    btSalir: TcxButton;
    rs: TADODataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1Notas: TcxGridDBColumn;
    cxGrid1DBTableView1GranTotal: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Acciones: TActionList;
    Aprobar: TAction;
    Rechazar: TAction;
    Imprimir: TAction;
    cValidar: TADOCommand;
    ImageList: TImageList;
    Label1: TLabel;
    rsidSolicitud: TIntegerField;
    rsNumero: TIntegerField;
    rsFecha: TDateTimeField;
    rsUsuario: TStringField;
    rsTotal: TBCDField;
    rsNombre: TStringField;
    rsConcepto: TStringField;
    rsstatus: TStringField;
    rsTipo: TStringField;
    rsCtaBanco: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    mSols: TkbmMemTable;
    mSolsidSolicitud: TIntegerField;
    mSolsNumero: TIntegerField;
    mSolsFecha: TDateTimeField;
    mSolsUsuario: TStringField;
    mSolsTotal: TBCDField;
    mSolsNombre: TStringField;
    mSolsConcepto: TStringField;
    mSolsstatus: TStringField;
    mSolsTipo: TStringField;
    mSolsCtaBanco: TStringField;
    mSolsSel: TBooleanField;
    mTotales: TkbmMemTable;
    mTotalesidCuentaBanco: TIntegerField;
    mTotalesBanco: TStringField;
    mTotalesTotal: TCurrencyField;
    dsTotales: TwwDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Banco: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxDBLabel1: TcxDBLabel;
    procedure AprobarExecute(Sender: TObject);
    procedure RechazarExecute(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mSolsAfterPost(DataSet: TDataSet);
    procedure mSolsSelValidate(Sender: TField);
  private
    StatusAprobada, StatusRechazada: string;
    Status: string;
    FLoading: Boolean;
    procedure ValidarSolicitud(const idSol: Integer; const st: string; const usr: string; const newst: string);
    procedure ResumirAprobaciones;
    procedure RecalcularResumen(const cta: string; const valor: Currency);
    procedure ValidarSolicitudes(const st: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ValidarSolicitudes: TValidarSolicitudes;

procedure ValidarSols(const st: string; const newst: string);

implementation

uses Udata, uMantSolicitudes, UUtiles;

{$R *.dfm}

procedure ValidarSols(const st: string; const newst: string);
begin
  with TValidarSolicitudes.Create(Application) do begin
    FLoading := True;
    with rs do begin
      Close();
      Parameters[01].Value := st;
      Open();
    end;

    mSols.Close();
    mSols.Open();
    mSols.LoadFromDataSet(rs,[mtcpoAppend]);

    mTotales.Close();
    mTotales.Open();

    Status := st;
    StatusAprobada := newst;
    StatusRechazada := 'C';
    FLoading := False;
    ShowModal();

    Release();
  end;
end;

procedure TValidarSolicitudes.ValidarSolicitudes(const st: string);
begin
  with mSols do begin
    DisableControls();
    try
      First();
      while not Eof do begin
        if mSolsSel.Value then
          ValidarSolicitud(mSolsIdSolicitud.AsInteger, mSolsStatus.Value, dm.UsuarioActual, st);
        Next();
      end;

      with rs do begin
        Close();
        Parameters[01].Value := Status;
        Open();
      end;

      mSols.Close();
      mSols.Open();
      mSols.LoadFromDataSet(rs,[mtcpoAppend]);

      mTotales.Close();
      mTotales.Open();
    finally
      EnableControls();
    end;
  end;
end;

procedure TValidarSolicitudes.AprobarExecute(Sender: TObject);
begin
  inherited;
  if Confirmar('Esta seguro de aprobar esta(s) solicitud(es)') then
    ValidarSolicitudes(StatusAprobada);
end;

procedure TValidarSolicitudes.RechazarExecute(Sender: TObject);
begin
  inherited;
  if Confirmar('Esta seguro de rechazar esta(s) solicitud(es)') then
    ValidarSolicitudes(StatusRechazada);
end;

procedure TValidarSolicitudes.ValidarSolicitud(const idSol: Integer; const st: string; const usr: string; const newst: string);
begin
  with cValidar do begin
    Parameters[1].Value := idSol;
    Parameters[2].Value := st;
    Parameters[3].Value := newst;
    Parameters[4].Value := dm.UsuarioActual;
    Execute();
  end;
end;

procedure TValidarSolicitudes.btSalirClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TValidarSolicitudes.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  idDoc: Integer;
begin
  inherited;
  AHandled := True;

  ModalShow(TMantSolicitudes,ShowFind,rsidSolicitud.AsInteger,'idSolicitud',True);
  idDoc := rsidSolicitud.Value;

  with rs do begin
    Close();
    Parameters[01].Value := Status;
    Open();
  end;

  rs.Locate('idSolicitud',idDoc,[]);
end;


procedure TValidarSolicitudes.mSolsAfterPost(DataSet: TDataSet);
begin
  inherited;
  ResumirAprobaciones();
end;

procedure TValidarSolicitudes.ResumirAprobaciones;
var
  bm: string;
begin
  with mSols do begin
    DisableControls();
    mTotales.DisableControls();
    mTotales.Close();
    mTotales.Open();
    bm := Bookmark;
    try
      First();
      while not Eof do begin
        if mSolsSel.Value then begin
          if not mTotales.Locate('Banco',mSolsCtaBanco.AsString,[]) then begin
            mTotales.Append();
            mTotalesBanco.Value := mSolsCtaBanco.Value;
            mTotalesTotal.Value := 0;
          end
          else
            mTotales.Edit();

          mTotalesTotal.AsCurrency := mTotalesTotal.AsCurrency + mSolsTotal.AsCurrency;
          mTotales.Post();
        end;
        Next();
      end;
    finally
      Bookmark := bm;
      EnableControls();
      mTotales.EnableControls();
    end;
  end;
end;

procedure TValidarSolicitudes.RecalcularResumen(const cta: string; const valor: Currency);
begin
  if not mTotales.Active then
    mTotales.Open();
    
  if not mTotales.Locate('Banco',cta,[]) then begin
     if valor <= 0 then
       Exit;

     mTotales.Append();
     mTotalesBanco.Value := mSolsCtaBanco.Value;
     mTotalesTotal.Value := 0;
  end
  else
    mTotales.Edit();

  mTotalesTotal.AsCurrency := mTotalesTotal.AsCurrency + valor;
  mTotales.Post();
  if mTotalesTotal.Value = 0 then
    mTotales.Delete();
end;

procedure TValidarSolicitudes.mSolsSelValidate(Sender: TField);
begin
  inherited;
  if FLoading then
    Exit;
    
  if mSolsSel.Value then
    RecalcularResumen(mSolsCtaBanco.Value,mSolsTotal.AsCurrency)
  else
    RecalcularResumen(mSolsCtaBanco.Value,-mSolsTotal.AsCurrency);
end;

end.
