unit uMarcarCks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  kbmMemTable, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  Buttons, DateUtils, dxEdLib, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxMemo, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox;

const
  STATUS_PAGADO = '$';
  STATUS_TRANSITO = 'T';
type
  TfMarcarCks = class(TForm)
    dsBcos: TDataSource;
    dsCks: TDataSource;
    rsBuscarCks: TADODataSet;
    Label1: TLabel;
    cmdGuardarSt: TADOCommand;
    luBco: TcxLookupComboBox;
    sbStart: TcxButton;
    sbSave: TcxButton;
    sbCancel: TcxButton;
    sbExit: TcxButton;
    mCks: TkbmMemTable;
    mCksidDocumento: TIntegerField;
    mCksFecha: TDateField;
    mCksValor: TCurrencyField;
    mCksFechaStatus: TDateTimeField;
    mCksConcepto: TStringField;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1FechaStatus: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    Label2: TLabel;
    Label3: TLabel;
    dtHasta: TcxDateEdit;
    dtDesde: TcxDateEdit;
    mCksPagado: TBooleanField;
    GridDBTableView1Pagado: TcxGridDBColumn;
    rsBuscarCksidDocumento: TIntegerField;
    rsBuscarCksFecha: TDateTimeField;
    rsBuscarCksPagado: TBooleanField;
    rsBuscarCksFechaStatus: TDateTimeField;
    rsBuscarCksValor: TBCDField;
    rsBuscarCksConcepto: TStringField;
    Label4: TLabel;
    dtFec: TcxDateEdit;
    cboxTipo: TcxImageComboBox;
    rsBuscarCksNumero: TStringField;
    mCksNumero: TStringField;
    rsBuscarCksGUIDDocumento: TGuidField;
    mCksGUIDDocumento: TGuidField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mCksPagadoValidate(Sender: TField);
    procedure dtDesdePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    FLoading: Boolean;
    procedure ProcesarCheques;
    //procedure BuscarStatus(const idDoc: Integer; out St: string;
     // out Fecha: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMarcarCks: TfMarcarCks;

implementation

uses udmBancos, Udata;

{$R *.dfm}

procedure TfMarcarCks.FormCreate(Sender: TObject);
begin
  if not dmBanco.rsBancos.Active then
    dmBanco.rsBancos.Open();

  luBco.EditValue := dmBanco.rsBancosidCuentaBanco.AsInteger;
  FLoading := False;
  dtFec.Date := Date();
  dtDesde.Date := DateOf(StartOfTheMonth(Date()));
  dtHasta.Date := DateOf(EndOfTheMonth(Date()));
  
  cboxTipo.EditValue := 2;    
end;

procedure TfMarcarCks.ProcesarCheques;
begin
  with mCks do begin
    DisableControls();
    First();
    while not Eof do begin
      //cmdGuardarSt.Parameters[1].Value := 20;
      cmdGuardarSt.Parameters[1].Value := mCksGuidDocumento.Value;
      if mCksPagado.AsBoolean then
        cmdGuardarSt.Parameters[2].Value := STATUS_PAGADO
      else
        cmdGuardarSt.Parameters[2].Value := STATUS_TRANSITO;

      cmdGuardarSt.Parameters[3].Value := DateOf(mCksFechaStatus.AsDateTime);

      cmdGuardarSt.Execute();
//      if cmdGuardarSt.Parameters[0].Value = 0 then
//        Delete()
//    else
      Next();
    end;
    EnableControls();
  end;
end;

procedure TfMarcarCks.SpeedButton2Click(Sender: TObject);
begin
  ProcesarCheques();

  mCks.Close();

  luBco.Enabled := True;
  luBco.SetFocus();
  Grid.Enabled := False;
  dtDesde.Enabled := True;
  dtHasta.Enabled := True;
  sbStart.Enabled := True;
  cboxTipo.Enabled := True;

  sbSave.Enabled := False;
  sbCancel.Enabled := False;
end;

procedure TfMarcarCks.SpeedButton3Click(Sender: TObject);
begin
  mCks.Close();
//  mCks.Open();

  luBco.Enabled := True;
  luBco.SetFocus();
  Grid.Enabled := False;
  dtDesde.Enabled := True;
  dtHasta.Enabled := True;
  sbStart.Enabled := True;
  cboxTipo.Enabled := True;
  
  sbSave.Enabled := False;
  sbCancel.Enabled := False;
end;

procedure TfMarcarCks.SpeedButton4Click(Sender: TObject);
begin
  Floading := True;
  try
    Grid.Enabled := True;
    dtDesde.Enabled := False;
    dtHasta.Enabled := False;
    Grid.SetFocus();
    luBco.Enabled := False;
    sbSave.Enabled := True;
    sbCancel.Enabled := True;
    sbStart.Enabled := False;
    cboxTipo.Enabled := False;

    SelectFirst();
    with rsBuscarCks do begin
      Close();
      Parameters[1].Value := luBco.EditValue;
      Parameters[2].Value := DateOf(dtDesde.Date);
      Parameters[3].Value := DateOf(dtHasta.Date);
      Parameters[4].Value := cboxTipo.EditValue;
      Open();
    end;

    with mCks do begin
      Close();
      Open();
      LoadfromDataSet(rsBuscarCks,[mtcpoAppend]);
    end;

    rsBuscarCks.Close();
  finally
    FLoading := False;
  end;
end;

procedure TfMarcarCks.SpeedButton1Click(Sender: TObject);
begin
  Close();
end;

procedure TfMarcarCks.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_RETURN then begin
    if ActiveControl = luBco then begin
       sbStart.Click();
       Key := 0;
    end;
  end;
end;


procedure TfMarcarCks.mCksPagadoValidate(Sender: TField);
begin
  if not FLoading then begin
    if mCksPagado.AsBoolean then
      mCksFechaStatus.AsDateTime := dtFec.Date
    else
      mCksFechaStatus.AsDateTime := mCksFecha.AsDateTime;
  end;
end;

procedure TfMarcarCks.dtDesdePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  dthasta.Date := DateOf(EndOfTheMonth(dtDesde.Date));
end;

end.
