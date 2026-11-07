unit uCambiarPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxCheckBox, cxTextEdit, cxMaskEdit, cxSpinEdit, cxContainer, cxLabel,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC,
  cxButtonEdit, cxCurrencyEdit;

type
  TCambiarPrecios = class(TFForm)
    LineaAll: TADODataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    GuidField1: TGuidField;
    dsLineaAll: TDataSource;
    Grupo: TADODataSet;
    GrupoidGrupo: TStringField;
    GrupoGrupo: TStringField;
    GrupoDescuento: TFloatField;
    GrupoidLinea: TStringField;
    GrupoUidGrupo: TGuidField;
    Linea: TADODataSet;
    LineaidLinea: TStringField;
    LineaLinea: TStringField;
    LineaidInventario: TStringField;
    LineaUidLinea: TGuidField;
    dsLinea: TDataSource;
    Inventario: TADODataSet;
    InventarioidInventario: TStringField;
    InventarioInventario: TStringField;
    InventarioUidInventario: TGuidField;
    dsInventario: TDataSource;
    cxButton2: TcxButton;
    cAplicar: TADOCommand;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idInventario: TcxGridDBColumn;
    cxGrid1DBTableView1Inventario: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1idLinea: TcxGridDBColumn;
    cxGridDBTableView1Linea: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2idGrupo: TcxGridDBColumn;
    cxGridDBTableView2Grupo: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel1: TcxLabel;
    seVar: TcxSpinEdit;
    cbCredito: TcxCheckBox;
    cbCont: TcxCheckBox;
    cxButton1: TcxButton;
    Label1: TLabel;
    luMarca: TcxLookupComboBox;
    rsMarca: TADODataSet;
    rsMarcaidMarca: TStringField;
    rsMarcaMarca: TStringField;
    dsMarca: TDataSource;
    cxLabel2: TcxLabel;
    seBenContado: TcxSpinEdit;
    cxButton3: TcxButton;
    cxLabel3: TcxLabel;
    seBenCredito: TcxSpinEdit;
    cCambiarXMarca: TADOCommand;
    cxTabSheet3: TcxTabSheet;
    rsListaPrecio: TADODataSet;
    rsListaPrecioidListaPrecio: TStringField;
    rsListaPrecioListaPrecio: TStringField;
    rsListaPrecioidMoneda: TIntegerField;
    rsListaPrecioContadoPorc: TBCDField;
    rsListaPrecioCreditoPorc: TBCDField;
    dsListaPrecio: TDataSource;
    rsListaPrecioDet: TADODataSet;
    rsListaPrecioDetid: TGuidField;
    rsListaPrecioDetidProducto: TStringField;
    rsListaPrecioDetPrecioContado: TBCDField;
    rsListaPrecioDetPrecioCredito: TBCDField;
    rsListaPrecioDetidListaPrecio: TStringField;
    dsListaPrecioDet: TDataSource;
    Productos: TADODataSet;
    dsProductos: TDataSource;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView1idListaPrecio: TcxGridDBColumn;
    cxGrid1DBTableView1ListaPrecio: TcxGridDBColumn;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1idProducto: TcxGridDBColumn;
    cxGrid2DBTableView1PrecioContado: TcxGridDBColumn;
    cxGrid2DBTableView1PrecioCredito: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLabel4: TcxLabel;
    LPPorciento: TcxSpinEdit;
    lpcredito: TcxCheckBox;
    lpcontado: TcxCheckBox;
    cxButton4: TcxButton;
    cxLabel5: TcxLabel;
    ListaPrecioUpdate: TADOCommand;
    lptodas: TcxCheckBox;
    cbCambioPorc: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CambiarPrecios: TCambiarPrecios;

implementation

uses Udata;

{$R *.dfm}

procedure TCambiarPrecios.FormCreate(Sender: TObject);
begin
  inherited;
  inventario.Open;
  linea.Open;
  Grupo.Open;
  LineaAll.open;
  rsMarca.Open();
  Productos.Open;
  rsListaPrecio.open;
  rsListaPreciodet.Open;
end;

procedure TCambiarPrecios.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCambiarPrecios.cxButton1Click(Sender: TObject);
begin
  inherited;
  with cAplicar do begin
    Parameters[1].Value := GrupoidGrupo.Value;
    Parameters[2].Value := seVar.Value;       
    Parameters[3].Value := cbCont.Checked;
    Parameters[4].Value := cbCredito.Checked;
    Parameters[5].Value := cbCambioPorc.Checked;

    Execute();
    if Parameters[0].Value = 0 then
      ShowMessage('Cambio de precio aplicado con exito')
    else
      ShowMessage('Error cambiando precios');
  end;

end;

procedure TCambiarPrecios.cxButton3Click(Sender: TObject);
begin
  inherited;
  if luMarca.EditValue <> null then begin
    with cCambiarXMarca do begin
      Parameters[1].Value := luMarca.EditValue;
      Parameters[2].Value := seBenContado.Value;
      Parameters[3].Value := seBenCredito.Value;
      Execute();
    end;
  end;
end;

procedure TCambiarPrecios.cxButton4Click(Sender: TObject);
//var
 // bm : string;
begin
  inherited;
  if lpPorciento.Value <> 0 then begin
    if lptodas.Checked then
      ListaPrecioUpdate.Parameters[1].Value := NULL
    else
      ListaPrecioUpdate.Parameters[1].Value := rslistaprecioidlistaprecio.value;

    ListaPrecioUpdate.Parameters[2].Value := lpcontado.Checked;
    ListaPrecioUpdate.Parameters[3].Value := lpcredito.Checked;
    ListaPrecioUpdate.Parameters[4].Value := lpPorciento.Value;
    ListaPrecioUpdate.Execute;
    if ListaPrecioUpdate.Parameters[0].Value <> 0 then
       raise exception.create('Error al ajustar los precios, contactar soporte');
//    bm := rslistaprecio.Bookmark;
    rslistapreciodet.Close;
    rslistapreciodet.Open;
//    rsListaprecio.Bookmark := bm;
  end else begin
    raise exception.create('El porcentaje de variacion es incorrecto')
  end;
end;

end.
