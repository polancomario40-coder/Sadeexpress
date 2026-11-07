unit uRemisionManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxDropDownEdit, cxCalendar,
  cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Buttons, StdCtrls, ADODB, ppDB, ppDBPipe, kbmMemTable, ActnList,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Wwdatsrc, cxButtonEdit, ppParameter;

type
  TRemisionManual = class(TFForm)
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine5: TppLine;
    ppDBText12: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    Acciones: TActionList;
    AAyuda: TAction;
    ANuevo: TAction;
    AEditar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ABorrar: TAction;
    ALocalizar: TAction;
    Asalir: TAction;
    Aprint: TAction;
    AAnular: TAction;
    AAprobacion: TAction;
    mRemisiones: TkbmMemTable;
    mRemisionesNombre: TStringField;
    mRemisionesFecha: TDateTimeField;
    mRemisionesTotal: TBCDField;
    mRemisionesReferencia: TStringField;
    mRemisionesDireccion: TStringField;
    mRemisionesTelefono: TStringField;
    mRemisionesCiudad: TStringField;
    mRemisionesSector: TStringField;
    mRemisionesValorNeto: TBCDField;
    mRemisionesidCliente: TIntegerField;
    mRemisionesidCXC: TGuidField;
    plRemisiones: TppDBPipeline;
    dsClientes: TDataSource;
    wwDataSource1: TwwDataSource;
    rsClientes: TADODataSet;
    rsRemisiones: TADODataSet;
    rsFacts: TADODataSet;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rsClientesidCliente: TIntegerField;
    rsClientesCliente: TStringField;
    rsClientesContacto: TStringField;
    rsClientesDireccion: TStringField;
    rsClientesSector: TStringField;
    rsClientesCiudad: TStringField;
    rsClientesTelefono: TStringField;
    rsClientesFax: TStringField;
    rsClientesBeeper: TStringField;
    rsClientesEMail: TStringField;
    rsClientesLimiteCredito: TBCDField;
    rsClientesidClienteTipo: TIntegerField;
    rsClientesidClienteStatus: TIntegerField;
    rsClientesUidCliente: TGuidField;
    rsClientesidEmpleado: TIntegerField;
    rsClientesidClienteGrupo: TIntegerField;
    rsClientesRNC_Cedula: TStringField;
    rsClientesNotas: TStringField;
    rsClientesDescuento: TFloatField;
    rsClientesidListaPrecio: TStringField;
    rsClientesCondicion: TIntegerField;
    rsClientesFechaActivo: TDateTimeField;
    rsClientesFechaInactivo: TDateTimeField;
    rsClientesidTasaTipo: TStringField;
    rsClientesPassword: TStringField;
    rsClientesGrupo: TStringField;
    rsClientesUserName: TStringField;
    rsClientesidCuenta: TStringField;
    rsClientesidAuxiliar: TStringField;
    rsClientesidZona: TStringField;
    rsClientesidCondicion: TStringField;
    rsClientesComisionFactor: TBCDField;
    rsClientesidCuentaContado: TStringField;
    rsClientesIdMoneda: TIntegerField;
    rsClientesNumeroSuplidor: TStringField;
    rsClientesidClienteParent: TIntegerField;
    rsClientesIdTipoIdentificacion: TStringField;
    rsClientesRepresentante: TStringField;
    rsClientesRepresentanteCedula: TStringField;
    luCliente: TcxLookupComboBox;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Cotizacion: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    rsFactsidCXC: TGuidField;
    rsFactsFactura: TStringField;
    rsFactsDocumento: TStringField;
    rsFactsNombre: TStringField;
    rsFactsFecha: TDateTimeField;
    rsFactsTotal: TBCDField;
    rsFactsReferencia: TStringField;
    rsFactsCotizacion: TStringField;
    rsFactsDireccion: TStringField;
    rsFactsTelefono: TStringField;
    rsFactsCiudad: TStringField;
    rsFactsSector: TStringField;
    rsFactsValorNeto: TBCDField;
    rsFactsidCliente: TIntegerField;
    mRemisionesFactura: TStringField;
    rsRemisionesidCXC: TGuidField;
    rsRemisionesDocumento: TStringField;
    rsRemisionesNombre: TStringField;
    rsRemisionesFecha: TDateTimeField;
    rsRemisionesTotal: TBCDField;
    rsRemisionesReferencia: TStringField;
    rsRemisionesCotizacion: TStringField;
    rsRemisionesDireccion: TStringField;
    rsRemisionesTelefono: TStringField;
    rsRemisionesCiudad: TStringField;
    rsRemisionesSector: TStringField;
    rsRemisionesValorNeto: TBCDField;
    rsRemisionesidCliente: TIntegerField;
    mRemisionesCotizacion: TStringField;
    procedure SpeedButton9Click(Sender: TObject);
    procedure mRemisionesFacturaValidate(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1FacturaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Floading: Boolean;
    procedure EmailRemision;
    function ExportReport2File(const rpt: TppReport;
      const aname: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RemisionManual: TRemisionManual;

implementation

uses Udata, FacturaFind, UUtiles, ueMails7, DateUtils;

{$R *.dfm}

procedure TRemisionManual.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  with rsFacts do begin
    Close();
    Parameters[0].Value := luCliente.EditValue;
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();

    while not Eof do begin
      if not mRemisiones.Locate('Factura',rsFactsFactura.Value,[]) then begin
        mRemisiones.Append();
        mRemisionesFactura.Value := rsFactsFactura.Value;
        mRemisiones.Post();
      end;
      Next();
    end;
  end;
end;

procedure TRemisionManual.mRemisionesFacturaValidate(Sender: TField);
begin
  inherited;
  if not FLoading then begin
     with rsRemisiones do begin
       Close();
       Parameters[0].Value := mRemisionesFactura.Value;
       Parameters[1].Value := luCliente.EditValue;

       Open();
       if Eof then
         raise Exception.Create('Esta factura no existe');

       if rsRemisionesIdCliente.Value <> luCliente.EditValue then
         raise Exception.Create('Esta factura no pertenece a ' + luCliente.Text);

       mRemisionesidCXC.Value := rsRemisionesidCXC.Value;
       mRemisionesNombre.Value := rsRemisionesNombre.Value;
       mRemisionesFecha.Value := rsRemisionesFecha.value;
       mRemisionesTotal.Value := rsRemisionesTotal.Value;
       mRemisionesReferencia.Value := rsRemisionesReferencia.Value;
       mRemisionesCotizacion.Value := rsRemisionesCotizacion.Value;
       mRemisionesDireccion.Value := rsRemisionesDireccion.Value;
       mRemisionesTelefono.Value := rsRemisionesTelefono.Value;
       mRemisionesCiudad.Value := rsRemisionesCiudad.Value;
       mRemisionesSector.Value := rsRemisionesSector.Value;
       mRemisionesValorNeto.Value := rsRemisionesValorNeto.Value;
       mRemisionesIdCliente.Value := rsRemisionesIdCliente.Value;
     end;
  end;
end;

procedure TRemisionManual.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  EmailRemision();
end;

procedure TRemisionManual.cxGrid1DBTableView1FacturaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  n: Variant;
begin
  inherited;
  n := TFindFactura.Buscar('Factura',True);

  if n <> NULL then begin
    if not (mRemisiones.State in dsEditModes) then
      mRemisiones.Edit();

    mRemisionesFactura.Value := n;
  end;
end;

procedure TRemisionManual.EmailRemision;
var
  fname: string;
  aemail: string;
begin
    aemail := InputBox('Enviar estado','Direccion de email',rsClientesEmail.Asstring);
    if aemail = '' then
      Exit;

    fname := ExportReport2File(Report,'Remision');
    email := Temail.Create(nil);
    try
      if eMail.MailSend(Aemail, 'Remision de Facturas', 'Anexamos la remision de sus facturas ',fname,'TXT') <> 0 then
        raise exception.Create('Error al enviar el eMail, verifique');
    finally
      email.Release;
    end;
end;

procedure TRemisionManual.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

function TRemisionManual.ExportReport2File(const rpt: TppReport;
  const aname: string): string;
var
  Myfile : string;
  OldDev: string;
  OldShowPD: Boolean;
  oldShowCD: Boolean;
begin
  MyFile := GetEnvironmentVariable('TEMP') + '\' + aname +'.pdf';
  oldShowPD := rpt.ShowPrintDialog;
  oldShowCD := rpt.ShowCancelDialog;
  oldDev := rpt.DeviceType;

  try
    if FileExists(MyFile) then
      SysUtils.DeleteFile(MyFile);

    rpt.DeviceType := 'PDF';
    rpt.ShowCancelDialog := False;
    rpt.ShowPrintDialog := false;
    rpt.TextFileName := MyFile;
    rpt.Print;
    Result := MyFile;
  finally
    rpt.DeviceType := OldDev;
    rpt.ShowPrintDialog := OldShowPD;
    rpt.ShowCancelDialog := oldShowCD;
  end;
end;

procedure TRemisionManual.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRemisionManual.FormCreate(Sender: TObject);
begin
  inherited;
  FLoading := False;
  rsClientes.Open();
  mRemisiones.Open();
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := Date();
end;

end.
