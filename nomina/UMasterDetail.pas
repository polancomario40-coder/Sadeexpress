unit UMasterDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  Basicform, ActnList, wwDialog, Db, Wwdatsrc, Buttons,
  ComCtrls, DBGrids, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  Wwlocate, wwidlg;

type
  TMasterDetail = class(TFbasicform)
    DS2: TwwDataSource;
    Grid: TwwDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure DS2UpdateData(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public

  Protected
    tmpbm : string;
    procedure newctrlstate; override;
    procedure editctrlstate; override;
    procedure browsectrlstate; override;
    procedure findctrlstate; override;
    { Public declarations }
  end;

var
  MasterDetail: TMasterDetail;

implementation

uses udata, UUtiles;

{$R *.DFM}

procedure TMasterDetail.FormCreate(Sender: TObject);
begin
  inherited;
  DS2.dataset.open;
end;

procedure TMasterDetail.GridExit(Sender: TObject);
begin
  inherited;
  ds2.DataSet.CheckBrowseMode;
  Barra.Panels[0].Text := 'Coloque el mouse sobre un boton para ver su funcion';
end;

procedure TMasterDetail.newctrlstate;
begin
  ds2.autoedit := true;
  grid.KeyOptions := [dgEnterToTab,dgAllowDelete,dgAllowInsert];
  Grid.readonly := false;
end;

procedure TMasterDetail.editctrlstate;
begin
  ds2.autoedit := true;
  grid.KeyOptions := [dgEnterToTab,dgAllowDelete,dgAllowInsert];
  Grid.readonly := false;
end;

procedure TMasterDetail.findctrlstate;
begin
  ds2.autoedit := false;
  grid.KeyOptions := [dgEnterToTab];
  Grid.readonly := true;
end;

procedure TMasterDetail.browsectrlstate;
begin
  ds2.autoedit := false;
  grid.KeyOptions := [dgEnterToTab];
  Grid.readonly := true;
end;
// cuando se entra al grid de detalle debe guardar el record del header
procedure TMasterDetail.GridEnter(Sender: TObject);
begin
  inherited;
  if (appestado = appInsert) and (DS.state in [dsinsert]) then
  begin
    try
      DS.dataset.post;
    except
      on ERequiredError do
      begin
         selectfirst;
         raise;
      end
      else
      begin
         selectfirst;
         raise exception.create('No es posible grabar el registro de cabecera');
      end;
    end;
    Barra.Panels[0].Text := 'Use la tecla "Esc" para cancelar la edicion del detalle';
  end;
end;

// verifica si no hay campos requeridos sin llenar antes de guardar un record del detalle
procedure TMasterDetail.DS2UpdateData(Sender: TObject);
var
   x : integer;
begin
   inherited;
   for x := 0 to ds2.dataset.fieldcount - 1 do
      if ds2.dataset.Fields[x].Required and ds2.dataset.Fields[x].isnull then
         raise ERequiredError.create('Complete la informacion del campo : ' +
                                      uppercase(ds2.dataset.Fields[x].displaylabel) + ' o use <Esc> para cancelar el reglon de detalle');
end;


procedure TMasterDetail.FormDestroy(Sender: TObject);
begin
  DS2.dataset.close;
  inherited;
end;

procedure TMasterDetail.ACancelarExecute(Sender: TObject);
begin
  if ((Self is TMasterDetail)) and ((DS.state in [dsBrowse]) and (AppEstado = AppInsert)) then
  Begin
     SelectFirst;
     if Application.MessageBox('Esta usted seguro de que desea cancelar los cambios hechos ' +
        'al registro actual ?', 'Advertencia', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES then
     begin
       DS2.Dataset.Cancel;
       DS.DataSet.Cancel;
       DS.DataSet.Delete;
       appestado := appBrowse;
       DS.AutoEdit := false;
       Barra.Panels[1].Text := 'Consultando';
       Browsebotonstate;
       BrowseCtrlState;
       ds.DataSet.Refresh ;
     end
  end
  else
  begin
      inherited;
  end;
end;

end.
