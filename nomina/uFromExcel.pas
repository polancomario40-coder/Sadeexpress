unit uFromExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxDBEdit, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Gradient, Grids, DBGrids, cxMaskEdit, cxDropDownEdit;

type
  TFromExcel = class(TSimpleForm)
    xlsConection: TADOConnection;
    cxGrid1: TcxGrid;
    tblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qry: TADOQuery;
    Label1: TLabel;
    cxButton6: TcxButton;
    CopiarDatos: TcxButton;
    edtRuta: TcxTextEdit;
    Label2: TLabel;
    cbTablas: TcxComboBox;
    btSalir: TcxButton;
    cxButton3: TcxButton;
    Gradient5: TGradient;
    Gradient3: TGradient;
    OpenDialog1: TOpenDialog;
    cxButton2: TcxButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure CopiarDatosClick(Sender: TObject);
  private
    { Private declarations }
    Procedure ConnectToExcel;
  public
    { Public declarations }
  end;

var
  FromExcel: TFromExcel;

implementation

{$R *.dfm}

procedure TFromExcel.ConnectToExcel;
var
  strConn :  widestring;
begin
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + edtRuta.Text + ';' +
           'Persist Security Info=False;' +
           'Extended Properties=Excel 8.0;';



  xlsConection.Connected:=False;
  xlsConection.ConnectionString:=strConn;
  try
    xlsConection.Open;
    xlsConection.GetTableNames(cbTablas.Properties.Items,True);
  except
    ShowMessage('No es posible conectarse a Excel, segegurese que el archivo ' + edtRuta.Text + ' exista!');
    raise;
  end;
end;

procedure TFromExcel.FormCreate(Sender: TObject);
begin
  inherited;
  xlsConection.LoginPrompt := False;

end;

procedure TFromExcel.cxButton1Click(Sender: TObject);
begin
  inherited;
//  ConnectToExcel;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Text:= 'Select * from ' + '[' + cbTablas.Text + ']';
  try
    qry.Open;
  except
    ShowMessage('No es posible leer datos desde Excel!');
    raise;
  end;
  tblView.DataController.CreateAllItems();
  tblView.OptionsView.ColumnAutoWidth := True
end;

procedure TFromExcel.cxButton6Click(Sender: TObject);
begin
  inherited;
  ConnectToExcel;
end;

procedure TFromExcel.btSalirClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFromExcel.cxButton3Click(Sender: TObject);
begin
  inherited;
  If OpenDialog1.Execute Then
    edtRuta.Text := OpenDialog1.FileName;
end;

procedure TFromExcel.CopiarDatosClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

end.
