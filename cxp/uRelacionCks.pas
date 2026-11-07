unit uRelacionCks;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxGrClms, dxTL, dxDBGrid, Db, dxCntner, ADODB, StdCtrls,
  wwdbdatetimepicker, Buttons, ppVar, ppStrtch, ppRichTx, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppDBPipe, ppDBBDE, ppComm,
  ppRelatv, ppProd, ppReport, dxDBTLCl, dxDBCtrl, jpeg, wwdblook,
  dxExEdtr, Mask, wwdbedit, Wwdbspin, uSimpleForm, cxLookAndFeelPainters,
  cxButtons, ppParameter;

type
  TfRelacionCks = class(TSimpleForm)
    Label1: TLabel;
    Label2: TLabel;
    dtDesde: TwwDBDateTimePicker;
    dtHasta: TwwDBDateTimePicker;
    rsRelacionCks: TADODataSet;
    Grid: TdxDBGrid;
    relsource: TDataSource;
    GridNumero: TdxDBGridMaskColumn;
    Gridfecha: TdxDBGridDateColumn;
    GridNombre: TdxDBGridMaskColumn;
    GridDescripcionCuenta: TdxDBGridMaskColumn;
    sbOpen: TcxButton;
    SpeedButton1: TcxButton;
    sbSalir: TcxButton;
    GridValorCheque: TdxDBGridCurrencyColumn;
    Report: TppReport;
    plRelacion: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
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
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppDBRichText1: TppDBRichText;
    ppVariable1: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    GridST: TdxDBGridColumn;
    Label3: TLabel;
    cbCuenta: TwwDBLookupCombo;
    rsEnts: TADODataSet;
    cbEnts: TwwDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    seDesde: TwwDBSpinEdit;
    seHasta: TwwDBSpinEdit;
    rsEntsidSuplidor: TIntegerField;
    rsEntsNombre: TStringField;
    rsRelacionCkscValor: TCurrencyField;
    rsRelacionCksNumero: TIntegerField;
    rsRelacionCksIdDocumento: TIntegerField;
    rsRelacionCksFecha: TDateTimeField;
    rsRelacionCksIdEntidad: TIntegerField;
    rsRelacionCksCuentaBanco: TStringField;
    rsRelacionCksNombre: TStringField;
    rsRelacionCksIdCuenta: TStringField;
    rsRelacionCksDescripcionCuenta: TStringField;
    rsRelacionCksValorCheque: TBCDField;
    rsRelacionCksTextoConcepto: TStringField;
    rsRelacionCksST: TStringField;
    rsRelacionCksFechaProcesado: TDateTimeField;
    rsRelacionCksidCuentaBanco: TIntegerField;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    dsBcos: TDataSource;
    rsRelacionCksTotalNeto: TBCDField;
    ppDBText8: TppDBText;
    procedure sbOpenClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalirClick(Sender: TObject);
    procedure rsRelacionCksCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelacionCks: TfRelacionCks;

procedure VerRelacionCk;

implementation

uses uMAINDM, Udata;

{$R *.DFM}

procedure TfRelacionCks.sbOpenClick(Sender: TObject);
var
  s: string;
  rango: string;
begin
  with rsRelacionCks do begin
    DisableControls();
    try
      Close();
      Parameters [1].Value := Int(dtDesde.Date);
      Parameters [2].Value := Int(dtHasta.Date);
      Open();
      s := '';

      if cbCuenta.Text <> '' then begin
        s := format('idCuentaBanco = %d',[rsBancosIdCuentaBanco.asInteger]);
      end
      else begin
        s := '';
      end;

      if cbEnts.Text <> '' then begin
        if s = '' then
          s := 'IdEntidad = ' + rsEntsIdSuplidor.AsString
        else
          s := s + ' and idEntidad = ' + rsEntsIdSuplidor.Asstring;
      end;

      if seDesde.Value > 0 then begin
        if seHasta.Value > 0 then
          rango := Format('(Numero >= %d and Numero <= %d)',[Trunc(seDesde.Value), Trunc(seHasta.Value)])
        else
          rango := Format('Numero = %d',[Trunc(seDesde.Value)]);

        if s = '' then
          s := rango
        else
          s := s + ' and ' + rango
      end;

//      showmessage(s);

      Filtered := False;
      Filter := s;
      Filtered := s <> '';

    finally
      EnableControls();
    end;  // try/finally
  end;    // with
end;


procedure VerRelacionCk;
begin
  with TfRelacionCks.Create(Application) do begin
    ShowModal();
    Free();
  end;    // with
end;
procedure TfRelacionCks.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := FormatDateTime('"Desde: " dd/mm/yyyy ' , dtDesde.Date) +
           FormatDateTime('"Hasta: " dd/mm/yyyy ' , dtHasta.Date);
end;

procedure TfRelacionCks.SpeedButton1Click(Sender: TObject);
begin
  if rsRelacionCks.Active then
    Imprimir(Report);
end;

procedure TfRelacionCks.FormCreate(Sender: TObject);
begin
  dtDesde.Date := Int(Date()) - 1;
  dtHasta.Date := Int(Date()) - 1;
  rsBancos.Open();
  rsEnts.Open();
end;

procedure TfRelacionCks.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of    //
    vk_RETURN,
         vk_F6: sbOpen.Click();
        vk_F10: sbSalir.Click();
         vk_F7: SpeedButton1.Click();
  end;    // case
end;

procedure TfRelacionCks.sbSalirClick(Sender: TObject);
begin
  Close();
end;

procedure TfRelacionCks.rsRelacionCksCalcFields(DataSet: TDataSet);
begin
  if (rsRelacionCksST.AsString = 'C') then begin
    if (rsRelacionCksFechaProcesado.AsDatetime > dtHasta.Date) then
      rsRelacionCkscValor.AsCurrency := rsRelacionCksValorCheque.AsCurrency
    else
      rsRelacionCkscValor.AsCurrency := 0
  end
  else
    rsRelacionCkscValor.AsCurrency := rsRelacionCksValorCheque.AsCurrency;

end;

end.
