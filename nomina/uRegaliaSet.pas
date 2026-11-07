unit uRegaliaSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxTextEdit, cxMaskEdit, cxSpinEdit, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxLookAndFeelPainters,
  StdCtrls, cxButtons, Gradient;

type
  TRegaliaSet = class(TFFormx)
    Acti: TcxRadioGroup;
    Proy: TcxRadioGroup;
    Cant: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Gradient4: TGradient;
    procedure ActiPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegaliaSet: TRegaliaSet;

implementation

{$R *.dfm}

procedure TRegaliaSet.ActiPropertiesChange(Sender: TObject);
begin
  inherited;
  if acti.ItemIndex = 0 then begin
    cant.value := 0;
    cant.Enabled := false;
  end else begin
    cant.Enabled := true;
    cant.value := 2;
  end;


end;

end.
