unit uRestoreBackUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLookAndFeelPainters, StdCtrls, cxButtons,
  Gradient, cxLabel;

type
  TRestoreBackUp = class(TForm)
    rsBackupInfo: TADODataSet;
    rsBackupInfoDataName: TStringField;
    rsBackupInfoLogName: TStringField;
    rsBackupInfoDataPath: TStringField;
    rsBackupInfoLogPath: TStringField;
    cRestaurar: TADOCommand;
    cxButton1: TcxButton;
    edSet: TcxTextEdit;
    cxButton2: TcxButton;
    edDataPath: TcxTextEdit;
    cxButton3: TcxButton;
    edLogPath: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Gradient1: TGradient;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    edDBName: TcxTextEdit;
    cxLabel3: TcxLabel;
    rsDBName: TADODataSet;
    rsDBNameNombreDB: TWideStringField;
    od: TOpenDialog;
    sd: TSaveDialog;
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edSetPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ValidarBackUpSet;
  end;

var
  RestoreBackUp: TRestoreBackUp;

implementation

uses ugldm, Udata;

{$R *.dfm}

{ TRestoreBackUp }

procedure TRestoreBackUp.ValidarBackUpSet;
begin
  if not FileExists(edSet.Text) then
    raise Exception.Create('Este archivo no existe');

  try
    with rsBackUpInfo do begin
      Parameters[0].Value := edSet.Text;
      Open();
      edDataPath.Text := rsBackupInfoDataPath.Value;
      edLogPath.Text := rsBackupInfoLogPath.Value;
    end;
  except
    ShowMessage('Error leyendo informacion del set, el formato parece incorrecto');
  end;
end;

procedure TRestoreBackUp.cxButton4Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    try
      with cRestaurar do begin
        Parameters[0].Value := edDBName.Text;
        Parameters[1].Value := edSet.Text;
        Parameters[2].Value := edDataPath.Text;
        Parameters[3].Value := edLogPath.Text;

        //showmessage(cRestaurar.CommandText);
        Execute();

        dm.Coneccion.Execute('USE ' + edDBName.Text);
      end;
    except
      raise;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TRestoreBackUp.FormCreate(Sender: TObject);
begin
  with rsDBName do begin
    Close();
    Open();
    edDBName.Text := Fields[0].Value;
  end;
end;

procedure TRestoreBackUp.cxButton1Click(Sender: TObject);
begin
  if od.Execute then begin
    edSet.Text := od.FileName;
    ValidarBackUpSet();
  end;
end;

procedure TRestoreBackUp.cxButton2Click(Sender: TObject);
begin
  sd.FileName := edDataPath.Text;
  if sd.Execute then
    edDataPath.Text := sd.FileName;
end;

procedure TRestoreBackUp.cxButton3Click(Sender: TObject);
begin
  sd.FileName := edLogPath.Text;
  if sd.Execute then
    edLogPath.Text := sd.FileName;
end;

procedure TRestoreBackUp.edSetPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  ValidarBackUpSet();
end;

procedure TRestoreBackUp.cxButton5Click(Sender: TObject);
begin
  Close();
end;

end.
