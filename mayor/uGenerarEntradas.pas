unit uGenerarEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, StdCtrls, Gradient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxLookAndFeelPainters, ADODB, kbmMemTable, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TGenerarEntradas = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Data: TkbmMemTable;
    dsData: TDataSource;
    DataFlag: TBooleanField;
    qryEntradas: TADOQuery;
    qryEntradasNumEntrada: TStringField;
    qryEntradasDescripcion: TStringField;
    qryEntradasConcepto: TStringField;
    qryEntradasTipoEntrada: TStringField;
    qryEntradassprocNomb: TStringField;
    qryEntradasuidGenentrada: TGuidField;
    DataNumEntrada: TStringField;
    DataDescripcion: TStringField;
    DatasprocNomb: TStringField;
    GridDBTableView1Flag: TcxGridDBColumn;
    GridDBTableView1NumEntrada: TcxGridDBColumn;
    GridDBTableView1Descripcion: TcxGridDBColumn;
    GridDBTableView1sprocNomb: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Command: TADOCommand;
    qryEntradasModulo: TStringField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    DataModulo: TStringField;
    cxStyle2: TcxStyle;
    Label3: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    rsLog: TADODataSet;
    rsLogidGenEDLog: TGuidField;
    rsLogFecha: TDateTimeField;
    rsLogEntradaNumero: TStringField;
    rsLogReferencia: TStringField;
    rsLogDescripcion: TStringField;
    rsLogTextoLog: TStringField;
    rsLogUsuario: TStringField;
    dsLog: TDataSource;
    cxGridDBTableView1EntradaNumero: TcxGridDBColumn;
    cxGridDBTableView1Referencia: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1TextoLog: TcxGridDBColumn;
    cLimpiarLog: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure LimpiarLog;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GenerarEntradas: TGenerarEntradas;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TGenerarEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  qryEntradas.Open();
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;

//Popular el mentable
  Data.DisableControls();
  Data.Open();
  Data.EmptyTable;

  qryEntradas.First;
  While Not qryEntradas.Eof Do
  Begin
    Data.Append;
    DataFlag.Value := False;
    DataNumEntrada.Value := qryEntradasNumEntrada.Value;
    DataDescripcion.Value := qryEntradasDescripcion.Value;
    DatasprocNomb.Value := qryEntradassprocNomb.Value;
    DataModulo.Value := qryEntradasModulo.Value;
    Data.Post;

    qryEntradas.Next;
  End;
  Data.EnableControls();
  Data.First;
End;

procedure TGenerarEntradas.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TGenerarEntradas.cxButton1Click(Sender: TObject);
  Procedure GenerarEntrada;
  Var
    FechaInicio, FechaFin, FechaContador : tDateTime;
  Begin
    FechaInicio := dtpDesde.Date;
    FechaFin := dtpHasta.Date;
    FechaContador := FechaInicio;
    With Command, Parameters Do
    Begin
      CommandText := DatasprocNomb.Value;
      CreateParameter('@Return_Value', ftInteger, pdReturnValue, 0, Null);
      CreateParameter('@Desde', ftdatetime, pdInput, 0, NULL);
      CreateParameter('@Hasta', ftdatetime, pdInput, 0, NULL);
      CreateParameter('@Usuario', ftString, pdInput, 30, dm.UsuarioActual);
      CreateParameter('@ED', ftString, pdInput, 4, DataNumEntrada.Value);

      While FechaContador <= FechaFin Do
      Begin
        ParamByName('@Desde').Value := FechaContador;
        ParamByName('@Hasta').Value := FechaContador;
        Execute;

        FechaContador := FechaContador + 1;
      End;
    End;
    dm.CreateLog('Generar',self.Caption,'ED: '+datanumentrada.asstring+' ['+ dtpDesde.Text + '] ['+dtpHasta.text+']');
  End;

begin
  inherited;
  if Confirmar('Esta seguro que desea generar las entradas marcadas') then begin
    if rsLog.Active then
      rsLog.Close();

    LimpiarLog();

    with Data do begin
      DisableControls;
      First;
      while not Eof do begin
        If DataFlag.Value Then
        Begin
          GenerarEntrada;

        End;
        Next;
      End;
      EnableControls;
      ShowMessage('Proceso terminado');
    End;

    with rsLog do begin
      Close();
      Parameters[1].Value := dm.UsuarioActual;
      Open();
    end;
  End;
end;

procedure TGenerarEntradas.LimpiarLog;
begin
  with cLimpiarLog do begin
    Parameters[1].Value := dm.UsuarioActual;
    Execute();
  end;
end;

end.
