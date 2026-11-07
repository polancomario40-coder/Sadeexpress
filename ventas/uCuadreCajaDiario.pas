unit uCuadreCajaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, cxLookAndFeelPainters,cxExportGrid4Link,
  cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl,dateutils, ppParameter, ppDesignLayer,
  cxButtonEdit, cxCurrencyEdit;

type
  TCuadreCajaDiario = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    rsUsuarios: TADODataSet;
    rsUsuariosidSegUsergrp: TStringField;
    rsUsuariosNombre: TStringField;
    rs: TADODataSet;
    rsidfactura: TGuidField;
    rsCliente: TStringField;
    rsfecha: TDateTimeField;
    rsEfectivo: TBCDField;
    rsTarjeta: TBCDField;
    rsCheque: TBCDField;
    rsOtros: TBCDField;
    deDesde: TcxDateEdit;
    dehasta: TcxDateEdit;
    luUsuario: TcxLookupComboBox;
    dsUsuarios: TwwDataSource;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Registro: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Efectivo: TcxGridDBColumn;
    cxGrid1DBTableView1Tarjeta: TcxGridDBColumn;
    cxGrid1DBTableView1Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1Gastos: TcxGridDBColumn;
    Label3: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    ppDBPipeline1: TppDBPipeline;
    Report: TppReport;
    rsusuario: TStringField;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
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
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel9: TppLabel;
    cxButton4: TcxButton;
    rsPDV: TADODataSet;
    rsPDVidFactura: TGuidField;
    rsPDVusuario: TStringField;
    rsPDVHora: TDateTimeField;
    rsPDVFecha: TDateTimeField;
    rsPDVfactura: TStringField;
    rsPDVformaPago: TStringField;
    RPTPDV: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine4: TppLine;
    ppDBText18: TppDBText;
    ppLabel12: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppVariable1: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    plPDV: TppDBPipeline;
    dsPDV: TwwDataSource;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    rsPDVValor: TBCDField;
    ppDBCalc9: TppDBCalc;
    rsPDVEfectivo: TBCDField;
    rsPDVTarjeta: TBCDField;
    rsPDVCheques: TBCDField;
    rsPDVOtros: TBCDField;
    ppLabel15: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel23: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppLabel24: TppLabel;
    spCleanCycle: TADOStoredProc;
    rsMoneda: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    rsCredito: TBCDField;
    ppLabel25: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    rsRecibos: TBCDField;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    ppLabel27: TppLabel;
    ppDBCalc23: TppDBCalc;
    rsTotalDeposito: TCurrencyField;
    btnExcel: TcxButton;
    sd: TSaveDialog;
    Label4: TLabel;
    dsSucursal: TwwDataSource;
    rsSucursal: TADODataSet;
    rsSucursalidCentroCosto: TGuidField;
    rsSucursalCentroCosto: TStringField;
    luSucursal: TcxLookupComboBox;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    rsRegistro: TStringField;
    rsNumero: TStringField;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText1: TppDBText;
    rsFactura: TBCDField;
    rsGastos: TBCDField;
    ppDBCalc21: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppLabel28: TppLabel;
    ppDBCalc24: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBText16: TppDBText;
    rsSucursal2: TStringField;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    ppDBText17: TppDBText;
    ppLabel32: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppLabel33: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText19: TppDBText;
    ppShape3: TppShape;
    procedure cxButton1Click(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rsCalcFields(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    Cycle : Variant;
    COMPUTER : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuadreCajaDiario: TCuadreCajaDiario;


implementation

uses Udata, udmRepository, UUtiles, uFactura, uRecibo, uGastosMenores;

{$R *.dfm}

procedure TCuadreCajaDiario.cxButton1Click(Sender: TObject);
begin
  inherited;
 with rs do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.date;
    Parameters[3].Value := luUsuario.EditValue;
    Parameters[4].Value := luSucursal.EditValue;
    Open();
  end;
  cxGrid1DBTableView1.DataController.Groups.FullExpand();

  dm.FechaDesde := deDesde.Date;
  dm.FechaHasta := dehasta.Date;
end;

procedure TCuadreCajaDiario.SalirClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCuadreCajaDiario.cxButton2Click(Sender: TObject);
var
  fmt: string;
begin
  inherited;
  with rsPDV do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.date;
    Parameters[3].Value := luUsuario.EditValue;
    Parameters[4].Value := luSucursal.EditValue;
    Open();
    if Eof then begin
      showMessage('nada que imprimir ');
      exit;
    end;
  end;
  fmt := dm.GetDefaultStr('CUADRE_PDV');
  if (fmt <> '') and FileExists(fmt) then begin
    RPTPDV.Template.FileName := fmt;
    RPTPDV.Template.LoadFromFile();
  end;
  Imprimir(RPTPDV);
end;

procedure TCuadreCajaDiario.FormCreate(Sender: TObject);
begin
  inherited;

  Cycle := dm.GetDefault('Cycles');
  //rsusuarios.Open();
  rsSucursal.Open();
  //luUsuario.EditValue := dm.UsuarioActual;
  luSucursal.EditValue  := dm.GetPCSetting('ALMACENDEFAULT');
  dedesde.Date := dm.FechaDesde;
  dehasta.date := EndOfTheDay(dm.FechaHasta);

  with rs do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.date;
    Parameters[3].Value := luUsuario.EditValue;
    Parameters[4].Value := luSucursal.EditValue;
    Open();
  end;


end;

function ComputerName: string;
var
  Buffer: array[ 0..MAX_COMPUTERNAME_LENGTH ] of Char;
  MaxSize: Cardinal;
begin
  MaxSize := SizeOf( Buffer );
  if not GetComputerName(@Buffer, MaxSize) then
    raise Exception.Create('Nombre de la Computadora No Determinado' );
  Result := StrPas(@Buffer);
end;


procedure TCuadreCajaDiario.cxButton4Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TCuadreCajaDiario.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  inherited;
  if deDesde.Date <> deHasta.Date then
    value := 'Cuadre ' + deDesde.Text + '/' + deHasta.Text
  else
    Value := 'Cuadre ' + deDesde.Text;
end;

procedure TCuadreCajaDiario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Color : tColor;
begin
  If (Key = vk_Return) And (ssCtrl in Shift) And (ssShift in Shift) Then
  Begin
    If (Not (Cycle = Null)) And (Cycle > 0) Then
    Begin
      Color := Self.Color;
      Self.Color := clRed;
      If Confirmar('Rango de Fecha del :' + DateToStr(deDesde.Date) + ' Al: ' + DateToStr(dehasta.Date) + ' Esta seguro ?') Then
      Begin
        With spCleanCycle, Parameters Do
        Begin
          ParamByName('@Desde').Value := Dateof(deDesde.Date);
          ParamByName('@Hasta').Value := Endoftheday(deHasta.Date);

          ExecProc;
          If ParamByName('@RETURN_VALUE').Value <> 0 Then
            ShowMessage('Error')
          Else
            ShowMessage('Ok');
        End;
      End;
      Self.Color := Color;
    End;
  End;
  inherited;
end;

procedure TCuadreCajaDiario.rsCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsTotalDeposito.Value := (rsEfectivo.Value + rsCheque.Value)-rsGastos.Value;
end;

procedure TCuadreCajaDiario.btnExcelClick(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName, cxGrid1);
end;

procedure TCuadreCajaDiario.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;

    if rsRegistro.Value = 'Factura' Then
    ModalShow(TFactura, showFind,rsidFactura.Value, 'IdFactura');
    if rsRegistro.Value = 'Recibo' Then
    ModalShow(TRecibo, showFind,rsidFactura.Value, 'IdRecibo');
    if rsRegistro.Value = 'Gastos' Then
    ModalShow(TGastosMenores, showFind,rsidFactura.Value, 'GUIDDocumento');
end;

end.
