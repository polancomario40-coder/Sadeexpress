unit uMainActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, uBrowseActivos, uPanUbics,  ActnList, XPStyleActnCtrls,
  ActnMan, ToolWin, ActnCtrls, ActnMenus, cxControls, cxSplitter,DateUtils,
  StdCtrls;

type
  TMainActivos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    frBrowseActivos1: TfrBrowseActivos;
    Splitter1: TcxSplitter;
    PanUbics1: TPanUbics;
    Acciones: TActionManager;
    MantActivos: TAction;
    aSalir: TAction;
    ListaActivos: TAction;
    ReporteDepreciacion: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    DepResumido: TAction;
    ConsultaActivoDepreciacion: TAction;
    ListadoActivos: TAction;
    AjusteInf: TAction;
    procedure MantActivosExecute(Sender: TObject);
    procedure aSalirExecute(Sender: TObject);
    procedure ListaActivosExecute(Sender: TObject);
    procedure frBrowseActivos1cxButton1Click(Sender: TObject);
    procedure DepResumidoExecute(Sender: TObject);
    procedure ReporteDepreciacionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultaActivoDepreciacionExecute(Sender: TObject);
    procedure ListadoActivosExecute(Sender: TObject);
    procedure AjusteInfExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure RefrescarAcciones;
    Procedure ParaFrames;
  public
    { Public declarations }
    Procedure HabilitarAcciones;
    procedure RefrescarActivos(const idUbicacion: Integer);
  end;

var
  MainActivos: TMainActivos;

implementation

uses uMantActivos, UUtiles, uReporteActivos,
  udmActivos, Udata, uMantUbicaciones, uMantCategoria,
  uMantClases, uConsultaActivoDepreciacion, uListadoActivos,
  uAjusteInf, uParametros;

{$R *.dfm}

procedure TMainActivos.RefrescarActivos(const idUbicacion: Integer);
begin
//  frBrowseActivos1.IdUbicacion := idUbicacion;

  frBrowseActivos1.IdUbicacion := idUbicacion;
end;

procedure TMainActivos.MantActivosExecute(Sender: TObject);
begin
  ModalShow(TMantActivos);
  RefrescarActivos(PanUbics1.idUbicacion);
end;

procedure TMainActivos.aSalirExecute(Sender: TObject);
begin
  Close();
end;

procedure TMainActivos.ListaActivosExecute(Sender: TObject);
begin
  uReporteActivos.ImprimirReporte();
end;

procedure TMainActivos.frBrowseActivos1cxButton1Click(Sender: TObject);
begin
  frBrowseActivos1.cxButton1Click(Sender);
//  frBrowseActivos1.Refresh();
end;

procedure TMainActivos.DepResumidoExecute(Sender: TObject);
begin
  Inherited;
   with TParametros.Create(self) do
   begin
       Paginas.Pages[1].TabVisible := True;
       Paginas.TabIndex := 0;
       try
         if Showmodal = mrok then
           dmActivos.ImprimirListaDepr(Fecha.Date, True);
       finally
         Release();
       end;
   end;
end;

procedure TMainActivos.ReporteDepreciacionExecute(Sender: TObject);
begin
  Inherited;
   with TParametros.Create(self) do
   begin
       Paginas.Pages[1].TabVisible := True;
       Paginas.TabIndex := 0;
       try
         if Showmodal = mrok then
           dmActivos.ImprimirListaDepr(Fecha.Date, False);
       finally
         Release();
       end;
   end;
end;

procedure TMainActivos.FormShow(Sender: TObject);
begin
//  LoginForm.Execute;
end;

procedure TMainActivos.ConsultaActivoDepreciacionExecute(
  Sender: TObject);
begin
  ModalShow(tConsultaActivoDepreciacion);
end;

procedure TMainActivos.ListadoActivosExecute(Sender: TObject);
begin
  ModalShow(tListadoActivos);
end;

procedure TMainActivos.RefrescarAcciones;
Var
  i : Integer;
begin
   application.Title := dm.ConfiguracionTituloApp.AsString;
   self.Caption := application.Title;

   for i := 0 to acciones.ActionCount - 1 do
   begin
      if TAction(acciones.Actions[i]).Tag <> 5 then //las acciones de salir y logoff no deben verificar seguridad
      TAction(acciones.Actions[i]).enabled := (dm.TienepermisoShow(pAbrir,(dm.apppermisos(acciones.Actions[i].name))));
   end;
end;

procedure TMainActivos.ParaFrames;
begin
  PanUbics1.qryUbics.Open();
  PanUbics1.rsUbics.Open();
  PanUbics1.OnCambioUbicacion := RefrescarActivos;
  PanUbics1.Refresh();
  frBrowseActivos1.rsActivos.Open();
  frBrowseActivos1.RefreshButtons();
//  RefrescarActivos(PanUbics1.idUbicacion);
  RefrescarActivos(PanUbics1.AutoIncField1.Value);
end;

procedure TMainActivos.HabilitarAcciones;
Var
  i : Integer;
begin
   for i := 0 to acciones.ActionCount - 1 do
   begin
      if TAction(acciones.Actions[i]).Tag <> 5 then //las acciones de salir y logoff no deben verificar seguridad
      TAction(acciones.Actions[i]).enabled := True;
   end;
end;

procedure TMainActivos.AjusteInfExecute(Sender: TObject);
begin
  ModalShow(TAjusteInf);
end;

procedure TMainActivos.FormCreate(Sender: TObject);
begin
  RefrescarAcciones;
  ParaFrames;
end;

end.
