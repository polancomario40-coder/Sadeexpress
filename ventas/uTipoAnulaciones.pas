unit uTipoAnulaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, StdCtrls, cxButtons, Gradient,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

Function ShowTipoAnulacion : String;

type
  TTipoAnulaciones = class(TFFormx)
    Gradient2: TGradient;
    Label2: TLabel;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    bSalir: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    spTipoAnulacion: TADOStoredProc;
    spTipoAnulacionId: TGuidField;
    spTipoAnulacionCodigo: TStringField;
    spTipoAnulacionTipo: TStringField;
    dsTipoAnulacion: TDataSource;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TipoAnulaciones: TTipoAnulaciones;

implementation

uses Udata;

{$R *.dfm}


Function ShowTipoAnulacion : String;
Begin
  With tTipoAnulaciones.Create(Application) Do
  Begin
    If ShowModal = mrOk Then
      Result := spTipoAnulacionCodigo.Value
    Else
      Result := '-1';
  End;
End;

procedure TTipoAnulaciones.FormCreate(Sender: TObject);
begin
  inherited;
  spTipoAnulacion.Open();
end;

procedure TTipoAnulaciones.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

end.
