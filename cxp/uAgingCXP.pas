unit uAgingCXP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Buttons, ppDB, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Gradient,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, kbmMemTable, dxEditor,
  dxEdLib, uSimpleForm, ppStrtch, ppMemo, cxGroupBox,
  cxRadioGroup, cxButtonEdit, ppParameter;

type
  TfAgingCXP = class(TSimpleForm)
    rsAging: TADODataSet;
    deCorte: TcxDateEdit;
    Label1: TLabel;
    tvDocumentos: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    rsAgingNombre: TStringField;
    rsAgingidTrans: TIntegerField;
    rsAgingIdDocumento: TIntegerField;
    rsAgingDias: TIntegerField;
    rsAgingNoVenc: TBCDField;
    rsAgingA30: TBCDField;
    rsAgingA60: TBCDField;
    rsAgingA90: TBCDField;
    rsAgingFactura: TStringField;
    rsAgingIDRow: TIntegerField;
    rsAgingFecha: TDateTimeField;
    rsAgingTotal: TBCDField;
    rsAgingPagado: TBCDField;
    tvDocumentosDias: TcxGridDBColumn;
    tvDocumentosNoVenc: TcxGridDBColumn;
    tvDocumentosA30: TcxGridDBColumn;
    tvDocumentosA60: TcxGridDBColumn;
    tvDocumentosA90: TcxGridDBColumn;
    tvDocumentosFactura: TcxGridDBColumn;
    tvDocumentosFecha: TcxGridDBColumn;
    tvDocumentosPagado: TcxGridDBColumn;
    plReporte: TppBDEPipeline;
    Estado: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppLine17: TppLine;
    ppLabel17: TppLabel;
    plFecha: TppLabel;
    ppLabel61: TppLabel;
    plTitulo: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppVariable1: TppVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppShape1: TppShape;
    ppDBText41: TppDBText;
    ptFecha: TppDBText;
    ppDBText44: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText43: TppDBText;
    rsAgingidMoneda: TIntegerField;
    rsAgingMoneda: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText7: TppDBText;
    cxButton1: TcxButton;
    rsAgingCreditos: TBCDField;
    mAging: TkbmMemTable;
    mAgingNombre: TStringField;
    mAgingidMoneda: TIntegerField;
    mAgingMoneda: TStringField;
    mAgingidTrans: TIntegerField;
    mAgingIdDocumento: TIntegerField;
    mAgingDias: TIntegerField;
    mAgingNoVenc: TBCDField;
    mAgingA30: TBCDField;
    mAgingA60: TBCDField;
    mAgingA90: TBCDField;
    mAgingFactura: TStringField;
    mAgingIDRow: TIntegerField;
    mAgingFecha: TDateTimeField;
    mAgingTotal: TBCDField;
    mAgingPagado: TBCDField;
    mAgingCreditos: TBCDField;
    Label2: TLabel;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    rsAgingidSuplidor: TIntegerField;
    mAgingidSuplidor: TIntegerField;
    mAgingSel: TBooleanField;
    rsAgingBalance: TBCDField;
    mAgingBalance: TCurrencyField;
    ppLabel8: TppLabel;
    ppDBCalc13: TppDBCalc;
    cxGrid1Level1: TcxGridLevel;
    tvDocumentosDBColumn1: TcxGridDBColumn;
    tvDocumentosDBColumn2: TcxGridDBColumn;
    rsAgingBalanceXMoneda: TBCDField;
    mAgingBalanceXMoneda: TCurrencyField;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    CxPResumen: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppVariable2: TppVariable;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText8: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel27: TppLabel;
    ppDBText19: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText20: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBText21: TppDBText;
    ppLabel30: TppLabel;
    ppDBText22: TppDBText;
    ppLabel31: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppLabel14: TppLabel;
    ppShape4: TppShape;
    ReportNCR: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLine8: TppLine;
    ppLabel5: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppVariable3: TppVariable;
    ppLabel28: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText5: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppShape5: TppShape;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel36: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel37: TppLabel;
    ppDBText30: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText31: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape6: TppShape;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel38: TppLabel;
    ppLine11: TppLine;
    ppLabel40: TppLabel;
    ppDBText33: TppDBText;
    ppLabel41: TppLabel;
    ppDBCalc33: TppDBCalc;
    ppLine12: TppLine;
    ppDBText32: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText34: TppDBText;
    plConfig: TppDBPipeline;
    dsConfig: TDataSource;
    ppDBText35: TppDBText;
    rsAgingTipoSuplidor: TStringField;
    mAgingTipoSuplidor: TStringField;
    rsAgingBalanceXTipo: TBCDField;
    mAgingBalanceXTipo: TCurrencyField;
    ppShape7: TppShape;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLabel43: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel44: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText11: TppDBText;
    rsAgingFechaEmision: TDateTimeField;
    rsAgingVencimiento: TDateTimeField;
    tvDocumentosDBColumn3: TcxGridDBColumn;
    mAgingVencimiento: TDateTimeField;
    mAgingFechaEmision: TDateTimeField;
    RPTVencimiento: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLine16: TppLine;
    ppLabel1: TppLabel;
    ppLabel26: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppVariable4: TppVariable;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppShape3: TppShape;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText40: TppDBText;
    ppDBText42: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppShape8: TppShape;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppLabel52: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel53: TppLabel;
    ppDBText45: TppDBText;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppDBText46: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppLabel54: TppLabel;
    ppLine20: TppLine;
    ppLabel55: TppLabel;
    ppDBText47: TppDBText;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppShape9: TppShape;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppLabel56: TppLabel;
    ppLine21: TppLine;
    ppLabel57: TppLabel;
    ppDBText50: TppDBText;
    ppLabel58: TppLabel;
    ppDBText51: TppDBText;
    ppLabel59: TppLabel;
    ppDBCalc59: TppDBCalc;
    ppLine22: TppLine;
    ppLabel60: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel62: TppLabel;
    rsAgingCompFiscal: TStringField;
    mAgingCompFiscal: TStringField;
    fr: TcxRadioGroup;
    fv: TcxCheckBox;
    idEnt: TcxButtonEdit;
    Label3: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Reporte: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel39: TppLabel;
    ppLabel42: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppVariable5: TppVariable;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppShape10: TppShape;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape11: TppShape;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel70: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel71: TppLabel;
    ppDBText61: TppDBText;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText62: TppDBText;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppLabel72: TppLabel;
    ppLine25: TppLine;
    ppLabel73: TppLabel;
    ppDBText63: TppDBText;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppShape12: TppShape;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppLabel74: TppLabel;
    ppLine26: TppLine;
    ppLabel75: TppLabel;
    ppDBText66: TppDBText;
    ppLabel76: TppLabel;
    ppDBText67: TppDBText;
    ppLabel77: TppLabel;
    ppDBCalc70: TppDBCalc;
    ppLine27: TppLine;
    ppLabel78: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppShape1Print(Sender: TObject);
    procedure ppShape4Print(Sender: TObject);
    procedure ppLabel29Print(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    Floading: Boolean;
    procedure AbrirDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAgingCXP: TfAgingCXP;

implementation

uses uMAINDM, uListaSups, Udata;

{$R *.dfm}

procedure TfAgingCXP.AbrirDatos;

begin
  FLoading := True;
  with rsAging do begin
    Close();
    Parameters[1].Value := deCorte.Date;

    try
      if idEnt.Text = '' then
        Parameters[2].Value := 0
      else
        Parameters[2].Value := strtoint(idEnt.Text);
    except
      raise exception.Create('El codigo del suplidor no es valido, dejarlo vacio para mostrar todos los suplidores');
    end;

    Parameters[3].Value := 30;
    Parameters[4].Value := (fv.checked);
    Open();
  end;

  with mAging do begin
    DisableControls();
    try
      Close();
      Open();
      LoadFromDataSet(rsAging,[mtcpoAppend]);
      rsAging.Close();
      First();
    finally
      EnableControls();
    end;
  end;
  Floading := False;
end;

procedure TfAgingCXP.FormCreate(Sender: TObject);
begin
  inherited;
  deCorte.Date := Date();
  Floading := False;
end;

procedure TfAgingCXP.cxButton1Click(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl,True,True);
  AbrirDatos();
end;

procedure TfAgingCXP.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  inherited;
  Value := 'Reporte al: ' + FormatDateTime('dd/mm/yyyy', deCorte.Date);
end;

procedure TfAgingCXP.ppShape1Print(Sender: TObject);
begin
  inherited;
  (Sender as TppShape).Visible := not ppShape1.Visible;
end;

procedure TfAgingCXP.ppShape4Print(Sender: TObject);
begin
  inherited;
  (Sender as TppShape).Visible := not ppshape4.Visible;
end;

procedure TfAgingCXP.ppLabel29Print(Sender: TObject);
begin
  inherited;
  with (Sender as TppPrintable) do begin
    Visible := not fr.ItemIndex = 1;
  end;
end;

procedure TfAgingCXP.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
    idEnt.Text := inttostr(BuscarSuplidor());
end;

procedure TfAgingCXP.cxButton2Click(Sender: TObject);
begin

 inherited;
  with mAging do begin
    if Active then begin
      if State in dsEditModes then
        Post();
      DisableControls();
      try
        if fr.ItemIndex = 4 then
          Estado.Print()
        else if fr.ItemIndex = 3 then
          RPTVencimiento.Print()
        else if fr.ItemIndex = 2 then
          CxPResumen.Print()
        else if fr.ItemIndex = 1 then
          ReportNCR.Print()
        else
          Reporte.Print();
      finally
        EnableControls();
      end;
    end;
  end;
end;

procedure TfAgingCXP.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close()
end;

end.
