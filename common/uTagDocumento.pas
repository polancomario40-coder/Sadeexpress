unit uTagDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, kbmMemTable, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TTagDocumento = class(TFForm)
    mTags: TkbmMemTable;
    rs: TADODataSet;
    rsidTagDocumento: TIntegerField;
    rsGUIDDocumento: TGuidField;
    rsTipoDocumento: TStringField;
    rsIdTag: TIntegerField;
    rsTag: TStringField;
    mTagsIdTag: TIntegerField;
    mTagsTag: TStringField;
    mTagsIncluir: TBooleanField;
    rsListaTags: TADODataSet;
    rsListaTagsidTag: TIntegerField;
    rsListaTagsTag: TStringField;
    rsListaTagsidTagTipo: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Tag: TcxGridDBColumn;
    cxGrid1DBTableView1Incluir: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cInsTag: TADOCommand;
    cBorrar: TADOCommand;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    luTipo: TcxLookupComboBox;
    rsTipos: TADODataSet;
    dsTipos: TwwDataSource;
    rsTiposidTagTipo: TStringField;
    rsTiposTagTipo: TStringField;
    mTagsIdTagTipo: TStringField;
    cCrear: TADOCommand;
    cBorrarTag: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure luTipoPropertiesEditValueChanged(Sender: TObject);
    procedure mTagsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    FTipoDocumento: string;
    FGuidDocumento: Variant;
    procedure LimpiarTags;
    procedure IniciarTags;
    procedure GuardarTags;
    { Private declarations }
  public
    { Public declarations }
    property GuidDocumento: Variant read FGuidDocumento write FGuidDocumento;
    property TipoDocumento: string read FTipoDocumento write FTipoDocumento;

    procedure CargarTags(const guid: Variant; const tipo: string);

    class function Tag(const guid: Variant; const tipo: string): Boolean;
  end;

var
  TagDocumento: TTagDocumento;

implementation

uses Udata, UUtiles;

{$R *.dfm}

{ TFForm1 }

procedure TTagDocumento.CargarTags(const guid: Variant; const tipo: string);
begin
  GuidDocumento := guid;
  TipoDocumento := tipo;
  
  LimpiarTags();

  with rs do begin
    Close();
    Parameters[1].Value := guid;
    Open();
    while not Eof do begin
      if mTags.Locate('IdTag',rsIdTag.Value,[]) then begin
        mTags.Edit();
        mTagsIncluir.Value := True;
        mTags.Post();
      end;
      Next();
    end;
  end;
end;

procedure TTagDocumento.LimpiarTags;
begin
  with mTags do begin
    DisableControls();
    Filtered := False;
    try
      First();
      while not Eof do begin
        if mTagsIncluir.Value then begin
          Edit();
          mTagsIncluir.Value := false;
          Post();
        end;
        Next();
      end;
    finally
      Filtered := luTipo.EditValue <> NULL; 
      EnableControls();
    end;
  end;
end;

procedure TTagDocumento.FormCreate(Sender: TObject);
begin
  inherited;
  rsTipos.Open();
  luTipo.EditValue := NULL;
  IniciarTags();
end;


procedure TTagDocumento.IniciarTags;
begin
  mTags.DisableControls();
  try
    mTags.Close();
    mTags.Open();

    with rsListaTags do begin
      Close();
      Open();
      while not Eof do begin
        mTags.InsertRecord([rsListaTagsIdTag.Value, rsListaTagsTag.Value, False, rsListaTagsidTagTipo.Value]);
        Next();
      end;
    end;
  finally
    mTags.EnableControls();
  end;
  
  mTags.Filtered := luTipo.EditValue <> NULL;
end;

procedure TTagDocumento.cxButton1Click(Sender: TObject);
begin
  inherited;
  GuardarTags();
end;

procedure TTagDocumento.GuardarTags;
begin
  with cBorrar do begin
    Parameters[1].Value := GuidDocumento;
    Execute();
  end;

  with mTags do begin
    DisableControls();
    Filtered := False;
    try
      First();
      while not Eof do begin
        if mTagsIncluir.Value then begin
          cInsTag.Parameters[1].Value := GuidDocumento;
          cInsTag.Parameters[2].Value := mTagsIdTag.Value;
          cInsTag.Parameters[3].Value := TipoDocumento;
          cInsTag.Execute();
        end;
        Next();
      end;
    finally
      Filtered := luTipo.EditValue <> NULL;
      EnableControls();
    end;
  end;

  ModalResult := mrOk;
end;

class function TTagDocumento.Tag(const guid: Variant; const tipo: string): Boolean;
begin
//  if not dm.Tienepermiso(pAgregar,'TagDocumento') then
//    Exit;
    
  with TTagDocumento.Create(Application) do begin
    try
      CargarTags(guid, tipo);
      Result := ShowModal() = mrOk;
    finally
      Release();
    end;
  end;
end;

procedure TTagDocumento.luTipoPropertiesEditValueChanged(Sender: TObject);
var
  id: Integer;
begin
  inherited;
  if mTags.Active then begin
    id := mTagsIdTag.Value;
    mTags.Filtered := luTipo.EditValue <> NULL;
    mTags.Refresh();
    mtags.Locate('IdTag',id,[]);
  end;
end;

procedure TTagDocumento.mTagsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept := (luTipo.EditValue = NULL) or (mTagsIdTagTipo.Value = luTipo.EditValue); 
end;

procedure TTagDocumento.cxButton3Click(Sender: TObject);
var
  str: string;
  tip: string;
begin
  inherited;
  if InputQuery('Etiquetas','Crear una nueva etiqueta',str) then begin
    if luTipo.EditValue = NULL then
      tip := 'GENERAL'
    else
      tip := luTipo.EditValue;

    with cCrear do begin
      Parameters[1].Value := str;
      Parameters[2].Value := tip;
      Execute();
      if Parameters[3].Value > 0 then begin
        mTags.InsertRecord([Parameters[3].Value, str,true, tip]);
        rsListaTags.Requery();
      end;
    end;
  end;
end;

procedure TTagDocumento.cxButton4Click(Sender: TObject);
begin
  inherited;
  if Confirmar('Seguro de eliminar la etiqueta ' + mTagsTag.Value) then begin
    cBorrarTag.Parameters[1].Value := mTagsIdTag.Value;
    cBorrarTag.Execute();
    if cBorrarTag.Parameters[0].Value = 0 then
      mTags.Delete();
  end;
end;

end.
