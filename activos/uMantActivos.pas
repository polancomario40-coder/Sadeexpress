unit uMantActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, ActnList, dxCntner, DB, Wwdatsrc, Gradient, ADODB,
  StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxSpinEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, ImgList,
  cxLookAndFeelPainters, cxButtons, dateUtils, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, kbmMemTable, cxButtonEdit, cxPC, cxLabel,
  uMantClassRS;

type
  TMantActivos = class(TMantClassRS)
    rsActivos: TADODataSet;
    rsActivosidActivo: TAutoIncField;
    rsActivosDescripcion: TStringField;
    rsActivosFechaAdq: TDateTimeField;
    rsActivosDocumentoAdq: TStringField;
    rsActivosFechaActivacion: TDateTimeField;
    rsActivosVidaUtil: TBCDField;
    rsActivosidCategoria: TIntegerField;
    rsActivosidCuentaActivo: TStringField;
    rsActivosFechaStatus: TDateTimeField;
    rsActivosReferencia: TStringField;
    rsActivosNumeroSerie: TStringField;
    rsActivosCantidad: TBCDField;
    rsActivosidUbicacion: TIntegerField;
    rsCats: TADODataSet;
    rsCatsidCategoria: TAutoIncField;
    rsCatsCategoria: TStringField;
    dsCat: TwwDataSource;
    rsUbics: TADODataSet;
    rsUbicsidUbicacion: TAutoIncField;
    rsUbicsidUbicMadre: TIntegerField;
    rsUbicsDescripcion: TStringField;
    rsActivosStatus: TStringField;
    dsDistrib: TwwDataSource;
    cBorrarDistrib: TADOCommand;
    cInsDistrib: TADOCommand;
    rsDistrib: TADODataSet;
    rsDistribidCuenta: TStringField;
    rsDistribDescripcion: TStringField;
    rsDistribPorcDepr: TBCDField;
    rsAdiciones: TADODataSet;
    dsAdd: TDataSource;
    rsAdicionesidAdicion: TIntegerField;
    rsAdicionesDescripcion: TStringField;
    rsAdicionesValor: TBCDField;
    rsAdicionesVidaUtil: TBCDField;
    rsAdicionesReferencia: TStringField;
    rsAdicionesFechaActivacion: TDateTimeField;
    rsActivosAsignadoA: TStringField;
    rsActivosObservaciones: TStringField;
    rsActivosValorAdq: TBCDField;
    cGenAdd: TADOCommand;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    edIdActivo: TcxDBTextEdit;
    mmDescr: TcxDBMemo;
    deAct: TcxDBDateEdit;
    spVida: TcxDBSpinEdit;
    luCat: TcxDBLookupComboBox;
    edCta: TcxDBButtonEdit;
    edSerie: TcxDBTextEdit;
    luUbic: TcxDBLookupComboBox;
    spCant: TcxDBSpinEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Porc: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2idAdicion: TcxGridDBColumn;
    cxGrid1DBTableView2Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView2FechaActivacion: TcxGridDBColumn;
    cxGrid1DBTableView2Valor: TcxGridDBColumn;
    cxGrid1DBTableView2VidaUtil: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    dsUbics: TwwDataSource;
    mDistrib: TkbmMemTable;
    mDistribidCuenta: TStringField;
    mDistribDescripcion: TStringField;
    mDistribPorcDepr: TFloatField;
    mDistribLineNum: TAutoIncField;
    cxTabSheet3: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    Label3: TLabel;
    deAdq: TcxDBDateEdit;
    Label14: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label9: TLabel;
    edRef: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label15: TLabel;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label17: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label18: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label19: TLabel;
    cxDBMemo2: TcxDBMemo;
    rsClases: TADODataSet;
    rsActivosValorResidual: TBCDField;
    rsActivosidActivoClase: TStringField;
    rsActivosTiempoGarantia: TIntegerField;
    rsActivosProveedor: TStringField;
    rsActivosProveedorGarantia: TStringField;
    rsActivosCondicionGarantia: TStringField;
    rsClasesidCategoria: TIntegerField;
    rsClasesidActivoClase: TStringField;
    rsClasesActivoClase: TStringField;
    cxLabel1: TcxLabel;
    dsClases: TDataSource;
    cxTabSheet4: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    rsTransxActivo: TADODataSet;
    rsTransxActivoMejora: TStringField;
    rsTransxActivoFecha: TDateTimeField;
    rsTransxActivoValor: TBCDField;
    dsTrans: TDataSource;
    cxGrid2DBTableView1Mejora: TcxGridDBColumn;
    cxGrid2DBTableView1Fecha: TcxGridDBColumn;
    cxGrid2DBTableView1Valor: TcxGridDBColumn;
    aEtiqueta: TAction;
    Label20: TLabel;
    edST: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    rsActivosuidActivo: TGuidField;
    cxButton9: TcxButton;
    cxButton7: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure rsActivosNewRecord(DataSet: TDataSet);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure mDistribidCuentaValidate(Sender: TField);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure rsActivosidCuentaActivoValidate(Sender: TField);
    procedure rsActivosAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edCtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rsCatsAfterScroll(DataSet: TDataSet);
    procedure rsActivosidCategoriaValidate(Sender: TField);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure aEtiquetaExecute(Sender: TObject);
  private
    procedure BorrarDistrib;
    procedure CargarDistrib;
    procedure GuardarDistrib;
    procedure ValidarTotalDistr;
    procedure AbrirAdiciones;
    procedure GenerarAdicion;
    procedure AbrirClases;
    Procedure ImprimirEtiqueta;
    { Private declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;
    Procedure UserAutoCodigo; Override;
  public
    { Public declarations }
    procedure Nuevo; override;
  end;

var
  MantActivos: TMantActivos;

implementation

uses Udata, uBusqueda, uMantAdiciones, UUtiles, uBuscarCuentaMayor, uformx;

{$R *.dfm}

procedure TMantActivos.FormCreate(Sender: TObject);
begin
  inherited;
  FormTitle := 'Registro de Activos';
  rsActivos.Open();
  rsCats.Open();
  rsUbics.Open();
  AbrirClases();
  spName := 'afListaActivos';
  Busqfield := 'idActivo';
  TFBusqueda := TBusqueda;
  ImageidField := 'uidActivo';
end;

procedure TMantActivos.CargarDistrib;
begin
  with rsDistrib do begin
    Close();
    Parameters[1].Value := rsActivosIdActivo.AsInteger;
    Open();
  end;
  mDistrib.ReadOnly := false;
  mDistrib.Close();
  mDistrib.Open();
  mDistrib.LoadFromDataSet(rsDistrib,[mtcpoAppend]);
  mDistrib.ReadOnly := True;
end;

procedure TMantActivos.ValidarTotalDistr;
var
  bm: string;
  t: Single;
begin
  t := 0;
  with mDistrib do begin
    bm := BookMark;
    First();
    DisableControls();
    try
      while not Eof do begin
        t := t + mDistribPorcDepr.Asfloat;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
  if t <> 100.00 then
    raise Exception.Create('La distribucion no es igual a 100%');
end;
procedure TMantActivos.GuardarDistrib;
begin
  BorrarDistrib();

  with mDistrib do begin
    First();
    DisableControls();
    try
      while not Eof do begin
        cInsDistrib.Parameters[1].Value := mDistribidCuenta.Asstring;
        cInsDistrib.Parameters[2].Value := rsActivosidActivo.AsInteger;
        cInsDistrib.Parameters[3].Value := mDistribPorcDepr.Asfloat;
        cInsDistrib.Execute();
        Next();
      end;
    finally
      EnableControls();
    end;
  end;
end;

procedure TMantActivos.BorrarDistrib;
begin
  cBorrarDistrib.Parameters[1].Value := rsActivosIdActivo.AsInteger;
  cBorrarDistrib.Execute();
end;


function TMantActivos.Localizar(const id: Variant): Boolean;
begin
  with rsActivos do begin
    Close();
    Parameters[01].Value := id;
    Open();
    Result := not Eof;
  end;
  CargarDistrib();
end;

procedure TMantActivos.rsActivosNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsActivosStatus.AsString := 'A';
  rsActivosFechaStatus.Value := DateOf(Date()); // DBFecha();
  rsActivosFechaAdq.Value := DateOf(Date());
  rsActivosFechaActivacion.Value := DateOf(Date());
  rsActivosCantidad.Value := 1;
  //rsActivosValorResidual.Value := 0.01;
end;

procedure TMantActivos.cxButton7Click(Sender: TObject);
begin
  inherited;
  ModalShow(TMantAdiciones, ShowInsert, rsActivosIdActivo.AsInteger,'IdActivo', True);
  AbrirAdiciones();
end;

procedure TMantActivos.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  s: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if s <> '' then begin
      if not (mDistrib.State in dsEditModes) then
        mDistrib.Edit();

      mDistribidCuenta.Value := s;
    end;
  end;
end;

procedure TMantActivos.mDistribidCuentaValidate(Sender: TField);
var
  s: string;
begin
  inherited;
  if dm.ValidarCuenta(mDistribidCuenta.Asstring,s) then
    mDistribDescripcion.AsString := s
  else
    raise Exception.Create('Esta cuenta no existe');
end;

procedure TMantActivos.Nuevo;
begin
  inherited Nuevo();
  mDistrib.Close();
  mDistrib.Open();
  mDistrib.ReadOnly := False;
end;

procedure TMantActivos.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
end;

procedure TMantActivos.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TMantActivos.AGuardarExecute(Sender: TObject);
begin
  ValidarTotalDistr();
  inherited;
  GuardarDistrib();
  GenerarAdicion();
  mDistrib.ReadOnly := True;
end;

procedure TMantActivos.GenerarAdicion;
begin
  with cGenAdd do begin
    Parameters[1].Value := rsActivosIdActivo.AsInteger;
    Execute();
  end;
end;

procedure TMantActivos.AEditarExecute(Sender: TObject);
begin
  inherited;
  mDistrib.ReadOnly := False;
end;

procedure TMantActivos.ACancelarExecute(Sender: TObject);
begin
  inherited;
  mDistrib.ReadOnly := True;
end;

procedure TMantActivos.rsActivosidCuentaActivoValidate(Sender: TField);
var
  s: string;
begin
  inherited;
  if not dm.ValidarCuenta(rsActivosIdCuentaActivo.AsString, s) then
    raise Exception.Create('Esta cuenta no existe o no es una cuenta de detalle');
end;

procedure TMantActivos.AbrirAdiciones;
begin
  with rsAdiciones do begin
    Close();
    Parameters[1].Value := rsActivosIdActivo.AsInteger;
    Open();
  end;
end;

procedure TMantActivos.rsActivosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AbrirAdiciones();
  AbrirClases();
end;

procedure TMantActivos.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if rsAdicionesIdAdicion.AsInteger > 0 then begin
    ModalShow(TMantAdiciones, ShowFind, rsAdicionesIdAdicion.AsInteger,'IdAdicion', True);
    AbrirAdiciones();
  end;
  AHandled := True;
end;

procedure TMantActivos.cxGrid1DBTableView2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //inherited;
 { if rsAdicionesIdAdicion.AsInteger > 0 then begin
    ModalShow(TMantAdiciones, ShowFind, rsAdicionesIdAdicion.AsInteger,'IdAdicion', True);
    AbrirAdiciones();
  end;
  AHandled := True;   }
end;

procedure TMantActivos.edCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  s: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    s := BuscarCtaDetalle();
    if s <> '' then begin
      if not (rsActivos.State in dsEditModes) then
        rsActivos.Edit();

      rsActivosidCuentaActivo.Value := s;  
    end;
  end;
end;

procedure TMantActivos.AbrirClases;
begin
  with rsClases do begin
    Close();
    Parameters[1].Value := rsActivosIdCategoria.AsInteger;
    Open();
  end;
end;

procedure TMantActivos.rsCatsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AbrirClases();
end;

procedure TMantActivos.rsActivosidCategoriaValidate(Sender: TField);
begin
  inherited;
  AbrirClases();
  rsActivosIdActivoClase.Clear();
end;

procedure TMantActivos.cxTabSheet4Show(Sender: TObject);
begin
  inherited;
  with rsTransxActivo do begin
    Close();
    if rsActivosIdActivo.AsInteger > 0 then begin
      Parameters[1].Value := rsActivosIdActivo.AsInteger;
      Open();
    end;
  end;
end;

procedure TMantActivos.aEtiquetaExecute(Sender: TObject);
begin
  inherited;
  If Not rsActivos.IsEmpty Then
    ImprimirEtiqueta;
end;

procedure TMantActivos.ImprimirEtiqueta;
Var
  f: TextFile;
  Formato : tStringList;
  Cant : string;
begin
  Formato := tStringList.Create;

  if fileexists('etiquetaActivo.fmt') then
  begin
    Formato.LoadFromFile('etiquetaActivo.fmt');
  end
  else
  begin
    Formato.Add('q288');
    Formato.Add('Q156,20');
    Formato.Add('D10');
    Formato.Add('N');
    Formato.Add('ZT');
    Formato.Add('B030,010,0,1,1,2,70,N,"[CODIGO]"');
    Formato.Add('A030,085,0,2,1,1,N,"[CODIGO]"');
    Formato.Add('A030,105,0,1,1,1,N,"[UBICACION]"');
    Formato.Add('P[CANTIDAD]');
    Formato.Add('FK"*"');
  end;

  Formato.Text := StringReplace(Formato.Text,'[CODIGO]',rsActivosidActivo.AsString, [rfReplaceAll, rfIgnoreCase]);

  If rsUbics.Locate('IdUbicacion', rsActivosidUbicacion.Value, []) Then
    Formato.Text := StringReplace(Formato.Text,'[UBICACION]',rsUbicsDescripcion.AsString, [rfReplaceAll, rfIgnoreCase]);

  Cant := InputBox('Cuantas Etiquetas desea Imprimir', 'Cantidad', '1');

  Formato.Text := StringReplace(Formato.Text,'[CANTIDAD]',inttostr(savestrtoint(cant)), [rfReplaceAll, rfIgnoreCase]);
  try
    AssignFile(f,'LPT1');
    Rewrite(f);
    WriteLn(f,Formato.Text);
    System.CloseFile(f);
  except
    raise exception.Create('Error accesando el puerto LPT1, solicitar soporte');
  end;
    Formato.Free;

end;

procedure TMantActivos.UserAutoCodigo;
Var
  Resultado : Variant;
begin
  inherited;
  Resultado := dm.GetDefault('ContadorActivoF');
  If Resultado = 1 Then
    rsActivosidActivo.Value := dm.GetNextCounterInt('ActivoFijo');
end;

end.
