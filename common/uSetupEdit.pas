unit uSetupEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, dxEdLib, dxDBELib, dxExEdtr, dxCntner, dxEditor,
  StdCtrls, cxPC, cxControls, DB, ADODB, cxLabel, cxDBLabel, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxCheckBox, cxLookAndFeelPainters, cxButtons;

type
  TSetupEdit = class(TFFormx)
    paginas: TcxPageControl;
    Numeric: TcxTabSheet;
    Boolean: TcxTabSheet;
    Text: TcxTabSheet;
    Label2: TLabel;
    rs: TADODataSet;
    ds: TDataSource;
    vn: TcxDBCalcEdit;
    rsClave: TStringField;
    rsValor: TVariantField;
    rsDescripcion: TStringField;
    rsCategoria: TStringField;
    rsUidClave: TGuidField;
    rsTipo: TStringField;
    vb: TcxDBCheckBox;
    cxDBLabel2: TcxDBLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    vs: TcxDBTextEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
         procedure DoShowstate; override;
  end;

var
  SetupEdit: TSetupEdit;

implementation

uses Udata;

{$R *.dfm}

{ TSetupEdit }

procedure TSetupEdit.DoShowstate;
begin
  inherited;
  if xValue <> NULL then begin

    rs.close;
    rs.Parameters[0].Value := xvalue;
    rs.Open;

    self.Caption := rsClave.Value;

    if rstipo.value = 'S' then begin
      paginas.ActivePage := text;
      vs.DataBinding.dataField := 'Valor';
    end else if rstipo.value = 'N' then begin
      paginas.ActivePage := numeric;
      vn.DataBinding.dataField := 'Valor';
    end else if  rstipo.value = 'B' then begin
      paginas.ActivePage := boolean;
      vb.DataBinding.dataField := 'Valor';
    end;

  end else begin
     close;
  end;

end;

procedure TSetupEdit.cxButton1Click(Sender: TObject);
begin
  inherited;
  
  // Force active control to update its data link before we read the field
  if (ActiveControl <> nil) and (ActiveControl is TcxCustomEdit) then
    TcxCustomEdit(ActiveControl).PostEditValue;

  if rs.State in dseditmodes then 
  begin
    if VarIsNull(rs.FieldByName('Valor').Value) then
      dm.Coneccion.Execute('update defaults set valor=NULL where clave=' + QuotedStr(rs.FieldByName('Clave').AsString))
    else
      dm.Coneccion.Execute('update defaults set valor=' + QuotedStr(VarToStr(rs.FieldByName('Valor').Value)) + ' where clave=' + QuotedStr(rs.FieldByName('Clave').AsString));
    rs.Cancel;
  end;
  
  // Disconnect the dataset so controls don't try to auto-post when the form closes
  ds.DataSet := nil;
  
  Close;
end;

procedure TSetupEdit.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
