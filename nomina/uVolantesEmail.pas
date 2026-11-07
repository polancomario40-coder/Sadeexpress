unit uVolantesEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMemo, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ADODB;

type
  TVolantesEmail = class(TSimpleForm)
    Label2: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NominaID: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1DepartamentoID: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1SeccionID: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoID: TcxGridDBColumn;
    cxGridDBTableView1TotalNormal: TcxGridDBColumn;
    cxGridDBTableView1TotalNocturna: TcxGridDBColumn;
    cxGridDBTableView1TotalExtra: TcxGridDBColumn;
    cxGridDBTableView1TotalDoble: TcxGridDBColumn;
    cxGridDBTableView1OtrosIngresos: TcxGridDBColumn;
    cxGridDBTableView1Bruto: TcxGridDBColumn;
    cxGridDBTableView1OtrosDescuentos: TcxGridDBColumn;
    cxGridDBTableView1TDescuentos: TcxGridDBColumn;
    cxGridDBTableView1Neto: TcxGridDBColumn;
    cxGridDBTableView1Notas: TcxGridDBColumn;
    cxGridDBTableView1Dias: TcxGridDBColumn;
    cxGridDBTableView1Cheque: TcxGridDBColumn;
    cxGridDBTableView1Volante: TcxGridDBColumn;
    cxGridDBTableView1Numero: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1NumeroCuenta: TcxGridDBColumn;
    btImprimir: TcxButton;
    btSalir: TcxButton;
    rptvolanteH: TppReport;
    ppTitleBand8: TppTitleBand;
    ppHeaderBand12: TppHeaderBand;
    ppDetailBand14: TppDetailBand;
    ppDBText124: TppDBText;
    ppDBText147: TppDBText;
    ppDBText163: TppDBText;
    ppLabel155: TppLabel;
    ppLabel168: TppLabel;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText148: TppDBText;
    ppLabel161: TppLabel;
    RptDebito: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel154: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText155: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppDBCalc50: TppDBCalc;
    ppLabel158: TppLabel;
    ppSummaryBand8: TppSummaryBand;
    RptCredito: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppLabel153: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText156: TppDBText;
    ppFooterBand14: TppFooterBand;
    ppDBCalc51: TppDBCalc;
    ppLabel159: TppLabel;
    ppSummaryBand9: TppSummaryBand;
    ppDBText153: TppDBText;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppDBText154: TppDBText;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppFooterBand12: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    plVolanteH: TppDBPipeline;
    mOutput: TcxMemo;
    rsEmpleadoAct: TADODataSet;
    rsEmpleadoActEmpleado: TStringField;
    rsEmpleadoActTipoNotificacionBanco: TStringField;
    rsEmpleadoActDireccionNotificacionBanco: TStringField;
    procedure btSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    procedure LogEntry(const id: Integer; const tx: string);
    function BuscarEmail(const id: Integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;


Procedure ShowVolanteEmail(NominaId : Integer);

var
  VolantesEmail: TVolantesEmail;

implementation

uses uDMReportes, Udata, UUtiles;

{$R *.dfm}

procedure ShowVolanteEmail(NominaId : Integer);
Begin
  with TVolantesEmail.Create(Application) do begin
    dmReporte.TDebito.Close;
    dmReporte.TCredito.Close;
    dmReporte.rsVolanteH.close;
    dmReporte.rsVolanteH.parameters[1].value := NominaId;
    dmReporte.rsVolanteH.Open();
    ShowModal;
    Free;
  end;
End;

procedure TVolantesEmail.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVolantesEmail.LogEntry(const id: Integer; const tx: string);
begin
  if id > 0 then
    mOutput.Lines.Add(Format('%s - Empleado %d : %s',[FormatDateTime('hh:nn:ss',Now()), id, tx]))
  else
    mOutput.Lines.Add(Format('%s - %s',[FormatDateTime('hh:nn:ss',Now()), tx]));
end;

function TVolantesEmail.BuscarEmail(const id: Integer): string;
begin
  with rsEmpleadoAct do begin
    Close();
    Parameters[0].Value := id;
    Open();
    if Eof or (rsEmpleadoActDireccionNotificacionBanco.Value <> '1') then
      Result := ''
    else
      Result := rsEmpleadoActDireccionNotificacionBanco.Asstring;
  end;
end;
procedure TVolantesEmail.btImprimirClick(Sender: TObject);
var
  em: string;
begin
  inherited;
  mOutput.lines.Clear();
  if dmReporte.rsVolanteH.RecordCount = 0 then
    LogEntry(0,'Nada que enviar')
  else begin
    LogEntry(0,'Inicio de envios');
    with dmReporte.rsVolanteH do begin
      disableControls();
      try
        First();
        while not Eof do begin
          em := BuscarEmail(dmReporte.rsVolanteHEmpleadoId.Value);
          if em = '' then
            LogEntry(dmReporte.rsVolanteHEmpleadoId.Value,'Error: no hay direccion de email registrada')
          else
            LogEntry(dmReporte.rsVolanteHEmpleadoId.Value,'Enviando email con volante de pago a la direccion ' + em);

          try
            SendRPTEmail(em,'Volante de pago nomina ' + FormatDateTime('dd/mm/yyyy',dmReporte.rsVolanteHFecha.Value),
                         '','VOLANTE',rptVolanteH,'jpg',False);
          except
            on e: Exception do begin
              LogEntry(dmReporte.rsVolanteHEmpleadoId.Value,'Error enviando email: ' + e.Message);
            end;
          end;
          Application.ProcessMessages();
          Next();
        end;
      finally
        First();
        EnableControls();
      end;
    end;
    LogEntry(0,'fin de los envios');
  end;
end;

end.
