unit uEmpleadoRoll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDBLookupComboBox;

type
  TEmpleadoRoll = class(TMantConf)
    EmpleadoRoll: TADODataSet;
    EmpleadoRollidEmpleadoRoll: TStringField;
    EmpleadoRollEmpleadoRoll: TStringField;
    EmpleadoRollSueldoHora: TBCDField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1idEmpleadoRoll: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoRoll: TcxGridDBColumn;
    cxGrid1DBTableView1SueldoHora: TcxGridDBColumn;
    EmpleadoRollIdNivelRoll: TIntegerField;
    qryNivelRoll: TADOQuery;
    qryNivelRollIdNivelRoll: TAutoIncField;
    qryNivelRollNivelRoll: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    dsNivelRoll: TDataSource;
    EmpleadoRollidOcupacion: TStringField;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpleadoRoll: TEmpleadoRoll;

implementation

uses Udata, uform;

{$R *.dfm}

procedure TEmpleadoRoll.FormCreate(Sender: TObject);
begin
  inherited;
  qryNivelRoll.Open();
  Enter2Tab := False;
end;

end.
