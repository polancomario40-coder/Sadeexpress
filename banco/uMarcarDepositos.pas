unit uMarcarDepositos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, kbmMemTable, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, DateUtils,
  dxDBELib, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Buttons, ADODB,
  StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxImageComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar;

const
  TT_DEPOSITOS = 1;

type
  TfMarcarDepositos = class(TForm)
    dsBancos: TDataSource;
    mDeps: TkbmMemTable;
    mDepsidDocumento: TIntegerField;
    mDepsFecha: TDateField;
    mDepsValor: TCurrencyField;
    dsDeps: TDataSource;
    sbSave: TcxButton;
    sbExit: TcxButton;
    rsBuscarDep: TADODataSet;
    mDepsReferencia: TStringField;
    Label1: TLabel;
    sbStart: TcxButton;
    sbCancel: TcxButton;
    cmdGuardarStatus: TADOCommand;
    luBco: TcxLookupComboBox;
    rsBuscarDepidDocumento: TIntegerField;
    rsBuscarDepidTrans: TIntegerField;
    rsBuscarDepFecha: TDateTimeField;
    rsBuscarDepidCuentaBanco: TIntegerField;
    rsBuscarDepStatus: TStringField;
    rsBuscarDepFechaStatus: TDateTimeField;
    rsBuscarDepTipoDocOrigen: TStringField;
    rsBuscarDepDocOrigen: TIntegerField;
    rsBuscarDepReferencia: TStringField;
    rsBuscarDepValor: TBCDField;
    rsBuscarDepDebCre: TWordField;
    mDepsStatus: TStringField;
    rsDeps: TADODataSet;
    mDepsFechaStatus: TDateTimeField;
    rsDepsIdDocumento: TIntegerField;
    rsDepsFecha: TDateTimeField;
    rsDepsStatus: TStringField;
    rsDepsFechaStatus: TDateTimeField;
    rsDepsValor: TBCDField;
    rsDepsReferencia: TStringField;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1Status: TcxGridDBColumn;
    GridDBTableView1FechaStatus: TcxGridDBColumn;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    Label2: TLabel;
    rsDepsGuidDocumento: TStringField;
    mDepsGuidDocumento: TStringField;
    procedure sbExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mDepsReferenciaValidate(Sender: TField);
    procedure sbStartClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
  private
    procedure EnableEdit(const tof: Boolean);
    procedure DoGuardarDepositos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMarcarDepositos: TfMarcarDepositos;

implementation

uses udmBancos, Udata;

{$R *.dfm}

procedure TfMarcarDepositos.sbExitClick(Sender: TObject);
begin
  Close();
end;

procedure TfMarcarDepositos.FormCreate(Sender: TObject);
begin
  deDesde.Date := StartOfTheMonth(dmBanco.FechaDesde);
  deHasta.Date := DateOf(EndOfTheMonth(dmBanco.FechaHasta));
  
  if not dmBanco.rsBancos.Active then
    dmBanco.rsBancos.Open();

  mDeps.Open();
end;

procedure TfMarcarDepositos.mDepsReferenciaValidate(Sender: TField);
begin
{  if mDepsReferencia.ASstring = '' then
    exit;

  with rsBuscarDep do begin
    Close();
    Parameters[1].Value := luBco.EditValue;
    Parameters[2].Value := mDepsReferencia.Asstring;
    Parameters[3].Value := TT_DEPOSITOS;
    Open();
    if Eof then
      raise exception.Create('Este deposito no existe')
    else begin
      mDepsIdDocumento.AsInteger := rsBuscarDepIdDocumento.AsInteger;
      mDepsFecha.AsDateTime := rsBuscarDepFecha.AsDateTime;
      mDepsValor.AsCurrency := rsBuscarDepValor.AsCurrency;
    end;
  end;}
end;

procedure TfMarcarDepositos.sbStartClick(Sender: TObject);
begin
  if luBco.Text <> '' then
    EnableEdit(True);

  with rsDeps do begin
    Close();
    Parameters[0].Value := luBco.EditValue;
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
  mDeps.Close();
  mDeps.Open();
  mDeps.LoadFromDataSet(rsDeps,[mtcpoAppend]);
  dmBanco.FechaDesde := deDesde.Date;
  dmBanco.FechaHasta := deHasta.Date;
end;

procedure TfMarcarDepositos.EnableEdit(const tof: Boolean);
begin
  sbStart.Enabled := not tof;
  luBco.Enabled := not tof;
  sbExit.Enabled := not tof;
  deDesde.Enabled := not tof;
  deHasta.Enabled := not tof;

  sbCancel.Enabled := tof;
  sbSave.Enabled := tof;
  Grid.Enabled := tof;

  if tof then
    Grid.SetFocus()
  else
    luBco.SetFocus();
end;

procedure TfMarcarDepositos.sbCancelClick(Sender: TObject);
begin
  mDeps.Close();
  mDeps.Open();

  EnableEdit(False);
end;

procedure TfMarcarDepositos.sbSaveClick(Sender: TObject);
begin
  doGuardarDepositos();

  if mDeps.RecordCount = 0 then
    EnableEdit(False);
end;

procedure TfMarcarDepositos.DoGuardarDepositos;
begin
  with mDeps do begin
    DisableControls();
    First();
    while not Eof do begin
      //cmdGuardarStatus.Parameters[1].Value := TT_DEPOSITOS;
      cmdGuardarStatus.Parameters[1].Value := mDepsGuidDocumento.Value;
      cmdGuardarStatus.Parameters[2].Value := mDepsStatus.AsString;
      cmdGuardarStatus.Parameters[3].Value := DateOf(mDepsFechaStatus.AsDateTime);
      cmdGuardarStatus.Execute();

      if (cmdGuardarStatus.Parameters[0].Value = 0) then
        Delete()
      else
        Next();
    end;
    EnableControls();
  end;
end;


end.
