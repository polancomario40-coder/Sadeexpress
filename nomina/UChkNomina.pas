unit UChkNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uChClass, DB, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TChkNomina = class(TfChClass)
    procedure ImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChkNomina: TChkNomina;

implementation

uses Udata, UReport, uDMReportes, UdataNom;

{$R *.dfm}

procedure TChkNomina.ImpClick(Sender: TObject);
begin
  inherited;
  dmNom.SPNominaEmp.Parameters.ParamByName('@NominaID').Value := dmNom.NominasNominaID.Value ;
  if rango.Checked then
  begin
    dmnom.SPNominaEmp.Parameters.ParamByName('@Desde').Value:= strtoint(edDesde.Text );
    dmnom.SPNominaEmp.Parameters.ParamByName('@Hasta').Value:= strtoint(edHasta.Text );
  end
  else
  begin
    dmnom.SPNominaEmp.Parameters.ParamByName('@Desde').Value:= 0;
    dmNom.SPNominaEmp.Parameters.ParamByName('@Hasta').Value:= 999999999;
  end;
  dmNom.SPNominaEmp.Open;

  Imprimir(dmReporte.RepChkNomina);

end;

end.
