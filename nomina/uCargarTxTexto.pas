unit uCargarTxTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxMemo, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, kbmMemTable, kbmMemCSVStreamFormat, ADODB, strUtils,
  ComCtrls;

type
  TCargarTxTexto = class(TFForm)
    Openx: TOpenDialog;
    edFileName: TcxButtonEdit;
    cbHeaders: TcxCheckBox;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxMemo1: TcxMemo;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    spInsTrans: TADOStoredProc;
    mTrans: TkbmMemTable;
    mTransCodigoExterno: TStringField;
    mTransNombre: TStringField;
    mTransTipoTransaccionId: TIntegerField;
    mTransTransaccion: TStringField;
    mTransNota: TStringField;
    mTransxCantidad: TFloatField;
    kbmFormatTrans: TkbmCSVStreamFormat;
    EmpleadoCodExternoAct: TADOStoredProc;
    EmpleadoCodExternoActEmpleadoID: TIntegerField;
    EmpleadoCodExternoActEmpleado: TStringField;
    cxGrid1DBTableView1CodigoExterno: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTransaccionId: TcxGridDBColumn;
    cxGrid1DBTableView1Transaccion: TcxGridDBColumn;
    cxGrid1DBTableView1Nota: TcxGridDBColumn;
    cxGrid1DBTableView1xCantidad: TcxGridDBColumn;
    Label1: TLabel;
    pbar: TProgressBar;
    rsBuscarTrans: TADODataSet;
    rsBuscarTransTipoTransaccionID: TIntegerField;
    rsBuscarTransTipoTransaccion: TStringField;
    rsBuscarTransDebito: TBooleanField;
    rsBuscarTransCotizable: TBooleanField;
    rsBuscarTransTipo: TStringField;
    rsBuscarTransValor: TFloatField;
    rsBuscarTransAdelanto: TBooleanField;
    rsBuscarTransProgramada: TBooleanField;
    rsBuscarTransMultiplo: TBCDField;
    rsBuscarTransNota: TStringField;
    rsBuscarTransOrden: TIntegerField;
    rsBuscarTransClasificacion: TIntegerField;
    rsBuscarTransRegalia: TBooleanField;
    rsBuscarTransISRno: TBooleanField;
    rsBuscarTransLiquidacion: TBooleanField;
    rsBuscarTransuidTipoTransaccion: TGuidField;
    rsBuscarTransProyectarIngreso: TBooleanField;
    cbCodExt: TcxCheckBox;
    rsBuscarTx: TADODataSet;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edFileNamePropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FFileName: string;
    procedure SetFileName(const Value: string);
    procedure doLoad;
    function InsTrans(NominaId, EmpleadoId, TipoTransId: Integer;
      Monto: Double; Nota: String; Cantidad: Double): Boolean;
    procedure AbrirArchivo;
    function lkEmpleadoId(CodigoExterno: String): Integer;
    function BuscarTxEmpleado(const idEmp, NominaId,
      idTx: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
    property FileName: string read FFileName write SetFileName;
  end;

var
  CargarTxTexto: TCargarTxTexto;

implementation

uses Udata, UdataNom;

{$R *.dfm}

procedure TCargarTxTexto.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCargarTxTexto.SetFileName(const Value: string);
begin
  if FFileName <> Value then begin
    FFileName := Value;
    edFileName.Text := Value;
    mTrans.Close();
  end;
end;

procedure TCargarTxTexto.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if Openx.Execute() then
    FileName := openx.FileName;
end;

procedure TCargarTxTexto.edFileNamePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FileName := edFileName.Text;
end;

Function TCargarTxTexto.InsTrans(NominaId, EmpleadoId, TipoTransId : Integer; Monto : Double; Nota : String; Cantidad : Double) : Boolean;
Begin
  Result := True;
  if Monto > 0 then begin
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
  end;
End;

procedure TCargarTxTexto.AbrirArchivo;
begin
  if FileName <> '' then begin
    mTrans.Close();
    mTrans.Open();

    if cbHeaders.Checked then
       kbmFormatTrans.sfNoHeader := [sfSaveNoHeader]
    else
       kbmFormatTrans.sfNoHeader := [sfSaveNoHeader, sfLoadNoHeader];

    mTrans.LoadFromFile(FileName);
  end;
end;

procedure TCargarTxTexto.doLoad;
var
  linea,rowcount: Integer;
  f: Currency;
  idEmpleado:Integer;
  noRepetir: Boolean;
begin
  if FileName = '' then
    Exit;

  noRepetir := dm.GetDefaultStr('NOM_REP_TRANS') = '0';
  cxMemo1.Lines.Clear();
  linea := 1;
  pbar.Position := 0;
  with mTrans do begin
    Try
      if not mTrans.Active then
        AbrirArchivo();

      DisableControls();
      dm.Coneccion.BeginTrans;
      rowCount := mTrans.RecordCount;
      First;
      while not Eof do begin
        try
          f := StrToFloat(AnsiReplaceStr(mTransTransaccion.Value,',',''));
          if cbCodExt.Checked then
            idEmpleado := lkEmpleadoId(mTransCodigoExterno.AsString)
          else
            idEmpleado := StrToIntDef(mTransCodigoExterno.Asstring,0);

          if idEmpleado = 0 then
            raise Exception.CreateFmt('Este empleado %s (%s) no existe',[mTransCodigoExterno.Value,mTransNombre.Value]);

          if not rsBuscarTrans.Locate('TipoTransaccionId',mTransTipoTransaccionId.Value,[]) then
            raise Exception.CreateFmt('La transaccion codigo %d no esta definida en el sistema',[mTransTipoTransaccionId.Value]);

          if noRepetir then begin
            if BuscarTxEmpleado(idEmpleado, dmNom.NominasNominaID.AsInteger,  mTransTipoTransaccionId.Value) then
              raise Exception.CreateFmt('el empleado %d ya tiene una transaccion de tipo %d registrada',[idEmpleado, mTransTipoTransaccionId.Value]);
          end;

          InsTrans(dmNom.NominasNominaID.value, idEmpleado, mTransTipoTransaccionId.Value, f, mTransNota.Value, mTransxCantidad.Value);
        except
          on e: exception do begin
            cxMemo1.Lines.Add('Linea #' + IntToStr(linea) + ' ERROR:' + e.Message);
          end;
        end;

        pbar.Position := round(linea / rowcount * 100);
        Application.ProcessMessages();
        Next;
        Inc(linea);
      end;
      dm.Coneccion.CommitTrans;
      ShowMessage('La carga del archivo se realizo correctamente');
    except
      on e: Exception do begin
        ShowMessage('Error tratando de cargar el archivo ' + e.message);
        dm.Coneccion.RollbackTrans;
      end;
    end;
  end;
end;

procedure TCargarTxTexto.FormCreate(Sender: TObject);
begin
  inherited;
  cbHeaders.Checked := dm.GetDefaultStr('CSV_CON_HEADER') = '1';
  cbCodExt.Checked := dm.GetDefaultStr('USAR_COD_EXTERNO') <> '0';
  rsBuscartrans.Open();
end;

function TCargarTxTexto.lkEmpleadoId(CodigoExterno: String): Integer;
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


procedure TCargarTxTexto.cxButton2Click(Sender: TObject);
begin
  inherited;
  doLoad();
end;

procedure TCargarTxTexto.cxButton1Click(Sender: TObject);
begin
  inherited;
  AbrirArchivo();
end;


function TCargarTxTexto.BuscarTxEmpleado(const idEmp: Integer; const NominaId, idTx: Integer): Boolean;
begin
  with rsBuscarTx do begin
    Close();
    Parameters[0].Value := NominaId;
    Parameters[1].Value := idEmp;
    Parameters[2].Value := idTx;
    Open();
    Result := not Eof;
  end;
end;


end.


