unit uQuickList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons,
  cxSplitter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls,
  cxExportGrid4Link, ShellApi, XMLIntf, cxCheckBox, cxMemo, cxDBEdit,
  xmldom, ADODB, msxmldom, XMLDoc, cxCalc;

type
  TQuickList = class(TForm)
    Panel1: TPanel;
    GridListasDBTableView1: TcxGridDBTableView;
    GridListasLevel1: TcxGridLevel;
    GridListas: TcxGrid;
    dsLista: TDataSource;
    GridListasDBTableView1Lista: TcxGridDBColumn;
    GridListasDBTableView1DBColumn1: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    btExcel: TcxButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    btMostrar: TcxButton;
    tvData: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    ds: TDataSource;
    lCaption: TLabel;
    btCerrar: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    sd: TSaveDialog;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cbBestFit: TcxCheckBox;
    cxDBMemo1: TcxDBMemo;
    rs: TADODataSet;
    rsLista: TADODataSet;
    rsListaidLista: TGuidField;
    rsListaLista: TStringField;
    rsListaFechaCreacion: TDateTimeField;
    rsListaUsuario: TStringField;
    rsListaActiva: TBooleanField;
    rsListaCategoria: TStringField;
    rsListaADOCommandType: TStringField;
    rsListaADOCommand: TStringField;
    rsListaTipoLista: TStringField;
    rsListaDescripcion: TStringField;
    cxButton3: TcxButton;
    procedure btMostrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure cxSplitter1CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);

  private
//    FLoading: Boolean;
    function GetCMDType(const str: string): TCommandType;
    procedure MostrarLista;

 //   function XMLDate(str: string; const Def: TDateTime): TDateTime;
    { Private declarations }
  public
    procedure AbrirCatalogo(const todas: Boolean = false);
    procedure AbrirLista(const idLista: Variant; const desde, hasta: TDateTime);
    { Public declarations }
  end;

var
  QuickList         : TQuickList;

implementation

uses DateUtils, Udata, UUtiles, uEditarLista;

{$R *.dfm}

procedure TQuickList.btMostrarClick(Sender: TObject);
begin

 // if stFetching in rs.RecordsetState then
 //   rs.Close();

  AbrirLista(rsListaIdLista.Value, deDesde.Date, deHasta.Date);
  rs.DisableControls();
  try
    MostrarLista();
  finally
    rs.EnableControls();
  end;
  btCerrar.Enabled := true;
end;

procedure TQuickList.MostrarLista;
var
  col               : Integer;
begin
  lCaption.Caption := rsListaLista.Asstring;
  tvData.ClearItems();
  tvData.DataController.CreateAllItems();
  if tvData.GetColumnByFieldName('KeyField') <> nil then begin
    tvData.DataController.DataModeController.GridMode := False;
    tvData.DataController.KeyFieldNames := 'KeyField';
    tvData.GetColumnByFieldName('KeyField').Visible := False;
  end
  else begin
    tvData.DataController.KeyFieldNames := '';
    tvData.DataController.DataModeController.GridMode := True;
  end;
  for col := 0 to tvData.ColumnCount - 1 do begin
    if tvData.Columns[col].Width > 400 then begin
      tvData.Columns[col].Width := 400;
      tvData.Columns[col].BestFitMaxWidth := 400;
    end;

    if tvData.Columns[col].DataBinding.Field.DataType = ftGuid then
      tvData.Columns[col].Visible := False
    else begin
      if tvData.Columns[col].DataBinding.Field.DataType in [ftCurrency, ftBCD, ftFloat] then begin
        tvData.Columns[col].PropertiesClass := TcxCalcEditProperties;
        (tvData.Columns[col].Properties as TcxCalcEditProperties).DisplayFormat := '###,###,##0.00##';
        tvData.Columns[col].Summary.FooterKind := skSum;

        tvData.Columns[col].Summary.FooterFormat := '###,###,##0.00##';
        tvData.Columns[col].HeaderAlignmentHorz := taRightJustify;
      end
      else if tvData.Columns[col].DataBinding.Field.DataType in [ftInteger] then begin
        tvData.Columns[col].PropertiesClass := TcxCalcEditProperties;
        (tvData.Columns[col].Properties as TcxCalcEditProperties).DisplayFormat := '###,###,###,##0';
        tvData.Columns[col].Summary.FooterKind := skSum;
        tvData.Columns[col].Summary.FooterFormat := '###,###,###,##0';
        tvData.Columns[col].HeaderAlignmentHorz := taRightJustify;
      end
      else if tvData.Columns[col].DataBinding.Field.DataType in [ftDateTime] then begin
        tvData.Columns[col].PropertiesClass := TcxDateEditProperties;
      end;
    end;

    if cbBestFit.Checked then
      tvData.Columns[col].ApplyBestFit();
  end;

  GridListas.Enabled := False;
end;

procedure TQuickList.FormCreate(Sender: TObject);
begin
  AbrirCatalogo(false);
  GridListasDBTableView1.DataController.Groups.FullExpand();
  deDesde.Date := StartOfTheMonth(Date());
  dehasta.Date := DateOf(EndOfTheMonth(Date()));
end;

procedure TQuickList.btCerrarClick(Sender: TObject);
begin
  rs.Close();
  GridListas.Enabled := True;
  btCerrar.Enabled := false;
end;

procedure TQuickList.btExcelClick(Sender: TObject);
var
  sFile             : string;
begin
  sd.FileName := lCaption.Caption + '.xls';
  if sd.Execute() then
    sFile := sd.FileName
  else
    Exit;

  ExportGrid4ToExcel(sFile, Grid, True, True, True);
  ShellExecute(Handle, 'open', PChar(sFile), nil, nil, SW_SHOWNORMAL);
end;

procedure TQuickList.cxSplitter1CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := (NewSize / Width) < 0.4;
end;



procedure TQuickList.cxButton1Click(Sender: TObject);
var
  i                 : Variant;
begin
  i := rsListaIdLista.Value;

  if i = '' then
    ShowMessage('No existen datos para editar, verifique por favor...')
  else
    if TEditarLista.Editar(i) then begin
      rsLista.Requery();
      rsLista.Locate('idLista', i, []);
    end;
end;

procedure TQuickList.cxButton2Click(Sender: TObject);
begin
  Close();
end;


procedure TQuickList.AbrirCatalogo(const todas: Boolean);
begin
  with rsLista do begin
    Close();
    Parameters[1].Value := todas;
    Open();
  end;
end;

function TQuickList.GetCMDType(const str: string): TCommandType;
begin
  if str = 'cmdTable' then
    Result := cmdTable
  else if str = 'cmdStoredProc' then
    Result := cmdStoredProc
  else if str = 'cmdText' then
    Result := cmdText
  else if str = 'cmdTableDirect' then
    Result := cmdTableDirect
  else if str = 'cmdFile' then
    Result := cmdFile
  else if str = 'cmdUnknown' then
    Result := cmdUnknown
  else
    Result := cmdStoredProc;
end;

procedure TQuickList.AbrirLista(const idLista: Variant; const desde,
  hasta: TDateTime);
var
  parPrefix         : string;
begin
  if not rsLista.Locate('idLista', idLista, []) then
    raise Exception.Create('Esta lista no esta definida');
  try
    with rs do begin
      Close();
      CommandType := GetCMDType(rsListaADOCommandType.Value);
      CommandText := rsListaADOCommand.Value;
      Parameters.Clear();
      if CommandType = cmdStoredProc then begin
        Parameters.CreateParameter('@RETURN_VALUE', ftInteger, pdReturnValue, 4, 0);
        parPrefix := '@';
      end
      else
        parPrefix := '';

      if rsListaTipoLista.Value = 'R' then begin

        Parameters.CreateParameter(parPrefix + 'desde', ftDateTime, pdInput, 8, 0);
        Parameters.CreateParameter(parPrefix + 'hasta', ftDateTime, pdInput, 8, 0);
        Parameters.ParamByName(parPrefix + 'desde').Value := desde;
        Parameters.ParamByName(parPrefix + 'hasta').Value := hasta;
      end;
      Open();
    end;
  except
    raise;
  end;
end;


procedure TQuickList.cxButton3Click(Sender: TObject);
begin
  if dm.Tienepermiso(pAprobar, 'QuickList') then
    TEditarLista.Editar(NULL);
end;

end.

