unit uConsultaImprimirEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  Gradient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, ADODB, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, uformx, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, myChkBox, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, kbmMemTable, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ppBarCod, cxPC, cxMemo, cxDBEdit, cxCheckBox, ppEndUsr, ppParameter;

type
  TImprimirEtiquetas = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    dtpAl: TcxDateEdit;
    cxButton1: TcxButton;
    Label4: TLabel;
    cxButton2: TcxButton;
    spImprimirEtiquetas: TADOStoredProc;
    spImprimirEtiquetasIdProducto: TStringField;
    spImprimirEtiquetasReferencia: TStringField;
    spImprimirEtiquetasProducto: TStringField;
    spImprimirEtiquetasUbicacion: TStringField;
    spImprimirEtiquetasExistencia: TFloatField;
    spImprimirEtiquetasLinea: TStringField;
    spImprimirEtiquetasGrupo: TStringField;
    spImprimirEtiquetasInventario: TStringField;
    Label1: TLabel;
    lkAlmacen: TcxLookupComboBox;
    dsAlmacen: TDataSource;
    rsAlmacen: TADODataSet;
    rsAlmacenidAlmacen: TStringField;
    rsAlmacenAlmacen: TStringField;
    dsData: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Report: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText5: TppDBText;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    bSalir: TcxButton;
    cbAutoExists: TcxCheckBox;
    cxButton3: TcxButton;
    cxButton11: TcxButton;
    ppDesigner1: TppDesigner;
    spImprimirEtiquetasPrecioContado: TBCDField;
    ppDBText6: TppDBText;
    spImprimirEtiquetasMarca: TStringField;
    OpenRtm: TOpenDialog;
    Data: TkbmMemTable;
    DataCantImprimir: TIntegerField;
    DataIdProducto: TStringField;
    DataProducto: TStringField;
    DataReferencia: TStringField;
    DataUbicacion: TStringField;
    DataExistencia: TBCDField;
    DataLinea: TStringField;
    DataGrupo: TStringField;
    DataInventario: TStringField;
    Datacampo1: TStringField;
    Datacampo2: TStringField;
    Datacampo3: TStringField;
    cxGrid1DBTableView1CantImprimir: TcxGridDBColumn;
    cxGrid1DBTableView1IdProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Ubicacion: TcxGridDBColumn;
    cxGrid1DBTableView1Existencia: TcxGridDBColumn;
    cxGrid1DBTableView1Linea: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Inventario: TcxGridDBColumn;
    cxGrid1DBTableView1campo1: TcxGridDBColumn;
    cxGrid1DBTableView1campo2: TcxGridDBColumn;
    cxGrid1DBTableView1campo3: TcxGridDBColumn;
    cbSoloExist: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimirEtiquetas: TImprimirEtiquetas;

implementation

uses Udata;

{$R *.dfm}

procedure TImprimirEtiquetas.FormCreate(Sender: TObject);
begin
  inherited;
  dtpAl.Date := Date;
  rsAlmacen.Open();
  lkAlmacen.EditValue := rsAlmacenidAlmacen.Value;

end;

procedure TImprimirEtiquetas.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TImprimirEtiquetas.cxButton1Click(Sender: TObject);
begin
  try
    data.DisableControls();
    With spImprimirEtiquetas, Parameters Do Begin
      Close();
      ParamByName('@FechaAl').Value := dtpAl.Date;
      ParamByName('@IdAlmacen').Value := lkAlmacen.EditValue;

      Open();

      Data.Open();
      Data.EmptyTable;

      While Not Eof Do Begin
        if (spImprimirEtiquetasExistencia.Value > 0) or (cbSoloExist.Checked = false) then begin
          Data.Append;
          DataIdProducto.Value := spImprimirEtiquetasIdProducto.Value;
          DataProducto.Value := spImprimirEtiquetasProducto.Value;
          DataReferencia.Value := spImprimirEtiquetasReferencia.Value;
          DataUbicacion.Value := spImprimirEtiquetasUbicacion.Value;
          DataExistencia.Value := spImprimirEtiquetasExistencia.Value;
          DataLinea.Value := spImprimirEtiquetasLinea.Value;
          DataGrupo.Value := spImprimirEtiquetasGrupo.Value;
          DataInventario.Value := spImprimirEtiquetasInventario.Value;
          if cbAutoExists.Checked and (spImprimirEtiquetasExistencia.asInteger > 0) then
            DataCantImprimir.Value := spImprimirEtiquetasExistencia.asInteger
          else
            DataCantImprimir.Value := 0;
          Data.Post;
        end;

        Next;
      End;
    End;
  finally
    data.EnableControls();
  end;
end;



procedure TImprimirEtiquetas.cxButton3Click(Sender: TObject);
begin
  inherited;
  if OpenRtm.Execute then begin
          report.Template.FileName := openrtm.FileName;
          report.Template.LoadFromFile();
          end else begin
          abort;
          end;
  With Data Do
  Begin
      First;
      While Not Eof Do
      Begin
        If DataCantImprimir.Value > 0 Then begin
            Report.PrinterSetup.Copies := DataCantImprimir.Value;
            Report.ShowPrintDialog := false;
            Report.devicetype := 'Printer';
            Imprimir(Report);
          end ;
      Next;
      End;
    End;




end;

procedure TImprimirEtiquetas.cxButton11Click(Sender: TObject);
begin
  inherited;
  if OpenRtm.Execute then begin
    report.Template.FileName := openrtm.FileName;
    report.Template.LoadFromFile();
  end else begin
      abort;
  end;
 ppDesigner1.ShowModal;

end;

end.
