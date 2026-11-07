unit uEditarLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, ADODB;

type
  TEditarLista = class(TFForm)
    rs: TADODataSet;
    rsidLista: TGuidField;
    rsLista: TStringField;
    rsFechaCreacion: TDateTimeField;
    rsUsuario: TStringField;
    rsActiva: TBooleanField;
    rsCategoria: TStringField;
    rsADOCommandType: TStringField;
    rsADOCommand: TStringField;
    rsTipoLista: TStringField;
    rsDescripcion: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    Label4: TLabel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    Label5: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label6: TLabel;
    cxDBMemo2: TcxDBMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure rsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Editar(const id: Variant): Boolean; 
  end;

var
  EditarLista: TEditarLista;

implementation

uses Udata;

{$R *.dfm}

procedure TEditarLista.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Post();
  ModalResult := mrOk;
end;

procedure TEditarLista.cxButton2Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

class function TEditarLista.Editar(const id: Variant): Boolean;
begin
  with TEditarLista.Create(Application) do begin
    with rs do begin
      Close();
      Parameters[0].Value := id;
      Open();
      if Eof then
        Append()
      else
        Edit();
    end;
    Result := ShowModal() = mrOk;
    Release();
  end;
end;

procedure TEditarLista.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsIdLista.AsGuid := dm.NewGuid();
  rsADOCommandType.Value := 'cmdText';
  rsUsuario.Value := dm.UsuarioActual;
  rsActiva.Value := True;
  rsFechaCreacion.Value := dm.DBFechaHora;
  rsTipoLista.Value := 'R';
end;

end.
