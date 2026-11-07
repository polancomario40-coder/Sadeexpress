unit uMantTipoSups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Buttons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  uMantClassRS, cxLookAndFeelPainters, ImgList, ActnList, Wwdatsrc,
  StdCtrls, cxButtons;

type
  TMantTipoSups = class(TMantClassRS)
    rsTiposSup: TADODataSet;
    rsTiposSupTipoSuplidor: TAutoIncField;
    rsTiposSupDescripcion: TStringField;
    rsTiposSupAbrev: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1TipoSuplidor: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Abrev: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantTipoSups: TMantTipoSups;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TMantTipoSups.FormCreate(Sender: TObject);
begin
  inherited;
  rsTiposSup.Open();
end;

end.
