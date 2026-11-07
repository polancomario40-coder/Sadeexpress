unit uImpresionCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, kbmMemTable,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons, uSimpleForm,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TImpresionCheques = class(TSimpleForm)
    rsCks: TADODataSet;
    rsCksidDocumento: TIntegerField;
    rsCksNumero: TStringField;
    rsCksNombre: TStringField;
    rsCksFecha: TDateTimeField;
    rsCksTotal: TBCDField;
    mCks: TkbmMemTable;
    mCksidDocumento: TIntegerField;
    mCksNumero: TStringField;
    mCksNombre: TStringField;
    mCksFecha: TDateTimeField;
    mCksTotal: TBCDField;
    mCksSel: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Sel: TcxGridDBColumn;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxButton1: TcxButton;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    Label4: TLabel;
    Label1: TLabel;
    luBco: TcxLookupComboBox;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNumCuenta: TStringField;
    rsBancosNombre: TStringField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    dsBcos: TDataSource;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure luBcoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    procedure ImprimirBatch;
    procedure RefrescarDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpresionCheques: TImpresionCheques;

implementation

uses uMAINDM, urcheques, Udata;

{$R *.dfm}

procedure TImpresionCheques.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TImpresionCheques.cxButton1Click(Sender: TObject);
begin
  inherited;
  ImprimirBatch();
end;

procedure TImpresionCheques.ImprimirBatch;
begin
  with mCks do begin
    First();
    while not Eof do begin
      if mCksSel.AsBoolean = True then
        PrintChk(mCksidDocumento.AsInteger);
      Next();
    end;
  end;
  RefrescarDatos();
end;

procedure TImpresionCheques.RefrescarDatos;
begin
  rsCks.Close();
  rsCks.Parameters[1].Value := luBco.EditValue;
  rsCks.Open();
  mCks.Close();
  mCks.Open();
  mCks.LoadFromDataSet(rsCks,[mtcpoAppend]);
end;

procedure TImpresionCheques.FormCreate(Sender: TObject);
begin
  inherited;
  rsBancos.Open();
  luBco.EditValue := rsBancosIdCuentaBanco.AsInteger;
  RefrescarDatos();
end;

procedure TImpresionCheques.luBcoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  RefrescarDatos();
end;

end.
