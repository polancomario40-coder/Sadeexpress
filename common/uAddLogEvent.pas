unit uAddLogEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ADODB, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, ExtCtrls;

type
  TAddLogEvent = class(TForm)
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
    rs: TADODataSet;
    Panel1: TPanel;
    cxButtonEdit1: TcxButtonEdit;
    rsidLog: TAutoIncField;
    rsGuidDocumento: TGuidField;
    rsFecha: TDateTimeField;
    rsUsuario: TStringField;
    rsDescripcion: TStringField;
    cLog: TADOCommand;
    procedure cxButtonEdit1Enter(Sender: TObject);
    procedure cxButtonEdit1Exit(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FGuidDocumento: Variant;
    procedure SetId(const Value: Variant);
    { Private declarations }

  public
    { Public declarations }
    property Guiddocumento: Variant read FGuidDocumento write SetId;
  end;

var
  AddLogEvent: TAddLogEvent;

procedure ShowDocLog(const id: Variant);

implementation

uses udmRepository, Udata;

{$R *.dfm}

procedure TAddLogEvent.SetId(const Value: Variant);
begin
  FGuidDocumento := Value;
  with rs do begin
    Close();
    Parameters[1].Value := Value;
    Open();
  end;
end;

procedure ShowDocLog(const id: Variant);
begin
  with TAddLogEvent.Create(Application) do begin
    try
      Guiddocumento := id;
      ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure TAddLogEvent.cxButtonEdit1Enter(Sender: TObject);
begin
  if cxButtonEdit1.Text = 'Agregar nota' then
    cxButtonEdit1.Text := '';
end;

procedure TAddLogEvent.cxButtonEdit1Exit(Sender: TObject);
begin
  if cxButtonEdit1.Text = '' then
    cxButtonEdit1.Text := 'Agregar nota';
end;

procedure TAddLogEvent.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (cxButtonEdit1.Text <> '') and (cxButtonEdit1.Text <> 'Agregar nota') then begin
    if AButtonIndex = 0 then begin
      with cLog do begin
        Parameters[1].Value := FGuidDocumento;
        Parameters[2].Value := dm.UsuarioActual;
        Parameters[3].Value := 'NOTA';
        Parameters[4].Value := cxButtonEdit1.Text;
        Execute();
      end;
      rs.Requery();
    end;
//    else begin
    cxButtonedit1.Text := 'Agregar nota';
    cxGrid1.SetFocus();
//    end;
  end;
end;

procedure TAddLogEvent.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    Close();
end;

end.
