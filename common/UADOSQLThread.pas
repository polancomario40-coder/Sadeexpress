{:Define la clase del thread para trabajar con sentencias SQL através de ADO
}

unit UADOSQLThread;

interface

uses
  Classes, ADODB, SysUtils;

type
  TADOSQLThread = class(TThread)
  private
    FADOQ: TADOQuery;
    FSQL: string;
    FTotalTime:string;
    FTipoGrafico: Integer;
    FPosicion : Integer;
    FNombre : string;
  public
    constructor Create(CreateSuspended:Boolean; AConnString:String;
                       ASQL:string);
    destructor Destroy; override;
    procedure Execute(); override;
    property SQL:string read FSQL write FSQL;
    property ADOQ:TADOQuery read FADOQ write FADOQ;
    property TotalTime:string read FTotalTime;
    property TipoGrafico:Integer read FTipoGrafico write FTipoGrafico;
    property Posicion:Integer read FPosicion write FPosicion;
    property Nombre:string read FNombre write FNombre;
  end;

implementation

constructor TADOSQLThread.Create(CreateSuspended:Boolean; AConnString:String;
                                 ASQL:string);
begin

  inherited Create(CreateSuspended);

  // ini
  Self.FreeOnTerminate := True;

  //crea el query   mssql   busca extensiones
  FADOQ := TADOQuery.Create(nil);
  FADOQ.ConnectionString := AConnString;
  FADOQ.SQL.Add(ASQL);
  Self.FSQL:= ASQL;
end;

destructor TADOSQLThread.Destroy();
begin

// Al cerrar el form
//  // Cerrar
//  Self.FADOQ.Close();
//  // LIberar
//  FreeAndNil(Self.FADOQ);

  inherited;
end;


procedure TADOSQLThread.Execute();
var
  _ini,_fin:Double; // tiempo total
begin

  inherited;

  _ini := now;
  // Ejecutar la consulta
  Self.FADOQ.Open;
  _fin := now;

  FTotalTime := FormatDateTime('nn:ss:zzz', _fin-_ini);

end;

end.
