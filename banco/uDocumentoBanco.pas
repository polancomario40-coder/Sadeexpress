unit uDocumentoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassMD, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxButtonEdit, cxCheckBox, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxContainer,
  cxTextEdit, StdCtrls, ADODB, ImgList, ActnList, Wwdatsrc, cxButtons,
  Gradient, dxCntner, kbmMemTable, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TDocumentoBanco = class(TMantClassMD)
    RSDetidDocumento: TIntegerField;
    RSDetLineaNum: TAutoIncField;
    RSDetidConcepto: TIntegerField;
    RSDetDebCre: TWordField;
    RSDetValor: TBCDField;
    RSDetidCuenta: TStringField;
    RSDetAutomatica: TBooleanField;
    RSDetidAuxiliar: TStringField;
    RSDetGUIDDocumento: TGuidField;
    RSDetIdDocumentosDtl: TGuidField;
    RSidDocumento: TAutoIncField;
    RSidTrans: TIntegerField;
    RSFecha: TDateTimeField;
    RSidCuentaBanco: TIntegerField;
    RSStatus: TStringField;
    RSFechaStatus: TDateTimeField;
    RSTipoDocOrigen: TStringField;
    RSDocOrigen: TIntegerField;
    RSReferencia: TStringField;
    RSValor: TBCDField;
    RSDebCre: TWordField;
    RSConcepto: TStringField;
    RSGUIDDocumento: TGuidField;
    RSCompFiscal: TStringField;
    RSidMoneda: TIntegerField;
    RSTasa: TFloatField;
    RSContabilizar: TBooleanField;
    Label1: TLabel;
    edId: TcxDBTextEdit;
    Label2: TLabel;
    deFecha: TcxDBDateEdit;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    edRef: TcxDBTextEdit;
    Label4: TLabel;
    luCta: TcxDBLookupComboBox;
    Label3: TLabel;
    Label5: TLabel;
    ceValor: TcxDBCurrencyEdit;
    Label10: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label9: TLabel;
    edConcepto: TcxDBTextEdit;
    Label6: TLabel;
    grConceptos: TcxGrid;
    tvDetalle: TcxGridDBTableView;
    tvDetalleidCuenta: TcxGridDBColumn;
    tvDetalleDescripcion: TcxGridDBColumn;
    tvDetalleDebito: TcxGridDBColumn;
    tvDetalleCredito: TcxGridDBColumn;
    tvDetalleDBColumn1: TcxGridDBColumn;
    tvDetalleDBColumn2: TcxGridDBColumn;
    grConceptosLevel1: TcxGridLevel;
    cbContablizar: TcxDBCheckBox;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    rsbuscarPrima: TADODataSet;
    rsbuscarPrimaCuenta: TStringField;
    rsbuscarPrimaDescripcion: TStringField;
    rsbuscarPrimaDebito: TBCDField;
    rsbuscarPrimaCredito: TBCDField;
    rsConceptos: TADODataSet;
    rsConceptosidConcepto: TIntegerField;
    rsConceptosDescripcion: TStringField;
    rsConceptosDebCre: TWordField;
    rsConceptosidCuenta: TStringField;
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransDebCre: TWordField;
    rsTipoTransAbrev: TStringField;
    rsTipoTransContador: TStringField;
    rsTipoTransidCuenta: TStringField;
    dsBcos: TDataSource;
    rsCat: TADODataSet;
    dscat: TDataSource;
    rsCatidCuenta: TStringField;
    rsCatDescripcion: TStringField;
    rsCatOrigen: TStringField;
    rsCatNivel: TSmallintField;
    rsCatCtadescargue: TStringField;
    rsCatFechaCreacion: TDateTimeField;
    rsCatDetalle: TBooleanField;
    rsCatTipoNivel: TStringField;
    rsCatCtaVieja: TStringField;
    rsCatCtaCierre: TStringField;
    rsCatStatus: TStringField;
    rsCatFechaStatus: TDateTimeField;
    rsCatSoloAuxiliares: TBooleanField;
    rsCatuidCuenta: TGuidField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dsTipos: TDataSource;
    RSDetDebito: TBCDField;
    RSDetCredito: TBCDField;
    mPrimas: TkbmMemTable;
    mPrimasIdCuenta: TStringField;
    mPrimasDescripcion: TStringField;
    mPrimasDebCre: TWordField;
    mPrimasValor: TCurrencyField;
    mPrimasDebito: TCurrencyField;
    mPrimasCredito: TCurrencyField;
    mPrimasAutomatica: TBooleanField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ReciboRPT: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppDBText17: TppDBText;
    ppLabel34: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    plRptRecibo: TppDBPipeline;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel3: TppLabel;
    ppDBText11: TppDBText;
    ppLabel5: TppLabel;
    ppDBText12: TppDBText;
    ppLabel8: TppLabel;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppDBText14: TppDBText;
    rsRPTDocumentos: TADODataSet;
    IntegerField1: TIntegerField;
    AutoIncField1: TAutoIncField;
    IntegerField2: TIntegerField;
    WordField1: TWordField;
    BCDField1: TBCDField;
    StringField1: TStringField;
    BooleanField1: TBooleanField;
    StringField2: TStringField;
    GuidField1: TGuidField;
    GuidField2: TGuidField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    rsRPTDocumentosidTrans: TIntegerField;
    rsRPTDocumentosFecha: TDateTimeField;
    rsRPTDocumentosidCuentaBanco: TIntegerField;
    rsRPTDocumentosStatus: TStringField;
    rsRPTDocumentosFechaStatus: TDateTimeField;
    rsRPTDocumentosTipoDocOrigen: TStringField;
    rsRPTDocumentosDocOrigen: TIntegerField;
    rsRPTDocumentosReferencia: TStringField;
    rsRPTDocumentosConcepto: TStringField;
    rsRPTDocumentosCompFiscal: TStringField;
    rsRPTDocumentosidMoneda: TIntegerField;
    rsRPTDocumentosTasa: TFloatField;
    rsRPTDocumentosContabilizar: TBooleanField;
    rsRPTDocumentosidDocumento_1: TIntegerField;
    rsRPTDocumentosDebCre_1: TWordField;
    rsRPTDocumentosValor_1: TBCDField;
    rsRPTDocumentosGUIDDocumento_1: TGuidField;
    dsRPT: TwwDataSource;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    rsRPTDocumentosdescripcion: TStringField;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppShape2: TppShape;
    rsRPTDocumentosBanco: TStringField;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    RSusuario: TStringField;
    rsRPTDocumentosusuario: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSidCuentaBancoValidate(Sender: TField);
    procedure RSValorValidate(Sender: TField);
    procedure RSTasaValidate(Sender: TField);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure RSidTransValidate(Sender: TField);
    procedure RSDetidCuentaValidate(Sender: TField);
    procedure tvDetalleidCuentaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RSDetDebitoValidate(Sender: TField);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetBeforeEdit(DataSet: TDataSet);
    procedure tvDetalleStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure RSContabilizarValidate(Sender: TField);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure RSFechaValidate(Sender: TField);
    procedure btImprimirClick(Sender: TObject);
  private
    FLoading: Boolean;
    procedure TotalizarDocumento(out tdb, tcr: Currency);
    procedure CodificarDocumento;
    procedure IncluirCtaPrima;
    procedure LimpiarAutomaticas;
    { Private declarations }

  protected
    function Localizar(const id: Variant): Boolean; override;
    procedure doBorrar; override;
  public
    { Public declarations }
    procedure Guardar; override;
  end;

var
  DocumentoBanco: TDocumentoBanco;

implementation

uses Udata, uFullTextSearch, UUtiles, uMantClass, uBusquedaRangoDX, uformx;

{$R *.dfm}

procedure TDocumentoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  CampodeCierre := 'Fecha';
  Modulo := 'Banco';
  FLoading := False;
  rsBancos.Open();
  rsCat.Open();
  rsTipoTrans.Open();
  MasterKeyField := 'GUIDDocumento';
  DetailKeyField := 'GUIDDocumento';
  TFBusqueda := TBusquedaRangoDX;
  BusqField := 'GuidDocumento';
  OcultarC1 := True;
  spName := 'bcoDocumentoFind';
end;

procedure TDocumentoBanco.Guardar;
var
  TotalDB,TotalCR: Currency;
begin
  if (RSFecha.Value <= dm.Cierre(Modulo)) then
    raise exception.create('La fecha de esta transaccion ha sido cerrada');

  TotalizarDocumento(TotalDB,TotalCR);

  if TotalDB <> TotalCR then begin
    if dm.PermitirDescuadre then begin
      if MessageDlg('Existe un descuadre en la codificacion, desea guardar el documento',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        Exit;
    end
    else
      raise Exception.Create('Existe un descuadre en la codificacion, no puede guardar el documento');
  end;

  inherited Guardar();
end;

function TDocumentoBanco.Localizar(const id: Variant): Boolean;
begin
  AbrirMDDataSet(id);
  Result := not rs.Eof;
end;

procedure TDocumentoBanco.TotalizarDocumento(out tdb, tcr: Currency);
var
  bm: string;
begin
  tcr := 0;
  tdb := 0;
  with rsDet do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
        tdb := tdb + rsDetDebito.AsCurrency;
        tcr := tcr + rsDetCredito.AsCurrency;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
end;


procedure TDocumentoBanco.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSGUIDDocumento.AsGuid := dm.NewGuid();
  RSFecha.Value := dm.DBFecha();
  RSStatus.Value := 'A';
  RSFechaStatus.Value := rsFecha.Value;
  RSidTrans.Value := rsTipoTransidTrans.Value;
  RSContabilizar.Value := True;
  rsTasa.Value := 1;
  RSUsuario.Value := dm.UsuarioActual;
end;

procedure TDocumentoBanco.RSidCuentaBancoValidate(Sender: TField);
begin
  inherited;
  if rsBancos.Locate('idCuentaBanco',RSidCuentaBanco.Value,[]) then begin
    RSidMoneda.Value := rsBancosIdMoneda.Value;
    rsTasa.Value := dm.TasaActual(rsIdMoneda.Value);
  end;
end;

procedure TDocumentoBanco.CodificarDocumento;
var
  bm: string;
  idCta: string;
begin
  with rsDet do begin

    if not Active then
      Exit;

    if not RSContabilizar.AsBoolean then
      Exit;

    bm := BookMark;
    DisableControls();
    FLoading := True;
    try

      LimpiarAutomaticas();

      if RSValor.AsCurrency > 0 then begin
        rsBancos.Locate('idCuentaBanco',RSidCuentaBanco.AsInteger,[]);
        idCta := rsBancosidCuentaMayor.Asstring;

        Append();
        //rsDetAutomatica.AsBoolean := True;
        rsDetidCuenta.AsString := idCta;

        if rsDebCre.AsInteger = 1 then
          rsDetDebito.AsCurrency := rsValor.AsCurrency
        else
          rsDetCredito.AsCurrency := RSValor.Ascurrency;

        //rsDetDebCre.AsInteger := rsTipoTransDebcre.AsInteger;
        rsDetValor.AsCurrency := RSValor.AsCurrency;
        Post();

        // para poner la conctrapartida segun la cuenta en el tipo de transaccion
        if (rsTipoTrans.Locate('idTrans',rsidTrans.Value,[])) and (rstipotransidcuenta.AsString <> '') then begin
          Append();
         // rsDetAutomatica.AsBoolean := True;
          rsDetidCuenta.AsString := rstipotransidcuenta.AsString;

          if rsDebCre.AsInteger = 1 then begin
            rsDetCredito.AsCurrency := RSValor.Ascurrency;
            rsDetDebCre.AsInteger := 2;
          end else begin
            rsDetDebito.AsCurrency := rsValor.AsCurrency;
            rsDetDebCre.AsInteger := 1
          end;

          rsDetValor.AsCurrency := RSValor.AsCurrency;
          Post();
        end;

        if RsIdMoneda.AsInteger <> dm.MonedaLegal() then
          IncluirCtaPrima();
      end;
    finally
      BookMark := bm;
      EnableControls();
      FLoading := False;
    end;
  end;
end;

procedure TDocumentoBanco.IncluirCtaPrima;
var
  debcre: Integer;
  Valor: Currency;
begin
  rsDet.First();
  mPrimas.Close();
  mPrimas.Open();

  while not RSDet.Eof do begin
    with rsBuscarPrima do begin
      Close();
      Parameters[1].Value := rsDetIdCuenta.AsString;
      Parameters[2].Value := rsidMoneda.AsInteger;
      Parameters[3].Value := rsDetDebito.AsCurrency;
      Parameters[4].Value := rsDetCredito.AsCurrency;
      Parameters[5].Value := RsTasa.AsFloat;
      Open();

      if not rsBuscarPrima.Eof then begin
        if rsBuscarPrimaDebito.AsCurrency > 0 then begin
          debcre := 1;
          Valor := rsBuscarPrimaDebito.asCurrency;
        end
        else begin
          debcre := 2;
          Valor := rsBuscarPrimaCredito.asCurrency;
        end;
        mPrimas.InsertRecord([rsBuscarPrimaCuenta.AsString, rsBuscarPrimaDescripcion.AsString,
                              debcre, Valor, rsBuscarPrimaDebito.asCurrency, rsBuscarPrimaCredito.AsCurrency,True]);
      end;
    end;
    rsDet.Next();
  end;

  with mPrimas do begin
    First();
    while not Eof do begin
      rsDet.Append();
      rsDetidCuenta.Value := mPrimasIdCuenta.Value;
      rsDetDebito.Value := mPrimasDebito.Value;
      rsDetCredito.Value := mPrimasCredito.Value;
      //RSDetAutomatica.Value := True;
      rsDet.Post();

      mPrimas.Next();
    end;
  end;
end;

procedure TDocumentoBanco.LimpiarAutomaticas;
begin
  with rsDet do begin
    First();
    while not Eof do begin
      if rsDetAutomatica.asboolean then
        //Delete()
      else
        Next();
    end;
  end;
end;

procedure TDocumentoBanco.RSValorValidate(Sender: TField);
begin
  inherited;
  if not FLoading then
    CodificarDocumento();
end;

procedure TDocumentoBanco.RSTasaValidate(Sender: TField);
begin
  inherited;
  if not FLoading then
    CodificarDocumento();
end;

procedure TDocumentoBanco.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not FLoading then
    //CodificarDocumento();
end;

procedure TDocumentoBanco.RSidTransValidate(Sender: TField);
begin
  inherited;
  if FLoading then
    Exit;

  if rsTipoTrans.Locate('idTrans',rsIdTrans.Value,[]) then
    RSDebCre.Value := rsTipoTransDebCre.Value;

  CodificarDocumento();
end;

procedure TDocumentoBanco.RSDetidCuentaValidate(Sender: TField);
begin
  inherited;
  if Floading then
    Exit;

  if not rsCat.Locate('idCuenta', rsDetIdCuenta.AsString,[]) then
      raise Exception.Create('Esta cuenta no existe o no es una cuenta de detalle');
end;

procedure TDocumentoBanco.tvDetalleidCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idCta: string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    //if rsDetAutomatica.AsBoolean = False then begin
      idCta := TFullTextSearch.Buscar('idCuenta',False,'cgBuscarCtaDetalle');
      if idCta <> '' then begin
        if not (rsDet.State in dsEditModes) then
          rsDet.Edit();

        rsDetIdCuenta.Asstring := idCta;
        tvDetalle.Columns[3].Focused := True;
     // end;
    end;
  end;
end;

procedure TDocumentoBanco.RSDetDebitoValidate(Sender: TField);
begin
  inherited;
  if rsDetDebito.Value > 0 then begin
    rsDetDebCre.Value := 1;
    rsDetValor.Value := rsDetDebito.Value;
  end
  else begin
    rsDetDebCre.Value := 2;
    rsDetValor.Value := rsDetCredito.Value;
  end;
end;

procedure TDocumentoBanco.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetIdDocumentosDtl.asGuid := dm.NewGuid();
end;

procedure TDocumentoBanco.RSDetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //if not FLoading then begin
   // if rsDetAutomatica.AsBoolean then
  //    raise Exception.Create('Esta linea no puede ser editada por el usuario');
 // end;
end;

procedure TDocumentoBanco.tvDetalleStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[5] = True then
    AStyle := cxStyle1
  else
    AStyle := nil;
end;

procedure TDocumentoBanco.RSContabilizarValidate(Sender: TField);
begin
  inherited;
  if FLoading then
    Exit;
  if rsContabilizar.Value then
    CodificarDocumento()
  else begin
    with rsDet do begin
      FLoading := True;
      try
        First();
        while not Eof do
          Delete();
      finally
        FLoading := False;
      end;
    end;
  end;

end;

procedure TDocumentoBanco.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsTipoTrans.Locate('idTrans',rsidTrans.Value,[]) then begin
    if rsTipoTransContador.Asstring <> '' then begin
      if rsReferencia.AsString = '' then begin
        rsReferencia.Value := dm.GetNextCounterStr(rsTipoTransContador.Asstring);
      end;
    end;
  end;
end;

procedure TDocumentoBanco.RSFechaValidate(Sender: TField);
var
  f: TDateTime;
begin
  inherited;
  f := dm.Cierre(Modulo);
  if rsFecha.Value < f then
    raise Exception.Create('No puede registrar fechas anteriores al cierre: ' + FormatDateTime('dd/mm/yyyy',f));
end;

procedure TDocumentoBanco.doBorrar;
begin
  FLoading := True;
  try
    inherited doBorrar();
  finally
    FLoading := False;
  end;
end;

procedure TDocumentoBanco.btImprimirClick(Sender: TObject);
begin
  inherited;

    rsRPTDocumentos.Close;
    rsRPTDocumentos.Parameters[1].Value := rsGuiddocumento.Value;
    rsRPTDocumentos.Open;
    ReciboRPT.Print;

end;

end.
