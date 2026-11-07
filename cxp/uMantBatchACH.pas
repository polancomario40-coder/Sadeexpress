unit uMantBatchACH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassMD, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ppCtrls, ppBands, ppStrtch, ppMemo, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppParameter;

type
  TMantBatchACH = class(TMantClassMD)
    RSidBatchACH: TGuidField;
    RSBatchACH: TStringField;
    RSFecha: TDateTimeField;
    RSStatus: TStringField;
    RSFechaStatus: TDateTimeField;
    RSUsuario: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    GridImpuestos: TcxGrid;
    tvDet: TcxGridDBTableView;
    glDet: TcxGridLevel;
    RSDetidBatchACHDet: TGuidField;
    RSDetidBatchACH: TGuidField;
    RSDetGUIDSolicitud: TGuidField;
    RSDetNumero: TIntegerField;
    RSDetSuplidor: TStringField;
    RSDetUsuario: TStringField;
    RSDetNota: TStringField;
    RSDetCuentaDestino: TStringField;
    RSDetBanco: TStringField;
    RSDetCuentaTipo: TStringField;
    RSDetTotal: TBCDField;
    RSDetDescripcion: TStringField;
    RSDetEmail: TStringField;
    tvDetNumero: TcxGridDBColumn;
    tvDetSuplidor: TcxGridDBColumn;
    tvDetNota: TcxGridDBColumn;
    tvDetCuentaDestino: TcxGridDBColumn;
    tvDetBanco: TcxGridDBColumn;
    tvDetCuentaTipo: TcxGridDBColumn;
    tvDetTotal: TcxGridDBColumn;
    tvDetDescripcion: TcxGridDBColumn;
    tvDetCuentoOrigen: TcxGridDBColumn;
    tvDetEmail: TcxGridDBColumn;
    RSDetCuentaOrigen: TStringField;
    RSDetCuentaOrigenTipo: TStringField;
    rsSol: TADODataSet;
    rsSolidSolicitud: TIntegerField;
    rsSolNumero: TIntegerField;
    rsSolFecha: TDateTimeField;
    rsSolidSuplidor: TIntegerField;
    rsSolTotal: TBCDField;
    rsSolConcepto: TStringField;
    rsSolStatus: TStringField;
    rsSolUsuario: TStringField;
    rsSolFechaRegistro: TDateTimeField;
    rsSolValidadaPor: TStringField;
    rsSolValidadaEn: TDateTimeField;
    rsSolRevisadaPor: TStringField;
    rsSolRevisadaEn: TDateTimeField;
    rsSolValidadaFinalPor: TStringField;
    rsSolValidadaFinalEn: TDateTimeField;
    rsSolNotaAdicional: TStringField;
    rsSolmostrarEncxp: TBooleanField;
    rsSolGUIDSolicitud: TGuidField;
    rsSolTasa: TBCDField;
    rsSolidMoneda: TIntegerField;
    rsSolidCuentaBanco: TIntegerField;
    rsSolTipoAbono: TStringField;
    rsSolBancoDestino: TStringField;
    rsSolCuentaDestino: TStringField;
    rsSolTipoSolicitud: TIntegerField;
    rsSolidCuentaBancoDestino: TIntegerField;
    rsSolNombre: TStringField;
    rsSolTelefono1: TStringField;
    rsSolTelefono2: TStringField;
    rsSolRNC: TStringField;
    rsSolDireccion: TStringField;
    rsSolemail: TStringField;
    rsSolCuentaTipo: TStringField;
    rsSolCuentaOrigenTipo: TStringField;
    rsSolCuentaTransfer: TStringField;
    rsSolTotalNeto: TFloatField;
    rsSolCuentaOrigen: TStringField;
    RSDescripcion: TStringField;
    cxButton1: TcxButton;
    GenArchivo: TAction;
    sd: TSaveDialog;
    plRelacionPagoACH: TppDBPipeline;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText4: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel6: TppLabel;
    rsRPT: TADODataSet;
    dsRPT: TwwDataSource;
    aProcesar: TAction;
    cProcesar: TADOCommand;
    cxButton2: TcxButton;
    rsRPTBatchACH: TStringField;
    rsRPTFecha: TDateTimeField;
    rsRPTStatus: TStringField;
    rsRPTUsuario: TStringField;
    rsRPTDescripcion: TStringField;
    rsRPTidBatchACHDet: TGuidField;
    rsRPTidBatchACH: TGuidField;
    rsRPTGUIDSolicitud: TGuidField;
    rsRPTNumero: TIntegerField;
    rsRPTSuplidor: TStringField;
    rsRPTUsuario_1: TStringField;
    rsRPTNota: TStringField;
    rsRPTCuentaDestino: TStringField;
    rsRPTBanco: TStringField;
    rsRPTCuentaTipo: TStringField;
    rsRPTTotal: TBCDField;
    rsRPTDescripcion_1: TStringField;
    rsRPTCuentaOrigen: TStringField;
    rsRPTEmail: TStringField;
    rsRPTCuentaOrigenTipo: TStringField;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    RSDetBancoOrigen: TStringField;
    rsSolBancoOrigen: TStringField;
    procedure RSDetNumeroValidate(Sender: TField);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSStatusValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure GridImpuestosEnter(Sender: TObject);
    procedure GridImpuestosExit(Sender: TObject);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure GenArchivoExecute(Sender: TObject);
    procedure aProcesarExecute(Sender: TObject);
    procedure tvDetNumeroPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure Procesar;
    { Private declarations }
  protected
    function Localizar(const id: Variant): Boolean; override;
    procedure doPrint; override;

    procedure browsebotonstate; override;
    procedure Editbotonstate; override;
    procedure Newbotonstate; override;

    procedure doBorrar; override;
    procedure doEditar; override;
    
  public
    { Public declarations }
  end;

var
  MantBatchACH: TMantBatchACH;

implementation

uses Udata, UUtiles, uBusquedaRangoDX, uMantClass, uSolDM;

{$R *.dfm}

procedure TMantBatchACH.RSDetNumeroValidate(Sender: TField);
begin
  inherited;
  with rsSol do begin
    Close();
    Parameters[1].Value := rsDetNumero.Value;
    Open();
    if Eof then
      raise Exception.Create('Esta solicitud no existe');

    if rsSolStatus.Value <> 'A' then
      raise Exception.Create('Esta solicitud no esta aprobada');

//    rsDetNumero.Value := rsSolNumero.Value;
    rsDetBancoOrigen.Value := rsSolBancoOrigen.Value;
    rsDetGuidSolicitud.Value := rsSolGuidSolicitud.Value;
    rsDetSuplidor.Value := rsSolNombre.Value;
    rsDetCuentaDestino.Value := rsSolCuentaDestino.Value;
    rsDetBanco.Value := rsSolBancoDestino.Value;
    rsDetCuentaTipo.Value := rsSolCuentaTipo.Value;
    rsDetTotal.Value := rsSolTotalNeto.AsCurrency;
    rsDetDescripcion.Value := rsSolConcepto.Value;
    rsDetCuentaOrigen.Value := rsSolCuentaOrigen.Value;
    rsDetEmail.Value := rsSolEmail.Value;
    rsDetCuentaOrigenTipo.Value := rsSolCuentaOrigenTipo.Value;
    tvDet.Columns[9].Focused := True;
  end;
end;

procedure TMantBatchACH.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetidBatchACHDet.AsGuid := dm.NewGuid();
end;

procedure TMantBatchACH.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSidBatchACH.AsGuid := dm.NewGuid();
  RSUsuario.Value := dm.UsuarioActual;
  RSFecha.Value := dm.DBFecha();
  rsStatus.Value := 'PENDIENTE';
end;

procedure TMantBatchACH.RSStatusValidate(Sender: TField);
begin
  inherited;
  rsFechaStatus.Value := dm.DBFecha();
end;

procedure TMantBatchACH.FormCreate(Sender: TObject);
begin
  inherited;
  MasterKeyField := 'IdBatchACH';
  spName := 'cxpBatchACHFind';
  BusqField := 'idBatchACH';
  OcultarC1 := True;
  TFBusqueda := TBusquedaRangoDX;
  BusqAutoFit := False;
end;

procedure TMantBatchACH.GridImpuestosEnter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if rsDet.IsEmpty then
      rsDet.Append();
  end;
end;

procedure TMantBatchACH.GridImpuestosExit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TMantBatchACH.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (rs.State = dsInsert) and (rsBatchACH.Asstring = '') then
     rsBatchACH.Value := dm.GetNextCounterStr('BATCH_ACH');
end;

function TMantBatchACH.Localizar(const id: Variant): Boolean;
begin
  AbrirMDDataSet(id);
  result := not rs.Eof;
end;

procedure TMantBatchACH.GenArchivoExecute(Sender: TObject);
var
  sLine: string;
  strs: TStringList;
//  Total: Currency;
begin
  inherited;
  if AppEstado <> appBrowse then
    Exit;

  if sd.Execute() then begin
    strs := TStringList.Create();
    with rsDet do begin
      DisableControls();
      First();
      while not Eof do begin
        sLine := format('%s;%s;%s;%s;%s;%s;%s;%s;%s',
                        [copy(Trim(RSDetCuentaDestino.Asstring),1,17),
                         Trim(RSDetBanco.Asstring),
                         RSDetCuentaTipo.Asstring,
                         Copy(Trim(RSDetSuplidor.AsString),1,22),
                         'C',
                         FormatFloat('###########0.00',RSDetTotal.AsCurrency),
                         RSDetNumero.AsString,
                         Copy(Trim(RSDetDescripcion.AsString),1,80),
                         Trim(RSDetEmail.AsString)]);
        strs.Add(sLine);
        sLine := format('%s;%s;%s;%s;%s;%s;%s;%s',
                        [copy(Trim(RSDetCuentaOrigen.Asstring),1,17),
                         Trim(RSDetBancoOrigen.Asstring),
                         RSDetCuentaOrigenTipo.Asstring,
                         Copy(Trim(dm.ConfiguracionCompania.AsString),1,22),
                         'D',
                         FormatFloat('###########0.00',RSDetTotal.AsCurrency),
                         RSDetNumero.AsString,
                         Copy(Trim(RSDetDescripcion.AsString),1,80)]);
        strs.Add(sLine);
        Next;
      end;
    end;
    if strs.Count > 0 then
      strs.SaveToFile(sd.FileName);
  end;
end;

procedure TMantBatchACH.doPrint;
begin
  inherited;
  with rsRPT do begin
    Close();
    Parameters[1].Value := rsIdBatchACH.Value;
    Open();
  end;

  Imprimir(Report);
end;

procedure TMantBatchACH.aProcesarExecute(Sender: TObject);
begin
  inherited;
  Procesar();
end;

procedure TMantBatchACH.Procesar;
var
  sdm: TSolDM;
begin
  if rsStatus.Value <> 'PENDIENTE' then
    Exit;
    
  sdm := TSolDM.Create(self);
  try
    with rsDet do begin
      First();
      while not Eof do begin
        rsSol.Close();
        rsSol.Parameters[1].Value := rsDetNumero.Value;
        rsSol.Open();
        if (rsSolTipoSolicitud.Value = 2) and (rsSolStatus.Value = 'A') then begin
          sdm.ProcesarSolicitud(rsSolIdSolicitud.AsInteger);
        end;
        Next();
      end;
    end;
    with cProcesar do begin
      Parameters[1].Value := rsIdBatchACH.Value;
      Execute();
    end;
  finally
    sdm.Free();
  end;
end;

procedure TMantBatchACH.doBorrar;
begin
  if rsStatus.Value <> 'PENDIENTE' then
    raise Exception.Create('No puede borrar un batch procesado');

  inherited doBorrar();
end;

procedure TMantBatchACH.browsebotonstate;
begin
  inherited;
  GenArchivo.Enabled := dm.Tienepermiso(pAprobar,Permisos);
end;

procedure TMantBatchACH.Editbotonstate;
begin
  inherited;
  GenArchivo.Enabled := False;
end;

procedure TMantBatchACH.Newbotonstate;
begin
  inherited;
  GenArchivo.Enabled := False;
end;

procedure TMantBatchACH.tvDetNumeroPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  id: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    id := TBusquedaRangoDX.Buscar('Numero',False,'cxpBuscarSolicitudACH',True,200);
    if id <> null then begin
      if not (rsDet.State in dsEditModes) then
        rsDet.Edit();

      rsDetNumero.Value := id;
    end;
  end;
end;

procedure TMantBatchACH.doEditar;
begin
  if rsStatus.Value <> 'PENDIENTE' then
    raise Exception.Create('Esta solicitud no puede ser editada');

  inherited doEditar();
end;

end.
