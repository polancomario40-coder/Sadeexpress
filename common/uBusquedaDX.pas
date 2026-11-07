unit uBusquedaDX;

interface

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ADODB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeelPainters, cxButtons, cxContainer, cxCheckBox,ubusquedabase;

type
  TBusquedaDX = class(TBusquedaBase)
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    DS: TDataSource;
    RS: TADODataSet;
    tblView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    cbAutofit: TcxCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure gridDblClick(Sender: TObject);
    procedure tblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FautoFit: boolean;
    FMaxWidth: Integer;
    FOcultar: boolean;
    FReturnField: string;
    FAutoCreateCols: Boolean;
    { Private declarations }
  protected
    procedure SetQuery; virtual;
    procedure SetGrid();
    procedure SetBestFit;virtual;
  public
     property ReturnField: string read FReturnField write FReturnField;
     property Ocultar: boolean read FOcultar write FOcultar;
     property AutoFit: boolean read FautoFit write FAutoFit;
     property ColMaxSize: Integer read FMaxWidth write FMaxWidth;
     property AutoCreateCols: Boolean read FAutoCreateCols write FAutoCreateCols;
     procedure ReCreate(const spName : string); virtual;
     //Procedure SetFilter; Virtual; Abstract;

     class function Buscar(ARetField : String; OcultaC1 : boolean = false; spname : string= '';
       AAutoFit: Boolean = True; ColMaxWidth: Integer = -1) : Variant; override;

//     constructor Create(Aowner: TComponent); override;
  published
    { Public declarations }
  end;

var
  BusquedaDX: TBusquedaDX;
implementation

uses Udata;

{$R *.DFM}

procedure TBusquedaDX.ReCreate(const spName : string);
begin
  if spName <> '' then
  begin
    with RS do begin
      commandText := spName;
      Parameters.Clear;
      Parameters.CreateParameter('@Return_Value', ftInteger, pdReturnValue, 10, 0);
      Parameters.CreateParameter('@Orden', ftString, pdInput, 50, '');
    end;
  end;
end;

procedure TBusquedaDX.SetGrid();
var
  j: integer;
begin
  // rs.DisableControls;
//   if rs.active then
//     rs.requery
//   else
//     RS.Open;

  if AutoCreateCols then begin
     tblView.DataController.CreateAllItems();
     tblView.DataController.KeyFieldNames := Returnfield;
     tblView.Columns[0].Visible := not Ocultar;

     if ColMaxSize > 0 then begin
       for j := 0 to tblView.ColumnCount - 1 do begin
         if tblView.Columns[j].Width > ColMaxSize then
           tblView.Columns[j].Width := ColMaxSize;
       end;
     end;

     if AutoFit then
       tblView.OptionsView.ColumnAutoWidth := True;
  end;
end;

procedure TBusquedaDX.gridDblClick(Sender: TObject);
begin
  ModalResult := MrOK;
end;

procedure TBusquedaDX.tblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AHandled := True;
  ModalResult := mrOk;
end;

procedure TBusquedaDX.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  AutoFit := cbAutoFit.Checked;
  if (ds.DataSet <> nil) and (ds.DataSet.Active = True) then
    tblView.OptionsView.ColumnAutoWidth := AutoFit;
end;

class function TBusquedaDX.Buscar(ARetField: String; OcultaC1: boolean;
  spname: string; AAutoFit: Boolean; ColMaxWidth: Integer): Variant;
var
  ffbusq : TBusquedaDX;
begin
  ffBusq := Self.Create(Application);

  with (ffBusq) do begin
    try
      ReturnField := ARetField;
      AutoFit := AAutoFit;
      ColMaxSize := ColmaxWidth;

      cbAutoFit.Checked := AutoFit;
      Ocultar := OcultaC1;

      Recreate(spname);
      setQuery();
      setGrid;
      SetBestFit();
      
      if ShowModal() = mrOk then begin
       if RS.FieldByName(ReturnField).isnull then
         Result := null
       else
         Result := RS.FieldByName(ReturnField).Value;
      end
      else
       Result := null;
     finally
       Release();
     end;
  end;
end;

procedure TBusquedaDX.SetQuery;
begin
  rs.Close();
  rs.Open();
end;

//constructor TBusquedaDX.Create(Aowner: TComponent);
//begin

//end;

procedure TBusquedaDX.FormCreate(Sender: TObject);
begin
  inherited;
  Ocultar := false;
  AutoCreateCols := True;
  FMaxWidth := 0;
  FAutoFit := True;
end;

procedure TBusquedaDX.SetBestFit();
var
  j: integer;
begin
  if cbAutofit.Checked then begin
    tblView.OptionsView.ColumnAutoWidth := false;

    for j := 0 to tblView.ColumnCount - 1 do begin
      tblView.Columns[j].ApplyBestFit();
    end;
    tblView.OptionsView.ColumnAutoWidth := True;
  end;
end;


end.
