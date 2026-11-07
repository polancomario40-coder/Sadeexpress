unit udmCentroCosto;

interface

uses
  SysUtils, Classes, ADODB, variants;

type
  TdmCentroCosto = class(TDataModule)
    spCentroCosto: TADOCommand;
    spGasto: TADOCommand;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

function CentroCostoUpdate(id, cod, desc, tipo, ref: string;
  act: boolean; Parent : string = ''; nota : string =''; Nivel : integer = 0): boolean;
//function GastoUpdate(id, idcent, desc, part, doc, ref, tipo, nota, uni : string; fec : tdatetime; cant, gast : double): boolean;
//procedure IndiceCreate(idCC : string);
//procedure IndiceDelete(idCC : string);
var
  dmCentroCosto: TdmCentroCosto;

implementation

uses Udata;

{$R *.dfm}

{ TdmCentroCosto }

function CentroCostoUpdate(id, cod, desc, tipo, ref: string;
  act: boolean; Parent : string = ''; nota : string =''; Nivel : integer = 0): boolean;
begin
  try
    dmCentroCosto := TdmCentroCosto.Create(nil);
    dmCentroCosto.spCentroCosto.parameters[1].value := id;
    dmCentroCosto.spCentroCosto.parameters[2].value := cod;
    dmCentroCosto.spCentroCosto.parameters[3].value := desc;
    dmCentroCosto.spCentroCosto.parameters[4].value := act;
    dmCentroCosto.spCentroCosto.parameters[5].value := tipo;
    dmCentroCosto.spCentroCosto.parameters[6].value := ref;
    if Parent = '' then
      dmCentroCosto.spCentroCosto.parameters[7].value := Null
    else
      dmCentroCosto.spCentroCosto.parameters[7].value := Parent;
    dmCentroCosto.spCentroCosto.parameters[8].value := Nivel;
    dmCentroCosto.spCentroCosto.parameters[9].value := Nota;
    dmCentroCosto.spCentroCosto.execute;
    result := not(dmCentroCosto.spCentroCosto.parameters[0].value <> 0);
  finally
    dmCentroCosto.Free;
    dmCentroCosto := nil;
  end;
end;
 {
function GastoUpdate(id, idcent, desc, part, doc, ref, tipo, nota, uni : string; fec : tdatetime; cant, gast : double): boolean;
begin
  try
    dmCentroCosto := TdmCentroCosto.Create(nil);
    dmCentroCosto.spGasto.parameters[1].value := id;
    dmCentroCosto.spGasto.parameters[2].value := idCent;
    dmCentroCosto.spGasto.parameters[3].value := desc;
    dmCentroCosto.spGasto.parameters[4].value := fec;
    dmCentroCosto.spGasto.parameters[5].value := part;
    dmCentroCosto.spGasto.parameters[6].value := doc;
    dmCentroCosto.spGasto.parameters[7].value := ref;
    dmCentroCosto.spGasto.parameters[8].value := tipo;
    dmCentroCosto.spGasto.parameters[9].value := cant;
    dmCentroCosto.spGasto.parameters[10].value := gast;
    dmCentroCosto.spGasto.parameters[11].value := Uni;
    dmCentroCosto.spGasto.parameters[12].value := nota;
    dmCentroCosto.spGasto.execute;
    result := not(dmCentroCosto.spGasto.parameters[0].value <> 0);
  finally
    dmCentroCosto.Free;
    dmCentroCosto := nil;
  end;
end;



procedure IndiceCreate(idCC : string);
begin
  try
    dmCentroCosto := TdmCentroCosto.Create(nil);
    if idCC <> '' then begin
      dmCentroCosto.Indice.Parameters[1].Value := idCC;
      dmCentroCosto.Indice.Execute;
    end;
  finally
    dmCentroCosto.Free;
    dmCentroCosto := nil;
  end;
end;


procedure IndiceDelete(idCC : string);
begin
  try
    dmCentroCosto := TdmCentroCosto.Create(nil);
    if idCC <> '' then begin
      dmCentroCosto.IndiceDel.Parameters[1].Value := idCC;
      dmCentroCosto.IndiceDel.Execute;
    end;
  finally
    dmCentroCosto.Free;
    dmCentroCosto := nil;
  end;
end;
 }
end.
