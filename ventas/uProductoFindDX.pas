unit uProductoFindDX;

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
  cxDBLookupComboBox, cxImage, jpeg, cxImageComboBox;

type
  TProductoFindDX = class(TBusquedaDX)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    inactivos: TcxCheckBox;
    Inventario: TcxLookupComboBox;
    lkLinea: TcxLookupComboBox;
    lkGrupo: TcxLookupComboBox;
    InventarioList: TADODataSet;
    Linea: TADODataSet;
    Grupo: TADODataSet;
    dsGrupo: TDataSource;
    dsLinea: TDataSource;
    dsInventarioList: TDataSource;
    RSidProducto: TStringField;
    RSProducto: TStringField;
    RSReferencia: TStringField;
    RSContado: TFloatField;
    RSCredito: TFloatField;
    RSidUnidad: TStringField;
    RSModelo: TStringField;
    RSGrupo: TStringField;
    RSLinea: TStringField;
    RSInventario: TStringField;
    RSporciento: TFloatField;
    tblViewidProducto: TcxGridDBColumn;
    tblViewProducto: TcxGridDBColumn;
    tblViewReferencia: TcxGridDBColumn;
    tblViewContado: TcxGridDBColumn;
    tblViewCredito: TcxGridDBColumn;
    tblViewModelo: TcxGridDBColumn;
    tblViewGrupo: TcxGridDBColumn;
    tblViewLinea: TcxGridDBColumn;
    tblViewInventario: TcxGridDBColumn;
    cxButton1: TcxButton;
    edFiltro: TcxTextEdit;
    cbFiltro: TcxImageComboBox;
    cxButton2: TcxButton;
    rsBuscarFoto: TADODataSet;
    rsBuscarFotofoto: TBlobField;
    cxButton3: TcxButton;
    cbParaVender: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure edFiltroPropertiesChange(Sender: TObject);
    procedure edFiltroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetQuery(); override;
  public
    { Public declarations }
    procedure ReCreate(const spName : string); override;
    class function Buscar(ARetField: String; const idInventario: string;  ParaVender: Variant): Variant; reintroduce; overload;
    class function Buscar(ARetField: String): Variant; reintroduce; overload;
  end;

var
  ProductoFindDX: TProductoFindDX;

implementation

uses Udata, uVerImagen, UUtiles, uProductoDetalle;

{$R *.dfm}

procedure TProductoFindDX.FormCreate(Sender: TObject);
begin
  inherited;
  //spName := '';
  ReturnField := 'idProducto';
  AutoCreateCols := False;

  inventarioList.Open;
  Linea.Open();
  Grupo.Open();
  inventario.EditValue := Null;
  lkLinea.EditValue := Null;
  lkGrupo.EditValue := Null;
end;

procedure TProductoFindDX.SetQuery;
begin
  rs.Close();
  rs.parameters[1].value := Null;
  rs.parameters[2].value := inventario.EditValue;
  rs.Parameters[3].Value := lkLinea.EditValue;
  rs.Parameters[4].Value := lkGrupo.EditValue;
  rs.parameters[5].value := inactivos.Checked;
  if cbParaVender.State = cxCheckBox.cbsGrayed then
    rs.parameters[6].value := NULL
  else
    rs.parameters[6].value := cbParaVender.Checked;
  rs.Parameters[7].Value := Iff(cbFiltro.EditValue = 1,'%','') + edFiltro.Text + '%';
  rs.Open();
//  inherited SetQuery();
end;

procedure TProductoFindDX.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TProductoFindDX.cxButton1Click(Sender: TObject);
begin
  inherited;
  SetQuery();
end;

procedure TProductoFindDX.ReCreate(const spName: string);
begin
  inherited ReCreate('');
end;

procedure TProductoFindDX.cxButton2Click(Sender: TObject);
var
  jpg: TJpegImage;
begin
  inherited;
  //
  with rsBuscarFoto do begin
    Close();
    Parameters[0].Value := rsIdProducto.Value;
    Open();
    if not Eof then begin
      if not rsBuscarFotoFoto.IsNull then begin
        jpg := TJpegImage.Create();
        try
          jpg.Assign(rsBuscarFotoFoto);
          MostrarImagen(jpg);
        finally
          jpg.Free();
        end;
      end;
    end;
  end;
end;

procedure TProductoFindDX.edFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  setQuery();
end;

procedure TProductoFindDX.edFiltroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key in [vk_up, vk_down] then begin
    if (Key = vk_up) then
      rs.Prior()
    else
      rs.Next();

    Key := 0;
  end;
end;

procedure TProductoFindDX.cxButton3Click(Sender: TObject);
begin
  inherited;
  ModalShow(TProductoDetalle, Showfind, RSidProducto.Value ,'');
end;

class function TProductoFindDX.Buscar(ARetField: String; const idInventario: string;  ParaVender: Variant): Variant;
var
  ffbusq : TProductoFindDX;
begin
  ffBusq := Self.Create(Application);

  with (ffBusq) do begin
    try
      ReturnField := ARetField;
      AutoFit := False;

      if ParaVender = NULL then
        cbParaVender.State := cxCheckBox.cbsGrayed
      else
        cbParaVender.Checked := ParaVender;

      cbAutoFit.Checked := AutoFit;
      Ocultar := False;

      if idInventario <> '' then
        Inventario.EditValue := idInventario;


//      Recreate(spname);
      setQuery();
      setGrid;
      SetBestFit();

      if ShowModal() = mrOk then begin
       if RS.FieldByName(ReturnField).isnull then
         Result := null
       else
         Result := RS.FieldByName(ReturnField).Value;
      end
      else
       Result := null;
     finally
       Release();
     end;
  end;
end;

class function TProductoFindDX.Buscar(ARetField: String): Variant;
begin
  Result := TProductoFindDX.Buscar(ARetField,'',NULL);
end;

end.
