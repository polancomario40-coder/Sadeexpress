unit uCambiarPrecioMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxCurrencyEdit, cxLabel,
  cxSpinEdit, cxCheckBox;

type
  TCambiarPrecioMarca = class(TFForm)
    rsMarcas: TADODataSet;
    dsMarcas: TDataSource;
    rs: TADODataSet;
    rsidProducto: TStringField;
    rsProducto: TStringField;
    rsMarca: TStringField;
    rsPrecioActual: TBCDField;
    rsCostoBase: TBCDField;
    rsPorcGasto: TFloatField;
    rsCreditoPorc: TBCDField;
    rsTasa: TFloatField;
    rsporcDesc: TFloatField;
    rsPrecioPropuesto: TBCDField;
    Label1: TLabel;
    luMarca: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Marca: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioActual: TcxGridDBColumn;
    cxGrid1DBTableView1CostoBase: TcxGridDBColumn;
    cxGrid1DBTableView1PorcGasto: TcxGridDBColumn;
    cxGrid1DBTableView1CreditoPorc: TcxGridDBColumn;
    cxGrid1DBTableView1Tasa: TcxGridDBColumn;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1porcDesc: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioPropuesto: TcxGridDBColumn;
    rsMoneda: TStringField;
    cxGroupBox1: TcxGroupBox;
    edTasa: TcxCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    edCosto: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    luMoneda: TcxLookupComboBox;
    cxButton2: TcxButton;
    seGasto: TcxSpinEdit;
    seBen: TcxSpinEdit;
    seDesc: TcxSpinEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cIniciar: TADOCommand;
    cActualizar: TADOCommand;
    rsMonedas: TADODataSet;
    rsMonedasidMoneda: TIntegerField;
    rsMonedasMoneda: TStringField;
    rsMonedasCursoLegal: TBooleanField;
    rsMonedasUidMoneda: TGuidField;
    dsMoneda: TDataSource;
    cxButton5: TcxButton;
    cCambiarPrecio: TADOCommand;
    cbTasa: TcxCheckBox;
    cbGasto: TcxCheckBox;
    cbBen: TcxCheckBox;
    cbDesc: TcxCheckBox;
    rsidMoneda: TIntegerField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Loading: Boolean;
  public
    { Public declarations }
  end;

var
  CambiarPrecioMarca: TCambiarPrecioMarca;

implementation

uses Udata, UUtiles, uTasa;

{$R *.dfm}

procedure TCambiarPrecioMarca.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := luMarca.EditValue;
    Open();
  end;
end;

procedure TCambiarPrecioMarca.cxButton2Click(Sender: TObject);
var
  id: string;
  f: Integer;
begin
  inherited;
  Loading := True;
  try
    if rs.Active then begin
      for f := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do begin
        id := cxGrid1DBTableView1.Controller.SelectedRecords[f].Values[0];
        //id := rsIdProducto.Value;
        with cIniciar do begin
          Parameters[1].Value := id;
          Parameters[2].Value := edCosto.Value;
          Parameters[3].Value := luMoneda.EditValue;
          Execute();
        end;
        rs.Requery();
        rs.Locate('idProducto',id,[]);
      end;
    end;
  finally
    Loading := False;
  end;
end;

procedure TCambiarPrecioMarca.cxButton3Click(Sender: TObject);
var
  f: Integer;

begin
  inherited;
  Loading := true;
  try

  if cxGrid1DBTableView1.Controller.SelectedRecordCount > 0 then begin
      if Confirmar('Cambiar definitivamente SOLO a los productos seleccionados') then begin



          for f := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do begin
          cActualizar.Parameters[1].Value :=  cxGrid1DBTableView1.Controller.SelectedRecords[f].Values[0]; //rsIdProducto.Value;
          cActualizar.Parameters[2].Value :=  cxGrid1DBTableView1.Controller.SelectedRecords[f].Values[3]; //rsCostoBase.Value;
          cActualizar.Parameters[3].Value :=  cxGrid1DBTableView1.Controller.SelectedRecords[f].Values[11]; //rsIdMoneda.Value;

          cActualizar.Parameters[4].Value := iff(cbBen.Checked,seBen.Value,null);
          cActualizar.Parameters[5].Value := iff(cbBen.Checked,seBen.Value,null);
          cActualizar.Parameters[6].Value := iff(cbGasto.Checked,seGasto.Value,null);
          cActualizar.Parameters[7].Value := iff(cbDesc.Checked, seDesc.Value, null);
          cActualizar.Parameters[8].Value := iff(cbTasa.Checked,edTasa.Value,null);
          cActualizar.Execute();
          rs.requery();
        end;
        rs.Requery();

      end;
      cxGrid1DBTableView1.Controller.ClearSelection;
      end
      else begin
      with rs do begin
      First();
      while not Eof do begin
        cActualizar.Parameters[1].Value := rsIdProducto.Value;
        cActualizar.Parameters[2].Value := rsCostoBase.Value;
        cActualizar.Parameters[3].Value := rsIdMoneda.Value;
        cActualizar.Parameters[4].Value := iff(cbBen.Checked,seBen.Value,null);
        cActualizar.Parameters[5].Value := iff(cbBen.Checked,seBen.Value,null);
        cActualizar.Parameters[6].Value := iff(cbGasto.Checked,seGasto.Value,null);
        cActualizar.Parameters[7].Value := iff(cbDesc.Checked, seDesc.Value, null);
        cActualizar.Parameters[8].Value := iff(cbTasa.Checked,edTasa.Value,null);
        cActualizar.Execute();
        Next();
      end;
      rs.Requery();
    end;

  end;
  finally
    Loading := False;
  end;
end;

procedure TCambiarPrecioMarca.cxButton5Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCambiarPrecioMarca.cxButton4Click(Sender: TObject);
var
  f: Integer;
begin
  inherited;
  Loading := True;
  try
    if cxGrid1DBTableView1.Controller.SelectedRecordCount > 0 then begin
      if Confirmar('Cambiar el precio definitivamente SOLO a los productos seleccionados') then begin
        for f := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do begin
          cCambiarPrecio.Parameters[1].Value := cxGrid1DBTableView1.Controller.SelectedRecords[f].Values[0];
          cCambiarPrecio.Execute();
        end;
      end
      else begin
        with rs do begin
          First();
          while not Eof do begin
            cCambiarPrecio.Parameters[1].Value := rsIdProducto.Value;
            cCambiarPrecio.Execute();
            Next();
          end;
        end;
      end;
    end;
    rs.Requery();
  finally
    Loading := False;
  end;
end;

procedure TCambiarPrecioMarca.FormCreate(Sender: TObject);
begin
  inherited;
  rsMarcas.Open();
  rsMonedas.Open();
  luMarca.EditValue := null;
  edTasa.Value := dm.TasaActual(2);
  Loading := False;
  rs.Close();
  rs.Parameters[1].Value := null;
  rs.Open();
end;

procedure TCambiarPrecioMarca.rsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not Loading then begin
    if rsCostoBase.IsNull then
      edCosto.Value := 0
    else
      edCosto.Value := rsCostoBase.Value;
    if not rsIdMoneda.IsNull then
      luMoneda.EditValue := rsIdMoneda.Value;
  end;
end;

end.
