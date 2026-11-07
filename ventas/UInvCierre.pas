unit UInvCierre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, ADODB, Wwdatsrc, StdCtrls, Buttons, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, dxDBELib, dxDBEdtr, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TInvCierre = class(TFForm)
    UltimoCierre: TADODataSet;
    Desde: TdxDateEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    InvCerrarAbrir: TADOCommand;
    Cerrar: TdxCheckEdit;
    dxDBGrid1: TdxDBGrid;
    dsUltimoCierre: TDataSource;
    dxDBGrid1DiaCierre: TdxDBGridDateColumn;
    UltimoCierreDiaCierre: TDateTimeField;
    UltimoCierreCerradoEn: TDateTimeField;
    dxDBGrid1Column2: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvCierre: TInvCierre;

implementation

uses Udata;

{$R *.dfm}

procedure TInvCierre.FormCreate(Sender: TObject);
begin
  inherited;
  TipoDoc := 'CIERREINV';
  Desde.Date := dm.DBFecha;
  UltimoCierre.Open;
//  Almacen.open;
//  alm.EditValue := AlmacenidAlmacen.value;

end;

procedure TInvCierre.BitBtn2Click(Sender: TObject);
begin
  inherited;

  ultimocierre.First;

  if (Cerrar.Checked) and (desde.date <= ultimocierrediacierre.value) then
      raise exception.Create('La fecha especificada ya ha sido cerrada');

  if (not(Cerrar.Checked)) and (desde.date > ultimocierrediacierre.value) then
      raise exception.Create('La fecha especificada ya esta abierta');

  InvCerrarAbrir.Parameters[1].Value := desde.Date;
//  InvCerrarAbrir.Parameters[3].Value := alm.EditValue ;
  if Cerrar.Checked then
    InvCerrarAbrir.Parameters[2].Value := 1
  else
    InvCerrarAbrir.Parameters[2].Value := 0;

  InvCerrarAbrir.execute;

  if InvCerrarAbrir.Parameters[0].Value <> 0 then
    raise exception.create('Error al ejecutar la accion');

  CrearLog('Cierre Inv');
end;

end.
