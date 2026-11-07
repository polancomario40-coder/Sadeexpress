unit uRptParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBCtrls, wwdbdatetimepicker, ADODB;

type
  TRptParams = class(TForm)
    TipoEmpleado: TADODataSet;
    TipoNomina: TADODataSet;
    Desde: TwwDBDateTimePicker;
    Hasta: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    tn: TDBLookupComboBox;
    te: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DsTipoNomina: TDataSource;
    DsTipoEmpleado: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptParams: TRptParams;

implementation

uses Udata;

{$R *.dfm}

procedure TRptParams.FormCreate(Sender: TObject);
begin
   Desde.Date := date();
   Hasta.Date := Date();
   tn.KeyValue := -1;
   te.KeyValue := -1;
    te.Enabled := true;
    tipoempleado.close();
   TipoEmpleado.Open();
end;

end.
