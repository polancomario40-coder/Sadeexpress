unit uSeasonIconsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Contnrs,dateutils,
  Dialogs, jpeg, cxControls, cxContainer, cxEdit, cxImage;

type
  TSeasonIconsForm = class(TForm)
    Image1: TcxImage;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxImage5: TcxImage;
    cxImage9: TcxImage;
    cxImage8: TcxImage;
    procedure FormCreate(Sender: TObject);
  private
    _images: TComponentList;
    function GetImage(Index: Integer): TPicture;
    function GetRandomImage: TPicture;
    function GetCornerImage: TPicture;
    function GetLogoImage: TPicture;
  private
    { Private declarations }
  public
    { Public declarations }
    property Images[Index: Integer]: TPicture read GetImage;
    property RandomImage: TPicture read GetRandomImage;
    property LogoImage: TPicture read GetLogoImage;
    property CornerImage: TPicture read GetCornerImage;

    function GetSeasonLogo: TPicture;
    function GetSeasonCornerImage: TPicture;
  end;

var
  SeasonIconsForm: TSeasonIconsForm;

implementation

{$R *.dfm}

procedure TSeasonIconsForm.FormCreate(Sender: TObject);
var
 j: Integer;
begin
  _images := TComponentList.Create();
  Randomize();
  for j := 0 to ComponentCount - 1 do begin
    if Components[j] is TcxImage then
      _images.Add(Components[j]);
  end;
end;

function TSeasonIconsForm.GetCornerImage: TPicture;
begin
  Result := Images[_images.Count - 1];
end;

function TSeasonIconsForm.GetImage(Index: Integer): TPicture;
begin
  if (Index >= 0) and (Index < _images.Count) then
    Result := (_images[Index] as TcxImage).Picture
  else
    Result := (_images[0] as TcxImage).Picture
end;

function TSeasonIconsForm.GetLogoImage: TPicture;
begin
  Result := Images[0];
end;

function TSeasonIconsForm.GetRandomImage: TPicture;
begin
  Result := Images[1 + Random(5)];
end;

function TSeasonIconsForm.GetSeasonLogo: TPicture;
begin
  if MonthOf(Date()) < 11 then
    Result := LogoImage
  else
    Result := RandomImage;
end;

function TSeasonIconsForm.GetSeasonCornerImage: TPicture;
begin
  if MonthOf(Date()) < 11 then
    Result := nil
  else
    Result := CornerImage;
end;

end.
