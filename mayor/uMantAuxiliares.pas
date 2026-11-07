unit uMantAuxiliares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, Gradient,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB,
  dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL, Buttons, ImgList,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxImageComboBox;

type
  TMantAuxiliares = class(TForm)
    rsCtas: TADODataSet;
    rsCtasidCuenta: TStringField;
    rsCtasDescripcion: TStringField;
    rsCtasCtaDescargue: TStringField;
    rsCtasTipoNivel: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    Gradient2: TGradient;
    cxLabel2: TcxLabel;
    ds: TDataSource;
    dsCat: TDataSource;
    rs: TADODataSet;
    rsidAuxiliar: TStringField;
    rsidCuenta: TStringField;
    rsAuxiliar: TStringField;
    rsActivo: TBooleanField;
    cxGrid1DBTableView1idAuxiliar: TcxGridDBColumn;
    cxGrid1DBTableView1Auxiliar: TcxGridDBColumn;
    cxGrid1DBTableView1Activo: TcxGridDBColumn;
    ImageList1: TImageList;
    SpeedButton4: TcxButton;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1Descripcion: TdxDBTreeListMaskColumn;
    dxDBTreeList1idCuenta: TdxDBTreeListMaskColumn;
    rsOrigen: TStringField;
    cxGrid1DBTableView1Origen: TcxGridDBColumn;
    rsCtasOrigen: TStringField;
    procedure rsCtasAfterScroll(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsNewRecord(DataSet: TDataSet);
    procedure rsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantAuxiliares: TMantAuxiliares;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TMantAuxiliares.rsCtasAfterScroll(DataSet: TDataSet);
begin
   with rs do begin
     Close();
     if rsCtasTipoNivel.Value = 'D' then begin
       Parameters[1].Value := rsCtasIdCuenta.Value;
       Open();
     end;
   end;
end;

procedure TMantAuxiliares.SpeedButton4Click(Sender: TObject);
begin
  Close();
end;

procedure TMantAuxiliares.FormCreate(Sender: TObject);
begin
  rsCtas.Open();
  rsCtasAfterScroll(rsCtas);
end;

procedure TMantAuxiliares.rsNewRecord(DataSet: TDataSet);
begin
  rsIdCuenta.Value := rsCtasIdCuenta.Value;
  rsActivo.Value := True;
  rsOrigen.Value := rsCtasOrigen.Value;
end;

procedure TMantAuxiliares.rsBeforePost(DataSet: TDataSet);
begin
  if rsidAuxiliar.AsString = '' then
    raise Exception.Create('Necesita especificar un numero de auxiliar');
end;

end.
