unit uCentroCostTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, dxCntner, dxTL, dxDBCtrl, dxDBTL, ComCtrls, ToolWin,
  ExtCtrls, Menus, dxDBTLCl, Buttons, {ImgList,} StdCtrls, DBCtrls, Grids,
  DBGrids, ShellAPI, dxEditor, dxExEdtr, dxEdLib, dxDBELib, ImgList,uform,
  Wwdatsrc, ADODB, Mask, Wwkeycb, wwdblook, wwdbedit, Wwdbigrd, Wwdbgrid,
  dxDBGrid, ActnList, ActnMan, dxGrClms, XPStyleActnCtrls, dxDBEdtr,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC,
  cxCalendar, cxCheckBox, cxMemo, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxSplitter, cxButtonEdit, DBActns;

type
  TCentroCostoTree = class(TFForm)
    Images: TImageList;
    ImageList1: TImageList;
    Panel2: TPanel;
    DBTreeList: TdxDBTreeList;
    ToolBar1: TToolBar;
    btnAdd: TToolButton;
    btnAddChild: TToolButton;
    ToolButton1: TToolButton;
    btnShowGrid: TToolButton;
    ToolButton4: TToolButton;
    btnFullCollapse: TToolButton;
    btnFullExpand: TToolButton;
    DBTreeListColumn1: TdxDBTreeListColumn;
    DBTreeListColumn2: TdxDBTreeListColumn;
    ActionLst: TActionManager;
    rsControles: TADODataSet;
    dsControles: TDataSource;
    luControl: TcxLookupComboBox;
    PopupMenu1: TPopupMenu;
    miResumen: TMenuItem;
    miDetalle: TMenuItem;
    rsControlesidCentroCosto: TGuidField;
    rsControlesCentroCosto: TStringField;
    RS: TADODataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    CCGrupo: TADODataSet;
    dsCCGrupo: TwwDataSource;
    Grupo: TADODataSet;
    CCGrupoidCentroCosto: TGuidField;
    CCGrupoidGrupo: TStringField;
    CCGrupoCC: TStringField;
    CCGrupoCentroCostoGrupoCC: TStringField;
    dsGrupo: TwwDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1idGrupo: TcxGridDBColumn;
    cxGridDBTableView1CC: TcxGridDBColumn;
    cxGridDBTableView1CentroCostoGrupoCC: TcxGridDBColumn;
    GrupoidGrupo: TStringField;
    GrupoGrupo: TStringField;
    CCGrupoidCentroCostoGrupoCC: TGuidField;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Panel1: TPanel;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    RSidCentroCosto: TGuidField;
    RSCentroCosto: TStringField;
    RSCentroCostoDesc: TStringField;
    RSActivo: TBooleanField;
    RSTipo: TStringField;
    RSReferencia: TStringField;
    RSidCentroCostoParent: TGuidField;
    RSOrden: TIntegerField;
    RSNivel: TIntegerField;
    RSStatus: TStringField;
    RSNota: TStringField;
    cxSplitter1: TcxSplitter;
    Label2: TLabel;
    Label17: TLabel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    CentroCostoAct: TADODataSet;
    CentroCostoActidCentroCosto: TGuidField;
    CentroCostoActCentroCosto: TStringField;
    CentroCostoActCentroCostoDesc: TStringField;
    CentroCostoActActivo: TBooleanField;
    CentroCostoActTipo: TStringField;
    CentroCostoActReferencia: TStringField;
    CentroCostoActidCentroCostoParent: TGuidField;
    CentroCostoActOrden: TIntegerField;
    CentroCostoActNivel: TIntegerField;
    CentroCostoActStatus: TStringField;
    CentroCostoActNota: TStringField;
    Label18: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FullCollapse1Click(Sender: TObject);
    procedure FullExpand1Click(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure AddChild1Click(Sender: TObject);
    procedure btnShowGridClick(Sender: TObject);
    procedure DBTreeListGetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure DBTreeListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure DBTreeListDblClick(Sender: TObject);
    procedure CCTipoTransCuentaValidate(Sender: TField);
    procedure CCGrupoCCValidate(Sender: TField);
    procedure CCGrupoNewRecord(DataSet: TDataSet);
    procedure cxGrid2Enter(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure CCTipoTransBeforeInsert(DataSet: TDataSet);
    procedure CCGrupoBeforeInsert(DataSet: TDataSet);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure RSBeforeDelete(DataSet: TDataSet);
    procedure cxGridDBTableView1CCPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private


    Floading : boolean;

    procedure AbrirData;
  public
    { Public declarations }
  end;

var
  CentroCostoTree: TCentroCostoTree;

implementation

uses Variants, UUtiles, Udata, uBusqueda, uCentroCosto,
  uFullTextSearch;

{$R *.DFM}

procedure TCentroCostoTree.FormCreate(Sender: TObject);
begin
  inherited;
  LogField := 'CentroCosto';
  TipoDoc := 'CentroCosto';
  ImageidField := 'idCentroCosto';
  //hay una propiedad que hace que se generen los id automaticamente en el tree
  rsControles.Open();
  ds.DataSet := RS;  // se asigna despues del inherited para que no se abra automaticamente
  Floading := false;
  btnShowGrid.Down := DBTreeList.ShowGrid;

  Grupo.Open;
end;

Procedure TCentroCostoTree.AbrirData();
var
  bm : variant;
  bmp : variant;
  asignado : boolean;
begin
  fLoading := true;
  asignado := false;
  rs.DisableControls;


  CCGrupo.Close;
  if rs.Active then begin
    bm  := rsidcentrocosto.value;
    bmp := rsidcentrocostoparent.value;
    RS.Close();
    asignado := true;
  end;

  RS.Parameters[1].Value := luControl.EditValue;
  RS.Open();

  if asignado then
    if not(rs.locate('idCentrocosto',bm,[])) then rs.Locate('idCentrocosto',bmp,[]);

  fLoading := false;

  CCGrupo.Parameters[1].value := RSidCentroCosto.value;
  CCGrupo.Open;

  rs.EnableControls;

end;

procedure TCentroCostoTree.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TCentroCostoTree.FullCollapse1Click(Sender: TObject);
begin
  DBTreeList.FullCollapse;
end;

procedure TCentroCostoTree.FullExpand1Click(Sender: TObject);
begin
  DBTreeList.FullExpand;
end;

procedure TCentroCostoTree.Add1Click(Sender: TObject);
begin
  if (rs.isempty) or (RSidCentrocostoParent.IsNull) then begin
    ModalShow(TCentroCosto, ShowInsert, Null, 'idCentroCostoParent' , false);
  end else begin
    ModalShow(TCentroCosto, ShowInsert, 'idCentroCostoParent='+RSidCentrocostoParent.AsString+'+Tipo='+RSTipo.asstring+'+Status=Activo', false);
  end;

  AbrirData();
end;

procedure TCentroCostoTree.AddChild1Click(Sender: TObject);
begin
  if rsNivel.Value >= 2 then
    raise exception.Create('Solo se permiten 3 niveles de profundidad en los Centros de Costos');

  if not(rsActivo.Value) then
    raise exception.Create('El Centro de Costo Seleccionado no esta Activo');

  ModalShow(TCentroCosto, ShowInsert, 'idCentroCostoParent='+RSidCentrocosto.AsString+'+Tipo='+RSTipo.asstring+'+Status=Activo' , false);

  AbrirData();
end;

procedure TCentroCostoTree.btnShowGridClick(Sender: TObject);
begin
  DBTreeList.ShowGrid := btnShowGrid.Down;
end;

procedure TCentroCostoTree.DBTreeListGetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then
    Index := 1
  else
    Index := 0;

  if not node.HasChildren then
    index := 2;
end;

procedure TCentroCostoTree.DBTreeListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Selected then
  begin
     AColor := clYellow;
//     AFont.Style := [fsBold];
     AFont.Color := clBlue;
  end;
end;

procedure TCentroCostoTree.FormShow(Sender: TObject);
begin
  inherited;

  If ShowState = showFind Then
  begin
    If  ((XField <> '') and (XValue <> Null)) and (Not(ds.DataSet.FieldByName(XField).Value = XValue)) Then
       ds.DataSet.Locate(XField, XValue, []);
  end;

end;

procedure TCentroCostoTree.cxLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  AbrirData();
end;


procedure TCentroCostoTree.DBTreeListDblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TCentroCosto, ShowFind, RSidCentroCosto.Value, 'idCentroCosto');
  AbrirData();
end;

procedure TCentroCostoTree.CCTipoTransCuentaValidate(Sender: TField);
var
  g : string;
begin
  inherited;
  dm.VerificarCuenta(sender.Value,g);
end;

procedure TCentroCostoTree.CCGrupoCCValidate(Sender: TField);
var
  x : string;
begin
  inherited;
  x := 'invalido';
  dm.VerificarCuenta(sender.AsString, x);
  CCGrupoCentroCostoGrupocc.AsString := CCGrupoCentroCostoGrupocc.AsString + '  [' + x + ']';
end;

procedure TCentroCostoTree.CCGrupoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CCGrupoidCentroCostoGrupoCC.AsGuid := dm.NewGuid;
  CCGrupoidCentroCosto.Value := RSidCentroCosto.Value;
end;

procedure TCentroCostoTree.cxGrid2Enter(Sender: TObject);
begin
  inherited;
  if (CCGrupo.IsEmpty) and (not(RSidCentroCosto.isnull)) then
    CCGrupo.Append;
end;

procedure TCentroCostoTree.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not(Floading) then begin

   CCGrupo.Close;
   if not rsIdCentroCosto.IsNull then begin

     CCGrupo.Parameters[1].value := RSidCentroCosto.value;
     CCGrupo.Open;
   end;
  end;
end;

procedure TCentroCostoTree.CCTipoTransBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (rs.State in dseditmodes) or (rsidCentroCosto.isnull) then
    raise exception.create('El Centro de costo esta en edicion o no ha sido seleccionado');
end;

procedure TCentroCostoTree.CCGrupoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (rs.State in dseditmodes) or (rsidCentroCosto.isnull) then
    raise exception.create('El Centro de costo esta en edicion o no ha sido seleccionado');
end;

procedure TCentroCostoTree.RSBeforePost(DataSet: TDataSet);
begin
  if rs.state = dsedit then
    CrearLog('Edicion');

  if rs.State = dsInsert then
    CrearLog('Insertar');


  inherited;

end;

procedure TCentroCostoTree.RSBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CrearLog('Borrar');
end;

procedure TCentroCostoTree.cxGridDBTableView1CCPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarCuenta(CCGrupocc);
end;


end.
