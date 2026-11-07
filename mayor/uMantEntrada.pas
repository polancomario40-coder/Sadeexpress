unit uMantEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor, ExtCtrls, DB,
  dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons,
  dxLayout, dxGrClEx, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppRichTx, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ppMemo, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxButtonEdit, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxLabel, cxDBLabel, Gradient, uformx, cxLookAndFeelPainters, cxButtons,
  cxImageComboBox, ppParameter;

type
  TMantEntrada = class(TFFormx)
    EntSource: TDataSource;
    EntDtlSource: TDataSource;
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    Panel4: TPanel;
    Shape4: TShape;
    meNum: TdxDBMaskEdit;
    TiposEntSource: TDataSource;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    meConcepto: TdxDBMemo;
    leTipo: TdxDBLookupEdit;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    plDetalle: TppBDEPipeline;
    plEntrada: TppBDEPipeline;
    ppDBRichText1: TppDBRichText;
    StyleController: TdxEditStyleController;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sbSave: TcxButton;
    sbCancel: TcxButton;
    btnSalir: TcxButton;
    sbPrint: TcxButton;
    sbNew: TcxButton;
    sbBuscar: TcxButton;
    sbBorrar: TcxButton;
    deFecha: TcxDBDateEdit;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppDBText2: TppDBText;
    ppLine7: TppLine;
    rsCCAct: TADODataSet;
    rsCCActidCentroCosto: TGuidField;
    rsCCActCentroCosto: TStringField;
    rsCCActCentroCostoDesc: TStringField;
    rsCCActActivo: TBooleanField;
    rsCCActTipo: TStringField;
    rsCCActReferencia: TStringField;
    rsCCActidCentroCostoParent: TGuidField;
    rsCCActOrden: TIntegerField;
    rsCCActNivel: TIntegerField;
    rsCCActStatus: TStringField;
    rsPartidas: TADODataSet;
    dsPartidas: TDataSource;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1idCuenta: TcxGridDBColumn;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1Debito: TcxGridDBColumn;
    GridDBTableView1Credito: TcxGridDBColumn;
    GridDBTableView1idPartida: TcxGridDBColumn;
    GridDBTableView1DescrCta: TcxGridDBColumn;
    GridDBTableView1CentroCosto: TcxGridDBColumn;
    rsPartidasidPartida: TStringField;
    rsPartidasPartida: TStringField;
    rsPartidasidUnidad: TStringField;
    rsPartidasCostoUnidad: TBCDField;
    rsPartidasCompuesto: TBooleanField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    cxDBLabel1: TcxDBLabel;
    ppLabel12: TppLabel;
    ppLine10: TppLine;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    Gradient2: TGradient;
    cxLabel2: TcxLabel;
    Gradient3: TGradient;
    cxLabel3: TcxLabel;
    Gradient4: TGradient;
    cxLabel4: TcxLabel;
    sbEdit: TcxButton;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    GridDBTableView1TipoGasto: TcxGridDBColumn;
    ppReport1: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLine11: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBRichText2: TppDBRichText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText11: TppDBText;
    ppLine12: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppDBText16: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine13: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel21: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel24: TppLabel;
    ppLine20: TppLine;
    ppDBText17: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppShape1Print(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure sbBuscarClick(Sender: TObject);
    procedure sbBorrarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure GridColumn10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1CentroCostoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
  private
    FEnter2Tab: Boolean;
    procedure ActualizarBotones;
  protected
    procedure CrearLog(Accion: String); override;
    { Private declarations }
  public
    { Public declarations }
    procedure GuardarEntrada;
    procedure AbrirEntrada(const EntId: Variant);
    procedure BuscarEntrada;
    procedure NuevaEntrada;
    procedure ImprimirEntrada;
    property Enter2Tab: Boolean read FEnter2Tab write FEnter2Tab;
  end;

var
  MantEntrada: TMantEntrada;

procedure AbrirEntradaDiario(const idEnt: Variant);

implementation

uses ugldm, uBuscarED, uBuscarCuentaMayor, uEDToolBar,variants, uBuscarCC,
  UUtiles, Udata;

{$R *.dfm}

procedure TMantEntrada.CrearLog(Accion: String);
begin
  dm.CreateLog(Accion, self.Caption, entsource.dataset.fieldbyname(LogField).DisplayName + ':' + entsource.dataset.fieldbyname(LogField).AsString);
end;

procedure TMantEntrada.FormCreate(Sender: TObject);
var
  VerCC: Variant;
begin
  Inherited;

  if not dm.rsPartidas.Active then
    dm.rsPartidas.Open();
    
  Modulo := 'Contabilidad';

  LogField := 'NumeroEntrada';  
  Enter2Tab := True;

  if not gldm.rsCatalogo.Active then
    gldm.rsCatalogo.Open();

  if not gldm.rsTipos.Active then
    gldm.rsTipos.Open();

//  NuevaEntrada();
  gldm.CerrarEntrada();
  appEstado := appBrowse;
  ActualizarBotones();

  Vercc :=  dm.GetDefault('AFECTAR_CC_ED');
  if (VerCC = NULL) or (VerCC = '0') then begin
    GridDBTableView1CentroCosto.Visible := False;
    GridDBTableView1IdPartida.Visible := False;
    GridDBTableView1TipoGasto.Visible := False;
  end;
end;

procedure TMantEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if not Enter2Tab then
    Exit;
    
  If (ActiveControl <> Grid) and (ActiveControl <> meConcepto) then begin
    if Key = 13 then begin
      SelectNext(ActiveControl,True,True);
      Key := 0;
    end;
  end;
end;

procedure TMantEntrada.GuardarEntrada;
begin
  if gldm.mEntradaFecha.Value <= dm.Cierre(Modulo) then
    raise Exception.Create('ERROR: La fecha de la entrada ha sido cerrada');

  gldm.BajarEntrada();
  appEstado := appBrowse;

  ActualizarBotones();
end;

procedure TMantEntrada.AbrirEntrada(const EntId: Variant);
begin
  gldm.SubirEntrada(EntId);
  if Visible then
    meNum.SetFocus();

  appEstado := appBrowse;

  ActualizarBotones();
end;

procedure TMantEntrada.BuscarEntrada;
var
  eid: Variant;
begin
  eid := BuscarEntradaId();
  if eid <> NULL then
    AbrirEntrada(eid);
end;

procedure TMantEntrada.NuevaEntrada;
begin
  gldm.NuevaEntrada();
//  meNum.SetFocus();
  appEstado := appInsert;
  ActualizarBotones();
end;

procedure TMantEntrada.ppShape1Print(Sender: TObject);
begin
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TMantEntrada.ImprimirEntrada;
begin
  Imprimir(Report);
end;

procedure TMantEntrada.sbSaveClick(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);

//  if gldm.mEntrada.ReadOnly then
//    ShowMessage('No puede guardar esta entrada: Pertenece a un periodo cerrado')
//  else
  GuardarEntrada();

  if (appestado = appInsert) then
        CrearLog('Insertar')
     else
        CrearLog('Edicion');
end;

procedure TMantEntrada.sbNewClick(Sender: TObject);
begin
  NuevaEntrada();
  appEstado := appInsert;
end;

procedure TMantEntrada.sbCancelClick(Sender: TObject);
begin
  if MessageDlg('Esta seguro de cancelar esta operacion',mtConfirmation,[mbYes, mbNo],0) = mrYes then begin
    if appEstado = appInsert then //gldm.mEntradaIdEntrada.Value = NULL then
      gldm.CerrarEntrada()
    else 
      AbrirEntrada(gldm.mEntradaIdEntrada.Value);
  end;
  appEstado := appBrowse;
  ActualizarBotones();
end;

procedure TMantEntrada.sbPrintClick(Sender: TObject);
begin
  ImprimirEntrada();
  CrearLog('Imprimir');
end;

procedure TMantEntrada.sbBuscarClick(Sender: TObject);
begin
  BuscarEntrada();
end;

procedure TMantEntrada.sbBorrarClick(Sender: TObject);
begin
  if gldm.mEntrada.Active then begin
    if gldm.mEntradaIdEntrada.IsNull = False then begin
      if gldm.mEntradaFecha.Value <= dm.Cierre(Modulo) then
        raise Exception.Create('Esta entrada pertenece a un periodo cerrado y no puede ser borrada');

      if MessageDlg('Esta seguro de borrar esta entrada',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
        gldm.BorrarEntrada(gldm.mEntradaidEntrada.Value);
        gldm.CerrarEntrada();
        CrearLog('Borrado');
        appEstado := appBrowse;
        ActualizarBotones();
      end;
    end;
  end;
end;

procedure TMantEntrada.btnSalirClick(Sender: TObject);
begin
  Close();
end;

procedure TMantEntrada.GridColumn10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  i: Variant;
begin
  if appEstado = appBrowse then
    Exit;

  if not gldm.mEntrada.ReadOnly then begin
    i := BuscarCentroCosto();
    if i <> null then begin
      with rsCCAct do begin
        Close();
        Parameters[1].Value := i;
        Parameters[2].Value := NULL;
        Open();
        if Eof then
          raise Exception.Create('Este centro de costo no existe');
      end;
      if not (gldm.mEntDtl.State in dsEditModes) then
        gldm.mEntDtl.Edit();
      gldm.mEntdtlidCentroCosto.Value := i;
      gldm.mEntdtlCentroCosto.Value := rsCCActCentroCosto.Value;
    end;
  end;
end;

procedure TMantEntrada.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cta: string;
begin
  if appEstado = appBrowse then
    Exit;

  if not gldm.mEntrada.ReadOnly then begin
    cta := BuscarCtaDetalle();
    if cta <> '' then begin
      if not (gldm.mEntdtl.State in dsEditModes) then
        gldm.mEntDtl.Edit();

      gldm.mEntdtlidCuenta.AsString := cta;
    end;
  end;
end;

procedure TMantEntrada.cxGrid1DBTableView1CentroCostoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Variant;
begin
  if appEstado = appBrowse then
    Exit;

  if not gldm.mEntrada.ReadOnly then begin
    i := BuscarCentroCosto();
    if i <> null then begin
      with rsCCAct do begin
        Close();
        Parameters[1].Value := i;
        Parameters[2].Value := NULL;
        Open();
        if Eof then
          raise Exception.Create('Este centro de costo no existe');
      end;
      if not (gldm.mEntDtl.State in dsEditModes) then
        gldm.mEntDtl.Edit();
      gldm.mEntdtlidCentroCosto.Value := i;
      gldm.mEntdtlCentroCosto.Value := rsCCActCentroCosto.Value;
    end;
  end;
end;

procedure TMantEntrada.GridEnter(Sender: TObject);
begin
  if appEstado = appBrowse then
    Exit;

  if gldm.mEntrada.ReadOnly = false then begin
    if not (gldm.mEntdtl.State in dsEditModes) then begin
      if gldm.mEntdtl.RecordCount = 0 then begin
        gldm.mEntdtl.Append();
        GridDBTableView1.Columns[0].Focused := True;
      end;
    end;
  end;
  Enter2Tab := False;
end;

procedure TMantEntrada.GridExit(Sender: TObject);
begin
  Enter2Tab := True;
end;

procedure AbrirEntradaDiario(const idEnt: Variant);
begin
  with TMantEntrada.Create(Application) do begin
    try
      AbrirEntrada(idEnt);
      ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure TMantEntrada.ActualizarBotones;
begin
  if appEstado = appBrowse then begin

    EntDtlSource.AutoEdit := False;
    EntSource.AutoEdit := False;

    sbNew.Enabled := dm.Tienepermiso(pAgregar,Permisos);
    sbEdit.Enabled := gldm.mEntrada.Active and dm.Tienepermiso(pEditar,Permisos);
    sbCancel.Enabled := False;
    sbPrint.Enabled := gldm.mEntrada.Active and dm.Tienepermiso(pImprimir,Permisos);
    sbSave.Enabled := False;
    sbBorrar.Enabled := gldm.mEntrada.Active and dm.Tienepermiso(pBorrar,Permisos);
    sbBuscar.Enabled := True;
    btnSalir.Enabled := True;
    if sbEdit.Enabled and (gldm.mEntradaFecha.AsDateTime <= dm.Cierre(Modulo)) then
      sbEdit.Enabled := False;

    if sbBorrar.Enabled and (gldm.mEntradaFecha.AsDateTime <= dm.Cierre(Modulo)) then
      sbBorrar.Enabled := False;

  end
  else begin
    EntDtlSource.AutoEdit := True;
    EntSource.AutoEdit := True;

    sbNew.Enabled := False;
    sbEdit.Enabled := False;
    sbCancel.Enabled := True;
    sbPrint.Enabled := False;
    sbSave.Enabled := True;
    sbBorrar.Enabled := False;
    sbBuscar.Enabled := False;
    btnSalir.Enabled := False;
  end;
end;

procedure TMantEntrada.sbEditClick(Sender: TObject);
begin
  inherited;
  if gldm.mEntrada.Active = False then
    Exit;

  if gldm.mEntradaFecha.AsDateTime <= dm.Cierre(Modulo) then
    raise Exception.Create('Esta fecha ya esta cerrada, no puede modificar esta entrada');
    
  gldm.EditarEntrada();
  appEstado := appEdit;
  ActualizarBotones();
end;

end.
