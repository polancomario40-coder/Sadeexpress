unit uTareaLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ADODB, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, ExtCtrls;

type
  TTareaLog = class(TForm)
    ds: TDataSource;
    cxGrid1: TcxGrid;
    tvLog: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tvLogFecha: TcxGridDBColumn;
    tvLogUsuario: TcxGridDBColumn;
    tvLogTareaLog: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    rsTareaLog: TADODataSet;
    rsTareaLogidTareaLog: TGuidField;
    rsTareaLogidTarea: TGuidField;
    rsTareaLogFecha: TDateTimeField;
    rsTareaLogUsuario: TStringField;
    rsTareaLogTareaLog: TStringField;
    Panel1: TPanel;
    cxButtonEdit1: TcxButtonEdit;
    procedure rsTareaLogNewRecord(DataSet: TDataSet);
    procedure cxButtonEdit1Enter(Sender: TObject);
    procedure cxButtonEdit1Exit(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FidTarea: Variant;
    procedure SetIdTarea(const Value: Variant);
    { Private declarations }

  public
    { Public declarations }
    property idTarea: Variant read FidTarea write SetIdTarea;
  end;

var
  TareaLog: TTareaLog;

procedure ShowTareaLog(const idTar: Variant);

implementation

uses udm;

{$R *.dfm}

procedure TTareaLog.rsTareaLogNewRecord(DataSet: TDataSet);
begin
  rsTareaLogIdTareaLog.AsGuid := dm.NewGUID();
  rsTareaLogIdTarea.Value := idTarea;
end;

procedure TTareaLog.SetIdTarea(const Value: Variant);
begin
  FidTarea := Value;
  with rsTareaLog do begin
    Close();
    Parameters[1].Value := Value;
    Open();
  end;
end;

procedure ShowTareaLog(const idTar: Variant);
begin
  with TTareaLog.Create(Application) do begin
    IdTarea := idTar;
    ShowModal();
    Release();
  end;
end;

procedure TTareaLog.cxButtonEdit1Enter(Sender: TObject);
begin
  if cxButtonEdit1.Text = 'Agregar nota' then
    cxButtonEdit1.Text := '';
end;

procedure TTareaLog.cxButtonEdit1Exit(Sender: TObject);
begin
  if cxButtonEdit1.Text = '' then
    cxButtonEdit1.Text := 'Agregar nota';
end;

procedure TTareaLog.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (cxButtonEdit1.Text <> '') and   (cxButtonEdit1.Text <> 'Agregar nota') then begin
    if AButtonIndex = 0 then begin
      with rsTareaLog do begin
        Append();
        rsTareaLogUsuario.Value := dm.UsuarioActual;
        rsTareaLogTareaLog.Value := cxButtonEdit1.Text;
        rsTareaLogFecha.Value := Now();
        Post();
      end;
    end;
//    else begin
    cxButtonedit1.Text := 'Agregar nota';
    cxGrid1.SetFocus();
//    end;
  end;
end;

procedure TTareaLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    Close();
end;

end.
