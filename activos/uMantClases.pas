unit uMantClases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, ImgList, DBActns, ActnList, DB, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TMantClases = class(TMantConf)
    rs: TADODataSet;
    rsidCategoria: TIntegerField;
    rsidActivoClase: TStringField;
    rsActivoClase: TStringField;
    rsCats: TADODataSet;
    rsCatsidCategoria: TIntegerField;
    rsCatsCategoria: TStringField;
    rsCatsPorcentaje: TFloatField;
    dsCats: TwwDataSource;
    rslufCategoria: TStringField;
    luCat: TcxLookupComboBox;
    rsIdCuenta: TStringField;
    procedure luCatPropertiesChange(Sender: TObject);
    procedure rsNewRecord(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantClases: TMantClases;

implementation

uses Udata;

{$R *.dfm}

procedure TMantClases.luCatPropertiesChange(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := luCat.EditValue;
    Open();
  end;
end;

procedure TMantClases.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  if luCat.EditValue = NULL then
    raise Exception.Create('Seleccione una categoria primero');

  rsIdCategoria.Value := luCat.EditValue;
end;

procedure TMantClases.DSStateChange(Sender: TObject);
begin
  inherited;
  luCat.Enabled := not (rs.State in dsEditModes);
end;

procedure TMantClases.FormCreate(Sender: TObject);
begin
  inherited;
  rsCats.Open();
  luCat.EditValue := rsCatsIdCategoria.Value;
end;

procedure TMantClases.rsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (rs.State = dsInsert) and (rsidActivoClase.IsNull)  then begin
    rsIdActivoClase.Value := dm.GetNextCounterStr('ACTIVOCLASE');
  end;
end;

end.
