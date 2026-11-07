unit uProMovTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  uViajeFrame;

type
  TProMovTransporte = class(TFForm)
    ViajeFrame1: TViajeFrame;
    Cerrar: TcxButton;
    procedure CerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProMovTransporte: TProMovTransporte;

implementation

{$R *.dfm}

procedure TProMovTransporte.CerrarClick(Sender: TObject);
begin
  inherited;
  Close();
end;

end.
