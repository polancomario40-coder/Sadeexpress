unit uCentralEncuesta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  Buttons, kbmMemTable, StdCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, ADODB, DateUtils, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  uform, Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCurrencyEdit, cxCheckBox, cxButtonEdit,
  cxLookAndFeelPainters, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, myChkBox, cxLabel, ppParameter, Menus,
  cxGridBandedTableView, cxGridDBBandedTableView, Grids, Wwdbigrd, Wwdbgrid,
  ppDesignLayer, ppChrt, ppChrtDP, ppStrtch, ppSubRpt;

type
  TCentralEncuesta = class(TFForm)
    Report: TppReport;
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
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLabel18: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppShape7: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText13: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    StyleController: TdxEditStyleController;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel8: TppLabel;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    dsAgendaRPT: TDataSource;
    rsTiposNota: TADODataSet;
    dsTiposNota: TDataSource;
    rsTiposNotaIdTipoNota: TStringField;
    rsTiposNotaTipoNota: TStringField;
    rsTiposNotaInformacion: TBooleanField;
    rsTiposNotaAgendar: TBooleanField;
    dbp_agenda: TppDBPipeline;
    rptAgenda: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText31: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppDBText40: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel30: TppLabel;
    PopupMenu1: TPopupMenu;
    VerCliente1: TMenuItem;
    EstadodeCuenta1: TMenuItem;
    AntiguedaddeSaldos1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    dsSaldo: TDataSource;
    cxGridDBTableView4Registro: TcxGridDBColumn;
    cxGridDBTableView4Numero: TcxGridDBColumn;
    cxGridDBTableView4fecha: TcxGridDBColumn;
    cxGridDBTableView4idCliente: TcxGridDBColumn;
    cxGridDBTableView4Cliente: TcxGridDBColumn;
    cxGridDBTableView4Telefono: TcxGridDBColumn;
    cxGridDBTableView4Producto: TcxGridDBColumn;
    cxGridDBTableView4Valor: TcxGridDBColumn;
    cxGridDBTableView4usuario: TcxGridDBColumn;
    cxGridDBTableView4Sucursal: TcxGridDBColumn;
    Button1: TButton;
    deDesde1: TcxDateEdit;
    dehasta2: TcxDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    rsSaldo: TADODataSet;
    rsSaldoRegistro: TStringField;
    rsSaldoNumero: TStringField;
    rsSaldofecha: TDateTimeField;
    rsSaldoCliente: TStringField;
    rsSaldoTelefono: TStringField;
    rsSaldoProducto: TStringField;
    rsSaldoValor: TBCDField;
    rsSaldousuario: TStringField;
    rsSaldoSucursal: TStringField;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    rsEncuesta: TADODataSet;
    dsEncuesta: TDataSource;
    cxGridDBTableView5idPreguntas: TcxGridDBColumn;
    cxGridDBTableView5idRepuestas: TcxGridDBColumn;
    cxGridDBTableView5Nota: TcxGridDBColumn;
    TipoEncuesta: TcxLookupComboBox;
    rsTipoEncuesta: TADODataSet;
    dsTipoEncuesta: TDataSource;
    rsTipoEncuestaidEncuesta: TStringField;
    rsTipoEncuestaEncuesta: TStringField;
    dsPreguntas: TDataSource;
    rsEncuestaidCliente: TIntegerField;
    rsEncuestaFecha: TDateTimeField;
    rsEncuestaNota: TWideStringField;
    rsEncuestaidEncuesta: TStringField;
    rsEncuestaidPreguntas: TStringField;
    rsEncuestaidRepuestas: TStringField;
    rsSaldoidCliente: TIntegerField;
    dsRespuestas: TDataSource;
    rsRespuestas: TADODataSet;
    rsRespuestasidRespuestas: TStringField;
    rsRespuestasRespuestas: TStringField;
    rsRespuestasidPreguntas: TStringField;
    rsPreguntas: TADODataSet;
    rsPreguntasidPreguntas: TStringField;
    rsPreguntasPreguntas: TStringField;
    rsPreguntasidEncuesta: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Respuestas: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Preguntas: TcxGridDBColumn;
    listpreguntas: TADODataSet;
    dslistpreguntas: TDataSource;
    listpreguntasidPreguntas: TStringField;
    listpreguntasidEncuesta: TStringField;
    listpreguntasPreguntas: TStringField;
    listRespuestas: TADODataSet;
    dsListRespuestas: TDataSource;
    listRespuestasidPreguntas: TStringField;
    listRespuestasidRespuestas: TStringField;
    listRespuestasRespuestas: TStringField;
    luTipo: TcxLookupComboBox;
    rsRPTAgenda: TADODataSet;
    rsRPTAgendaidcliente: TIntegerField;
    rsRPTAgendaFecha: TDateTimeField;
    rsRPTAgendaCliente: TStringField;
    rsRPTAgendaRespuestas: TStringField;
    rsRPTAgendaNota: TWideStringField;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    rsRPTAgendapreguntas: TStringField;
    cxGridDBTableView3Cliente: TcxGridDBColumn;
    cxGridDBTableView3Respuestas: TcxGridDBColumn;
    cxGridDBTableView3Nota: TcxGridDBColumn;
    cxGridDBTableView3preguntas: TcxGridDBColumn;
    rsEncuestaFechaEncuesta: TDateTimeField;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    rsRPTAgendaEncuesta: TStringField;
    ppDBText29: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel23: TppLabel;
    ppLine3: TppLine;
    rsEncuestaidSucursal: TStringField;
    rsRPTAgendaidSucursal: TStringField;
    cxGridDBTableView3DBColumn1: TcxGridDBColumn;
    procedure ppShape2Print(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGridDBTableView4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TipoEncuestaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure rsEncuestaNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure AbrirEstado;
    function BuscarCliente(const idCli: Integer): Boolean;
    procedure BuscaUltimoPago;
    procedure BuscaNotasCliente;
    procedure MostrarAgenda;
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  end;

var
  CentralEncuesta     : TCentralEncuesta;

implementation

uses uData, UUtiles, uBusqueda, uCXC, uNotasGestionCobros,
  uRecibo, uCliente, uEstadoCuenta, uEstadoCuentaPend, ucxcAging;

{$R *.dfm}

procedure TCentralEncuesta.AbrirEstado;
begin

end;

procedure TCentralEncuesta.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

function TCentralEncuesta.BuscarCliente(const idCli: Integer): Boolean;
begin

end;


procedure TCentralEncuesta.DoShowstate;
begin
  inherited;
end;

procedure TCentralEncuesta.BuscaUltimoPago;
begin
  inherited;


end;

procedure TCentralEncuesta.BuscaNotasCliente;
begin

end;

procedure TCentralEncuesta.FormCreate(Sender: TObject);
begin
  inherited;
  rsTiposNota.Open();
  rsTipoEncuesta.Open();
  rsPreguntas.Open();
  rsRespuestas.Open();
  listPreguntas.Open();
  listRespuestas.Open();

  deDesde.date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
  deDesde1.Date := dm.FechaDesde;
  deHasta2.Date := dm.FechaHasta;
  
end;

procedure TCentralEncuesta.cxButton1Click(Sender: TObject);
begin
  inherited;
  MostrarAgenda();
end;

procedure TCentralEncuesta.MostrarAgenda();
begin

  with rsRPTAgenda do begin
    Close();
    if luTipo.EditValue = NULL then
      Parameters[1].Value := NULL
    else
      Parameters[1].Value := luTipo.EditValue;
    Parameters[2].Value := deDesde.Date;
    Parameters[3].Value := deHasta.Date;
    Open();
    
  end;
end;


procedure TCentralEncuesta.cxButton2Click(Sender: TObject);
begin
  inherited;
  ImprimirReporte(rptAgenda);
end;

procedure TCentralEncuesta.Button1Click(Sender: TObject);
begin
  inherited;

  rsSaldo.Close;
  rsSaldo.Parameters[1].Value :=deDesde1.Date;
  rsSaldo.Parameters[2].Value :=deHasta2.Date;
  rsSaldo.Open();
end;

procedure TCentralEncuesta.cxGridDBTableView4CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

 
  rsEncuesta.close;
  rsEncuesta.Parameters[1].Value:=rsSaldoidCliente.Value;
  rsEncuesta.Parameters[2].Value:= TipoEncuesta.EditValue;
  rsEncuesta.Parameters[3].Value:= rsSaldoFecha.Value;
  rsEncuesta.Open;
  rsPreguntas.Close;
  rsPreguntas.Open;




end;

procedure TCentralEncuesta.TipoEncuestaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  rsPreguntas.Close;
  rsPreguntas.Parameters[1].Value :=TipoEncuesta.EditValue;
  rsPreguntas.Open;
end;

procedure TCentralEncuesta.rsEncuestaNewRecord(DataSet: TDataSet);
begin
  inherited;
  //rsEncuestaidCliente.Value:=rsSaldoidCliente.Value;
  //rsEncuestaidEncuesta.Value:= TipoEncuesta.EditValue;
  //rsEncuestaFecha.Value:= rsSaldoFecha.Value; // EncuestaFecha.EditValue;
  //rsEncuestaFechaEncuesta.Value:=  dm.FechaHoy;
end;

procedure TCentralEncuesta.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;


    rsEncuesta.First;
    rsEncuesta.Insert;
    rsEncuestaidCliente.Value:=rsSaldoidCliente.Value;
    rsEncuestaidEncuesta.Value:= TipoEncuesta.EditValue;
    rsEncuestaFecha.Value:= rsSaldoFecha.Value; // EncuestaFecha.EditValue;
    rsEncuestaFechaEncuesta.Value:=  dm.FechaHoy;
    rsEncuestaidSucursal.Value := rsSaldoSucursal.Value;
    rsEncuestaidPreguntas.Value := rsPreguntasidPreguntas.Value;
    rsEncuestaidRepuestas.Value := rsRespuestasidRespuestas.Value;
    rsEncuesta.Post;
    //if Not(rsPreguntas.Eof) then rsPreguntas.Next;

    //showmessage(inttostr(rsPreguntas.RecordCount));

end;

end.

