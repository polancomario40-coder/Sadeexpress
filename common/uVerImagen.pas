unit uVerImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxImage, cxGroupBox, jpeg;

type
  TVerImagen = class(TForm)
    Image: TcxImage;
    procedure ImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VerImagen: TVerImagen;

procedure MostrarImagen(const Pic: TPicture); overload;
procedure MostrarImagen(const Pic: TJPEGImage);overload;

implementation

{$R *.dfm}

procedure TVerImagen.ImageClick(Sender: TObject);
begin
  Close();
end;

procedure MostrarImagen(const Pic: TPicture);
begin
  if Pic = nil then
    Exit;

  with TVerImagen.Create(Application) do begin
    try
      Image.Picture.Assign(Pic);
      ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure MostrarImagen(const Pic: TJpegImage);
begin
  if Pic = nil then
    Exit;

  with TVerImagen.Create(Application) do begin
    try
      Image.Picture.BitMap.Assign(Pic);
      ShowModal();
    finally
      Release();
    end;
  end;
end;


end.
