unit udmBancos;

interface

uses
  SysUtils, Classes, DB, ADODB, kbmMemTable, dateUtils, Variants;

type
  TdmBanco = class(TDataModule)
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    rsConceptos: TADODataSet;
    rsConceptosidConcepto: TIntegerField;
    rsConceptosDescripcion: TStringField;
    rsConceptosDebCre: TWordField;
    rsConceptosidCuenta: TStringField;
    rsDocumento: TADODataSet;
    rsDocumentoidDocumento: TIntegerField;
    rsDocumentoidTrans: TIntegerField;
    rsDocumentoFecha: TDateTimeField;
    rsDocumentoidCuentaBanco: TIntegerField;
    rsDocumentoStatus: TStringField;
    rsDocumentoFechaStatus: TDateTimeField;
    rsDocumentoTipoDocOrigen: TStringField;
    rsDocumentoDocOrigen: TIntegerField;
    rsDocumentoTipoTransaccion: TStringField;
    rsDocumentoDebCre: TWordField;
    rsDocumentoNombre: TStringField;
    rsDocDtl: TADODataSet;
    mDocumento: TkbmMemTable;
    mDocumentoidDocumento: TIntegerField;
    mDocumentoidTrans: TIntegerField;
    mDocumentoFecha: TDateTimeField;
    mDocumentoidCuentaBanco: TIntegerField;
    mDocumentoStatus: TStringField;
    mDocumentoFechaStatus: TDateTimeField;
    mDocumentoTipoDocOrigen: TStringField;
    mDocumentoDocOrigen: TIntegerField;
    mDocumentoTipoTransaccion: TStringField;
    mDocumentoDebCre: TWordField;
    mDocumentoNombre: TStringField;
    mDocDtl: TkbmMemTable;
    mDocDtlDebCre: TWordField;
    mDocDtlValor: TBCDField;
    mDocDtlidCuenta: TStringField;
    mDocDtlDebito: TCurrencyField;
    mDocDtlCredito: TCurrencyField;
    rsDocDtlDebCre: TWordField;
    rsDocDtlValor: TBCDField;
    rsDocDtlDebito: TBCDField;
    rsDocDtlCredito: TBCDField;
    mDocumentoValor: TCurrencyField;
    mDocumentoReferencia: TStringField;
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransDebCre: TWordField;
    cGuardarDoc: TADOCommand;
    cGuardarDocDtl: TADOCommand;
    rsDocumentoReferencia: TStringField;
    rsDocumentoValor: TBCDField;
    cBorrarDtl: TADOCommand;
    cValidarDoc: TADOCommand;
    cBorrarDoc: TADOCommand;
    mDocumentoConcepto: TStringField;
    rsDocumentoConcepto: TStringField;
    mDocDtlDescripcion: TStringField;
    rsCatalogo: TADODataSet;
    rsCatalogoidCuenta: TStringField;
    rsCatalogoDescripcion: TStringField;
    rsDocDtlidCuenta: TStringField;
    rsDocDtlAutomatica: TBooleanField;
    mDocDtlAutomatica: TBooleanField;
    mDocDtlLineaNum: TAutoIncField;
    QCierre: TADODataSet;
    QCierreDiaCierre: TDateTimeField;
    rsBalanceCta: TADODataSet;
    rsBalanceCtaBalance: TBCDField;
    spGetNextIDStr: TADOStoredProc;
    spGetNextIDStrValor: TStringField;
    rsTipoTransAbrev: TStringField;
    rsTipoTransContador: TStringField;
    rsTipoTransidCuenta: TStringField;
    mDocDtlidAuxiliar: TStringField;
    rsDocDtlidAuxiliar: TStringField;
    rsDocumentoGUIDDocumento: TGuidField;
    mDocumentoGUIDDocumento: TGuidField;
    mDocumentoCompFiscal: TStringField;
    rsDocumentoCompFiscal: TStringField;
    rsbuscarPrima: TADODataSet;
    rsbuscarPrimaCuenta: TStringField;
    rsbuscarPrimaDescripcion: TStringField;
    rsbuscarPrimaDebito: TBCDField;
    rsbuscarPrimaCredito: TBCDField;
    mDocumentoidMoneda: TIntegerField;
    mDocumentoTasa: TFloatField;
    mPrimas: TkbmMemTable;
    mPrimasIdCuenta: TStringField;
    mPrimasDescripcion: TStringField;
    mPrimasDebCre: TWordField;
    mPrimasDebito: TCurrencyField;
    mPrimasCredito: TCurrencyField;
    mPrimasAutomatica: TBooleanField;
    mPrimasValor: TCurrencyField;
    rsDocumentoidMoneda: TIntegerField;
    rsDocumentoTasa: TFloatField;
    mDocumentoContabilizar: TBooleanField;
    rsDocumentoContabilizar: TBooleanField;
    procedure mDocumentoidTransValidate(Sender: TField);
    procedure mDocDtlDebitoValidate(Sender: TField);
    procedure mDocDtlCreditoValidate(Sender: TField);
    procedure mDocumentoValorValidate(Sender: TField);
    procedure mDocumentoReferenciaValidate(Sender: TField);
    function ValidarDocumento: Integer;
    procedure mDocumentoFechaValidate(Sender: TField);
    procedure mDocDtlidCuentaValidate(Sender: TField);
    procedure mDocDtlBeforeEdit(DataSet: TDataSet);
    procedure mDocumentoidMonedaValidate(Sender: TField);
    procedure mDocumentoidCuentaBancoValidate(Sender: TField);
    procedure mDocDtlAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mDocumentoContabilizarValidate(Sender: TField);
  private
    Floading: Boolean;
    FUltimaFecha: TDateTime;
    FFechaDesde: TDateTIme;
    FFechaHasta: TDateTIme;
    MONEDA_LEGAL: Integer;
    procedure AbrirDetalle(const idDoc:Variant; idTr: Integer);
    procedure CodificarDocumento;
    procedure LimpiarAutomaticas;
    procedure IncluirCtaPrima;
    function GetEditarCXP: Boolean;

    { Private declarations }
  public
    { Public declarations }
    procedure NuevoDocumento(const idTr: Integer);
    procedure GuardarDocumento;
    procedure AbrirDocumento(const idDoc: Variant);

    procedure BorrarDocumento(const idDoc: Variant);
    property UltimaFecha: TDateTime read FUltimaFecha write FUltimaFecha;
    property FechaDesde: TDateTIme read FFechaDesde write FFechaDesde;
    property FechaHasta: TDateTIme read FFechaHasta write FFechaHasta;

    function BalanceCuenta(const idCta: Integer;
      const fec: TDateTime): Currency;

    function GetNextCounterStr(Contador: String): String;
    procedure Inicializar;

    procedure TotalizarDocumento(out tdb: Currency; out tcr: Currency);

    property EditarCXP: Boolean read GetEditarCXP;
  end;

var
  dmBanco: TdmBanco;

implementation

uses Udata, UUtiles;

{$R *.dfm}

{ TdmBanco }


function TdmBanco.GetNextCounterStr(Contador: String): String;
begin
  spGetNextIdStr.Parameters[1].Value := Contador;
  spGetNextIDStr.Open;
  Result := Trim(spGetNextIDStrValor.Value);
  spGetNextIDStr.Close;
end;

procedure TdmBanco.NuevoDocumento(const idTr: Integer);
begin
  if not rsBancos.Active then
    rsBancos.Open();

  mDocumento.Close();
  mDocumento.Open();
  mDocumento.Append();
  mDocumentoGUIDDocumento.AsGuid := dm.NewGUID();

  mDocumentoFecha.AsDateTime := DateOf(Date());
  mDocumentoStatus.AsString := '$';
  mDocumentoFechaStatus.AsDateTime := UltimaFecha;
  mDocumentoIdTrans.AsInteger := idTr;
  mDocumentoIdCuentaBanco.AsInteger := 2;
  FLoading := True;
  try
    mDocumentoContabilizar.Value := True;
    AbrirDetalle(NULL, idTr);
  finally
    Floading := False;
  end;
end;

procedure TdmBanco.AbrirDetalle(const idDoc: Variant; idTr: Integer);
begin
  with rsDocDtl do begin
    Close();
    parameters[01].Value := idDoc;
    Parameters[02].Value := idTr;
    Open();
  end;

  with mDocDtl do begin
    Close();
    Open();
    //if not rsDocDtl.Eof then
      LoadFromDataSet(rsDocDtl,[mtcpoAppend]);
  end;
end;

procedure TdmBanco.mDocumentoidTransValidate(Sender: TField);
begin
  if not FLoading then begin
    with rsTipoTrans do begin
      Close();
      Parameters[0].Value := mDocumentoIdTrans.AsInteger;
      Open();
      if Eof then
        raise Exception.Create('Error: Esta transaccion no esta definida');
    end;

    mDocumentoTipoTransaccion.Asstring := rsTipoTransDescripcion.Asstring;
    mDocumentoDebCre.AsInteger := rsTipoTransDebCre.AsInteger;
  end;
end;

procedure TdmBanco.Inicializar;
begin                 
  rsTipoTrans.Open();
  FLoading := False;
  UltimaFecha := DateOf(Date());
  rsCatalogo.Open();
  FechaDesde := StartOfTheMonth(UltimaFecha);
  FechaHasta := DateOf(EndOfTheMonth(UltimaFecha));
  MONEDA_LEGAL := dm.MonedaLegal();
end;

procedure TdmBanco.GuardarDocumento;
begin

  if (not EditarCXP) and (mDocumentoDocOrigen.AsInteger > 0) then
    raise Exception.Create('Este documento se registro en el sistema de cxp y no puede ser modificado');

  if mDocumentoIdCuentaBanco.asInteger = 0 then
    raise Exception.Create('Debe seleccionar una cuenta de banco para esto documento');

  rsTipoTrans.Locate('idTrans',mDocumentoIdTrans.AsInteger,[]);

  if rsTipoTransContador.Asstring <> '' then begin
    if mDocumentoReferencia.AsString = '' then begin
      mDocumentoReferencia.Value := GetNextCounterStr(rsTipoTransContador.Asstring);
    end;
  end;

  with cGuardarDoc do begin
    Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
    Parameters[02].Value := mDocumentoidTrans.AsInteger;
    Parameters[03].Value := DateOf(mDocumentoFecha.AsDateTime);
    Parameters[04].Value := mDocumentoidCuentaBanco.AsInteger;
    Parameters[05].Value := mDocumentoReferencia.AsString;
    Parameters[06].Value := mDocumentoValor.AsCurrency;
    Parameters[07].Value := mDocumentoStatus.Asstring;
    Parameters[08].Value := DateOf(mDocumentoFechaStatus.AsDateTime);
    Parameters[09].Value := mDocumentoTipoDocOrigen.Asstring;
    Parameters[10].Value := mDocumentoDocOrigen.AsInteger;
    Parameters[11].Value := mDocumentoDebCre.AsInteger;
    Parameters[12].Value := mDocumentoConcepto.Asstring;
    Parameters[14].Value := mDocumentoGUIDDocumento.Value;
    Parameters[15].Value := mDocumentoCompFiscal.Value;
    Parameters[16].Value := mDocumentoidMoneda.Value;
    Parameters[17].Value := mDocumentoTasa.Value;
    Parameters[18].Value := mDocumentoContabilizar.Value;
    Execute();
    if (Parameters[00].Value = NULL) or (Parameters[00].Value > 0) then
      raise Exception.Create('Error guardando documento');

    if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

    mDocumentoIdDocumento.AsInteger := Parameters[13].Value;
  end;

  with cBorrarDtl do begin
    Parameters[01].Value := mDocumentoGUIDDocumento.Value;
    Execute();
  end;
  if mDocumentoContabilizar.AsBoolean then begin
    mDocDtl.First();
    while not mDocDtl.Eof do begin
      if mDocDtlValor.AsCurrency <> 0 then begin
        cGuardarDocDtl.Parameters[01].Value := mDocumentoGUIDDocumento.Value;
        //cGuardarDocDtl.Parameters[02].Value := mDocDtlIdConcepto.AsInteger;
        cGuardarDocDtl.Parameters[02].Value := mDocDtlDebCre.AsInteger;
        cGuardarDocDtl.Parameters[03].Value := mDocDtlValor.AsCurrency;
        cGuardarDocDtl.Parameters[04].Value := mDocDtlidCuenta.Asstring;

        if mDocDtlIdAuxiliar.AsString = '' then
          cGuardarDocDtl.Parameters[05].Value := NULL
        else
          cGuardarDocDtl.Parameters[05].Value := mDocDtlIdAuxiliar.Asstring;

        cGuardarDocDtl.Parameters[06].Value := mDocDtlAutomatica.AsBoolean;
        //cGuardarDocDtl.Parameters[07].Value := mDocumentoGUIDDocumento.Value;
        cGuardarDocDtl.Execute();
      end;
      mDocDtl.Next();
    end;
  end;
end;

procedure TdmBanco.mDocDtlDebitoValidate(Sender: TField);
begin
  if not FLoading then begin
    if mDocDtlDebito.AsCurrency <> 0 then begin
      if mDocDtlCredito.AsCurrency <> 0 then
        raise Exception.Create('No puede registrar un debito y un credito en la misma linea');

      mDocDtlValor.AsCurrency := mDocDtlDebito.AsCurrency;
      mDocDtlDebCre.Value := 1;
    end;
  end;
end;

procedure TdmBanco.mDocDtlCreditoValidate(Sender: TField);
begin
  if not FLoading then begin
    if mDocDtlCredito.AsCurrency <> 0 then begin
      if mDocDtlDebito.AsCurrency <> 0 then
        raise Exception.Create('No puede registrar un debito y un credito en la misma linea');

      mDocDtlValor.AsCurrency := mDocDtlCredito.AsCurrency;
      mDocDtlDebCre.Value := 2;
    end;
  end;
end;

procedure TdmBanco.mDocumentoValorValidate(Sender: TField);
begin
  if not FLoading then begin
    CodificarDocumento();
  end;
end;

procedure TdmBanco.LimpiarAutomaticas;
begin
  with mDocDtl do begin
    First();
    while not Eof do begin
      if mDocDtlAutomatica.asboolean then
        Delete()
      else
        Next();
    end;
  end;
end;

procedure tdmBanco.IncluirCtaPrima;
var
  debcre: Integer;
  Valor: Currency;
begin
  mDocDtl.First();
  mPrimas.Close();
  mPrimas.Open();

  while not mDocDtl.Eof do begin
    with rsBuscarPrima do begin
      Close();
      Parameters[1].Value := mDocDtlIdCuenta.AsString;
      Parameters[2].Value := mDocumentoidMoneda.AsInteger;
      Parameters[3].Value := mDocDtlDebito.AsCurrency;
      Parameters[4].Value := mDocDtlCredito.AsCurrency;
      Parameters[5].Value := mDocumentoTasa.AsFloat;
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
    mDocDtl.Next();
  end;
  mDocDtl.LoadFromDataSet(mPrimas,[mtcpoAppend]);
end;

procedure TdmBanco.CodificarDocumento;
var
  bm: string;
  idCta: string;
begin
  with mDocDtl do begin
  
    if not Active then
      Exit;

    if not mDocumentoContabilizar.AsBoolean then
      Exit;
      
    bm := BookMark;
    DisableControls();
    FLoading := True;
    try

      LimpiarAutomaticas();

      if mDocumentoValor.AsCurrency > 0 then begin
        rsBancos.Locate('idCuentaBanco',mDocumentoidCuentaBanco.AsInteger,[]);
        idCta := rsBancosidCuentaMayor.Asstring;

        Append();
        mDocdtlAutomatica.AsBoolean := True;
        mDocDtlidCuenta.AsString := idCta;
        if rsTipoTransDebCre.AsInteger = 1 then
          mDocDtlDebito.AsCurrency := mDocumentoValor.AsCurrency
        else
          mDocDtlCredito.AsCurrency := mDocumentoValor.Ascurrency;

        mDocDtlDebCre.AsInteger := rsTipoTransDebcre.AsInteger;
        mDocDtlValor.AsCurrency := mDocumentoValor.AsCurrency;
        Post();

        if mDocumentoIdMoneda.AsInteger <> MONEDA_LEGAL then
          IncluirCtaPrima();
      end;
    finally
      BookMark := bm;
      EnableControls();
      FLoading := False;
    end;
  end;
end;

procedure TdmBanco.AbrirDocumento(const idDoc: Variant);
begin
  if not rsBancos.Active then
    rsBancos.Open();

  FLoading := True;
  try
    with rsDocumento do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
      if Eof then
        raise exception.Create('Este documento no existe');
    end;

    mDocumento.Close();
    mDocumento.Open();

    mDocumento.LoadFromDataSet(rsDocumento,[mtcpoAppend]);
    //mDocumento.Edit();

    AbrirDetalle(mDocumentoGUIDDocumento.Value, mDocumentoIdTrans.AsInteger);
  finally
    FLoading := False;
  end;

end;

procedure TdmBanco.mDocumentoReferenciaValidate(Sender: TField);
var
  i: Integer;
begin
  if FLoading then
    Exit;

  i := ValidarDocumento();
  if (i > 0) and (i <> mDocumentoIdDocumento.AsInteger) then begin
    AbrirDocumento(i);
  end;
end;


function TdmBanco.ValidarDocumento: Integer;
begin
  with cValidarDoc do begin
    Parameters[1].Value := mDocumentoIdTrans.AsInteger;
    Parameters[2].Value := mDocumentoReferencia.Asstring;
    Parameters[3].Value := mDocumentoidCuentaBanco.AsInteger;
    Parameters[4].Value := mDocumentoIdDocumento.AsInteger;
    Execute();
    Result := Parameters[5].Value;
  end;
end;

procedure TdmBanco.BorrarDocumento(const idDoc: Variant);
begin
  if (not EditarCXP) and (mDocumentoDocOrigen.AsInteger > 0) then
    raise Exception.Create('Este documento se registro en el sistema de cxp y no puede ser borrado');

  with cBorrarDoc do begin
    if idDoc <> Null then
      Parameters[01].Value := idDoc
    else
      Parameters[01].Value := mDocumentoGUIDDocumento.Value;
    Execute();
  end;

  if idDoc = Null then
    NuevoDocumento(mDocumentoIdTrans.AsInteger);
end;

procedure TdmBanco.mDocumentoFechaValidate(Sender: TField);
begin
  if not FLoading then
    UltimaFecha := mDocumentoFecha.AsDateTime;
end;

procedure TdmBanco.mDocDtlidCuentaValidate(Sender: TField);
begin
  if not rsCatalogo.Locate('idCuenta', mDocDtlIdCuenta.AsString,[]) then begin
//    showmessage(mCtasDocIdCuenta.asstring);
    if not Floading then
      raise Exception.Create('Esta cuenta no existe o no es una cuenta de detalle');
  end
  else begin
    mDocDtlDescripcion.AsString := rsCatalogoDescripcion.Asstring;
  end;
end;

procedure TdmBanco.mDocDtlBeforeEdit(DataSet: TDataSet);
begin
  if not FLoading then begin
    if mDocDtlAutomatica.AsBoolean then
      raise Exception.Create('Esta linea no puede ser editada por el usuario');
  end;
end;


function TdmBanco.BalanceCuenta(const idCta: Integer;
  const fec: TDateTime): Currency;
begin
  with rsBalanceCta do begin
    Close();
    Parameters[0].Value := idCta;
    Parameters[1].Value := fec;
    Open();
    Result := Fields[0].AsCurrency;
  end;
end;


procedure TdmBanco.mDocumentoidMonedaValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mDocumentoIdMoneda.AsInteger = MONEDA_LEGAL then
    mDocumentoTasa.Value := 1.0
  else
    mDocumentoTasa.AsFloat := dm.TasaActual(mDocumentoIdMoneda.AsInteger, mdocumentoFecha.Value);
end;

procedure TdmBanco.mDocumentoidCuentaBancoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if rsBancos.Locate('idCuentaBanco',mdocumentoIdCuentaBanco.AsInteger,[]) then
    mDocumentoIdMoneda.Value := rsBancosIdMoneda.AsInteger;
end;

procedure TdmBanco.mDocDtlAfterPost(DataSet: TDataSet);
begin
  if not Floading then
    CodificarDocumento();
end;

procedure TdmBanco.DataModuleCreate(Sender: TObject);
begin
  Inicializar();
end;

procedure TdmBanco.TotalizarDocumento(out tdb, tcr: Currency);
var
  bm: string;
begin
  tcr := 0;
  tdb := 0;
  with mDocDtl do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
        tdb := tdb + mDocDtlDebito.AsCurrency;
        tcr := tcr + mDocDtlCredito.AsCurrency;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
end;

procedure TdmBanco.mDocumentoContabilizarValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if not mDocumentoContabilizar.AsBoolean then begin
    if Confirmar('Esta seguro de no guardar codificacion para este documento') then
      mDocDtl.EmptyTable()
    else
      Abort();
  end
  else
    CodificarDocumento();
end;

function TdmBanco.GetEditarCXP: Boolean;
begin
  Result := dm.GetDefaultStr('BCO_EDITARCXP') = '1';
end;

end.
