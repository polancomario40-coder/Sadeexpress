unit rCatalogo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db,
  ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, myChkBox;

type
  TfrCatalogo = class(TForm)
    Catds: TDataSource;
    plCat: TppBDEPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure ppShape1Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCatalogo: TfrCatalogo;

implementation

uses ugldm;

{$R *.DFM}

procedure TfrCatalogo.ppDBText1GetText(Sender: TObject; var Text: String);
begin
  Text := StringOfChar(' ', gldm.rsCatalogoNivel.AsInteger) + Text;
end;

procedure TfrCatalogo.ppShape1Print(Sender: TObject);
begin
  ppShape1.Visible := not ppShape1.Visible;
end;

end.
