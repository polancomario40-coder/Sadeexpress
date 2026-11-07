unit uCodifCtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, kbmMemTable, DB, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TfrCodifCtas = class(TFrame)
    rs: TADODataSet;
    rsidCodificacion: TGuidField;
    rsGUIDDocumento: TGuidField;
    rsidCuenta: TStringField;
    rsidAuxiliar: TStringField;
    rsDebCre: TWordField;
    rsValor: TBCDField;
    rsidCentroCosto: TGuidField;
    rsidPartida: TStringField;
    rsNota: TStringField;
    rsReferencia: TStringField;
    rsAutomatica: TBooleanField;
    rsDescripcion: TStringField;
    ds: TDataSource;
    mCodif: TkbmMemTable;
    mCodifidCodificacion: TGuidField;
    mCodifGUIDDocumento: TGuidField;
    mCodifidCuenta: TStringField;
    mCodifDebCre: TWordField;
    mCodifValor: TBCDField;
    mCodifidCentroCosto: TGuidField;
    mCodifidPartida: TStringField;
    mCodifNota: TStringField;
    mCodifReferencia: TStringField;
    mCodifAutomatica: TBooleanField;
    mCodifDescripcion: TStringField;
    mCodifDebito: TCurrencyField;
    mCodifCredito: TCurrencyField;
    Grid: TcxGrid;
    tvCtas: TcxGridDBTableView;
    tvCtasidCuenta: TcxGridDBColumn;
    tvCtasDescripcion: TcxGridDBColumn;
    tvCtasDebito: TcxGridDBColumn;
    tvCtasCredito: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    cGuardar: TADOCommand;
    cBorrar: TADOCommand;
    rsDebito: TBCDField;
    rsCredito: TBCDField;
    tvCtasAutomatica: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    StyleAutomatica: TcxStyle;
    mCodifCentroCosto: TStringField;
    tvCtasCentroCosto: TcxGridDBColumn;
    tvCtasidPartida: TcxGridDBColumn;
    mCodifCentroCostoDesc: TStringField;
    rsCentroCosto: TStringField;
    rsPrima: TADODataSet;
    rsPrimaCuenta: TStringField;
    rsPrimaDescripcion: TStringField;
    rsPrimaDebito: TBCDField;
    rsPrimaCredito: TBCDField;
    procedure mCodifidCuentaValidate(Sender: TField);
    procedure mCodifNewRecord(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure mCodifBeforeEdit(DataSet: TDataSet);
    procedure mCodifAfterPost(DataSet: TDataSet);
    procedure GridDBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure mCodifBeforeInsert(DataSet: TDataSet);
    procedure tvCtasStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure tvCtasCentroCostoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mCodifCentroCostoValidate(Sender: TField);
    procedure mCodifidCentroCostoValidate(Sender: TField);
    procedure mCodifDescripcionValidate(Sender: TField);
    procedure mCodifCreditoValidate(Sender: TField);
    procedure mCodifDebitoValidate(Sender: TField);
  private
    FTotalCR: Currency;
    FTotalDB: Currency;
    FGUIDDocumento: Variant;
    FLoading: Boolean;
    FReadOnly: Boolean;
    FUsarCC: Boolean;
    FConsolidarPrima: Boolean;
    FTasa: Currency;
    FIdMoneda: Integer;
    FidSuplidor: Integer;
    FTipo: string;
    FSuplidor: string;
    FReferencia: string;
    FFecha: TDateTime;
    FTipoDocumento: string;
    procedure SetGUIDDocumento(const Value: Variant);
    procedure CalcularTotales;
    procedure SetReadOnly(const Value: Boolean);
    procedure BorrarCodificacion;
    procedure SetConsolidarPrima(const Value: Boolean);
    procedure SetMoeda(const Value: Integer);
    procedure SetTasa(const Value: Currency);
    procedure AgregarPrima;
    { Private declarations }
  public
    { Public declarations }
    property GUIDDocumento: Variant read FGUIDDocumento write SetGUIDDocumento;
    property TotalDB: Currency read FTotalDB write FTotalDB;
    property TotalCR: Currency read FTotalCR write FTotalCR;
    property isReadOnly: Boolean read FReadOnly write SetReadOnly;
    property UsarCC: Boolean read FUsarCC;
    property idMoneda: Integer read FIdMoneda write SetMoeda;
    property Tasa: Currency read FTasa write SetTasa;
    property ConsolidarPrima: Boolean read FConsolidarPrima write SetConsolidarPrima;

    property idSuplidor: Integer read FidSuplidor write FIdSuplidor;
    property Suplidor: string read FSuplidor write FSuplidor;
    property Referencia: string read FReferencia write FReferencia;
    property Tipo: string read FTipo write FTipo;
    property Fecha: TDateTime read FFecha write FFecha;
    property TipoDocumento: string read FTipoDocumento write FTipoDocumento;

    constructor Create(AOwner: TComponent); override;

    procedure GuardarCodificacion;
    procedure AgregarLinea(const idCta, idAux: string; const debcre: Integer; const valor: Currency; const Auto: Boolean);
    procedure BorrarAutomaticas;
    procedure BorrarTodas;
  end;

implementation

uses Udata, UUtiles, uFullTextSearch, uBusqueda, uBusquedaDX, Math;

{$R *.dfm}

procedure TfrCodifCtas.mCodifidCuentaValidate(Sender: TField);
var
  descr: string;
  msg: string;
  aux: Boolean;
  res: Boolean;
begin
  if not FLoading then begin

    if mCodifAutomatica.AsBoolean then
      raise Exception.Create('Esta columna no puede ser cambiada en las lineas generadas automaticament');

    res := dm.ValidarCuentaEx(mCodifIdCuenta.Value,descr,msg,aux);
    if not mCodifAutomatica.Value then begin
       if not res then
         Raise exception.Create(msg);
    end;
    mCodifDescripcion.Value := descr;
  end;
end;

procedure TfrCodifCtas.mCodifNewRecord(DataSet: TDataSet);
begin
  mCodifidCodificacion.asGuid := dm.NewGuid();
  mCodifGUIDDocumento.Value := GUIDDocumento;
  mCodifAutomatica.Value := False;
end;

procedure TfrCodifCtas.SetGUIDDocumento(const Value: Variant);
begin
  FGUIDDocumento := Value;
  FLoading := True;
  mCodif.Close();
  try
    rs.Close();
    if (Value <> NULL) and (Value <> '') then begin
      rs.Parameters[1].Value := Value;
      rs.Open();

      mCodif.Open();
      mCodif.LoadFromDataSet(rs,[mtcpoAppend]);
    end;
    CalcularTotales();
  finally
    FLoading := False;
  end;
end;

procedure TfrCodifCtas.CalcularTotales;
var
  t1,t2: Currency;
  bm: string;
begin
  t1 := 0;
  t2 := 0;
  with mCodif do begin
    if Active then begin
      bm := BookMark;
      DisableControls();
      try
        First();
        while not Eof do begin
          t1 := t1 + mCodifDebito.AsCurrency;
          t2 := t2 + mCodifCredito.AsCurrency;
          Next();
        end;
      finally
        BookMark := bm;
        EnableControls();
      end;
    end;
  end;
  TotalDB := t1;
  TotalCR := t2;
end;

constructor TfrCodifCtas.Create(AOwner: TComponent);
begin
  inherited;
  FLoading := False;
  TotalDB := 0;
  TotalCR := 0;
  FConsolidarPrima := True;
  FIdMoneda := dm.MonedaLegal();
  FTasa := 1;
  FReadOnly := False;
  FUsarCC := dm.GetDefaultStr('AFECTAR_CC_ED') = '1';
  tvCtasCentroCosto.Visible := FUsarCC;
  tvCtasidPartida.Visible := FUsarCC;
  dm.rsPartidas.Open();
end;

procedure TfrCodifCtas.GridEnter(Sender: TObject);
begin
  if (mCodif.RecordCount = 0) and (not isReadOnly) then
    mCodif.Append();
end;

procedure TfrCodifCtas.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
  Grid.Enabled := not Value;
end;

procedure TfrCodifCtas.BorrarCodificacion;
begin
  with cBorrar do begin
    Parameters[1].Value := GUIDDocumento;
    Execute();
  end;
end;

procedure TfrCodifCtas.GuardarCodificacion;
begin
  BorrarCodificacion();

  with mCodif do begin
    DisableControls();
    First();
    try
      while not Eof do begin
        cGuardar.Parameters[01].Value := mCodifIdCodificacion.Value;
        cGuardar.Parameters[02].Value := GUIDDocumento;
        cGuardar.Parameters[03].Value := mCodifIdCuenta.Value;

        if mCodifDebito.AsCurrency > 0 then begin
          cGuardar.Parameters[05].Value := 1;
          cGuardar.Parameters[06].Value := mCodifDebito.Value;
        end
        else begin
          cGuardar.Parameters[05].Value := 2;
          cGuardar.Parameters[06].Value := mCodifCredito.Value;
        end;

        if (mCodifIdCentroCosto.IsNull) or (mCodifIdCentroCosto.Asstring = '') then begin
          cGuardar.Parameters[07].Value := NULL;
          cGuardar.Parameters[12].Value := NULL;
        end
        else begin
          cGuardar.Parameters[07].Value := mCodifIdCentroCosto.Value;
          cGuardar.Parameters[12].Value := mCodifCentroCosto.Value;
        end;

        if mCodifidPartida.IsNull then
          cGuardar.Parameters[08].Value := NULL
        else
          cGuardar.Parameters[08].Value := mCodifIdPartida.Value;

        cGuardar.Parameters[09].Value := mCodifNota.Value;
        cGuardar.Parameters[10].Value := Referencia;
        cGuardar.Parameters[11].Value := mCodifAutomatica.Value;
        cGuardar.Parameters[13].Value := Tipo;
        if idSuplidor > 0 then begin
          cGuardar.Parameters[14].Value := idSuplidor;
          cGuardar.Parameters[15].Value := Suplidor;
        end
        else begin
          cGuardar.Parameters[14].Value := NULL;
          cGuardar.Parameters[15].Value := NULL;
        end;
        cGuardar.Parameters[16].Value := Fecha;
        cGuardar.Parameters[17].Value := TipoDocumento;
        cGuardar.Execute();

        Next();
      end;
    finally
      EnableControls();
    end;
  end;
end;

procedure TfrCodifCtas.mCodifBeforeEdit(DataSet: TDataSet);
begin
  if not FLoading then begin
    if isReadOnly then
      Abort();
   // if mCodifAutomatica.AsBoolean then
    //  raise Exception.Create('Esta linea no puede ser editada por el usuario');
  end;
end;

procedure TfrCodifCtas.mCodifAfterPost(DataSet: TDataSet);
begin
  if not FLoading then begin
//    AgregarPrima();
    CalcularTotales();
  end;
end;

procedure TfrCodifCtas.AgregarLinea(const idCta, idAux: string;
  const debcre: Integer; const valor: Currency; const Auto: Boolean);
var
  desc: string;
  valr: Currency;
begin
  valr := Valor;

  Floading := True;
  try
    mCodif.Append();
    mCodifAutomatica.Value := Auto;

    mCodifIdCuenta.Value := idCta;

    mCodifDebCre.Value := debCre;
    if debCre = 1 then
      mCodifDebito.Value := SimpleRoundTo(Valr,-2)
    else
      mCodifCredito.Value := SimpleRoundTo(Valr,-2);

    dm.ValidarCuenta(idCta,desc);
    mCodifDescripcion.Value := desc;

    mCodif.Post();

    AgregarPrima();

    CalcularTotales();
  finally
    FLoading := False;
  end;
end;

procedure TfrCodifCtas.AgregarPrima;
var
  desc: string;
  fl: Boolean;
begin
  fl := FLoading;
  FLoading := True;
  try

    if (Tasa > 1) then begin
      with rsPrima do begin
        Close();
        Parameters[1].Value := mCodifidCuenta.Value;
        Parameters[2].Value := idMoneda;
        Parameters[3].Value := mCodifDebito.Value;
        Parameters[4].Value := mCodifCredito.Value;
        Parameters[5].Value := Tasa;
        Open();
      end;

      if (not rsPrima.Eof) then begin
        if (rsPrimaCuenta.Value = mCodifidCuenta.Value) and (ConsolidarPrima) then begin
           mCodif.Edit();
           mCodifDebito.AsCurrency := mCodifDebito.Value + rsPrimaDebito.AsCurrency;
           mCodifCredito.AsCurrency := mCodifCredito.Value + rsPrimaCredito.AsCurrency;
           mCodif.Post();
        end
        else begin
          mCodif.Append();
          mCodifIdCuenta.Value := rsPrimaCuenta.Value;
          if rsPrimaDebito.Value > 0 then begin
            mCodifDebCre.Value := 1;
            mCodifValor.Value := SimpleRoundTo(rsPrimaDebito.Value,-2);
          end
          else begin
            mCodifDebCre.Value := 2;
            mCodifValor.Value := SimpleRoundTo(rsPrimaCredito.Value,-2);
          end;
          mCodifDebito.Value := SimpleRoundTo(rsPrimaDebito.Value,-2);
          mCodifCredito.Value := SimpleRoundTo(rsPrimaCredito.Value,-2);
          mCodifAutomatica.Value := True;
          dm.ValidarCuenta(rsPrimaCuenta.Value,desc);
          mCodifDescripcion.Value := desc;
          mCodif.Post();
        end;
      end;
    end;
  finally
    FLoading := fl;
  end;
end;

procedure TfrCodifCtas.BorrarAutomaticas;
begin
  if not(mCodif.Active) then exit;
  with mCodif do begin
    DisableControls();
    try
      First();
      while not Eof do begin
        if mCodifAutomatica.AsBoolean then
          Delete()
        else
          Next();
      end;
    finally
      EnableControls();
    end;
  end;
end;

procedure TfrCodifCtas.BorrarTodas;
begin
  if not(mCodif.Active) then exit;
  with mCodif do begin
    Close;
    Open;
  end;
end;

procedure TfrCodifCtas.GridDBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idCta: variant;
begin
  inherited;

  idCta := TBusquedaDX.Buscar('idCuenta',false,'FindCuentaContable');
  if idCta <> Null then begin

//  idCta := BuscarCtaDetalle();
//  if idCta <> '' then begin
    if not (mCodif.State in dsEditModes) then
      mCodif.Edit();

    mCodifIdCuenta.Asstring := idCta;
    tvCtas.Columns[3].Focused := True;
  end;
end;

procedure TfrCodifCtas.mCodifBeforeInsert(DataSet: TDataSet);
begin
  if not FLoading then begin
    if isReadOnly then
     Abort();
  end;
end;

procedure TfrCodifCtas.tvCtasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[4] = True then
    AStyle := StyleAutomatica
  else
    AStyle := nil;
end;

procedure TfrCodifCtas.tvCtasCentroCostoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idcc: Variant;
begin
  inherited;
//  if (not isReadOnly) and (not mCodifAutomatica.Value) then begin
    if (not isReadOnly)  then begin
    idcc := TFullTextSearch.Buscar('idCentroCosto',True,'costCentroCostoFind');
    if idcc <> null then begin
      if not (mCodif.State in dsEditModes) then
        mCodif.Edit();

      mCodifidCentroCosto.Value := idcc;
      tvCtasidPartida.Focused := True;
    end;
  end;
end;

procedure TfrCodifCtas.mCodifCentroCostoValidate(Sender: TField);
var
  descr: string;
  idcc: Variant;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    if mCodifCentroCosto.Asstring = '' then begin
      mCodifIdCentroCosto.Clear();
      mCodifCentroCostoDesc.Value := '';
      mCodifidPartida.Clear();
    end
    else begin
      dm.ValidarCentroCosto(mCodifCentroCosto.Value,descr, idcc);
      mCodifIdCentroCosto.Value := idcc;
      mCodifCentroCostoDesc.Value := descr;

      if mCodifIdPartida.Asstring = '' then
        mCodifIdPartida.Value := dm.GetDefaultStr('PARTIDA_DEFAULT');
    end;
  finally
    FLoading := False;
  end;
end;

procedure TfrCodifCtas.mCodifidCentroCostoValidate(Sender: TField);
var
  descr: string;
  cc: string;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    dm.ValidarCentroCosto(mCodifidCentroCosto.Value,descr, cc);
    mCodifCentroCosto.Value := cc;
    mCodifCentroCostoDesc.Value := descr;

    if mCodifIdPartida.Asstring = '' then
      mCodifIdPartida.Value := dm.GetDefaultStr('PARTIDA_DEFAULT');
  finally
    FLoading := False;
  end;
end;

procedure TfrCodifCtas.mCodifDescripcionValidate(Sender: TField);
begin
  if not FLoading then
    if mCodifAutomatica.AsBoolean then
      raise Exception.Create('Esta columna no puede ser cambiada en las lineas generadas automaticament');

end;

procedure TfrCodifCtas.mCodifCreditoValidate(Sender: TField);
begin
  if not FLoading then
    if mCodifAutomatica.AsBoolean then
      raise Exception.Create('Esta columna no puede ser cambiada en las lineas generadas automaticament');

end;

procedure TfrCodifCtas.mCodifDebitoValidate(Sender: TField);
begin
  if not FLoading then
    if mCodifAutomatica.AsBoolean then
      raise Exception.Create('Esta columna no puede ser cambiada en las lineas generadas automaticament');

end;

procedure TfrCodifCtas.SetConsolidarPrima(const Value: Boolean);
begin
  FConsolidarPrima := Value;
end;

procedure TfrCodifCtas.SetMoeda(const Value: Integer);
begin
  FIdMoneda := Value;
end;

procedure TfrCodifCtas.SetTasa(const Value: Currency);
begin
  FTasa := Value;
end;

end.
