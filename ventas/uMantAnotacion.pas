unit uMantAnotacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ImgList, DBActns, ActnList, Wwdatsrc, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid;

type
  TMantAnotacion = class(TMantConf)
    luCat: TcxLookupComboBox;
    RS: TADODataSet;
    rsListaCats: TADODataSet;
    dsCats: TDataSource;
    rsListaCatsTipo: TStringField;
    RSidAnotacion: TStringField;
    RSTipo: TStringField;
    RSAnotacion: TStringField;
    RSPorDefecto: TBooleanField;
    procedure luCatPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantAnotacion: TMantAnotacion;

implementation

uses Udata;

{$R *.dfm}

procedure TMantAnotacion.luCatPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := luCat.EditValue;
    Open();
  end;
end;

procedure TMantAnotacion.FormCreate(Sender: TObject);
begin
  inherited;
  rsListaCats.Open();
  luCat.EditValue := 'CONDUCE';
end;

procedure TMantAnotacion.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSTipo.Value := luCat.EditValue;
  rsPorDefecto.Value := false;
end;

end.
