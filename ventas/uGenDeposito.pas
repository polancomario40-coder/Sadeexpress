unit uGenDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  cxLookAndFeelPainters, kbmMemTable, ADODB, cxPC, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox, cxGridCardView,
  cxGridDBCardView, cxLookupEdit, cxDBLookupEdit,DateUtils, ppBands,
  ppCache, ppClass, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ppCtrls, ppPrnabl, ppStrtch, ppSubRpt;

const
  FP_EFECTIVO = 'EFECTIVO';
  TT_DEPOSITO = 1;

type
  TGenDeposito = class(TFForm)
    Label1: TLabel;
    deDesde: TcxDateEdit;
    Label2: TLabel;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    rsRecibos: TADODataSet;
    rsRecibosidRecibo: TGuidField;
    rsRecibosRecibo: TStringField;
    rsRecibosFecha: TDateTimeField;
    rsRecibosCliente: TStringField;
    rsRecibosidPagoForma: TStringField;
    rsRecibosValor: TBCDField;
    rsRecibosCC: TStringField;
    mRecibos: TkbmMemTable;
    mRecibosidRecibo: TGuidField;
    mRecibosRecibo: TStringField;
    mRecibosFecha: TDateTimeField;
    mRecibosCliente: TStringField;
    mRecibosidPagoForma: TStringField;
    mRecibosValor: TBCDField;
    mRecibosCC: TStringField;
    mRecibosidCuentaBanco: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Recibo: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1idPagoForma: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1idCuentaBanco: TcxGridDBColumn;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNombre: TStringField;
    rsBancosidCuentaMayor: TStringField;
    mDepositos: TkbmMemTable;
    mDepositosidCuentaBanco: TIntegerField;
    mDepositosCantCks: TIntegerField;
    mDepositosTotalEfectivo: TCurrencyField;
    mDepositosTotalCks: TCurrencyField;
    mDepositosTotalDeposito: TCurrencyField;
    mDepositosConcepto: TStringField;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    dsDeps: TwwDataSource;
    dsBcos: TwwDataSource;
    luBco: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1idCuentaBanco: TcxGridDBColumn;
    cxGrid2DBTableView1TotalDeposito: TcxGridDBColumn;
    cxGrid2DBTableView1Concepto: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    mDetalle: TkbmMemTable;
    mDetalleidCuentaBanco: TIntegerField;
    mDetalleidPagoForma: TStringField;
    mDetalleCantidad: TIntegerField;
    mDetalleValor: TCurrencyField;
    dsDet: TwwDataSource;
    mDetalleLinea: TAutoIncField;
    cxGridDBTableView1idPagoForma: TcxGridDBColumn;
    cxGridDBTableView1Cantidad: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    mDetalleidCuenta: TStringField;
    cInsDeposito: TADOCommand;
    mRecibosidMoneda: TIntegerField;
    mDepositosidMoneda: TIntegerField;
    mDepositosTasa: TFloatField;
    rsRecibosidMoneda: TIntegerField;
    rsRecibosMoneda: TStringField;
    mRecibosMoneda: TStringField;
    cInsDet: TADOCommand;
    mDepositosidCuenta: TStringField;
    rsBancosidMoneda: TIntegerField;
    cxButton2: TcxButton;
    Label3: TLabel;
    cxButton3: TcxButton;
    rsCuadre: TADODataSet;
    dsCuadre: TDataSource;
    RPTCuadre: TppReport;
    plCuadre: TppDBPipeline;
    rsCuadreidRecibo: TGuidField;
    rsCuadreRecibo: TStringField;
    rsCuadreFecha: TDateTimeField;
    rsCuadreCliente: TStringField;
    rsCuadreidPagoForma: TStringField;
    rsCuadreValor: TBCDField;
    rsCuadreCC: TStringField;
    rsCuadreidMoneda: TIntegerField;
    rsCuadreMoneda: TStringField;
    rsCuadreUsuario: TStringField;
    rsCuadreCancelado: TBooleanField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroup2: TppGroup;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroup3: TppGroup;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBCalc1: TppDBCalc;
    ppVariable1: TppVariable;
    ppDBCalc2: TppDBCalc;
    cxButton4: TcxButton;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape3: TppShape;
    RPTDeps: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppVariable2: TppVariable;
    ppDetailBand2: TppDetailBand;
    ppShape4: TppShape;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    plResumen: TppDBPipeline;
    mDepositosCtaBanco: TStringField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    plDet: TppDBPipeline;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppLine2: TppLine;
    cxButton5: TcxButton;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure mRecibosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure mRecibosAfterPost(DataSet: TDataSet);
    procedure mDepositosAfterScroll(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton4Click(Sender: TObject);
    procedure ppShape3Print(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    Floading : Boolean;
    procedure ResumirDepositos;
    procedure FiltrarDetalle;
    procedure GenerarDepositos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GenDeposito: TGenDeposito;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TGenDeposito.cxButton1Click(Sender: TObject);
begin
  inherited;

  FLoading := True;
  try

    with rsRecibos do begin
      Close();
      Parameters[1].Value := deDesde.Date;
      Parameters[2].Value := deHasta.Date;
      Open();
    end;

    mRecibos.Close();
    mRecibos.Open();
    mRecibos.LoadFromDataSet(rsRecibos,[mtcpoAppend]);
  finally
    FLoading := False;
  end;

  ResumirDepositos();
end;

procedure TGenDeposito.mRecibosNewRecord(DataSet: TDataSet);
begin
  inherited;
  mRecibosIdCuentaBanco.Value := luBco.EditValue; 
end;

procedure TGenDeposito.FormCreate(Sender: TObject);
begin
  inherited;
  FLoading := False;
  rsBancos.Open();
  luBco.EditValue := rsBancosIdCuentaBanco.AsInteger;
  deDesde.Date := IncDay(dm.DBFecha(),-1);
  deHasta.Date := deDesde.Date;
end;

procedure TGenDeposito.mRecibosAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not FLoading then
    ResumirDepositos();
end;

procedure TGenDeposito.ResumirDepositos;
var
  bm: string;
begin
  with mRecibos do begin
    bm := BookMark;
    DisableControls();
    try
      mDepositos.Close();
      mDepositos.Open();

      mDetalle.Close();
      mDetalle.Open();

      mDetalle.Filtered := False;
      FLoading := True;
      First();
      while not Eof do begin
        if mRecibosIdCuentaBanco.AsInteger <> -1 then begin
          if mDepositos.Locate('idCuentaBanco',mRecibosIdCuentaBanco.AsInteger,[]) then
            mDepositos.Edit()
          else begin
            mDepositos.Append();
            mDepositosIdCuentaBanco.Value := mRecibosIdCuentaBanco.AsInteger;
            rsBancos.Locate('idCuentaBanco',mRecibosIdCuentaBanco.AsInteger,[]);
            mDepositosCtaBanco.Value := rsBancosNombre.Value;
            mDepositosIdMoneda.Value := rsBancosIdMoneda.Value;
            mDepositosIdCuenta.Value := rsBancosIdCuentaMayor.Value;
            mDepositosTasa.Value := 1;
          end;

          mDepositosTotalDeposito.Value := mDepositosTotalDeposito.AsCurrency + mRecibosValor.AsCurrency;
          mDepositos.Post();

          if mDetalle.Locate('idCuentaBanco;idPagoForma',
                             VarArrayOf([mRecibosIdCuentaBanco.AsInteger, mRecibosIdPagoForma.AsString]),
                             []) then
            mDetalle.Edit()
          else begin
            mDetalle.Append();
            mDetalleIdCuentaBanco.Value := mRecibosIdCuentaBanco.AsInteger;
            mDetalleIdPagoForma.Value := mRecibosidPagoForma.Value;
            mDetalleIdCuenta.Value := mRecibosCC.Value;
          end;

          mDetalleValor.Value := mDetalleValor.AsCurrency + mRecibosValor.Value;
          mDetalleCantidad.Value := mDetalleCantidad.AsInteger + 1;
          mDetalle.Post();
        end;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
      FLoading := False;
    end;
  end;

  FiltrarDetalle();
end;

procedure TGenDeposito.FiltrarDetalle;
begin
  if mDepositos.Active then begin
    if mDepositosIdCuentaBanco.Value > 0 then begin
      mDetalle.DisableControls();
      mDetalle.Filtered := False;
      mDetalle.Filter := 'idCuentaBanco = ' + mDepositosIdCuentaBanco.AsString;
      mDetalle.Filtered := True;
      mDetalle.EnableControls();
    end;
  end;
end;

procedure TGenDeposito.mDepositosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not FLoading then
    FiltrarDetalle();
end;

procedure TGenDeposito.GenerarDepositos;
var
  fec: TDateTime;
  nid: TGuid;
begin
  try
    dm.Coneccion.BeginTrans();
    fec := dm.DBFecha();
    mDepositos.DisableControls();
    mDetalle.DisableControls();
    try
      mDepositos.First();
      while not mDepositos.Eof do begin
        nid := dm.NewGuid();
        with cInsDeposito do begin
          Parameters[1].Value := 0;
          Parameters[2].Value := TT_DEPOSITO;
          Parameters[3].Value := fec;
          Parameters[4].Value := mDepositosIdCuentaBanco.Value;
          Parameters[5].Value := 'DEP:' + FormatDateTime('dd/mm/yyyy',fec);
          Parameters[6].Value := mDepositosTotalDeposito.Value;
          Parameters[7].Value := '$';
          Parameters[8].Value := fec;
          Parameters[9].Value := null;
          Parameters[10].Value := null;
          Parameters[11].Value := 1;
          Parameters[12].Value := mDepositosConcepto.Value;
          Parameters[14].Value := GuidToString(nid);
          Parameters[15].Value := '';
          Parameters[16].Value := mDepositosIdMoneda.Value;
          Parameters[17].Value := mDepositosTasa.Value;
          Parameters[18].Value := 1;
          Execute();
        end;

        cInsDet.Parameters[1].Value := GuidToString(nid);
        cInsDet.Parameters[2].Value := 1;
        cInsDet.Parameters[3].Value := mDepositosTotalDeposito.Value;
        cInsDet.Parameters[4].Value := mDepositosIdCuenta.Value;
        cInsDet.Parameters[5].Value := null;
        cInsDet.Parameters[6].Value := 1;
        cInsDet.Execute();


        mDetalle.First();
        while not mDetalle.Eof do begin
          cInsDet.Parameters[1].Value := GuidToString(nid);
          cInsDet.Parameters[2].Value := 2;
          cInsDet.Parameters[3].Value := mDetalleValor.AsCurrency;
          cInsDet.Parameters[4].Value := mDetalleIdCuenta.Value;
          cInsDet.Parameters[5].Value := null;
          cInsDet.Parameters[6].Value := 0;
          cInsDet.Execute();

          mDetalle.Next();
        end;

        mDepositos.Next();
      end;
    finally
      mDepositos.EnableControls();
      mDetalle.EnableControls();
    end;
    dm.Coneccion.CommitTrans();
  except
    dm.Coneccion.RollbackTrans();
    raise;
  end;
end;

procedure TGenDeposito.cxButton2Click(Sender: TObject);
begin
  inherited;
  if Confirmar('Esta seguro de generar los depositos') then
    GenerarDepositos();  
end;

procedure TGenDeposito.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TGenDeposito.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Desde: ' + deDesde.Text + ' hasta: ' + deHasta.Text;
end;

procedure TGenDeposito.cxButton4Click(Sender: TObject);
begin
  inherited;
  rsCuadre.Close();
  rsCuadre.Parameters[1].Value := deDesde.Date;
  rsCuadre.Parameters[2].Value := deHasta.Date;
  rsCuadre.Parameters[3].Value := '';
  rsCuadre.Open();
  RPTCuadre.Print();
end;

procedure TGenDeposito.ppShape3Print(Sender: TObject);
begin
  inherited;
  ppShape3.Visible := not ppShape3.Visible;
end;

procedure TGenDeposito.cxButton5Click(Sender: TObject);
begin
  inherited;
  RPTDeps.Print();
end;

end.
