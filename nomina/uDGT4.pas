unit udgt4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, ppDB, ppDBPipe, ppParameter, DateUtils,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxExportGrid4Link,
  cxData, cxDataStorage, cxEdit, cxDBData, ExtCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ppBands, ppCtrls, myChkBox,
  ppPrnabl, ppClass, ppComm, ppRelatv, ppProd, ppReport,
  ppCache;

type
  TDGT4 = class(TFForm)
    rs: TADODataSet;
    rsEmpleadoId: TIntegerField;
    rsTipoDocumento: TStringField;
    rsNumeroIdent: TStringField;
    rsNombre: TStringField;
    rsApellido: TStringField;
    rsNacimiento: TDateTimeField;
    rsSexo: TStringField;
    rsidNacionalidad: TStringField;
    rsNumeroSS: TStringField;
    rsSueldoMes: TBCDField;
    rsEmpleadoRoll: TStringField;
    rsidOcupacion: TStringField;
    rsHorario: TStringField;
    deHasta: TcxDateEdit;
    Label1: TLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn;
    cxGrid1DBTableView1TipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroIdent: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Apellido: TcxGridDBColumn;
    cxGrid1DBTableView1Nacimiento: TcxGridDBColumn;
    cxGrid1DBTableView1Sexo: TcxGridDBColumn;
    cxGrid1DBTableView1idNacionalidad: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroSS: TcxGridDBColumn;
    cxGrid1DBTableView1SueldoMes: TcxGridDBColumn;
    cxGrid1DBTableView1Inicio: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoRoll: TcxGridDBColumn;
    cxGrid1DBTableView1idOcupacion: TcxGridDBColumn;
    cxGrid1DBTableView1Horario: TcxGridDBColumn;
    Shape1: TShape;
    cxButton2: TcxButton;
    sd: TSaveDialog;
    rsObservacion: TStringField;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label2: TLabel;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    rsInicio: TDateTimeField;
    rsFin: TDateTimeField;
    rsTipoNovedad: TStringField;
    rsFechaNovedad: TDateTimeField;
    rsVacInicio: TDateTimeField;
    rsVacFin: TDateTimeField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure rsCalcFields(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GenerarHeader: string;
    procedure GuardarTexto;
    function IncWeekDays(const ADate: TDateTime;
      days: Integer): TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DGT4              : TDGT4;

implementation

uses Udata, UUtiles, UEmpleado;

{$R *.dfm}

procedure TDGT4.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := deHasta.Date;
    Open();
  end;
end;

procedure TDGT4.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

function TDGT4.GenerarHeader: string;
var
  sLine             : string;
  sRNC              : string;
begin
  sRNC := StringReplace(dm.ConfiguracionRNC.AsString, '-', '', [rfReplaceAll]);
  sLine := 'E' +                        //Tipo de registro (E = Encabezado)
    'T4' +                              //Envio de archivo DGT4 (fijo)
    PadRight(sRNC, 11, ' ') +           //RNC del empleador
    formatDateTime('DDMMYYYY', deHasta.date); // periodo
  Result := sLine;
end;

procedure TDGT4.GuardarTexto;
var
  strs              : TStringList;
  sLine             : string;
  bm                : string;
  rows              : Integer;
  localidad         : string;
begin
  sd.DefaultExt := 'txt';
  sd.FileName := 'dgt4' + FormatDateTime('YYYYMM', deHasta.Date) + '.txt';

  if not sd.Execute() then
    Exit;

  localidad := PadRight(dm.GetDefaultStr('LOCALIDAD_DGT3'), 6, ' ');

  strs := TStringList.Create();

  strs.Add(GenerarHeader());
  with rs do begin
    bm := Bookmark;
    DisableControls();
    try
      First();
      while not rs.Eof do begin
        sLine := 'D' +
          FieldToColumn(rsTipoNovedad, 3) +
          FieldToColumn(rsTipoDocumento, 1) +
          FieldToColumn(rsNumeroIdent, 25) +
          FieldToColumn(rsNombre, 50) +
          FieldToColumn(rsApellido, 80) +
          FieldToColumn(rsNacimiento, 8) +
          FieldToColumn(rsSexo, 1) +
          FieldToColumn(rsSueldoMes, 16) +
          FieldToColumn(rsInicio, 8) +
          FieldToColumn(rsFin,8) +
          FieldToColumn(rsidOcupacion, 6) +
          FieldToColumn(rsEmpleadoRoll, 150) +
          FieldToColumn(rsVacInicio, 8) +
          FieldToColumn(rsVacFin, 8) +
          FieldToColumn(rsHorario, 6) +
          localidad +
          FieldToColumn(rsIdNacionalidad, 3) +
          FieldToColumn(rsFechaNovedad, 8);
        strs.Add(sLine);
        rs.Next();
      end;
      rows := strs.Count + 1;
      strs.Add('S' + PadLeft(IntToStr(rows), 6, '0'));
      strs.SaveToFile(sd.FileName);
    finally
      Bookmark := bm;
      EnableControls();
      strs.Free();
    end;
  end;
end;

function TDGT4.IncWeekDays(const Adate: TDateTime; days: Integer): TDateTime;
var
  we                : Single;
  j                 : Integer;
  inDate            : TDateTime;
begin
  we := 0;
  inDate := Adate;
  for j := 1 to days do begin
    inDate := IncDay(inDate);
    if DayOfWeek(inDate) = 6 then
      we := we + 0.5;

    if DayOfWeek(inDate) = 7 then
      we := we + 1;
  end;
  Result := IncDay(inDate, Trunc(we));
end;

procedure TDGT4.rsCalcFields(DataSet: TDataSet);
//var
//  inicio            : TDateTime;
begin
  inherited;
  //inicio := EncodeDate(YearOf(deHasta.Date), MonthOf(rsInicio.Value), DayOf(rsInicio.Value));
  //si ya pasaron las vacaciones
  //if inicio < deHasta.Date then
  //  inicio := IncYear(inicio);

  //if (YearOf(rsInicio.Value) <> YearOf(deHasta.Date)) then
 // begin
  //  rsInicioVacaciones.Value := DateOf(inicio);
   // rsFinVacaciones.Value := DateOf(IncWeekDays(inicio, 14));
  //end;
end;

procedure TDGT4.cxButton3Click(Sender: TObject);
begin
  inherited;
  if rs.Active and (rs.RecordCount > 0) then
    GuardarTexto();
end;

procedure TDGT4.cxButton4Click(Sender: TObject);
begin
  inherited;
  sd.DefaultExt := 'xls';
  sd.FileName := 'dgt4' + FormatDateTime('YYYYMM', deHasta.Date) + '.xls';
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

procedure TDGT4.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if (rs.Active) and (rsEmpleadoId.Value > 0) then
    ModalShow(TEmpleado, showFind, rsEmpleadoId.Value);
end;

procedure TDGT4.FormCreate(Sender: TObject);
begin
  inherited;
  deHasta.Date := Now;
end;

end.

