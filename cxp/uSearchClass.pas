unit uSearchClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, dxExEdtr, cxPC, cxControls, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Buttons, StdCtrls, ExtCtrls, DB,
  cxLookAndFeelPainters, dxNavBarBase, dxNavBarCollns, dxNavBar, cxButtons,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalendar, ADODB, Gradient, uSimpleForm;

type
  TSearchForm = class(TSimpleForm)
    Shape9: TShape;
    sbOk: TSpeedButton;
    sbCancel: TSpeedButton;
    dxDBGrid1: TdxDBGrid;
    dxNavBar1: TdxNavBar;
    nbgNumero: TdxNavBarGroup;
    nbgRangoFecs: TdxNavBarGroup;
    nbgNombres: TdxNavBarGroup;
    nbgNumeroControl: TdxNavBarGroupControl;
    Label4: TLabel;
    Label5: TLabel;
    cxButton2: TcxButton;
    spDesde: TcxSpinEdit;
    spHasta: TcxSpinEdit;
    nbgRangoFecsControl: TdxNavBarGroupControl;
    nbgNombresControl: TdxNavBarGroupControl;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    Label3: TLabel;
    cxButton3: TcxButton;
    edNombre: TcxTextEdit;
    rsRecs: TADODataSet;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure sbOkClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure deDesdePropertiesChange(Sender: TObject);
    procedure deHastaPropertiesChange(Sender: TObject);
  private
    FOriginalSQL: string;
    FidField: string;
    FDateField: string;
    FNameField: string;
    FPrefilter: string;
    FRefField: string;
    { Private declarations }
    procedure PrepararSQLNumero; virtual;
    procedure PrepararSQLFechas; virtual;
    procedure PrepararSQLNombre; virtual;
  public
    { Public declarations }
    property NameField: string read FNameField write FNameField;
    property idField: string read FidField write FidField;
    property RefField: string read FRefField write FRefField;
    property DateField: string read FDateField write FDateField;
    property Prefilter: string read FPrefilter write FPrefilter;
    constructor Create(AOwner: TComponent; const APrefilter: string = '');  reintroduce;
  end;

  TSearchClass = class of TSearchForm;

var
  SearchForm: TSearchForm;

implementation

uses Udata;


{$R *.dfm}

procedure TSearchForm.FormCreate(Sender: TObject);
begin
  inherited;
  FOriginalSQL := rsRecs.CommandText;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TSearchForm.PrepararSQLNumero;
var
 desde,
 hasta: string;
 sWhere: string;
begin
  desde := QuotedStr(Trim(spDesde.Text));
  hasta := QuotedStr(Trim(spHasta.Text));

  with rsRecs do begin
    Close();
    if desde <> '' then begin
      if spHasta.Value = 0 then
        sWhere := 'where ' + iif(Prefilter <> '', Prefilter + ' and ' ) + RefField + ' = ' + desde
      else
        sWhere := 'where ' + iif(Prefilter <> '', Prefilter + ' and ' ) + RefField + ' between ' + desde + ' and ' + hasta;

      sWhere := sWhere + #13 + ' order by ' + RefField;
      CommandText := FOriginalSQL + #13 + sWhere;
      //showmessage(commandtext);
      try
        Open();
      except
        ShowMessage('Error buscando registros verifique que los numeros sean validos');
      end;
    end;
  end;
end;

procedure TSearchForm.PrepararSQLNombre;
var
 nombre: string;
 sWhere: string;
begin
  nombre := QuotedStr('%' + Trim(edNombre.Text) + '%');

  with rsRecs do begin
    Close();
    sWhere := 'where ' + iif(Prefilter <> '', Prefilter + ' and ' ) + FNameField + ' like ' + nombre;
    sWhere := sWhere + #13 + ' order by ' + FNameField;
    CommandText := FOriginalSQL + #13 + sWhere;
    try
      Open();
    except
//      showmessage(CommandText);
      ShowMessage('Error buscando registros, verifique que el nombre sea valido');
    end;
  end;
end;

procedure TSearchForm.PrepararSQLFechas;
var
 sWhere: string;
begin
  with rsRecs do begin
    Close();
    sWhere := 'where ' + iif(Prefilter <> '', Prefilter + ' and ' ) + FDateField + ' between :f1 and :f2 ';
    sWhere := sWhere + #13 + ' order by ' + FDateField;
    CommandText := FOriginalSQL + #13 + sWhere;
    Parameters.Refresh();
    Parameters[0].Value := deDesde.Date;
    Parameters[1].Value := deHasta.Date;
    //showmessage(commandtext);
    try
      Open();
    except

      ShowMessage('Error buscando registros, verifique que el nombre sea valido');
    end;
  end;
end;

procedure TSearchForm.cxButton2Click(Sender: TObject);
begin
  inherited;
  PrepararSQLNumero();
end;

procedure TSearchForm.cxButton3Click(Sender: TObject);
begin
  inherited;
  PrepararSQLNombre();
end;

procedure TSearchForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  PrepararSQLFechas();
end;

procedure TSearchForm.sbOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TSearchForm.sbCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

constructor TSearchForm.Create(AOwner: TComponent; const APrefilter: string = '');
begin
  inherited Create(AOwner);
  FPrefilter := APrefilter;
end;


procedure TSearchForm.deDesdePropertiesChange(Sender: TObject);
begin
  inherited;
  dm.FechaDesde := deDesde.Date;
end;

procedure TSearchForm.deHastaPropertiesChange(Sender: TObject);
begin
  inherited;
  dm.FechaHasta := deHasta.Date;
end;

end.
