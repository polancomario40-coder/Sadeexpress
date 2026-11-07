unit uConsultaExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxContainer,
  cxCheckBox, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtons, cxExportGrid4Link;

type
  TConsultaExcel = class(TForm)
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    Grid: TcxGrid;
    tblView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    cbAutofit: TcxCheckBox;
    lblDesde: TLabel;
    lblHasta: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    DS: TDataSource;
    RS: TADODataSet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    sd: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure cbAutofitPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FKeyField: string;
    FOcultar: Boolean;
    FColMaxSize: Integer;
    FAutoFit: Boolean;
    FUsarRango: Boolean;
    procedure ReCreate(const spName: string);
    procedure SetGrid;
    procedure SetKeyField(const Value: string);
    procedure SetOcultar(const Value: Boolean);
    procedure OpenData;
    procedure SetUsarRango(const Value: Boolean);
  protected
    procedure PrepareQuery; virtual;
    { Private declarations }
  public
    { Public declarations }
    property KeyField: string read FKeyField write SetKeyField;
    property Ocultar: Boolean read FOcultar write SetOcultar;
    property UsarRango: Boolean read FUsarRango write SetUsarRango;

    property ColMaxSize: Integer read FColMaxSize write FColMaxSize;
    property AutoFit: Boolean read FAutoFit write FAutoFit;
  end;

var
  ConsultaExcel: TConsultaExcel;

procedure MostrarConsultaExcel(const spName: string; const key: string = 'ID'; const OcultarC1: Boolean = True;
const MostrarHora: Boolean = False; const Rango: Boolean = True);

implementation

{$R *.dfm}

procedure TConsultaExcel.SetGrid();
var
  j: integer;
begin
   tblView.DataController.CreateAllItems();
   tblView.DataController.KeyFieldNames := KeyField;

   tblView.Columns[0].Visible := not Ocultar;
//   if tblView.GetColumnByFieldName(KeyField) <> nil then
//      tblView.GetColumnByFieldName(KeyField).Visible := not Ocultar;

   if ColMaxSize > 0 then begin
     for j := 0 to tblView.ColumnCount - 1 do begin
//       if tblView.Columns[j].Width > ColMaxSize then
         tblView.Columns[j].BestFitMaxWidth := ColMaxSize;
     end;
   end;

   if AutoFit then
     tblView.OptionsView.ColumnAutoWidth := True;
end;

procedure TConsultaExcel.ReCreate(const spName : string);
begin
  if spName <> '' then
  begin
    with RS do begin
      commandText := spName;
      Parameters.Clear;
      Parameters.CreateParameter('@Return_Value', ftInteger, pdReturnValue, 10, 0);
      if UsarRango then
        Parameters.CreateParameter('@desde', ftDateTime, pdInput, 8,0);
      Parameters.CreateParameter('@hasta', ftDatetime, pdInput, 8,0);
    end;
    OpenData();
  end;
end;

procedure TConsultaExcel.BitBtn1Click(Sender: TObject);
begin
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,Grid);
end;

procedure TConsultaExcel.SetKeyField(const Value: string);
begin
  FKeyField := Value;
  tblView.DataController.KeyFieldNames := FKeyField;
end;

procedure MostrarConsultaExcel(const spName: string; const key: string = 'ID';
const OcultarC1: Boolean = True; const MostrarHora:Boolean = False;
const Rango: Boolean = True);
var
  j: Integer;
begin
  with TConsultaExcel.Create(Application) do begin
    try
      UsarRango := Rango;
      Recreate(spName);
      KeyField := key;
      Ocultar := OcultarC1;
      SetGrid();

      deDesde.Properties.ShowTime := MostrarHora;
      deDesde.Properties.SaveTime := MostrarHora;

      deHasta.Properties.ShowTime := MostrarHora;
      deHasta.Properties.SaveTime := MostrarHora;

      if MostrarHora then begin
        deDesde.Properties.Kind := ckDateTime;
        dehasta.Properties.Kind := ckDateTime;
      end
      else begin
        deDesde.Properties.Kind := ckDate;
        dehasta.Properties.Kind := ckDate;
      end;

      if rs.Active then begin
        for j := 0 to tblView.ColumnCount - 1 do
         tblView.Columns[j].ApplyBestFit();
      end;
      
      ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure TConsultaExcel.SetOcultar(const Value: Boolean);
begin
  FOcultar := Value;
//  if tblView.GetColumnByFieldName(KeyField) <> nil then
//     tblView.GetColumnByFieldName(KeyField).Visible := Value;
end;

procedure TConsultaExcel.cbAutofitPropertiesChange(Sender: TObject);
begin
  AutoFit := cbAutoFit.Checked;
  tblView.OptionsView.ColumnAutoWidth := AutoFit;
end;

procedure TConsultaExcel.cxButton1Click(Sender: TObject);
begin
  OpenData();
end;

procedure TConsultaExcel.OpenData;
var
  j: Integer;
begin
  PrepareQuery();
  rs.Open();

  for j := 0 to tblView.ColumnCount - 1 do
    tblView.Columns[j].ApplyBestFit();
end;

procedure TConsultaExcel.PrepareQuery;
begin
  with rs do begin
    Close();
    if UsarRango then
      Parameters.ParamByName('@desde').Value := deDesde.Date;
      
    Parameters.ParamByName('@hasta').Value := deHasta.Date;
  end;
end;


procedure TConsultaExcel.FormCreate(Sender: TObject);
begin
  ColMaxSize := 0;
  AutoFit := False;
  deDesde.Date := Date();
  deHasta.Date := Date();
end;

procedure TConsultaExcel.SetUsarRango(const Value: Boolean);
begin
  FUsarRango := Value;
  deDesde.Visible := Value;
  lblDesde.Visible := Value;

  if Value then begin
    deHasta.Left := 266;
    lblHasta.Left := 231;
  end
  else begin
    deHasta.Left := 38;
    lblHasta.Left := 4;
  end;
end;

end.
