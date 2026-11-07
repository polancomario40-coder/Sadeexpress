unit uMantCuenta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Db,
  StdCtrls, grids,Buttons, jpeg, ComCtrls, Mask, DBCtrls,
  dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor, cxControls, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, Gradient, cxCalendar, cxLookAndFeelPainters, cxButtons;

type
  TfMantCuenta = class(TForm)
    BtnGrabar: TcxButton;
    BtnCancelar: TcxButton;
    btnSalir: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edId: TcxDBTextEdit;
    edMadre: TcxDBTextEdit;
    edDescr: TcxDBTextEdit;
    edNivel: TcxDBTextEdit;
    DataSource: TDataSource;
    Shape4: TShape;
    StyleController: TdxEditStyleController;
    Label7: TLabel;
    edCtaDesc: TcxDBTextEdit;
    edCierre: TcxDBTextEdit;
    Label8: TLabel;
    cbAuxiliares: TcxDBCheckBox;
    cbOrigen: TcxDBImageComboBox;
    cbTipo: TcxDBImageComboBox;
    Label9: TLabel;
    cbStatus: TcxDBImageComboBox;
    deFecStatus: TcxDBDateEdit;
    Gradient1: TGradient;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  protected
    Agregando : Boolean;
    MantenerNuevo: Boolean;
    // Los metodos Insertar y Modificar son protected y virtual para
    // que puedan ser modificados por los desendientes de esta clase
    procedure Insertar; virtual;
    procedure Modificar; virtual;
    procedure Guardar; virtual;
    procedure Cancelar; virtual;

    // Manejo directo del dataset
    procedure DoInsert; virtual;
    procedure DoPost; virtual;
    procedure DoCancel; virtual;
    procedure DoEdit; virtual;

    // manejo de transacciones
    procedure DoCommitTrans; virtual;
    procedure DoRollBack; virtual;
    procedure DoBeginTrans; virtual;

  public
    { Public declarations }
    UseTransactions: Boolean;
    procedure NuevoRegistro;
    procedure ModificarRegistro;
  end;

var
  fMantCuenta: TfMantCuenta;

implementation

uses ugldm, Udata;


{$R *.DFM}

// Este procedimiento maneja las teclas de funcion y escape para
// todos los mantenimientos
procedure TfMantCuenta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_RETURN: if (ActiveControl <> nil) and (not (ActiveControl is TCustomGrid)) then begin
                 SelectNext(ActiveControl,True,True);
                 Key := 0;
               end;
        VK_F5: begin
                 BtnGrabar.Click();
                 Key := 0;
                end;
         VK_F6: begin
                 BtnCancelar.Click();
                 Key := 0;
                end;
     VK_ESCAPE: begin
                  BtnSalir.Click();
                  Key := 0;
                end;
  end;
end;

procedure TfMantCuenta.BitBtn1Click(Sender: TObject);
begin
  SelectFirst;
  Guardar();
  dm.CreateLog('Edit/Ins',Self.Caption,edId.Text);
end;

procedure TfMantCuenta.BitBtn2Click(Sender: TObject);
begin
  SelectFirst;
  Cancelar();
end;

procedure TfMantCuenta.ModificarRegistro;
begin
  Modificar();
  if not Visible then
    ShowModal();
end;

procedure TfMantCuenta.NuevoRegistro;
begin
  Insertar();
  if not Visible then
    ShowModal();
end;

procedure TfMantCuenta.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfMantCuenta.btnSalirClick(Sender: TObject);
begin
  Cancelar();
end;

// este metodo inserta un record en blanco
// el record no se inserta realmente aqui sino en DoInsert
// pero el manejo general de interface se hace aqui
procedure TfMantCuenta.Insertar;
begin
  if DataSource.Dataset <> nil then begin
     DoInsert();
     //StatusBar.Panels[0].Text := 'Agregando...';
     Agregando := True;
  end;
end;

// este metodo modifica el registro actual
// fijese que el Edit() no se ejectua aqui
// pero si el manejo general de interface
procedure TfMantCuenta.Modificar;
begin
  Agregando := False;
  if DataSource.Dataset <> nil then begin
     DoEdit();
     //StatusBar.Panels[0].Text := 'Modificando...';
  end;
end;

// Guardar un registro
// El trabajo real del Dataset se hace en DoPost
// pero aqui se maneja los relacionado al interface
procedure TfMantCuenta.Guardar;
begin
  DoPost();
  ModalResult := mrOk;
{  if Agregando and MantenerNuevo then
     Insertar() // Luego de gravar se inicia un nuevo reg.
  else
     Modificar();}
end;

// Cancelar un registro
procedure TfMantCuenta.Cancelar;
begin
  DoCancel();
end;

// Aqui se cancelan los cambios al registro actual
// si no se quiere que la plantilla haga este trabajo (para llamaer un metodo
// personalizado o algo asi) se puede reemplazar este metodo en uno
// de los descendientes de la plantilla
// Fijese que aqui se lleva el control de las transacciones
procedure TfMantCuenta.DoCancel;
begin
  ModalResult := mrCancel;
end;

// Aqui se insertan registros en blanco
// si no se quiere que la plantilla haga este trabajo (para llamaer un metodo
// personalizado o algo asi) se puede reemplazar este metodo en uno
// de los descendientes de la plantilla
// Fijese que aqui se lleva el control de las transacciones
procedure TfMantCuenta.DoInsert;
begin
  gldm.CrearCuenta();
end;

// Aqui se guardan los cambios al registro actual
// si no se quiere que la plantilla haga este trabajo (para llamaer un metodo
// personalizado o algo asi) se puede reemplazar este metodo en uno
// de los descendientes de la plantilla
// Fijese que aqui se lleva el control de las transacciones
procedure TfMantCuenta.DoPost;
begin
  gldm.BajarCuenta();
end;

// Aqui se edita el registro actual
// si no se quiere que la plantilla haga este trabajo (para llamaer un metodo
// personalizado o algo asi) se puede reemplazar este metodo en uno
// de los descendientes de la plantilla
// Fijese que aqui se lleva el control de las transacciones
procedure TfMantCuenta.DoEdit;
begin
  
end;

// Los siguientes tres metodos se encargan del manejo de transacciones
// como la plantilla debe funcionar igual para el BDE, ADO o IBX
// no puede manejar transacciones directamente, este trabajo se le
// deja a los descendientes de la plantilla

procedure TfMantCuenta.DoBeginTrans;
begin

end;

procedure TfMantCuenta.DoCommitTrans;
begin

end;

procedure TfMantCuenta.DoRollBack;
begin

end;

procedure TfMantCuenta.FormCreate(Sender: TObject);
begin
  MantenerNuevo := True;
  UseTransactions := False;
end;

end.

