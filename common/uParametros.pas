unit uParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, ExtCtrls, ComCtrls,
  dxCntner, dxExEdtr, dxEdLib, dxEditor, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TParametros = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    oCheck: TCheckBox;
    Paginas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Detalle: TCheckBox;
    Grupo: TLabeledEdit;
    Desde: TwwDBDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Hasta: TwwDBDateTimePicker;
    Label1: TLabel;
    Fecha: TwwDBDateTimePicker;
    TrackBar1: TTrackBar;
    Dias: TEdit;
    Label2: TLabel;
    Cliente: TEdit;
    TabSheet7: TTabSheet;
    Label3: TLabel;
    Vendedor: TEdit;
    Entradas: TTabSheet;
    CVentas: TdxCheckEdit;
    cIngreso: TdxCheckEdit;
    cND: TdxCheckEdit;
    cNC: TdxCheckEdit;
    Tipo: TTabSheet;
    Label6: TLabel;
    cxcDoc: TcxImageComboBox;
    TabSheet8: TTabSheet;
    Activo: TcxImageComboBox;
    TabSheet9: TTabSheet;
    Frecuencia: TcxImageComboBox;
    CInv: TdxCheckEdit;
    TabSheet10: TTabSheet;
    EntSal: TcxImageComboBox;
    TabSheet11: TTabSheet;
    Producto: TEdit;
    Label7: TLabel;
    tsPeriodoConds: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    cbConds: TcxImageComboBox;
    Label10: TLabel;
    TabSheet12: TTabSheet;
    Negocio: TEdit;
    Label11: TLabel;
    TabSheet13: TTabSheet;
    Label12: TLabel;
    edtTipoTransaccion: TEdit;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
    procedure FechaChange(Sender: TObject);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure wwDBDateTimePicker2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Parametros: TParametros;

implementation

uses Udata;

{$R *.dfm}

procedure TParametros.FormCreate(Sender: TObject);
var
  j : integer;
begin
  desde.Date := dm.fechaDesde;
  hasta.date := dm.FechaHasta;
  Fecha.date := dm.FechaHoy;
  wwDBDateTimePicker1.Date := dm.FechaDesde;
  wwDBDateTimePicker2.Date := dm.FechaHasta;
  cbConds.EditValue := 2;

  for J := 0 to paginas.PageCount - 1 do
     paginas.Pages[j].TabVisible := false;
end;

procedure TParametros.TrackBar1Change(Sender: TObject);
begin
  Dias.text  := inttostr(trackbar1.Position);
end;

procedure TParametros.DesdeChange(Sender: TObject);
begin
    dm.fechaDesde:=desde.Date;
end;

procedure TParametros.HastaChange(Sender: TObject);
begin
  dm.fechaHasta:=Hasta.Date;
end;

procedure TParametros.FechaChange(Sender: TObject);
begin
   dm.FechaHoy := fecha.date;
end;

procedure TParametros.wwDBDateTimePicker1Change(Sender: TObject);
begin
  dm.fechaDesde:=wwDBDateTimePicker1.Date;
end;

procedure TParametros.wwDBDateTimePicker2Change(Sender: TObject);
begin
  dm.FechaHasta:=wwDBDateTimePicker2.Date;
end;

end.
