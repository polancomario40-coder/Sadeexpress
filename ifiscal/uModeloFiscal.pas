unit uModeloFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, ComCtrls, ToolWin;

type
  TModeloFiscal = class(TForm)
    rgTipoNCF: TRadioGroup;
    rgTipoCancelacion: TRadioGroup;
    rgTipoReporte: TRadioGroup;
    rgOperacion: TRadioGroup;
    edGUID: TEdit;
    Label1: TLabel;
    edInicio: TEdit;
    edFinal: TEdit;
    dtpInicio: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    btnSalir: TButton;
    btnGenerar: TButton;
    procedure btnSalirClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModeloFiscal      : TModeloFiscal;

implementation

{$R *.dfm}

uses udmImpresoraFiscal, Udata, UUtiles;

procedure TModeloFiscal.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TModeloFiscal.btnGenerarClick(Sender: TObject);
begin
  case rgOperacion.ItemIndex of
    0:
      begin
        case rgTipoNCF.ItemIndex of
          0: dmFiscal.IFImpresionFiscalFactura(StringToGUID('{' + edGUID.Text + '}'));
          1: dmFiscal.IFImpresionFiscalDevolucion(StringToGUID('{' + edGUID.Text + '}'));
          2: dmFiscal.IFImpresionNoVenta(StringToGUID('{' + edGUID.Text + '}'), 'COTIZACION');
        end;
      end;
    1: dmFiscal.IFCancelaImpresionReporteFiscal(rgTipoCancelacion.ItemIndex);
    2: dmFiscal.IFImpresionReporteFiscal(rgTipoReporte.ItemIndex, edInicio.Text, edFinal.Text, dtpInicio.Date, dtpFinal.Date);
  end;
end;

procedure TModeloFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

