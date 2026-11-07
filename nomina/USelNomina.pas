unit USelNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, wwdblook,strUtils,
  ActnList, StdActns, ComCtrls, ToolWin, Buttons, ExtCtrls, Menus, uform,
  wwdbdatetimepicker, ADODB, kbmMemTable, kbmMemCSVStreamFormat,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxControls, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Gradient, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, DateUtils, cxCurrencyEdit;

type
  TSelNomina = class(TFForm)
    ActionList1: TActionList;
    Salir: TAction;
    Refrescar: TAction;
    GenHoras: TAction;
    Calcular: TAction;
    Nuevo: TAction;
    Cerrar: TAction;
    IngDes: TAction;
    Resultados: TAction;
    GenerarID: TAction;
    Imprimir: TAction;
    PMenu: TPopupMenu;
    IngresosyDescuentos1: TMenuItem;
    ImpIngDes: TAction;
    VolantesdePago1: TMenuItem;
    ResumenNomina1: TMenuItem;
    GenProduccion: TAction;
    ExporttoBanco1: TMenuItem;
    ExpoertPROCEM1: TMenuItem;
    Entra1: TMenuItem;
    N1: TMenuItem;
    save: TSaveDialog;
    AutoTrans: TPopupMenu;
    Regalia: TMenuItem;
    GenRegalia: TAction;
    NominaDetallada1: TMenuItem;
    GenerarEDalmayor1: TMenuItem;
    GenerarID2: TAction;
    Nominaparafirma1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    BancoPopular1: TMenuItem;
    ExportNomina1: TMenuItem;
    ImprimirNomina1: TMenuItem;
    aPropina: TAction;
    NovedadesporDpto1: TMenuItem;
    Volantesdepago85x111: TMenuItem;
    Nominadetalladadotmatrix1: TMenuItem;
    Volantesdepago85x551: TMenuItem;
    BancodelProgreso1: TMenuItem;
    spToBanco4: TADOStoredProc;
    spToBanco4RNC: TStringField;
    spToBanco4Tipo: TStringField;
    spToBanco4Cuenta: TStringField;
    spToBanco4Monto: TStringField;
    spToBanco4Fecha: TStringField;
    spToBanco4Cantidad: TStringField;
    spToBanco4Nombre: TStringField;
    AplicacindePago1: TMenuItem;
    ReportesdeNomina1: TMenuItem;
    NovedadesVolantes1: TMenuItem;
    FormatoparaBancos1: TMenuItem;
    OtrosReportes1: TMenuItem;
    RelacindeDescuentosSeguroSocial1: TMenuItem;
    RelacndeAporteSeguridadSocialMes1: TMenuItem;
    GenCheques: TAction;
    ImpCheques: TAction;
    Cheques1: TMenuItem;
    Generarcheques1: TMenuItem;
    Imprimircheques1: TMenuItem;
    BancoBHD1: TMenuItem;
    spToBanco5: TADOStoredProc;
    spToBanco5COLUMN1: TStringField;
    Imprimirnominacondecheques1: TMenuItem;
    Openx: TOpenDialog;
    mTable: TkbmMemTable;
    kbmFormat: TkbmCSVStreamFormat;
    mTablec1: TStringField;
    mTablec2: TStringField;
    mTablec3: TStringField;
    mTablec4: TStringField;
    mTablec5: TStringField;
    mTablec6: TStringField;
    mTablec7: TStringField;
    mTablec8: TStringField;
    mTablec9: TStringField;
    mTablec10: TStringField;
    mTablec11: TStringField;
    mTablec12: TStringField;
    mTablec13: TStringField;
    mTablec14: TStringField;
    mTablec15: TStringField;
    mTablec16: TStringField;
    spInsTrans: TADOStoredProc;
    spInsAvance: TADOStoredProc;
    Panel2: TPanel;
    cxButton1: TcxButton;
    Gradient4: TGradient;
    Panel3: TPanel;
    Gradient1: TGradient;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1NominaID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TipoNomina: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TipoEmpleado: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Fecha: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Mes: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Desde: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Hasta: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ProdDesde: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ProdHasta: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cerrada: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ISR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Numero: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cfMes: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Reloj: TcxCheckBox;
    CargarAvance: TAction;
    aComisiones: TAction;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    EmpleadoCodExternoAct: TADOStoredProc;
    EmpleadoCodExternoActEmpleadoID: TIntegerField;
    EmpleadoCodExternoActEmpleado: TStringField;
    N4: TMenuItem;
    FormatosACH1: TMenuItem;
    BancoPopular2: TMenuItem;
    spToBancoPopularACH: TADOStoredProc;
    spToBancoPopularACHCadena: TStringField;
    spToBancoPopularACHNombreArchivo: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    bRefrescarNominas: TcxButton;
    aRefrescarAccion: TAction;
    N5: TMenuItem;
    ResumendeTransacciones1: TMenuItem;
    N6: TMenuItem;
    EmpleadosenNmina1: TMenuItem;
    Generar1: TMenuItem;
    N7: TMenuItem;
    GenerarNminadeRegala1: TMenuItem;
    mTableResHoras: TkbmMemTable;
    mTableResHorasCodigo: TStringField;
    mTableResHorasNormales: TCurrencyField;
    mTableResHorasAl35: TCurrencyField;
    mTableResHorasDoble: TCurrencyField;
    mTableResHorasFeriado: TCurrencyField;
    mTableResHorasNocturna: TCurrencyField;
    spInsTransHoras: TADOStoredProc;
    pAutoSalarios: TPopupMenu;
    ArchivodeHorasResumendeHoras1: TMenuItem;
    Cargas1: TMenuItem;
    DesdeBasedeDatos1: TMenuItem;
    spCarga: TADOStoredProc;
    CrditodeImpuestoISR1: TMenuItem;
    spGenerarCreditoISR: TADOStoredProc;
    kbmFormatResHoras: TkbmCSVStreamFormat;
    spToBancoLeon: TADOStoredProc;
    spToBancoLeonCadena: TStringField;
    BancoLen1: TMenuItem;
    spFromTransParaNomina: TADOStoredProc;
    N8: TMenuItem;
    CCM1: TMenuItem;
    Arboleda1: TMenuItem;
    mTrans: TkbmMemTable;
    kbmFormatTrans: TkbmCSVStreamFormat;
    mTransCodigoExterno: TStringField;
    mTransTipoTransaccionId: TIntegerField;
    mTransNota: TStringField;
    DesdeArchivodeText1: TMenuItem;
    mTransxCantidad: TFloatField;
    mTableResHorasNombre: TStringField;
    mTransNombre: TStringField;
    N9: TMenuItem;
    DescuentosdeCxCEmpleados1: TMenuItem;
    mTransTransaccion: TStringField;
    Formato85por141: TMenuItem;
    N10: TMenuItem;
    Empleadosporformadepago1: TMenuItem;
    N11: TMenuItem;
    Cargararchivodehorasreloj1: TMenuItem;
    Volantesporcorreoelectronico1: TMenuItem;
    procedure SalirExecute(Sender: TObject);
    procedure RefrescarExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure IngDesExecute(Sender: TObject);
    procedure GenHorasExecute(Sender: TObject);
    procedure GenerarIDExecute(Sender: TObject);
    procedure CalcularExecute(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ImpIngDesExecute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResumenNomina1Click(Sender: TObject);
    procedure GenProduccionExecute(Sender: TObject);
    procedure VolantesdePago1Click(Sender: TObject);
    procedure ExporttoBanco1Click(Sender: TObject);
    procedure ExpoertPROCEM1Click(Sender: TObject);
    procedure refrescarbot;
    procedure Entra1Click(Sender: TObject);
    procedure GenRegaliaExecute(Sender: TObject);
    procedure NominaDetallada1Click(Sender: TObject);
    procedure GenerarEDalmayor1Click(Sender: TObject);
    procedure GenerarID2Execute(Sender: TObject);
    procedure Nominaparafirma1Click(Sender: TObject);
    procedure BancoPopular1Click(Sender: TObject);
    procedure ImprimirNomina1Click(Sender: TObject);
    procedure ExportNomina1Click(Sender: TObject);
    procedure aPropinaExecute(Sender: TObject);
    procedure NovedadesporDpto1Click(Sender: TObject);
    procedure Volantesdepago85x111Click(Sender: TObject);
    procedure Nominadetalladadotmatrix1Click(Sender: TObject);
    procedure Volantesdepago85x551Click(Sender: TObject);
    procedure BancodelProgreso1Click(Sender: TObject);
    procedure AplicacindePago1Click(Sender: TObject);
    procedure RelacindeDescuentosSeguroSocial1Click(Sender: TObject);
    procedure RelacndeAporteSeguridadSocialMes1Click(Sender: TObject);
    procedure GenChequesExecute(Sender: TObject);
    procedure ImpChequesExecute(Sender: TObject);
    procedure BancoBHD1Click(Sender: TObject);
    procedure Imprimirnominacondecheques1Click(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure CargarAvanceExecute(Sender: TObject);
    procedure aComisionesExecute(Sender: TObject);
    procedure BancoPopular2Click(Sender: TObject);
    procedure bRefrescarNominasClick(Sender: TObject);
    procedure aRefrescarAccionExecute(Sender: TObject);
    procedure ResumendeTransacciones1Click(Sender: TObject);
    procedure EmpleadosenNmina1Click(Sender: TObject);
    procedure ArchivodeHorasResumendeHoras1Click(Sender: TObject);
    procedure DesdeBasedeDatos1Click(Sender: TObject);
    procedure CrditodeImpuestoISR1Click(Sender: TObject);
    procedure BancoLen1Click(Sender: TObject);
    procedure CCM1Click(Sender: TObject);
    procedure Arboleda1Click(Sender: TObject);
    procedure DesdeArchivodeText1Click(Sender: TObject);
    procedure DescuentosdeCxCEmpleados1Click(Sender: TObject);
    procedure Formato85por141Click(Sender: TObject);
    procedure Empleadosporformadepago1Click(Sender: TObject);
    procedure Volantesporcorreoelectronico1Click(Sender: TObject);
  private
    FUsarDirecciones: Boolean;
    { Private declarations }
    Function ValidarArchivoComision : Boolean;
    Function lkEmpleadoId(CodigoExterno : String) : Integer;
    Procedure RefrescarNominas;
  public
    { Public declarations }
    property UsarDirecciones: Boolean read FUsarDirecciones;
  end;

var
  SelNomina: TSelNomina;

implementation

uses Udata,UTransaccionDef, UTransaccion,
  Unomina, UResultado, UReport, UChkNomina, uDMReportes, UdataNom, UUtiles,
  USIREN, uPropinaNomina, uGenCheques, uImpCheques, udmReporte3,
  uRegaliaSet, uEmpleadosEnNomina, uIngresosDescuentos, uVolantes3en1,
  uCargaSelect, uCargaTransSelect, uRPTNomina814, uNominaFormaPago,
  UCxCEmpleados, uCargarTxTexto, uVolantesEmail;

{$R *.dfm}

procedure TSelNomina.SalirExecute(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TSelNomina.RefrescarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.Close ;
  ds.DataSet.Open;
  refrescarbot;
end;

procedure TSelNomina.NuevoExecute(Sender: TObject);
begin
  inherited;
  if dmNom.NominasNominaID.isnull then
     ModalShow(TNominas)
  else
     ModalShow(TNominas,ShowFind,dmNom.NominasNominaID.value,'Nominaid');

  ds.DataSet.Close ;
  ds.DataSet.Open;
  refrescarbot;
end;

procedure TSelNomina.IngDesExecute(Sender: TObject);
begin
  inherited;
  if dmnom.NominasCerrada.Value Then
    ModalShow(TTransaccion, ShowFind, dmNom.NominasNominaId.Value, 'NominaId')
  else
    if dm.TienePermiso(PEditar, Permisos,'Entrar a Transacciones de Nomina','') then
      ModalShow(TTransaccion, ShowFind, dmNom.NominasNominaID.Value, 'NominaId')
    else
      Raise Exception.Create('Usted no tiene permisos para realizar esta accion')  ;

end;

procedure TSelNomina.GenHorasExecute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PEditar, Permisos,'Generar Salarios en Nomina','') then begin
   if application.MessageBox ('Esta seguro que desea generar las horas trabajadas para todos los empleados ?', 'Advertencia', MB_YESNO) = ID_YES then
     if not(dmNom.AutoHoras(dmNom.NominasNominaID.value, reloj.checked)) then
       showmessage('Error, es posible que ya se hayan generado las horas');
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.GenerarIDExecute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PEditar, Permisos,'Generar Transacciones de Ingresos y Descuentos','') then begin
    if application.MessageBox ('Esta seguro que desea generar transacciones de Ing / Des Clase 1?', 'Advertencia', MB_YESNO) = ID_YES then
      if not(dmNom.AutoTransaccions(dmNom.NominasNominaID.value,1)) then
        showmessage('Error al generar las Ingresos y Descuentos Clase 1');
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.CalcularExecute(Sender: TObject);
begin
 inherited;
 if dm.TienePermiso(PEditar, Permisos,'Calcular Nomina','') then begin
   if application.MessageBox ('Esta seguro que desea calcular la nomina ?', 'Advertencia', MB_YESNO) = ID_YES then
     if not(dmNom.CalcularNominas(dmNom.NominasNominaID.value)) then
        showmessage('Error al Calcular la Nomina');
 end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.CerrarExecute(Sender: TObject);
var
  d : integer;
begin
  inherited;

  if dm.TienePermiso(PAprobar,Permisos,'Cerrar Nomina','') then begin
    if application.MessageBox ('Esta seguro que desea cerrar la nomina, No podra modificarla', 'Advertencia', MB_YESNO) = ID_YES then
       if not(dmNom.CerrarNominas(dmNom.NominasNominaID.value,true)) then
          raise exception.create('Error al Cerrar la Nomina')
       else begin
         Crearlog('Cerrar Nomina');
         showmessage('NOMINA CERRADA');
       end;
    d:= dmNom.NominasNominaID.value;
    Refrescar.Execute;
    dmNom.Nominas.Locate('NominaID',d,[]);
    //wwDBGrid1RowChanged(sender);
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ImprimirExecute(Sender: TObject);
begin
   inherited;
   if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
     dmReporte.NominaResult.Parameters[1].Value := dmNom.NominasNominaID.Value ;
     dmReporte.NominaResult.Open;
     if FileExists('REPNOM.RTM') then begin
       dmReporte.RepNom.Template.FileName := 'REPNOM.RTM';
       dmReporte.RepNom.Template.LoadFromFile();
     end;
     dmReporte.repNom.Detail.Visible := true;
     uutiles.ImprimirReporte(dmReporte.RepNom);
     Crearlog('Imprimir');
     dmReporte.NominaResult.Close;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ImpIngDesExecute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dmnom.NominasCerrada.Value Then
      ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');

    dmReporte.TTransacciones.Close();
    dmReporte.TTransacciones.Open();

    uutiles.ImprimirReporte(dmReporte.RepTransacciones);
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.wwDBGrid1RowChanged(Sender: TObject);
begin
   inherited;
   refrescarbot;
end;

Procedure TSelNomina.Refrescarbot;
var
  x : boolean;
begin
   inherited;
   Caption := 'Nomina  '+ dmNom.NominasTipoNomina.Value+'  [' + datetostr(dmNom.nominasfecha.value) +']';
   x := not(dmnom.NominasCerrada.Value);
   calcular.Enabled  := x;
   genhoras.Enabled  := x;
   generarID.Enabled := x;
   generarID2.Enabled := x;
   genproduccion.enabled := x;
   reloj.Enabled     := x;
   cerrar.Enabled    := x;
   CargarAvance.Enabled := x;
   aComisiones.Enabled := x;
end;

procedure TSelNomina.FormCreate(Sender: TObject);
var
  vnt: Variant;
begin
  if (dmReporte = nil) then application.CreateForm(TdmReporte, dmReporte);
  if (dmReporte3 = nil) then application.CreateForm(tdmReporte3, dmReporte3);

  vnt := dm.GetDefault('USAR_DIRECCION');
  FUsarDirecciones := (vnt <> NULL);
  ds.DataSet := dmnom.Nominas;
//  if dmnom.Nominas.active then dmnom.Nominas.Requery() else dmnom.Nominas.open;

  inherited;
  dtpDesde.Date := StartOfTheMonth(dm.DBFecha);
  dtpHasta.Date := EndOfTheMonth(dm.DBFecha);
  ImageIDField := 'uNomina';
  LogField := 'NominaID';
  //Caption := 'Nominas  '+dmNom.NominasTipoNomina.Value+'  [' + datetostr(dmNom.nominasfecha.value) +']';
//  dmnom.Nominas.Open;
  RefrescarNominas;
end;

procedure TSelNomina.ResumenNomina1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    dmReporte.NominaResult.Parameters[1].Value := dmNom.NominasNominaID.Value ;
    dmReporte.NominaResult.Open;
    dmReporte.repNom.Detail.Visible := false;
    uutiles.ImprimirReporte(dmReporte.RepNom);
    dmReporte.NominaResult.Close;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.GenProduccionExecute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PEditar, Permisos,'Calcular Comisiones','') then begin
    if application.MessageBox ('Esta seguro que desea Importat las Comisiones?', 'Advertencia', MB_YESNO) = ID_YES then
      if not(dmNom.AutoProducc(dmNom.NominasNominaID.value)) then
        showmessage('Error, es posible que ya se hallan generado las horas');
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.VolantesdePago1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
    try
      dmReporte.TDebito.Close;
      dmReporte.TCredito.Close;
      dmReporte.rsVolanteH.close;

      dmReporte.rsVolanteH.parameters[1].value := dmNom.NominasNominaID.value;
      dmReporte.rsVolanteH.open;
      uutiles.ImprimirReporte(dmReporte.RptVolanteH);
    except
      dmReporte.RptVolanteH.Reset;
    end;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ExporttoBanco1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    dmReporte.ToBanco.Parameters[1].Value := dmNom.NominasNominaID.Value ;
    dmReporte.ToBanco.Open;
    save.FileName := dmReporte.rptToBanco.TextFileName;
    save.Execute;
    dmReporte.rptToBanco.TextFileName := save.FileName;
    uutiles.ImprimirReporte(dmReporte.RptToBanco);
    dmReporte.ToBanco.Close;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ExpoertPROCEM1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    dmReporte.ToBanco2.Parameters[1].Value := dmNom.NominasNominaID.Value ;
    dmReporte.ToBanco2.Open;
    save.FileName := dmReporte.rptToBanco2.TextFileName;
    save.Execute;
    dmReporte.rptToBanco2.TextFileName := save.FileName;
    uutiles.ImprimirReporte(dmReporte.RptToBanco2);
    dmReporte.ToBanco2.Close;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Entra1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    dmReporte.EntradaDiario.Close;
    dmReporte.EntradaDiario.Parameters[1].Value := dmNom.NominasNominaID.Value ;
    dmReporte.EntradaDiario.Open;
    uutiles.ImprimirReporte(dmReporte.RptEntradaDiario);
    dmReporte.EntradaDiario.Close;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.GenRegaliaExecute(Sender: TObject);
var
  fal: Integer;
  acti: integer;
  proy: integer;
begin
  inherited;
  try
    RegaliaSet := TRegaliaSet.Create(Application);
    if dm.TienePermiso(PEditar, Permisos,'Generar Regalia','') then begin
      if not dmnom.NominasNominaID.isnull then begin
        if RegaliaSet.ShowModal = mrOK then begin
          fal  := SaveStrToInt(RegaliaSet.cant.Value);
          acti := RegaliaSet.acti.ItemIndex;
          proy := RegaliaSet.proy.ItemIndex;

          dmNom.AutoRegaliaPascual(dmnom.NominasNominaID.Value, fal, acti, proy);
        end;
      end else begin
        raise exception.create('No hay nómina seleccionada');
      end;
    end else begin
       Raise Exception.Create('Usted no tiene permisos para realizar esta acción');
    end;
  finally
    RegaliaSet.Free;
  end;
end;

procedure TSelNomina.NominaDetallada1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
    try
      dmReporte.TDebito.Close;
      dmReporte.TCredito.Close;
      dmReporte.NominaResultDet.close;

      if FileExists('NomDet.rtm') then
      begin
        dmReporte.RepNomDet.Template.FileName := 'NomDet.rtm';
        dmReporte.RepNomDet.Template.LoadFromFile();
      end;

      dmReporte.NominaResultDet.parameters[1].value := dmNom.NominasNominaID.value;
      dmReporte.NominaResultDet.open;
      uutiles.ImprimirReporte(dmReporte.RepNomDet);
    except
      dmReporte.RepNomDet.Reset;
    end;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.GenerarEDalmayor1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dmNom.NominasNominaID.isnull then
      raise exception.Create('Error : Seleccione una nomina valida');

     dmReporte.GenED.Parameters[1].Value := dmNom.NominasNominaID.Value;
     dmReporte.GenED.Execute;
     if dmReporte.GenED.Parameters[0].Value = 0 then
       showmessage('La entrada ha sido generada con exito')
     else
       Showmessage('Error : verifique los numeros de las cuentas');
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.GenerarID2Execute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PEditar, Permisos,'Generar Transacciones de Ing y Desc','') then begin
    if application.MessageBox ('Esta seguro que desea generar transacciones de Ing / Des Clase 2 ?', 'Advertencia', MB_YESNO) = ID_YES then
      if not(dmNom.AutoTransaccions(dmNom.NominasNominaID.value, 2)) then
        showmessage('Error al generar las Ingresos y Descuentos clase 2');
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Nominaparafirma1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
    try
      dmReporte.Nomina2.Close;
      dmReporte.Nomina2.parameters[1].value := dmNom.NominasNominaID.value;
      dmReporte.Nomina2.open;
      uutiles.ImprimirReporte(dmReporte.RptNomina2);
    except
      dmReporte.RptNomina2.Reset;

    end;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.BancoPopular1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    dmReporte.ToBanco3.Parameters[1].Value := dmNom.NominasNominaID.Value ;
    dmReporte.ToBanco3.Open;
    save.FileName := dmReporte.rptToBanco3.TextFileName;
    save.Execute;
    dmReporte.rptToBanco3.TextFileName := save.FileName;
    dmReporte.RptToBanco3.Print();
    dmReporte.ToBanco3.Close;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ImprimirNomina1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
       if dmnom.NominasCerrada.Value Then
          ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
       if not FUsarDirecciones then begin
         dmReporte.NominaResult.Parameters[1].Value := dmNom.NominasNominaID.Value ;
         dmReporte.NominaResult.Open;
         dmReporte.repNom.Detail.Visible := true;
         uutiles.ImprimirReporte(dmReporte.RepNom);
         dmReporte.NominaResult.Close;
       end
       else begin
         dmReporte.NominaResultDir.Parameters[1].Value := dmNom.NominasNominaID.Value ;
         dmReporte.NominaResultDir.Open;
         dmReporte.repNomDir.Detail.Visible := true;
         uutiles.ImprimirReporte(dmReporte.RepNomDir);
         dmReporte.NominaResultDir.Close;
       end;
     end;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.ExportNomina1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta exportando la nomina correcta');
     if not UsarDirecciones then begin
       dmReporte.NominaResult.Parameters[1].Value := dmNom.NominasNominaID.Value ;
       dmReporte.NominaResult.Open;
       dmReporte.NominaExport.Detail.Visible := true;
       uutiles.ImprimirReporte(dmReporte.NominaExport);
       dmReporte.NominaResult.Close;
     end
     else begin
       dmReporte.NominaResultDir.Parameters[1].Value := dmNom.NominasNominaID.Value ;
       dmReporte.NominaResultDir.Open;
       dmReporte.NominaExportDir.Detail.Visible := true;
       uutiles.ImprimirReporte(dmReporte.NominaExportDir);
       dmReporte.NominaResultDir.Close;
     end;
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.aPropinaExecute(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PEditar, Permisos,'Generar Propina','') then begin
    RegistrarPropina(dmnom.NominasNominaID.AsInteger);
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.NovedadesporDpto1Click(Sender: TObject);
begin
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');

     ShowIngresoDescuento(dmNom.NominasNominaID.value);
(*    dmReporte.rsIngDesc.Close;
    dmReporte.rsIngDesc.parameters[1].value := dmNom.NominasNominaID.value;
    dmReporte.rsIngDesc.open;
    dmReporte.RptNovedades); *)
  end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Volantesdepago85x111Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');

 (*   try
      dmReporte.TDebito.Close;
      dmReporte.TCredito.Close;
      dmReporte.rsVolanteH.close;

      dmReporte.rsVolanteH.parameters[1].value := dmNom.NominasNominaID.value;
      dmReporte.rsVolanteH.open;
      dmReporte.RptVolanteHLaser);
    except
      dmReporte.RptVolanteHLaser.Reset;
    end; *)
    ShowVolante3en1(dmNom.NominasNominaID.value);
  end
  else
    Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Nominadetalladadotmatrix1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
     dmReporte.rsNominaDet.Parameters[1].Value := dmNom.NominasNominaID.Value ;
     dmReporte.rsNominaDet.Open;
     dmReporte.TotalesGenerales.Parameters[1].Value := dmNom.NominasNominaID.value;
     dmReporte.TotalesGenerales.Open;
     uutiles.ImprimirReporte(dmReporte.RPTNominaDet);
     dmReporte.rsNominaDet.Close;
     dmReporte.TotalesGenerales.Close;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Volantesdepago85x551Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    with dmReporte.rsVolante do begin
      Close();
      Parameters[1].Value :=  dmNom.NominasNominaID.value;
      Open();
    end;

    uutiles.ImprimirReporte(dmReporte.RPTVolante);
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.BancodelProgreso1Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  If dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') Then
  Begin
    With spToBanco4, Parameters Do
    Begin
      If Save.Execute Then
      Begin
        Close;
        ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;
        Open;

        First;
        AssignFile(Banco, Save.Filename);
        ReWrite(Banco);
        While Not Eof Do
        Begin
          Write(Banco, spToBanco4RNC.AsString +
                       spToBanco4Tipo.AsString +
                       spToBanco4Cuenta.AsString +
                       spToBanco4Monto.AsString +
                       spToBanco4Fecha.AsString +
                       spToBanco4Cantidad.AsString +
                       spToBanco4Nombre.AsString + #13 + #10);

          Next;
        End;
        Close;
        CloseFile(Banco);
      End;
    End;
  End
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.AplicacindePago1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    with dmReporte.spAplicacionPago do begin
      Close();
      Parameters[1].Value := dmNom.NominasNominaID.value;
      Open();
    end;

    uutiles.ImprimirReporte(dmReporte.rptAplicacionPago);
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.RelacindeDescuentosSeguroSocial1Click(
  Sender: TObject);
begin
  inherited;
  begin
    if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then
    begin
      with dmReporte.spRelacionDescuentoSS do
      begin
        Close();
        Parameters.ParamByName('@NominaId').Value := dmNom.NominasNominaID.value;
        Open();
      end;

      uutiles.ImprimirReporte(dmReporte.rptRelacionDescSS);

      dmReporte.spRelacionDescuentoSS.Close;
    End
    Else
      Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
  end;
end;

procedure TSelNomina.RelacndeAporteSeguridadSocialMes1Click(
  Sender: TObject);
begin
  inherited;
  begin
    if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then
    begin
      with dmReporte.spRelacionAporteSS do
      begin
        Close();
        Parameters.ParamByName('@NominaId').Value := dmNom.NominasNominaID.value;
        Open();
      end;

      uutiles.ImprimirReporte(dmReporte.rptRelacionAporteSS);

      dmReporte.spRelacionAporteSS.Close;
    End
    Else
      Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
  end;
end;

procedure TSelNomina.GenChequesExecute(Sender: TObject);
begin
  inherited;
  ModalShow(TGenCheques);
end;

procedure TSelNomina.ImpChequesExecute(Sender: TObject);
begin
  inherited;
  ModalShow(TImpCheques);
end;

procedure TSelNomina.BancoBHD1Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  If dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') Then
  Begin
    With spToBanco5, Parameters Do
    Begin
      If Save.Execute Then
      Begin
        Close;
        ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;
        Open;

        First;
        AssignFile(Banco, Save.Filename);
        ReWrite(Banco);
        While Not Eof Do
        Begin
          Write(Banco, spToBanco5COLUMN1.AsString + #13 + #10);

          Next;
        End;
        Close;
        CloseFile(Banco);
      End;
    End;
  End
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Imprimirnominacondecheques1Click(Sender: TObject);
begin
  inherited;
  ImprimirNomCks(dmNom.NominasNominaID.Value);
end;

procedure TSelNomina.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  refrescarbot;
end;

procedure TSelNomina.CargarAvanceExecute(Sender: TObject);
Var
  TransIn, TransOut : Integer;
  Resultado : Integer;
begin
  inherited;
  TransIn := StrToIntDef(dm.GetDefaultStr('NomAvanceIn'),0);
  TransOut := StrToIntDef(dm.GetDefaultStr('NomAvanceOut'),0);

  If ((TransIn = 0) Or (TransOut = 0)) Then
    Raise Exception.Create('Los parametros no estan configurados');

  If MessageDlg('Seguro que desea generar los avances', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    With spInsAvance, Parameters Do
    Begin
      ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;
      ParamByName('@TransIn').Value := TransIn;
      ParamByName('@TransOut').Value := TransOut;

      ExecProc;
      Resultado := ParamByName('@RETURN_VALUE').Value;
      If Resultado = 0 Then
        ShowMessage('Transacción realizada con éxito')
      Else
        ShowMessage('Error al tratar de realizar la transacción');
    End;
  End;
end;

procedure TSelNomina.aComisionesExecute(Sender: TObject);
Var
  nomTransComision : Integer;
  Function InsTrans(NominaId, EmpleadoId, TipoTransId : Integer; Monto : Double) : Boolean;
  Begin
    With spInsTrans, Parameters Do
    Begin
      ParamByName('@NominaId').Value := NominaId;
      ParamByName('@EmpleadoId').Value := EmpleadoId;
      ParamByName('@TipoTransaccionId').Value := TipoTransId;
      ParamByName('@Monto').Value := Monto;

      ExecProc;

      Result := (ParamByName('@RETURN_VALUE').Value = 0);
    End;
  End;
begin
  inherited;
  nomTransComision := StrToIntDef(dm.GetDefaultStr('nomTransComision'),0);

  If (nomTransComision = 0) Then
    Raise Exception.Create('El parámetro de la comision no esta configurado');

  ValidarArchivoComision;
//  Begin
    With mTable Do
    Begin
      Try
        dm.Coneccion.BeginTrans;
        Open;
        EmptyTable;
        mTable.LoadFromFile(Openx.FileName);
        First;
        While Not Eof Do
        Begin
          Try
            InsTrans(dmNom.NominasNominaID.value, lkEmpleadoId(mTable.Fields[2].AsString), nomTransComision, mTable.Fields[14].AsFloat);
          Except
          End;

          Next;
        End;
        dm.Coneccion.CommitTrans;
        ShowMessage('La carga del archivo se realizo correctamente');
      Except
        ShowMessage('Error tratando de generar el archivo');
        dm.Coneccion.RollbackTrans;
      End;
      Close;
    End;
//  End;
End;

function TSelNomina.ValidarArchivoComision: Boolean;
Var
  EmpNotExist : String;
  Function EmpleadoExiste(CodigoExtEmpleado : String) : Boolean;
  Begin
    With EmpleadoCodExternoAct, Parameters Do
    Begin
      Close();
      ParamByName('@CodExterno').Value := CodigoExtEmpleado;
      Open();

      Result := Not IsEmpty;
      Close();
    End;
  End;
begin
  EmpNotExist := '*';
  If Openx.Execute Then
  Begin
    EmpNotExist := '';
    With mTable Do
    Begin
      Try
        Open;
        mTable.LoadFromFile(Openx.FileName);
        First;
        While Not Eof Do
        Begin
          If Not EmpleadoExiste(mTable.Fields[2].AsString) Then
            EmpNotExist := EmpNotExist + ' [' + mTable.Fields[2].AsString + '] ';

          Next;
        End;
        If EmpNotExist <> '' Then
          ShowMessage('El o los siguientes empleados ' + EmpNotExist + ' no existen en la nómina');

      Except
        ShowMessage('Error tratando de cargar el archivo');
      End;
      Close;
    End;
  End;
  Result := (EmpNotExist = '');
end;

function TSelNomina.lkEmpleadoId(CodigoExterno: String): Integer;
begin
  With EmpleadoCodExternoAct, Parameters Do
  Begin
    Close();
    ParamByName('@CodExterno').Value := CodigoExterno;
    Open();

    Result := EmpleadoCodExternoActEmpleadoID.Value;
    Close();
  End;
end;

procedure TSelNomina.BancoPopular2Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  With spToBancoPopularACH, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;

      Open;

      First;
      AssignFile(Banco, spToBancoPopularACHNombreArchivo.AsString);

      ReWrite(Banco);
      While Not Eof Do
      Begin
        Write(Banco, spToBancoPopularACHCadena.AsString + #13 + #10);

        Next;
      End;
      Close;
      CloseFile(Banco);
    End;
  End;
end;

procedure TSelNomina.RefrescarNominas;
begin
  With dmNom.Nominas, Parameters Do
  Begin
    Close;
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    Open;
  End;
end;

procedure TSelNomina.bRefrescarNominasClick(Sender: TObject);
begin
  inherited;
  RefrescarNominas;
end;

procedure TSelNomina.aRefrescarAccionExecute(Sender: TObject);
begin
  inherited;
  RefrescarNominas;
end;

procedure TSelNomina.ResumendeTransacciones1Click(Sender: TObject);
begin
  inherited;
  With dmReporte, spResumTrans, Parameters Do
  Begin
    Close();
    ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;
    Open();
    uutiles.ImprimirReporte(rptResumTrans);
  End;
end;

procedure TSelNomina.EmpleadosenNmina1Click(Sender: TObject);
begin
  inherited;
  ShowEmpleadosEnNomina(dmNom.NominasNominaID.Value);
end;

procedure TSelNomina.ArchivodeHorasResumendeHoras1Click(Sender: TObject);
var
  id: Integer;

  Function InsTransHoras(NominaId, EmpleadoId, TipoTransId : Integer; Cantidad : Double) : Boolean;
  Begin
    With spInsTransHoras, Parameters Do
    Begin
      ParamByName('@NominaId').Value := NominaId;
      ParamByName('@EmpleadoId').Value := EmpleadoId;
      ParamByName('@TipoTransaccionId').Value := TipoTransId;
      ParamByName('@Cantidad').Value := Cantidad;

      ExecProc;

      Result := (ParamByName('@RETURN_VALUE').Value = 0);
    End;
  End;
begin
  inherited;
//  ValidarArchivoComision; {revisar}
  If dmNom.NominasCerrada.Value Then
  Begin
    ShowMessage('Esta nómina esta cerrada');
    Exit;
  End;
  With mTableResHoras Do
  Begin
    Try
      dm.Coneccion.BeginTrans;
      Open;
      EmptyTable;
      if Openx.Execute Then begin
        if dm.GetDefaultStr('CSV_CON_HEADER') = '1' then
          kbmFormatResHoras.sfNoHeader := [sfSaveNoHeader]
        else
          kbmFormatResHoras.sfNoHeader := [sfSaveNoHeader, sfLoadNoHeader];

        mTableResHoras.LoadFromFile(Openx.FileName);
      end
      Else    {ojo}
        Exit;
      First;
      While Not Eof Do
      Begin
        Try   // 100:Normales 101:Extras 102:Doble 103:Nocturna 104:Feriado
          if dm.GetDefaultStr('USAR_COD_EXTERNO') = '0' then
            id := mTableResHorasCodigo.asInteger
          else
            id := lkEmpleadoId(mTableResHorasCodigo.AsString);
          InsTransHoras(dmNom.NominasNominaID.value, id, 100, mTableResHorasNormales.Value);
          InsTransHoras(dmNom.NominasNominaID.value, id, 101, mTableResHorasAl35.Value);
          InsTransHoras(dmNom.NominasNominaID.value, id, 102, mTableResHorasDoble.Value);
          InsTransHoras(dmNom.NominasNominaID.value, id, 103, mTableResHorasNocturna.Value);
          InsTransHoras(dmNom.NominasNominaID.value, id,  99, mTableResHorasFeriado.Value);
        Except
        End;
        Next;
      End;
      dm.Coneccion.CommitTrans;
      ShowMessage('La carga del archivo se realizo correctamente');
    Except
      ShowMessage('Error tratando de importar el archivo');
      dm.Coneccion.RollbackTrans;
    End;
    Close;
  End;
end;

procedure TSelNomina.DesdeBasedeDatos1Click(Sender: TObject);
Var
  spName : String;
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if Not dmnom.NominasCerrada.Value Then
    Begin
      spName := ShowCargaSelect;
      If spName <> '' Then
      Begin
        With spCarga, Parameters Do
        Begin
          ProcedureName := spName;
          Parameters.Clear;
          CreateParameter('@Return_Value', ftInteger, pdReturnValue, 0, Null);
          CreateParameter('@NominaId', ftInteger, pdInput, 0, Null);

          ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;

          ExecProc;
          If ParamByName('@Return_Value').Value <> 0 Then
            ShowMessage('Error tratando de realizar la carga')
          Else
            ShowMessage('Carga realizada');
        End;
      End;
    End
    Else
      ShowMessage('ESTA NOMINA ESTA CERRADA');
  end
  else
    Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.CrditodeImpuestoISR1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if Not dmnom.NominasCerrada.Value Then
    Begin
      If Confirmar('Esta seguro que desea generar los créditos de impuestos para esta nómina ?') Then
      Begin
        With spGenerarCreditoISR, Parameters Do
        Begin
          ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;
          ExecProc;

          If ParamByName('@Return_Value').Value <> 0 Then
            ShowMessage('Error generando los créditos')
          Else
            ShowMessage('Carga realizada');
        End;
      End;  
    End
    Else
      ShowMessage('ESTA NOMINA ESTA CERRADA');
  end
  else
    Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.BancoLen1Click(Sender: TObject);
Var
  Banco : TextFile;
begin
  inherited;
  With spToBancoLeon, Parameters Do
  Begin
    If Save.Execute Then
    Begin
      Close;
      ParamByName('@NominaId').Value := dmNom.NominasNominaID.Value;

      Open;

      First;
      AssignFile(Banco, Save.FileName);

      ReWrite(Banco);
      While Not Eof Do
      Begin
        Write(Banco, spToBancoLeonCadena.AsString);

        Next;
      End;
      Close;
      CloseFile(Banco);
    End;
  End;
end;

procedure TSelNomina.CCM1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
       if dmnom.NominasCerrada.Value Then
         ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
         dmReporte.spNomCCM.Parameters[1].Value := dmNom.NominasNominaID.Value ;
         dmReporte.spNomCCM.Open;
//         dmReporte.repNom.Detail.Visible := true;
         uutiles.ImprimirReporte(dmReporte.rptCCM);
         dmReporte.spNomCCM.Close;
     end;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Arboleda1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if dmnom.NominasCerrada.Value Then
       ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
       dmReporte.spNomArboleda.Close;
       dmReporte.spNomArboleda.Parameters[1].Value := dmNom.NominasNominaID.Value ;
       dmReporte.spNomArboleda.Open;
       uutiles.ImprimirReporte(dmReporte.rptArboleda);
       dmReporte.spNomArboleda.Close;

  end
  else
    Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.DesdeArchivodeText1Click(Sender: TObject);

  Function InsTrans(NominaId, EmpleadoId, TipoTransId : Integer; Monto : Double; Nota : String; Cantidad : Double) : Boolean;
  Begin
    With spInsTrans, Parameters Do
    Begin
      ParamByName('@NominaId').Value := NominaId;
      ParamByName('@EmpleadoId').Value := EmpleadoId;
      ParamByName('@TipoTransaccionId').Value := TipoTransId;
      ParamByName('@Monto').Value := Monto;
      ParamByName('@Nota').Value := Nota;
      ParamByName('@xCantidad').Value := Cantidad;

      ExecProc;

      Result := (ParamByName('@RETURN_VALUE').Value = 0);
    End;
  End;
var
  str: TStringList;
  f: Currency;
begin
  inherited;
  ModalShow(TCargarTxTexto);
  Exit;
  str := TStringList.Create();
  str.Add('Errores');
//  ValidarArchivoTransaccion;  {crear este procedimiento}
    With mTrans Do
    Begin
      Try
        dm.Coneccion.BeginTrans;
        Open;
        EmptyTable;

        If Openx.Execute then begin
          if dm.GetDefaultStr('CSV_CON_HEADER') = '1' then
            kbmFormatTrans.sfNoHeader := [sfSaveNoHeader]
          else
            kbmFormatTrans.sfNoHeader := [sfSaveNoHeader, sfLoadNoHeader];

          mTrans.LoadFromFile(Openx.FileName);
        end
        Else
          Exit;

        First;
        While Not Eof Do
        Begin
          Try
            f := StrToFloat(AnsiReplaceStr(mTransTransaccion.Value,',',''));
            InsTrans(dmNom.NominasNominaID.value, lkEmpleadoId(mTransCodigoExterno.AsString), mTransTipoTransaccionId.Value, f, mTransNota.Value, mTransxCantidad.Value);
          Except
            on e: exception do
              str.Add(e.Message);
          End;

          Next;
        End;
        dm.Coneccion.CommitTrans;
        ShowMessage('La carga del archivo se realizo correctamente');
      Except
        on e: Exception do begin
          ShowMessage('Error tratando de generar el archivo ' + e.message);
          dm.Coneccion.RollbackTrans;
        end;
      End;
      Close;
    End;
    str.SaveToFile('c:\log.txt');
    str.Free();
end;

procedure TSelNomina.DescuentosdeCxCEmpleados1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
     if not(dmnom.NominasCerrada.Value) Then
        raise exception.create('La Nomina debe estar cerrada para imprimir este reporte');
     dmReporte.CxCEmpleados.Parameters[1].Value := dmNom.NominasNominaID.Value ;
     dmReporte.CxCEmpleados.Open;
     uutiles.ImprimirReporte(dmReporte.RptCxcEmpleados);
     Crearlog('Imprimir CxC Empleado');
     dmReporte.CxCEmpleados.Close;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Formato85por141Click(Sender: TObject);
begin
  inherited;

  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
      if dmnom.NominasCerrada.Value Then
        ShowMessage('NOMINA CERRADA, verifique que esta imprimiendo la nomina correcta');
      with TRPTNomina814.Create(Application) do begin
        try
          with rs do begin
            Close();
            Parameters[1].Value := dmNom.NominasNominaId.Value;
            Open();
          end;
          uutiles.ImprimirReporte(Report);
        finally
          Release();
        end;
      end;
    end;
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Empleadosporformadepago1Click(Sender: TObject);
begin
  inherited;
  if dm.TienePermiso(PImprimir, Permisos,'Imprimir Nomina','') then begin
    MostrarReporteFormaPago(dmNom.NominasNominaID.Value);
    Crearlog('Imprimir Nomina por forma de pago');
   end
   else
     Raise Exception.Create('Usted no tiene permisos para realizar esta accion');
end;

procedure TSelNomina.Volantesporcorreoelectronico1Click(Sender: TObject);
begin
  inherited;
  if dmNom.Nominas.RecordCount > 0 then
    ShowVolanteEmail(dmNom.NominasNominaID.Value);
end;

end.
