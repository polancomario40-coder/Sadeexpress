unit uEmpleadoFindDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaDX, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxContainer, cxCheckBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, Buttons, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImage,jpeg;

type
  TEmpleadoFindDX = class(TBusquedaDX)
    Panel1: TPanel;
    cbActivo: TcxCheckBox;
    cxButton1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    RSEmpleadoID: TIntegerField;
    RSNombre: TStringField;
    RSApellido: TStringField;
    RSDepartamento: TStringField;
    RSSeccion: TStringField;
    RSCedula: TStringField;
    RSActivo: TBooleanField;
    RSFoto: TBlobField;
    tblViewEmpleadoID: TcxGridDBColumn;
    tblViewNombre: TcxGridDBColumn;
    tblViewApellido: TcxGridDBColumn;
    tblViewDepartamento: TcxGridDBColumn;
    tblViewSeccion: TcxGridDBColumn;
    tblViewCedula: TcxGridDBColumn;
    tblViewActivo: TcxGridDBColumn;
    tblViewFoto: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetQuery(); override;
  public
    { Public declarations }
    procedure ReCreate(const spName : string); override;
  end;

var
  EmpleadoFindDX: TEmpleadoFindDX;

implementation

uses Udata;

{$R *.dfm}

procedure TEmpleadoFindDX.FormCreate(Sender: TObject);
begin
  inherited;
  //spName := '';
  ReturnField := 'idProducto';
  AutoCreateCols := False;
end;

procedure TEmpleadoFindDX.SetQuery;
begin
  rs.Close();
  rs.parameters[1].value := Null;
  rs.parameters[2].value := cbActivo.Checked;
  rs.Open();
//  inherited SetQuery();
end;

procedure TEmpleadoFindDX.cxButton1Click(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TEmpleadoFindDX.ReCreate(const spName: string);
begin
  inherited ReCreate('');
end;

procedure TEmpleadoFindDX.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  tblViewFoto.Visible := cxCheckBox1.Checked;
end;

end.
