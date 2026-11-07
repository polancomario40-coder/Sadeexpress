unit uUnidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TUnidad = class(TMantConf)
    rsUnidad: TADODataSet;
    rsUnidadidUnidad: TStringField;
    rsUnidadUnidad: TStringField;
    rsUnidadidUnidadBase: TStringField;
    rsUnidadidFactor: TFloatField;
    rsUnidadUidUnidad: TGuidField;
    cxGrid1: TcxGrid;
    cxGrid: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    qryUnidades: TADOQuery;
    cxGrididUnidad: TcxGridDBBandedColumn;
    cxGridUnidad: TcxGridDBBandedColumn;
    cxGrididUnidadBase: TcxGridDBBandedColumn;
    cxGrididFactor: TcxGridDBBandedColumn;
    cxGridUidUnidad: TcxGridDBBandedColumn;
    dsUnidades: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    procedure rsUnidadNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Unidad: TUnidad;

implementation

uses Udata;

{$R *.dfm}

procedure TUnidad.rsUnidadNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsUnidaduidunidad.AsGuid := dm.NewGuid;
  rsUnidadIdFactor.Value := 1;
end;

procedure TUnidad.FormCreate(Sender: TObject);
begin
  inherited;
  qryUnidades.Open();
end;

end.
