unit uCatTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBTL, DB, ADODB, ImgList, StdCtrls,
  Wwkeycb, ExtCtrls, Buttons, dxExEdtr,uformx;

type
  TCatalogoCuentas = class(TFFormx)
    CatSource: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1idCuenta: TdxDBTreeListMaskColumn;
    dxDBTreeList1Descripcion: TdxDBTreeListMaskColumn;
    ImageList1: TImageList;
    sbCtaNueva: TSpeedButton;
    sbSubNueva: TSpeedButton;
    sbEditar: TSpeedButton;
    sbSalir: TSpeedButton;
    sbBorrar: TSpeedButton;
    sbImprimir: TSpeedButton;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    procedure FormCreate(Sender: TObject);
    procedure dxDBTreeList1GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure sbSalirClick(Sender: TObject);
    procedure sbCtaNuevaClick(Sender: TObject);
    procedure sbSubNuevaClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbBorrarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ActualizarBotones;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CatalogoCuentas: TCatalogoCuentas;

implementation

uses ugldm, uMantCuenta, rCatalogo, Udata, UUtiles;

{$R *.dfm}

procedure TCatalogoCuentas.FormCreate(Sender: TObject);
begin
  inherited;
  
  gldm.rsCatalogo.Open();
  dxDBTreeList1.FullExpand();

  ActualizarBotones();
end;

procedure TCatalogoCuentas.dxDBTreeList1GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then
    Index := 1
  else
    Index := 0;
end;

procedure TCatalogoCuentas.sbSalirClick(Sender: TObject);
begin
  Close();
end;

procedure TCatalogoCuentas.sbCtaNuevaClick(Sender: TObject);
begin
  with TfMantCuenta.Create(Application) do begin
    gldm.CrearCuenta();
    if ShowModal() = mrOk then begin
      gldm.rsCatalogo.Requery;
      gldm.rsCatalogo.Locate('idCuenta',gldm.mCuentaidCuenta.Value,[])
    end;
    Free();
  end;
end;

procedure TCatalogoCuentas.sbSubNuevaClick(Sender: TObject);
begin
  if gldm.rsCatalogoTipoNivel.AsString = 'D' then
    raise Exception.Create('No puede agregar subcuentas a una cuenta de detalle');
    
  with TfMantCuenta.Create(Application) do begin
    gldm.CrearSubCuenta(gldm.rsCatalogoidCuenta.Asstring);
    if ShowModal() = mrOk then begin
      gldm.rsCatalogo.Requery;
      gldm.rsCatalogo.Locate('idCuenta',gldm.mCuentaidCuenta.Value,[])
    end;
    Free();
  end;
end;

procedure TCatalogoCuentas.sbEditarClick(Sender: TObject);
begin
  with TfMantCuenta.Create(Application) do begin
    gldm.SubirCuenta(gldm.rsCatalogoidCuenta.Asstring);
    if ShowModal() = mrOk then begin
      gldm.rsCatalogo.Requery;
      gldm.rsCatalogo.Locate('idCuenta',gldm.mCuentaidCuenta.Value,[])
    end;
    Free();
  end;
end;

procedure TCatalogoCuentas.sbBorrarClick(Sender: TObject);
begin
  gldm.BorrarCuenta(gldm.rsCatalogoidCuenta.Asstring);
end;

procedure TCatalogoCuentas.sbImprimirClick(Sender: TObject);
begin
  with TfrCatalogo.Create(Application) do begin
    Imprimir(Report);
    Free();
  end;
end;

procedure TCatalogoCuentas.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F5 then
    gldm.rsCatalogo.Requery()
  else if Key = vk_F6 then
    dxDBTreeList1.FullCollapse()
  else if Key = vk_F7 then
    dxDBTreeList1.FullExpand();
end;

procedure TCatalogoCuentas.ActualizarBotones;
begin
  sbCtaNueva.Enabled := dm.Tienepermiso(pAgregar,Permisos);
  sbSubNueva.Enabled := dm.Tienepermiso(pAgregar,Permisos);
  sbEditar.Enabled := dm.Tienepermiso(pEditar,Permisos);
  sbBorrar.Enabled := dm.Tienepermiso(pBorrar,Permisos);
  sbImprimir.Enabled := dm.Tienepermiso(pImprimir,Permisos);
end;

end.
