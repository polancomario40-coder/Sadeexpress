unit DocumentoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassMD, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxButtonEdit, cxCheckBox, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxContainer,
  cxTextEdit, StdCtrls, ADODB, ImgList, ActnList, Wwdatsrc, cxButtons,
  Gradient, dxCntner;

type
  TMantClassMD1 = class(TMantClassMD)
    RSDetidDocumento: TIntegerField;
    RSDetLineaNum: TAutoIncField;
    RSDetidConcepto: TIntegerField;
    RSDetDebCre: TWordField;
    RSDetValor: TBCDField;
    RSDetidCuenta: TStringField;
    RSDetAutomatica: TBooleanField;
    RSDetidAuxiliar: TStringField;
    RSDetGUIDDocumento: TGuidField;
    RSDetIdDocumentosDtl: TGuidField;
    RSidDocumento: TAutoIncField;
    RSidTrans: TIntegerField;
    RSFecha: TDateTimeField;
    RSidCuentaBanco: TIntegerField;
    RSStatus: TStringField;
    RSFechaStatus: TDateTimeField;
    RSTipoDocOrigen: TStringField;
    RSDocOrigen: TIntegerField;
    RSReferencia: TStringField;
    RSValor: TBCDField;
    RSDebCre: TWordField;
    RSConcepto: TStringField;
    RSGUIDDocumento: TGuidField;
    RSCompFiscal: TStringField;
    RSidMoneda: TIntegerField;
    RSTasa: TFloatField;
    RSContabilizar: TBooleanField;
    Label1: TLabel;
    edId: TcxDBTextEdit;
    Label2: TLabel;
    deFecha: TcxDBDateEdit;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    edRef: TcxDBTextEdit;
    Label4: TLabel;
    luCta: TcxDBLookupComboBox;
    Label3: TLabel;
    Label5: TLabel;
    ceValor: TcxDBCurrencyEdit;
    Label10: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label9: TLabel;
    edConcepto: TcxDBTextEdit;
    Label6: TLabel;
    grConceptos: TcxGrid;
    tvDetalle: TcxGridDBTableView;
    tvDetalleidCuenta: TcxGridDBColumn;
    tvDetalleDescripcion: TcxGridDBColumn;
    tvDetalleDebito: TcxGridDBColumn;
    tvDetalleCredito: TcxGridDBColumn;
    tvDetalleDBColumn1: TcxGridDBColumn;
    tvDetalleDBColumn2: TcxGridDBColumn;
    grConceptosLevel1: TcxGridLevel;
    cbContablizar: TcxDBCheckBox;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    rsbuscarPrima: TADODataSet;
    rsbuscarPrimaCuenta: TStringField;
    rsbuscarPrimaDescripcion: TStringField;
    rsbuscarPrimaDebito: TBCDField;
    rsbuscarPrimaCredito: TBCDField;
    rsConceptos: TADODataSet;
    rsConceptosidConcepto: TIntegerField;
    rsConceptosDescripcion: TStringField;
    rsConceptosDebCre: TWordField;
    rsConceptosidCuenta: TStringField;
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransDebCre: TWordField;
    rsTipoTransAbrev: TStringField;
    rsTipoTransContador: TStringField;
    rsTipoTransidCuenta: TStringField;
    dsBcos: TDataSource;
    StyleController: TdxEditStyleController;
    rsCat: TADODataSet;
    dscat: TDataSource;
    rsCatidCuenta: TStringField;
    rsCatDescripcion: TStringField;
    rsCatOrigen: TStringField;
    rsCatNivel: TSmallintField;
    rsCatCtadescargue: TStringField;
    rsCatFechaCreacion: TDateTimeField;
    rsCatDetalle: TBooleanField;
    rsCatTipoNivel: TStringField;
    rsCatCtaVieja: TStringField;
    rsCatCtaCierre: TStringField;
    rsCatStatus: TStringField;
    rsCatFechaStatus: TDateTimeField;
    rsCatSoloAuxiliares: TBooleanField;
    rsCatuidCuenta: TGuidField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantClassMD1: TMantClassMD1;

implementation

uses Udata;

{$R *.dfm}

end.
