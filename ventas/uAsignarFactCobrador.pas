unit uAsignarFactCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBLabel,
  cxLookAndFeelPainters, cxButtons, Gradient;

type
  TAsignarFactCobrador = class(TFForm)
    RS: TADODataSet;
    RSidFactura: TGuidField;
    RSFactura: TStringField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSContacto: TStringField;
    RSDireccion: TStringField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    RSTelefono: TStringField;
    RSidEmpleado: TIntegerField;
    RSFecha: TDateTimeField;
    RSHora: TDateTimeField;
    RSReferencia: TStringField;
    RSCancelado: TBooleanField;
    RSCredito: TBooleanField;
    RSidCompania: TIntegerField;
    RSSubTotal: TBCDField;
    RSItbis: TBCDField;
    RSDescuento: TBCDField;
    RSTotal: TBCDField;
    RSNota: TStringField;
    RSUsuario: TStringField;
    RSCotizacion: TStringField;
    RSidCotizacion: TGuidField;
    RSidClienteObra: TStringField;
    RSPagaItbis: TBooleanField;
    RSidOrdComp: TGuidField;
    RSOrdComp: TStringField;
    RSFax: TStringField;
    RSeMail: TStringField;
    RSPorcDesc: TFloatField;
    RSCondicion: TIntegerField;
    RSFechaCancelado: TDateTimeField;
    RSidMoneda: TIntegerField;
    RSNumRegistro: TStringField;
    RSidCobrador: TIntegerField;
    RSidAlmacen: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    rsEmp: TADODataSet;
    rsEmpidEmpleado: TIntegerField;
    rsEmpidNomina: TIntegerField;
    rsEmpEmpleado: TStringField;
    rsEmpDireccion: TStringField;
    rsEmpCiudad: TStringField;
    rsEmpTelefono: TStringField;
    rsEmpBeeper: TStringField;
    rsEmpNotas: TStringField;
    rsEmpesVendedor: TBooleanField;
    rsEmpinactivo: TBooleanField;
    rsEmpUidEmpleado: TGuidField;
    rsEmpidEmpleadoRoll: TStringField;
    rsEmpGrupoTrabajo: TIntegerField;
    rsEmpidPlanta: TStringField;
    dsEmps: TwwDataSource;
    luEmp: TcxDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    btCancelar: TcxButton;
    btGuardar: TcxButton;
    Label3: TLabel;
    cxDBLabel2: TcxDBLabel;
    Gradient1: TGradient;
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure AsignarFactura(const idFactura: Variant);

var
  AsignarFactCobrador: TAsignarFactCobrador;

implementation

uses Udata;

{$R *.dfm}

{procedure TAsignarFactCobrador.FormCreate(Sender: TObject);
begin
  inherited;
  rsEmp.Open();
end;}

procedure AsignarFactura(const idFactura: Variant);
begin
  with TAsignarFactCobrador.Create(Application) do begin
    rsEmp.Open();
    rs.Close();
    rs.Parameters[1].Value := idFactura;
    rs.Open();
    if not rs.Eof then begin
      rs.Edit();

      if ShowModal() = mrOk then
        rs.Post()
      else
        rs.Cancel();
    end;
    Release();
  end;
end;

end.
