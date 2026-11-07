unit uEDToolBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TClickEvent = procedure(var data: variant) of object;

type
  TfEDToolBar = class(TForm)
    sbNew: TSpeedButton;
    sbLocate: TSpeedButton;
    sbsave: TSpeedButton;
    sbquit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure sbNewClick(Sender: TObject);
    procedure sbLocateClick(Sender: TObject);
    procedure sbsaveClick(Sender: TObject);
    procedure sbquitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    FData: variant;
    FOnCerrarVentana: TClickEvent;
    FOnBuscarEntrada: TClickEvent;
    FOnNuevaEntrada: TClickEvent;
    FOnGuardarEntrada: TClickEvent;
    FCerrando: Boolean;
    FOnImprimirEntrada: TClickEvent;
    FOnBorrarEntrada: TClickEvent;
  public
    { Public declarations }
    property Cerrando: Boolean read FCerrando write FCerrando;

    property OnImprimirEntrada: TClickEvent read FOnImprimirEntrada write FOnImprimirEntrada;
    property OnNuevaEntrada: TClickEvent read FOnNuevaEntrada write FOnNuevaEntrada;
    property OnBuscarEntrada: TClickEvent read FOnBuscarEntrada write FOnBuscarEntrada;
    property OnGuardarEntrada: TClickEvent read FOnGuardarEntrada write FOnGuardarEntrada;
    property OnCerrarVentana: TClickEvent read FOnCerrarVentana write FOnCerrarVentana;
    property OnBorrarEntrada: TClickEvent read FOnBorrarEntrada write FOnBorrarEntrada;
    procedure CerrarVentana;
  end;

var
  fEDToolBar: TfEDToolBar;

implementation

{$R *.dfm}

procedure TfEDToolBar.sbNewClick(Sender: TObject);
begin
  if Assigned(FOnNuevaEntrada) then
    FOnNuevaEntrada(FData);
end;

procedure TfEDToolBar.sbLocateClick(Sender: TObject);
begin
  if Assigned(FOnBuscarEntrada) then
    FOnBuscarEntrada(FData);
end;

procedure TfEDToolBar.sbsaveClick(Sender: TObject);
begin
  if Assigned(FOnGuardarEntrada) then
    FOnGuardarEntrada(FData);
end;

procedure TfEDToolBar.sbquitClick(Sender: TObject);
begin
  if Assigned(FOnCerrarVentana) then
    FOnCerrarVentana(FData);
end;

procedure TfEDToolBar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if Assigned(FOnCerrarVentana) then
    FOnCerrarVentana(FData);
}
  CanClose := FCerrando;
end;

procedure TfEDToolBar.CerrarVentana;
begin
  FCerrando := True;
  Close();
end;

procedure TfEDToolBar.FormCreate(Sender: TObject);
begin
  FCerrando := False;
  width := 100;
//  Top := 20;
//  Left := Screen.Width - (Width + 5);
end;

procedure TfEDToolBar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEDToolBar.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FOnImprimirEntrada) then
    FOnImprimirEntrada(FData);
end;

procedure TfEDToolBar.SpeedButton2Click(Sender: TObject);
begin
  if Assigned(FOnBorrarEntrada) then
    FOnBorrarEntrada(FData);
end;

end.
