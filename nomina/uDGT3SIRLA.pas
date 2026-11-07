unit uDGT3SIRLA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, DateUtils,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,cxExportGrid4Link,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TDGT3SIRLA = class(TFForm)
    Label1: TLabel;
    sePeriodo: TcxSpinEdit;
    cxButton1: TcxButton;
    RS: TADODataSet;
    RSEmpleadoId: TIntegerField;
    RSTipoDocumento: TStringField;
    RSNumeroIdent: TStringField;
    RSNombre: TStringField;
    RSApellido: TStringField;
    RSNacimiento: TDateTimeField;
    RSSexo: TStringField;
    RSidNacionalidad: TStringField;
    RSNumeroSS: TStringField;
    RSSueldoMes: TBCDField;
    RSInicio: TDateTimeField;
    RSEmpleadoRoll: TStringField;
    RSidOcupacion: TStringField;
    RSHorario: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
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
    cxGrid1DBTableView1SalidaVac: TcxGridDBColumn;
    cxGrid1DBTableView1EntradaVac: TcxGridDBColumn;
    cxGrid1DBTableView1Horario: TcxGridDBColumn;
    SaveDlg: TSaveDialog;
    RSInicioVacs: TDateTimeField;
    RSFinVacs: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure RSCalcFields(DataSet: TDataSet);
  private
    procedure GenerarArchivoDGT3(const fname: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DGT3SIRLA: TDGT3SIRLA;

implementation

uses Udata;

{$R *.dfm}

procedure TDGT3SIRLA.FormCreate(Sender: TObject);
begin
  inherited;
  sePeriodo.Value := YearOf(Date());
end;

procedure TDGT3SIRLA.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
   Close();
   //Parameters[1].Value := sePeriodo.Value;
   Open();
  end;
end;

procedure TDGT3SIRLA.cxButton4Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TDGT3SIRLA.cxButton2Click(Sender: TObject);
begin
  inherited;
  SaveDlg.DefaultExt := 'xls';
  SaveDlg.FileName := 'DGT3.xls';
  if SaveDlg.Execute() then
     ExportGrid4ToExcel(SaveDlg.FileName, cxGrid1);
end;

procedure TDGT3SIRLA.cxButton3Click(Sender: TObject);
begin
  inherited;
  SaveDlg.DefaultExt := 'txt';
  SaveDlg.FileName := 'DGT3.txt';
  if SaveDlg.Execute() then
     GenerarArchivoDGT3(SaveDlg.FileName);
end;

procedure TDGT3SIRLA.GenerarArchivoDGT3(const fname: string);
var
  bm: string;
  str: TStringList;
  linea: string;
  rnl: string;
begin
  rnl := dm.GetDefaultStr('REG.NAC.LABORAL');
  if rnl = '' then
    raise Exception.Create('No ha configurado el parametro Numero del Registo Nacional Laboral');

  with rs do begin
    if not Active then
      Exit;

    DisableControls();
    str := TStringList.Create();
    First();
    try
      while not Eof do begin
        Linea := rnl + '|' +
                 RSTipoDocumento.Value  + '|' +
                 RSNumeroIdent.Value + '|' +
                 RSNombre.Value + '|' +
                 RSApellido.Value + '|' +
                 FormatDateTime('dd-mm-yyyy',RSNacimiento.Value) + '|' +
                 RSSexo.Value + '|' +
                 RSIdNacionalidad.Value + '|' +
                 RSNumeroSS.Value + '|' +
                 RSSueldoMes.Asstring + '|' +
                 FormatDateTime('dd-mm-yyyy',RSInicio.Value) + '|' +
                 RSEmpleadoRoll.Value + '|' +
                 RSIdOcupacion.Value + '|' +
                 FormatDateTime('dd-mm-yyyy',RSInicioVacs.Value) + '|' +
                 FormatDateTime('dd-mm-yyyy',RSFinVacs.Value) + '|' +
                 RSHorario.Value;
        str.Add(Linea);
        Next();
      end;
      if str.Count > 0 then
        str.SaveToFile(fname);
    finally
      BookMark := bm;
      EnableControls();
      str.Free();
    end;
  end;
end;

procedure TDGT3SIRLA.RSCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsInicioVacs.Value := EncodeDateTime(sePeriodo.Value, MonthOf(rsInicio.Value), DayOf(rsInicio.Value),0,0,0,0);
  rsFinVacs.Value := IncDay(rsInicioVacs.Value,15);
end;

end.
