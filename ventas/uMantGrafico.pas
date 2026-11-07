unit uMantGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassRS, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  cxButtonEdit, cxImageComboBox, cxSpinEdit;

type
  TMantGrafico = class(TMantClassRS)
    rs: TADODataSet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1idRetencion: TcxGridDBColumn;
    cxGrid1DBTableView1Retencion: TcxGridDBColumn;
    cxGrid1DBTableView1Porcentaje: TcxGridDBColumn;
    cxGrid1DBTableView1idCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    rsProcedimiento: TStringField;
    rsTipoGrafico: TIntegerField;
    rsNombre: TStringField;
    rsPosicion: TIntegerField;
    rsActivo: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantGrafico: TMantGrafico;

implementation

uses Udata, UUtiles, uBuscarCuentaMayor;

{$R *.dfm}

end.
