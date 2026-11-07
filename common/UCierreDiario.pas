unit UCierreDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, ADODB, Wwdatsrc, StdCtrls, Buttons, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, dxDBELib, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, kbmMemTable;

type
  TCierreDiario = class(TFForm)
    Desde: TdxDateEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CerrarAbrirModulo: TADOCommand;
    Cerrar: TdxCheckEdit;
    Modulo: TADODataSet;
    dsModuloCierre: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ModuloCierre: TkbmMemTable;
    ModuloCierrenombre: TStringField;
    ModuloCierreActivo: TBooleanField;
    ModuloCierreModulo: TStringField;
    ModuloCierreDiaCierre: TDateTimeField;
    ModuloCierreCerrar: TBooleanField;
    cxGrid1DBTableView1Cerrar: TcxGridDBColumn;
    cxGrid1DBTableView1Modulo: TcxGridDBColumn;
    cxGrid1DBTableView1nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Activo: TcxGridDBColumn;
    cxGrid1DBTableView1DiaCierre: TcxGridDBColumn;
    ModuloNombre: TStringField;
    ModuloActivo: TBooleanField;
    ModuloModulo: TStringField;
    ModuloDiaCierre: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ModuloCierreBeforeEdit(DataSet: TDataSet);
    procedure CerrarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CierreDiario: TCierreDiario;

implementation

uses Udata;

{$R *.dfm}

procedure TCierreDiario.FormCreate(Sender: TObject);
begin
  inherited;
  TipoDoc := 'CIERREDIARIO';
  Desde.Date := dm.DBFecha;
 // UltimoCierre.Open;
 // modulo.Close;
  modulo.Open;
  ModuloCierre.close;
  ModuloCierre.LoadFromDataSet(Modulo, [mtcpoappend]);

end;

procedure TCierreDiario.BitBtn2Click(Sender: TObject);
var
  accionstr : string;
begin
  inherited;

  if Cerrar.Checked then
    accionstr := 'Cerrar'
  else
    accionstr := 'Abrir';


  CerrarAbrirModulo.Parameters[2].Value := desde.Date;
  if Cerrar.Checked then CerrarAbrirModulo.Parameters[3].Value := 1 else CerrarAbrirModulo.Parameters[3].Value := 0;

  ModuloCierre.First;
  While not ModuloCierre.Eof do begin
    if ModuloCierreCerrar.Value then begin
      CerrarAbrirModulo.Parameters[1].Value := ModuloCierreModulo.Value;
      CerrarAbrirModulo.execute;
      dm.CreateLog(accionstr, self.Caption, '[' +ModuloCierreModulo.Value + '] Fecha : ' + desde.Text);
    end;
    ModuloCierre.Next;
  end;
  Showmessage('Cierre Completado');
  Close;
end;


procedure TCierreDiario.ModuloCierreBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if (not(ModuloCierreCerrar.value)) and (cerrar.Checked) and (ModuloCierreDiaCierre.Value >= Desde.Date) then begin
    raise exception.create('Esta fecha ya ha sido cerrada para este modulo');
  end;

  if (not(ModuloCierreCerrar.value)) and (not(cerrar.Checked)) and (ModuloCierreDiaCierre.Value < Desde.Date) then begin
     raise exception.create('La fecha especificada ya esta abierta');
  end;

end;

procedure TCierreDiario.CerrarChange(Sender: TObject);
begin
  inherited;
  ModuloCierre.close;
  ModuloCierre.LoadFromDataSet(Modulo, [mtcpoappend]);
end;

end.
