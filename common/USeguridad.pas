unit USeguridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ComCtrls,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Mask, wwdbedit, ADODB, kbmMemTable,
  Wwkeycb, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, uformx, cxContainer, cxLabel, ExtCtrls, cxPC, Gradient,
  cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons, cxTextEdit,
  cxCheckBox, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter;

type
  TSeguridad = class(TFFormx)
    DSegGrupo: TDataSource;
    DSegUser: TDataSource;
    DSegUserinGrp: TDataSource;
    DQSegPermiso: TDataSource;
    DQSegUserGrp: TDataSource;
    DQSegObjeto: TDataSource;
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    pcSeguridad: TcxPageControl;
    tsUsuarios: TcxTabSheet;
    tsPermisos: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    Panel1: TPanel;
    Gradient3: TGradient;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    Gradient4: TGradient;
    cxLabel2: TcxLabel;
    cxGridDBTableView2idSegUserGrp: TcxGridDBColumn;
    cxGridDBTableView2Clave: TcxGridDBColumn;
    cxGridDBTableView2ObjetoDefault: TcxGridDBColumn;
    cxGridDBTableView2Nivel: TcxGridDBColumn;
    cxGridDBTableView2Activo: TcxGridDBColumn;
    cxGridDBTableView2esGrupo: TcxGridDBColumn;
    cxGridDBTableView1idSegGrupo: TcxGridDBColumn;
    cxGridDBTableView1idSegUser: TcxGridDBColumn;
    Panel4: TPanel;
    Gradient6: TGradient;
    cxLabel4: TcxLabel;
    Panel5: TPanel;
    Gradient7: TGradient;
    cxLabel5: TcxLabel;
    cxGridDBTableView5idSegUserGrp: TcxGridDBColumn;
    cxGridDBTableView5Agregar: TcxGridDBColumn;
    cxGridDBTableView5Editar: TcxGridDBColumn;
    cxGridDBTableView5Borrar: TcxGridDBColumn;
    cxGridDBTableView5Imprimir: TcxGridDBColumn;
    cxGridDBTableView5Abrir: TcxGridDBColumn;
    cxGridDBTableView5Anular: TcxGridDBColumn;
    cxGridDBTableView5Aprobar: TcxGridDBColumn;
    cxGridDBTableView5idSegObjeto: TcxGridDBColumn;
    Gradient8: TGradient;
    bSalir: TcxButton;
    Panel6: TPanel;
    Gradient9: TGradient;
    cxLabel6: TcxLabel;
    Panel7: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    Panel8: TPanel;
    Gradient10: TGradient;
    cxLabel7: TcxLabel;
    rsUsuarioEmp: TADODataSet;
    rsUsuarioEmpidEmpresa: TGuidField;
    rsUsuarioEmpidSegUserGrp: TStringField;
    dsUsuarioEmp: TDataSource;
    cxGridDBTableView6idEmpresa: TcxGridDBColumn;
    dsEmpresas: TDataSource;
    QSegUser: TADOQuery;
    QSegUseridSegUserGrp: TStringField;
    QSegUserClave: TStringField;
    QSegUserObjetoDefault: TStringField;
    QSegUserNivel: TSmallintField;
    QSegUserActivo: TBooleanField;
    QSegUseresGrupo: TBooleanField;
    QSegUserGuidUserGrp: TGuidField;
    QSegUserinGrp: TADOQuery;
    QSegUserinGrpidSegGrupo: TStringField;
    QSegUserinGrpidSegUser: TStringField;
    cxTabSheet1: TcxTabSheet;
    SegUserGrps: TADOQuery;
    cxGrid7: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    UsergrpPermisos: TADOQuery;
    dsSegUsrGrps: TDataSource;
    dsUserGrpPermisos: TDataSource;
    cxGridDBTableView7idSegUserGrp: TcxGridDBColumn;
    cxGridDBTableView7Activo: TcxGridDBColumn;
    cxGridDBTableView7esGrupo: TcxGridDBColumn;
    cxGridDBTableView7GuidUserGrp: TcxGridDBColumn;
    cxGrid8: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    UsergrpPermisosCategoria: TStringField;
    UsergrpPermisosSegObjeto: TStringField;
    UsergrpPermisosAgregar: TWordField;
    UsergrpPermisosEditar: TWordField;
    UsergrpPermisosBorrar: TWordField;
    UsergrpPermisosImprimir: TWordField;
    UsergrpPermisosAbrir: TWordField;
    UsergrpPermisosAnular: TWordField;
    UsergrpPermisosAprobar: TWordField;
    UsergrpPermisosidSegObjeto: TStringField;
    cxGridDBTableView8Categoria: TcxGridDBColumn;
    cxGridDBTableView8SegObjeto: TcxGridDBColumn;
    cxGridDBTableView8Agregar: TcxGridDBColumn;
    cxGridDBTableView8Editar: TcxGridDBColumn;
    cxGridDBTableView8Borrar: TcxGridDBColumn;
    cxGridDBTableView8Imprimir: TcxGridDBColumn;
    cxGridDBTableView8Abrir: TcxGridDBColumn;
    cxGridDBTableView8Anular: TcxGridDBColumn;
    cxGridDBTableView8Aprobar: TcxGridDBColumn;
    cxGridDBTableView8idSegObjeto: TcxGridDBColumn;
    UsergrpPermisosrowguid: TGuidField;
    cxGridDBTableView7DBColumn1: TcxGridDBColumn;
    UsergrpPermisosidSegUserGrp: TStringField;
    plPermisos: TppDBPipeline;
    RptPermisos: TppReport;
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
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape2: TppShape;
    cxButton1: TcxButton;
    QSegUserEmail: TStringField;
    cxGridDBTableView2Email: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    rsRPT: TADODataSet;
    rsRPTidSegObjeto: TStringField;
    rsRPTCategoria: TStringField;
    rsRPTAgregar: TWordField;
    rsRPTEditar: TWordField;
    rsRPTBorrar: TWordField;
    rsRPTAbrir: TWordField;
    rsRPTImprimir: TWordField;
    rsRPTAnular: TWordField;
    rsRPTAprobar: TWordField;
    rsRPTidSeguserGrp: TStringField;
    rsRPTNombre: TStringField;
    dsRPT: TDataSource;
    rsRPTDescripcion: TStringField;
    SegUserGrpsidSegUserGrp: TStringField;
    SegUserGrpsesGrupo: TBooleanField;
    SegUserGrpsActivo: TBooleanField;
    SegUserGrpsGuidUserGrp: TGuidField;
    SegUserGrpsNivel: TIntegerField;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3idSegUserGrp: TcxGridDBColumn;
    cxGridDBTableView3esGrupo: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel3: TPanel;
    Gradient5: TGradient;
    cxLabel3: TcxLabel;
    Panel9: TPanel;
    Gradient11: TGradient;
    cxLabel8: TcxLabel;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    dsUserGrafico: TDataSource;
    QUserGrafico: TADOQuery;
    QUserGraficoidSegUser: TStringField;
    QUserGraficoProcedimiento: TStringField;
    cxGridDBTableView9DBColumn1: TcxGridDBColumn;
    QGraficos: TADOQuery;
    QGraficosProcedimiento: TStringField;
    QGraficosNombre: TStringField;
    DSQGraficos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo2NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure bSalirClick(Sender: TObject);
    procedure QSegUserAfterScroll(DataSet: TDataSet);
    procedure QSegUserNewRecord(DataSet: TDataSet);
    procedure QSegUserinGrpNewRecord(DataSet: TDataSet);
    procedure rsUsuarioEmpNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure QUserGraficoNewRecord(DataSet: TDataSet);
  private
    fLoarding : Boolean;
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  end;

var
  Seguridad: TSeguridad;

implementation

uses Udata, udmRepository, Math, uUsuario;

{$R *.dfm}

procedure TSeguridad.FormCreate(Sender: TObject);
begin
    inherited;
    fLoarding := True;

    DSegGrupo.DataSet.Open;
    DSegUser.DataSet.Open;
    DSegUserinGrp.DataSet.Open;
    DQSegPermiso.DataSet.Open;
    DQSegUserGrp.DataSet.Open;
    DQSegObjeto.DataSet.Open;
    QGraficos.Open;
    QSegUserAfterScroll(QSegUser);
    SegUserGrps.open;
    UserGrpPermisos.open;
    CrearLog('Acceso');

    fLoarding := False;
end;

procedure TSeguridad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    if DQSegObjeto.dataset.Filtered then
      DQSegObjeto.dataset.Filtered := false;
      
    DSegGrupo.DataSet.Close;
    DSegUser.DataSet.Close;
    DSegUserinGrp.DataSet.Close;
    DQSegPermiso.DataSet.Close;
    DQSegUserGrp.DataSet.Close;
    DQSegObjeto.DataSet.Close;
end;

procedure TSeguridad.wwDBLookupCombo2NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  inherited;
  accept := false;
end;

procedure TSeguridad.bSalirClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TSeguridad.QSegUserAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if fLoarding then Exit;
  
  with rsUsuarioEmp do begin
    Close();
    Parameters[1].Value := qSegUserIdSegUserGrp.Value;
    Open();
  end;

  with QUserGrafico do begin
    Close();
    Parameters[0].Value := QSegUseridSegUserGrp.Value;
    Open();
  end;

  with QSegUserinGrp do begin
    Close();
    Parameters[0].Value := QSegUseridSegUserGrp.Value;
    Open();
  end;
end;

procedure TSeguridad.QSegUserNewRecord(DataSet: TDataSet);
begin
  inherited;
  QSegUserActivo.Value := True;
  QSegUseresGrupo.Value := False;
  QSegUserNivel.Value := 3;
  QSegUserGuidUserGrp.AsGuid := dm.NewGUID();
end;

procedure TSeguridad.QSegUserinGrpNewRecord(DataSet: TDataSet);
begin
  inherited;
  qSegUserinGrpidSegUser.Value := QSegUseridSegUserGrp.value;
end;

procedure TSeguridad.rsUsuarioEmpNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsUsuarioEmpIdSegUserGrp.Value := QSegUserIdSegUserGrp.Value;
end;

procedure TSeguridad.DoShowstate;
begin
  inherited;
  if (xValue <> NULL) and (xField = 'Objeto') then begin
    DQSegObjeto.dataset.Filter := 'idSegObjeto = '''+ XValue + '''';
    DQSegObjeto.dataset.Filtered := true;
  end;
end;

procedure TSeguridad.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsRPT do begin
    Close();
    Parameters[1].Value := SegUserGrpsidSegUserGrp.Value;
    Open();
  end;
  Imprimir(RptPermisos);
end;

procedure TSeguridad.cxButton2Click(Sender: TObject);
begin
  inherited;
   CrearUsuario();
   qSegUser.Requery();
end;

procedure TSeguridad.cxButton3Click(Sender: TObject);
begin
  inherited;
  AbrirUsuario(QSegUseridSegUserGrp.Value);
  qSegUser.Requery();
end;

procedure TSeguridad.QUserGraficoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUserGraficoidSegUser.Value := QSegUseridSegUserGrp.value;
end;

end.
