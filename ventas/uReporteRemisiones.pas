unit uReporteRemisiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, StdCtrls, Buttons, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  dxDBTLCl, dxGrClms, dateutils, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppParameter;

type
  TReporteRemisiones = class(TFForm)
    rsRemisiones: TADODataSet;
    rsRemisionesidCXC: TGuidField;
    rsRemisionesFactura: TStringField;
    rsRemisionesNombre: TStringField;
    rsRemisionesFecha: TDateTimeField;
    rsRemisionesTotal: TBCDField;
    rsRemisionesDireccion: TStringField;
    rsRemisionesTelefono: TStringField;
    rsRemisionesCiudad: TStringField;
    rsRemisionesSector: TStringField;
    rsGrupos: TADODataSet;
    rsGruposidClienteGrupo: TIntegerField;
    rsGruposClienteGrupo: TStringField;
    Label1: TLabel;
    dxLookupEdit1: TdxLookupEdit;
    dsGrupos: TDataSource;
    BitBtn1: TBitBtn;
    dtDesde: TdxDateEdit;
    dtHasta: TdxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Factura: TdxDBGridMaskColumn;
    dxDBGrid1Nombre: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1Total: TdxDBGridCurrencyColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    dxDBGrid1Cotizacion: TdxDBGridMaskColumn;
    rsRemisionesReferencia: TStringField;
    rsRemisionesCotizacion: TStringField;
    rsRemisionesIdCliente: TIntegerField;
    dxDBGrid1Column7: TdxDBGridColumn;
    rptRemision: TppReport;
    plRemision: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape3: TppShape;
    edtCliente: TdxEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtDesdeChange(Sender: TObject);
    procedure dtHastaChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteRemisiones: TReporteRemisiones;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TReporteRemisiones.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with rsRemisiones do begin
    Close();
    Parameters[1].Value := dxLookupEdit1.LookupKeyValue; {probar este parametro}
    Parameters[2].Value := DateOf(dtDesde.Date);
    Parameters[3].Value := DateOf(dtHasta.Date);
    Parameters[4].Value := Iff(edtCliente.Text = '', 0, SaveStrToInt(edtCliente.Text));
    Open();
  end;
end;

procedure TReporteRemisiones.FormCreate(Sender: TObject);
begin
  inherited;
  dtDesde.Date := dm.FechaDesde;
  dtHasta.date := dm.FechaHasta;
  rsGrupos.Open();
  dxLookupEdit1.LookupKeyValue := rsGruposidClienteGrupo.Value;
end;

procedure TReporteRemisiones.dtDesdeChange(Sender: TObject);
begin
  inherited;
  dm.fechadesde := dtDesde.date;
end;

procedure TReporteRemisiones.dtHastaChange(Sender: TObject);
begin
  inherited;
  dm.fechaHasta := dtHasta.Date;
end;

procedure TReporteRemisiones.BitBtn2Click(Sender: TObject);
begin
  inherited;
  If rsRemisiones.Active Then
  Begin
    Imprimir(rptRemision);
  End;
end;

end.
