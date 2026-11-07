unit uImageView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, jpeg,
  cxGridTableView, cxGridDBTableView, cxTextEdit, cxMemo, cxDBEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxImage, ADODB, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ExtCtrls;

type
  TImageView = class(TForm)
    RS: TADODataSet;
    RSidImagen: TGuidField;
    RSidDocumento: TGuidField;
    RSimagen: TBlobField;
    RSFecha: TDateTimeField;
    RSTipoDoc: TStringField;
    RSNota: TStringField;
    DS: TDataSource;
    dbimg: TcxDBImage;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idImagen: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1DBnota: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }

  public
    TipoDoc : string;
    idDocumento : string;
    { Public declarations }
  end;

Procedure VerImagen(id, TipoDoc : string);

var
  ImageView: TImageView;

implementation

uses Udata, uScanner;

{$R *.dfm}

Procedure VerImagen(id, TipoDoc : string);
begin
  if id = NULL then Abort;

  ImageView := TImageView.Create(application);
  try
    ImageView.idDocumento := id;
    ImageView.TipoDoc := TipoDoc;

    ImageView.rs.close;
    ImageView.RS.parameters[1].value := id;
    ImageView.rs.open;
    ImageView.showmodal();
    ImageView.rs.UpdateBatch();
  finally
    ImageView.Release;
  end;
end;

procedure TImageView.cxButton1Click(Sender: TObject);
begin
  if rs.state = dsbrowse then
    rs.Append;
end;

procedure TImageView.cxButton2Click(Sender: TObject);
begin
  if rs.state = dsbrowse then
    rs.edit;
end;

procedure TImageView.cxButton3Click(Sender: TObject);
begin
  if (rs.state = dsbrowse) and (not(rs.IsEmpty)) and (Application.MessageBox('Seguro que desea borrar el registro', 'Advertencia', MB_YESNO) = ID_YES) Then
    rs.Delete;
end;


procedure TImageView.cxButton4Click(Sender: TObject);
var
  jpg : Tjpegimage;
begin
  if rs.state in dseditmodes then begin
    jpg := Tjpegimage.create();
    try
      if scaningnoshow(jpg) then
        rsimagen.Assign(jpg);
    finally
      jpg.Free;
    end;
  end;
end;

procedure TImageView.FormCreate(Sender: TObject);
begin
  TipoDoc := '';
end;

procedure TImageView.cxButton5Click(Sender: TObject);
begin
  if rs.state in dseditmodes then
    dbimg.LoadFromFile;
end;

procedure TImageView.RSNewRecord(DataSet: TDataSet);
begin
  rsidimagen.AsGuid := dm.NewGuid;
  rsFecha.Value := dm.FechaHoy;
  rsTipoDoc.Value := TipoDoc;
  rsidDocumento.Value := idDocumento;
end;

procedure TImageView.cxButton6Click(Sender: TObject);
begin
  if rs.state in dseditmodes then
    rs.Post;
end;

end.


