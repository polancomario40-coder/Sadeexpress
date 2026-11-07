unit uFacturaDetEspec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Mask, DBCtrls, DB, ADODB, ActnList,
  ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  cxCalendar, cxDBEdit, cxMemo, cxLookAndFeelPainters, cxButtons;

type
  TFacturaDetEspec = class(Tform)
    Label1: TLabel;
    Label5: TLabel;
    Espec: TcxDBMemo;
    cxDBDateEdit1: TcxDBDateEdit;
    DS: TDataSource;
    bok: TcxButton;
    bCancelar: TcxButton;
    bborrar: TcxButton;
    procedure bCancelarClick(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure bborrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FacturaDetEspec: TFacturaDetEspec;

implementation


{$R *.dfm}

procedure TFacturaDetEspec.bCancelarClick(Sender: TObject);
begin
  if ds.AutoEdit then
    ds.DataSet.Cancel;
end;

procedure TFacturaDetEspec.bokClick(Sender: TObject);
begin
  if ds.AutoEdit then begin
    if Espec.Text <> '' then begin
      if ds.DataSet.State in dseditmodes then ds.DataSet.Post
    end else begin
      ds.DataSet.Delete;
    end;
 end;
end;

procedure TFacturaDetEspec.bborrarClick(Sender: TObject);
begin
  if ds.AutoEdit then
    ds.DataSet.Delete;
end;

procedure TFacturaDetEspec.FormShow(Sender: TObject);
begin
  bok.Enabled := ds.AutoEdit;
  bborrar.Enabled := ds.AutoEdit;
end;

end.
