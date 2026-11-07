unit ucxcAging;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  Buttons, wwdbdatetimepicker, dxDBTLCl, dxGrClms, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, dxExEdtr, dxEditor, dxEdLib, uformx, Menus,
  ppModule, raCodMod, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxMaskEdit, cxTextEdit, cxCalendar,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,cxExportGrid4Link,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, ppParameter, cxContainer, cxGroupBox, cxRadioGroup, cxCheckBox,
  cxDropDownEdit, cxDBEdit;

type
  TAgingCXC = class(TFFormx)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    spReporteCXC: TADODataSet;
    rcxpsource: TDataSource;
    BitBtn2: TBitBtn;
    Reporte: TppReport;
    BitBtn3: TBitBtn;
    spReporteCXCNombre: TStringField;
    spReporteCXCidCXC: TGuidField;
    spReporteCXCDias: TIntegerField;
    spReporteCXCNoVenc: TBCDField;
    spReporteCXCA30: TBCDField;
    spReporteCXCA60: TBCDField;
    spReporteCXCA90: TBCDField;
    spReporteCXCAMas90: TBCDField;
    spReporteCXCFactura: TStringField;
    spReporteCXCIDRow: TGuidField;
    spReporteCXCFecha: TDateTimeField;
    spReporteCXCTotal: TBCDField;
    spReporteCXCPagado: TBCDField;
    spReporteCXCBalance: TCurrencyField;
    plReporte: TppBDEPipeline;
    rango: TdxSpinEdit;
    spReporteCXCPreriodo1: TStringField;
    spReporteCXCPreriodo2: TStringField;
    spReporteCXCPreriodo3: TStringField;
    spReporteCXCPreriodo4: TStringField;
    spReporteCXCPreriodo5: TStringField;
    Cliente: TdxEdit;
    btnCliente: TBitBtn;
    Label3: TLabel;
    ReporteRes: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppVariable2: TppVariable;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText26: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    spReporteCXCidcliente: TIntegerField;
    ppDBText28: TppDBText;
    ppLabel11: TppLabel;
    ppDBText30: TppDBText;
    btnVend: TBitBtn;
    Vendedor: TdxEdit;
    spReporteCXCTotalClientes: TIntegerField;
    ppLabel15: TppLabel;
    ppDBText32: TppDBText;
    spReporteCXCContacto: TStringField;
    spReporteCXCTelefono: TStringField;
    spReporteCXCCompania: TStringField;
    ppDBText36: TppDBText;
    spReporteCXCBalanceFinal: TBCDField;
    spReporteCXCBalanceGral: TBCDField;
    spReporteCXCpordist: TBCDField;
    pmenu: TPopupMenu;
    Asignarfacturaacobrador1: TMenuItem;
    spReporteCXCidMoneda: TIntegerField;
    spReporteCXCMoneda: TStringField;
    spReporteCXCVencimiento: TDateTimeField;
    ReporteVenc: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText52: TppDBText;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppVariable3: TppVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel24: TppLabel;
    ppDBText59: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel25: TppLabel;
    ppDBText60: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel27: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel28: TppLabel;
    raCodeModule2: TraCodeModule;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBText66: TppDBText;
    ppLabel29: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1IdDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Vencimiento: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1NoVenc: TcxGridDBColumn;
    cxGrid1DBTableView1A30: TcxGridDBColumn;
    cxGrid1DBTableView1A60: TcxGridDBColumn;
    cxGrid1DBTableView1A90: TcxGridDBColumn;
    cxGrid1DBTableView1AMas90: TcxGridDBColumn;
    cxGrid1DBTableView1BalanceFinal: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    spReporteCXCClienteTipo: TStringField;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppShape1: TppShape;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText39: TppDBText;
    ppLine4: TppLine;
    ppLine17: TppLine;
    ppLabel17: TppLabel;
    ppLabel26: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppVariable1: TppVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText35: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBText40: TppDBText;
    ppLine18: TppLine;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppDBText31: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText43: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppLabel10: TppLabel;
    ppDBText34: TppDBText;
    ppDBText33: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel12: TppLabel;
    raCodeModule1: TraCodeModule;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel30: TppLabel;
    ppDBText37: TppDBText;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppLabel31: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel32: TppLabel;
    ppDBText67: TppDBText;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBText68: TppDBText;
    ppLabel33: TppLabel;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppLabel34: TppLabel;
    ppDBText69: TppDBText;
    ppLine12: TppLine;
    ppLabel35: TppLabel;
    ppDBText70: TppDBText;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLabel36: TppLabel;
    ppDBText71: TppDBText;
    ppLabel39: TppLabel;
    ppDBText72: TppDBText;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    spReporteCXCGrupo: TStringField;
    ReportporGrupo: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppShape4: TppShape;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppDBText81: TppDBText;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLabel16: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppVariable4: TppVariable;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText89: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppLabel45: TppLabel;
    ppDBText90: TppDBText;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel46: TppLabel;
    ppDBText91: TppDBText;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppLabel47: TppLabel;
    ppDBText92: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBText93: TppDBText;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppLabel49: TppLabel;
    ppDBText94: TppDBText;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppLabel50: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppLabel51: TppLabel;
    raCodeModule3: TraCodeModule;
    rpt: TcxRadioGroup;
    cbVencimiento: TcxCheckBox;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppLabel40: TppLabel;
    ppDBText100: TppDBText;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc81: TppDBCalc;
    ppLabel52: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel53: TppLabel;
    ppDBText102: TppDBText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppDBText38: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppDBText101: TppDBText;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppDBText103: TppDBText;
    ppLabel56: TppLabel;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppLabel57: TppLabel;
    ppLine22: TppLine;
    ppLabel58: TppLabel;
    ppDBText105: TppDBText;
    rptResumidoGrupo: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppLine23: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppVariable5: TppVariable;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText104: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText110: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine24: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppDBText120: TppDBText;
    ppLabel66: TppLabel;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppDBCalc95: TppDBCalc;
    ppDBCalc96: TppDBCalc;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppLabel67: TppLabel;
    ppDBText121: TppDBText;
    ppDBCalc101: TppDBCalc;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppDBText122: TppDBText;
    ppLabel68: TppLabel;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppLabel69: TppLabel;
    ppDBText123: TppDBText;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBCalc104: TppDBCalc;
    ppDBCalc105: TppDBCalc;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppDBCalc108: TppDBCalc;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppLabel70: TppLabel;
    ppDBText124: TppDBText;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppLabel71: TppLabel;
    ppDBText125: TppDBText;
    ppDBCalc109: TppDBCalc;
    ppDBCalc110: TppDBCalc;
    ppDBCalc111: TppDBCalc;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppDBCalc114: TppDBCalc;
    ppDBCalc115: TppDBCalc;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppShape5: TppShape;
    ppDBCalc116: TppDBCalc;
    ppDBCalc117: TppDBCalc;
    ppDBCalc118: TppDBCalc;
    ppDBCalc119: TppDBCalc;
    ppDBCalc120: TppDBCalc;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBCalc122: TppDBCalc;
    spReporteCXCCategoria: TStringField;
    spReporteCXCVendedor: TStringField;
    ppDBText129: TppDBText;
    ppLabel72: TppLabel;
    cbsolovencido: TcxCheckBox;
    ppDBCalc121: TppDBCalc;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBCalc123: TppDBCalc;
    ReporteSimple: TppReport;
    ppTitleBand6: TppTitleBand;
    ppHeaderBand6: TppHeaderBand;
    ppLine26: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppVariable7: TppVariable;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppShape6: TppShape;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppDBText144: TppDBText;
    ppLine27: TppLine;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppDBCalc124: TppDBCalc;
    ppDBCalc125: TppDBCalc;
    ppDBCalc126: TppDBCalc;
    ppDBCalc127: TppDBCalc;
    ppDBCalc128: TppDBCalc;
    ppDBCalc129: TppDBCalc;
    ppLabel80: TppLabel;
    ppDBText145: TppDBText;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel81: TppLabel;
    ppDBText146: TppDBText;
    ppGroup23: TppGroup;
    ppGroupHeaderBand23: TppGroupHeaderBand;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppLabel90: TppLabel;
    ppGroupFooterBand23: TppGroupFooterBand;
    ppDBCalc144: TppDBCalc;
    ppDBCalc145: TppDBCalc;
    ppDBCalc146: TppDBCalc;
    ppDBCalc147: TppDBCalc;
    ppDBCalc148: TppDBCalc;
    ppDBCalc149: TppDBCalc;
    ppLabel91: TppLabel;
    raCodeModule4: TraCodeModule;
    BitBtn4: TBitBtn;
    sd: TSaveDialog;
    ADODataSet1: TADODataSet;
    StringField1: TStringField;
    GuidField1: TGuidField;
    IntegerField1: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    StringField2: TStringField;
    GuidField2: TGuidField;
    DateTimeField1: TDateTimeField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    CurrencyField1: TCurrencyField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    IntegerField4: TIntegerField;
    StringField11: TStringField;
    DateTimeField2: TDateTimeField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    BitBtn5: TBitBtn;
    dtHasta: TcxDateEdit;
    cbSubclientes: TcxCheckBox;
    ReportSC: TppReport;
    spReporteCXCidClienteObra: TStringField;
    spReporteCXCClienteObra: TStringField;
    spReporteCXCBalanceObra: TBCDField;
    ppTitleBand7: TppTitleBand;
    ppHeaderBand7: TppHeaderBand;
    ppLine25: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppVariable6: TppVariable;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDetailBand7: TppDetailBand;
    ppShape7: TppShape;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppDBText164: TppDBText;
    ppLine30: TppLine;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppDBCalc130: TppDBCalc;
    ppDBCalc131: TppDBCalc;
    ppDBCalc132: TppDBCalc;
    ppDBCalc133: TppDBCalc;
    ppDBCalc134: TppDBCalc;
    ppDBCalc135: TppDBCalc;
    ppLabel87: TppLabel;
    ppDBText165: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel88: TppLabel;
    ppDBText166: TppDBText;
    ppDBCalc136: TppDBCalc;
    ppLabel89: TppLabel;
    ppLabel92: TppLabel;
    ppDBCalc137: TppDBCalc;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppLabel93: TppLabel;
    ppDBText167: TppDBText;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppDBCalc138: TppDBCalc;
    ppDBCalc139: TppDBCalc;
    ppDBCalc140: TppDBCalc;
    ppDBCalc141: TppDBCalc;
    ppDBCalc142: TppDBCalc;
    ppDBCalc143: TppDBCalc;
    ppLabel94: TppLabel;
    ppLine33: TppLine;
    ppLabel95: TppLabel;
    ppDBText168: TppDBText;
    ppGroup24: TppGroup;
    ppGroupHeaderBand24: TppGroupHeaderBand;
    ppLabel96: TppLabel;
    ppDBText169: TppDBText;
    ppGroupFooterBand24: TppGroupFooterBand;
    ppDBCalc150: TppDBCalc;
    ppDBCalc151: TppDBCalc;
    ppDBCalc152: TppDBCalc;
    ppDBCalc153: TppDBCalc;
    ppDBCalc154: TppDBCalc;
    ppDBCalc155: TppDBCalc;
    ppLabel97: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel98: TppLabel;
    ppDBText170: TppDBText;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppLabel99: TppLabel;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppDBCalc156: TppDBCalc;
    ppDBCalc157: TppDBCalc;
    ppDBCalc158: TppDBCalc;
    ppDBCalc159: TppDBCalc;
    ppDBCalc160: TppDBCalc;
    ppDBCalc161: TppDBCalc;
    ppLabel100: TppLabel;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppGroupFooterBand26: TppGroupFooterBand;
    raCodeModule5: TraCodeModule;
    ppDBText177: TppDBText;
    ppLabel101: TppLabel;
    ppDBCalc162: TppDBCalc;
    ppDBCalc163: TppDBCalc;
    ppDBCalc164: TppDBCalc;
    ppDBCalc165: TppDBCalc;
    ppDBCalc166: TppDBCalc;
    ppDBCalc167: TppDBCalc;
    ppLine34: TppLine;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn3Click(Sender: TObject);
    procedure spReporteCXCCalcFields(DataSet: TDataSet);
    procedure dtHasta2Change(Sender: TObject);
    procedure ppShape3Print(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnVendClick(Sender: TObject);
    procedure pmenuPopup(Sender: TObject);
    procedure Asignarfacturaacobrador1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppShape2Print(Sender: TObject);
    procedure ppShape4Print(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    procedure AsignarFact;
    procedure Actualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AgingCXC: TAgingCXC;

implementation

uses uData, UUtiles, uCXC, uBusqueda, uAsignarFactCobrador;

{$R *.dfm}

procedure TAgingCXC.BitBtn1Click(Sender: TObject);
begin
  actualizar();

end;

procedure TAgingCXC.Actualizar;
begin
  Inherited;

    with spReporteCXC do begin
    DisableControls();
    try
      Close();
      Parameters[1].Value := int(dtHasta.Date);
      Parameters[2].Value := savestrtoint(cliente.Text);
      Parameters[3].Value := rango.Value;
      Parameters[4].Value := savestrtoint(vendedor.Text);
      Parameters[5].Value := cbvencimiento.Checked;
      Parameters[6].Value := cbsolovencido.Checked;
      Parameters[7].Value := cbSubclientes.Checked;
      Open();
    finally
      EnableControls();
    end;
    //dxDBGrid1.FullExpand();
  end;
end;



procedure TAgingCXC.FormCreate(Sender: TObject);
begin
  Inherited;
  if dm.GetDefaultStr('USAR_SUBCLIENTES') = '1' then begin
    cbSubclientes.Visible := True;
    cbSubClientes.Checked := true;
  end
  else begin
    cbSubclientes.Visible := false;
    cbSubClientes.Checked := false;
  end;
  
  dtHasta.Date := dm.FechaHoy;
end;

procedure TAgingCXC.BitBtn2Click(Sender: TObject);
begin

 if not spReporteCXC.Active then
   raise exception.Create('Debe darle a mostar antes de imprimir');

  spReporteCXC.DisableControls();
  try
    if rpt.ItemIndex = 3 then
      spReporteCXC.Sort := 'idMoneda, Grupo, Nombre, Fecha'
    else if rpt.ItemIndex = 4 then
      spReporteCxc.Sort := 'idMoneda, Grupo, ClienteTipo, Nombre, Fecha'
    else if rpt.ItemIndex = 5 then
      spReporteCXC.Sort := 'idMoneda, Nombre, Fecha'
    else
      spReporteCXC.Sort := 'idMoneda, Grupo, ClienteTipo, Nombre, Fecha';  //la parte de grupo se borrara en CBS


    if rpt.ItemIndex = 0 then begin
      if cbSubclientes.Checked then
        ReportSC.Print()
      else
        Reporte.Print()
    end else if rpt.ItemIndex = 1 then begin
      ReporteRes.Print()
    end else if rpt.ItemIndex = 2 then begin
      cbvencimiento.Checked := true;
      ReporteVenc.Print();
    end else if rpt.ItemIndex = 3 then begin
      ReportporGrupo.Print();
    end else if rpt.ItemIndex = 4 then begin
      rptResumidoGrupo.Print();
    end else if rpt.ItemIndex = 5 then begin
      ReporteSimple.Print();
    end;
  finally
    spReporteCXC.EnableControls();
  end;
end;

procedure TAgingCXC.ppShape1Print(Sender: TObject);
begin
  if Reporte.DeviceType <> 'Printer' then
    ppShape1.Visible := not ppShape1.Visible
  else
    ppShape1.Visible := False;
end;

procedure TAgingCXC.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := FormatDateTime('"Hasta " dd/mm/yyyy',dtHasta.Date);
end;

procedure TAgingCXC.BitBtn3Click(Sender: TObject);
begin
  Close();
end;

procedure TAgingCXC.spReporteCXCCalcFields(DataSet: TDataSet);
begin
  inherited;
  spReporteCxcBalance.Value  := spReporteCxcNovenc.AsCurrency +
                                spReporteCxcA30.AsCurrency +
                                spReporteCxcA60.AsCurrency +
                                spReporteCxcA90.AsCurrency +
                                spReporteCxcAmas90.AsCurrency;
                                //(spReporteCXCPorDist.AsCurrency + spReporteCXCPagado.AsCurrency);
end;

procedure TAgingCXC.dtHasta2Change(Sender: TObject);
begin
  inherited;
  dm.FechaHoy := dtHasta.Date;
end;

procedure TAgingCXC.ppShape3Print(Sender: TObject);
begin
  inherited;
  ppShape3.Visible := not ppShape3.Visible ;
end;

procedure TAgingCXC.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not spReporteCxcidCxc.isNull then begin
    ModalShow(TCxC, ShowFind, spReporteCxcidCxc.Value, ' idCxc' , true);
  end;

end;

procedure TAgingCXC.btnClienteClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fBuscar(TBusqueda, 'idCliente', false, 'FindCliente');
  if not(x = null) then begin
    Cliente.Text := x;
  end;
end;

procedure TAgingCXC.btnVendClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fBuscar(TBusqueda, 'idEmpleado', false, 'FindVendedor');
  if not(x = null) then begin
    Vendedor.Text := x;
  end;
end;

procedure TAgingCXC.AsignarFact;
begin
  if (spReporteCXC.Active) and (not spReporteCXCidcxc.IsNull) then begin
    AsignarFactura(spReporteCXCIdCXC.Value);
  end;
end;

procedure TAgingCXC.pmenuPopup(Sender: TObject);
begin
  inherited;
  Asignarfacturaacobrador1.Enabled := spReporteCXC.Active;
end;

procedure TAgingCXC.Asignarfacturaacobrador1Click(Sender: TObject);
begin
  inherited;
  AsignarFactura(spReporteCXCIdCXC.Value);

end;

procedure TAgingCXC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F12 then begin
    Key := 0;
    AsignarFact();
  end;
end;

procedure TAgingCXC.ppShape2Print(Sender: TObject);
begin
  inherited;
  if Reporte.DeviceType <> 'Printer' then
    ppShape2.Visible := not ppShape2.Visible
  else
    ppShape2.Visible := False;

end;

procedure TAgingCXC.ppShape4Print(Sender: TObject);
begin
  inherited;
  if Reporte.DeviceType <> 'Printer' then
    ppShape4.Visible := not ppShape4.Visible
  else
    ppShape4.Visible := False;
end;

procedure TAgingCXC.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

procedure TAgingCXC.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if not spReporteCXC.Active then
    raise exception.Create('Debe darle a mostar antes de enviar');

  spReporteCXC.DisableControls();
  try
    if rpt.ItemIndex = 3 then
      spReporteCXC.Sort := 'idMoneda, Grupo, Nombre, Fecha'
    else if rpt.ItemIndex = 4 then
      spReporteCxc.Sort := 'idMoneda, Grupo, ClienteTipo, Nombre, Fecha'
    else if rpt.ItemIndex = 5 then
      spReporteCXC.Sort := 'idMoneda, Nombre, Fecha'
    else
      spReporteCXC.Sort := 'idMoneda, Grupo, ClienteTipo, Nombre, Fecha';  //la parte de grupo se borrara en CBS


    if rpt.ItemIndex = 0 then begin
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',Reporte)
    end else if rpt.ItemIndex = 1 then begin
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',ReporteRes)
    end else if rpt.ItemIndex = 2 then begin
      cbvencimiento.Checked := true;
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',ReporteVenc)
    end else if rpt.ItemIndex = 3 then begin
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',ReportporGrupo)
    end else if rpt.ItemIndex = 4 then begin
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',rptResumidoGrupo)
    end else if rpt.ItemIndex = 5 then begin
      SendRPTEmail('','Reporte de antiguedad de saldos','Anexo el reporte de antiguedad de saldos','AGING',ReporteSimple)
    end;
  finally
    spReporteCXC.EnableControls();
  end;

end;

end.
