unit uPagoACH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Gradient, ADODB, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppStrtch, ppMemo;

type
  TPagoACH = class(TSimpleForm)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Gradient3: TGradient;
    rsToBancoACHRpt: TADODataSet;
    Gradient4: TGradient;
    Label3: TLabel;
    cxButton4: TcxButton;
    rsToBancoACHRptIdDocumento: TAutoIncField;
    rsToBancoACHRptCuentaDestino: TStringField;
    rsToBancoACHRptCodigoBanco: TStringField;
    rsToBancoACHRptTipoCuenta: TStringField;
    rsToBancoACHRptSuplidor: TStringField;
    rsToBancoACHRptTipoMovimiento: TStringField;
    rsToBancoACHRptTotal: TBCDField;
    rsToBancoACHRptReferencia: TStringField;
    rsToBancoACHRptDescripcion: TStringField;
    cxGrid1DBTableView1IdDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1CuentaDestino: TcxGridDBColumn;
    cxGrid1DBTableView1CodigoBanco: TcxGridDBColumn;
    cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn;
    cxGrid1DBTableView1Suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1TipoMovimiento: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxButton5: TcxButton;
    rsToACH: TADODataSet;
    rsToACHCadena: TStringField;
    Save: TSaveDialog;
    plRelacionPagoACH: TppDBPipeline;
    rptRelacionPagoACH: TppReport;
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
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    lDesdeHasta: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBText4: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel6: TppLabel;
    cxButton6: TcxButton;
    rsToPagosTerceros: TADODataSet;
    rsToPagosTercerosCadena: TStringField;
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure lDesdeHastaPrint(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagoACH: TPagoACH;

implementation

uses Udata;

{$R *.dfm}

procedure TPagoACH.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TPagoACH.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.DBFecha;
  deHasta.Date := dm.DBFecha;
end;

procedure TPagoACH.cxButton1Click(Sender: TObject);
begin
  inherited;
  With rsToBancoACHRpt, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := deDesde.Date;
    ParamByName('@Hasta').Value := deHasta.Date;

    Open();
  End;
end;

procedure TPagoACH.cxButton4Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  With rsToACH, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@Desde').Value := deDesde.Date;
      ParamByName('@Hasta').Value := deHasta.Date;
      Open;

      First;
      AssignFile(Banco, Save.Filename);
      ReWrite(Banco);
      While Not Eof Do
      Begin
        Write(Banco, rsToACHCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Banco);
    End;
  End;
end;

procedure TPagoACH.lDesdeHastaPrint(Sender: TObject);
begin
  inherited;
  lDesdeHasta.Caption := 'Desde: ' + DateToStr(deDesde.Date) + ' Hasta: ' + DateToStr(deHasta.Date);
end;

procedure TPagoACH.cxButton2Click(Sender: TObject);
begin
  inherited;
  If rsToBancoACHRpt.Active Then
  Begin
    rptRelacionPagoACH.Print;
  End;
end;

procedure TPagoACH.cxButton6Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  With rsToPagosTerceros, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@Desde').Value := deDesde.Date;
      ParamByName('@Hasta').Value := deHasta.Date;
      Open;

      First;
      AssignFile(Banco, Save.Filename);
      ReWrite(Banco);
      While Not Eof Do
      Begin
        Write(Banco, rsToPagosTercerosCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Banco);
    End;
  End;
end;

end.
