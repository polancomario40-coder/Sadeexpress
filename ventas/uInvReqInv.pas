unit uInvReqInv;

interface

Uses
  Classes, Forms, SysUtils, adoDB, Dialogs, Variants;

Type
  tInvReqInv = Class
    Private
       vDataSet       : tAdoDataSet;
       spHeader       : TADOStoredProc;
       spDetail       : tAdoStoredProc;
       vOutIdInvReq   : Variant;

       vDepartamento  : String;
       vSolicitante   : String;
       vReferencia    : String;
       vUsuario       : String;
       vNota          : String;
       vuidReferencia : Variant;
       vFechaRequerido: Tdatetime;

       Procedure SetInvDataSet(Const DataSet : tAdoDataSet);
       Procedure SetDepartamento(Const Departamento : String);
       Procedure SetSolicitante(Const Solicitante : String);
       Procedure SetReferencia(Const Referencia : String);
       Procedure SetUsuario(Const Usuario : String);
       Procedure SetNota(Const Nota : String);
       Procedure SetuidReferencia(Const uIdReferencia : Variant);
       Procedure SetFechaRequerido(Const FechaRequerido : TDatetime);
    Public
    Published
      Constructor Create;
      Destructor  Destroy; Override;
      Procedure   Free;

      Property InvDataSet    : tAdoDataSet     Read vDataSet        Write   SetInvDataSet;
      Property Departamento  : String          Read vDepartamento   Write   SetDepartamento;
      Property Solicitante   : String          Read vSolicitante    Write   SetSolicitante;
      Property Referencia    : String          Read vReferencia     Write   SetReferencia;
      Property Usuario       : String          Read vUsuario        Write   SetUsuario;
      Property Nota          : String          Read vNota           Write   SetNota;
      Property idReferencia  : Variant         Read vuidReferencia  Write   SetuidReferencia;
      Property FechaRequerido: Tdatetime       Read vFechaRequerido Write   SetFechaRequerido;

      Property OutIdInvReq   : Variant         Read vOutIdInvReq;
      Function Execute : Boolean;


End;

implementation

uses Udata, UUtiles, DB;

{ tInvReqInv }


Constructor tInvReqInv.Create;
Var
 AOwner : TComponent;
begin
  AOwner := Application;
  spHeader := tAdoStoredProc.Create(AOwner);
  spDetail := tAdoStoredProc.Create(AOwner);

  spHeader.Connection := dm.Coneccion;
  spDetail.Connection := dm.Coneccion;

  spHeader.ProcedureName := 'InvRequisicionAlmCreate';
  spDetail.ProcedureName := 'InvRequisicionAlmDetCreate';

  vDepartamento  := '';
  vSolicitante   := '';
  vReferencia    := '';
  vUsuario       := '';
  vNota          := '';
  vuidReferencia := Null;
  vFechaRequerido:= 0;
end;

Destructor tInvReqInv.Destroy;
begin
  spHeader.Free;
  spDetail.Free;
  Inherited Destroy;
end;

Procedure tInvReqInv.Free;
begin
  Destroy;
end;

Function tInvReqInv.Execute: Boolean;
Var
  IdReq : Variant;
begin
  Try
    With spHeader, Parameters Do
    Begin
      CreateParameter('@Return_Value', ftInteger, pdReturnValue, 0, Null);
      CreateParameter('@Departamento', ftString, pdInput, 16, '');
      CreateParameter('@Solicitante', ftString, pdInput, 50, '');
      CreateParameter('@Referencia', ftString, pdInput, 16, '');
      CreateParameter('@Usuario', ftString, pdInput, 30, '');
      CreateParameter('@Nota', ftString, pdInput, 200, '');
      CreateParameter('@FechaRequerido', ftdatetime, pdInput, 0, NULL);
      CreateParameter('@uidReferencia', ftGuid, pdInput, 0, NULL);
      CreateParameter('@IdReqOutPut', ftGuid, pdOutPut, 0, NULL);

      ParamByName('@Departamento').Value   := vDepartamento;
      ParamByName('@Solicitante').Value    := vSolicitante;
      ParamByName('@Referencia').Value     := vReferencia;

      if vuidReferencia = NULL then
        ParamByName('@uidReferencia').Value  := NULL
      else
        ParamByName('@uidReferencia').Value  := vuidReferencia;

      ParamByName('@Usuario').Value        := vUsuario;
      ParamByName('@Nota').Value           := vNota;

      if vFechaRequerido = 0 then
        ParamByName('@FechaRequerido').Value := NULL
      else
        ParamByName('@FechaRequerido').Value := vFechaRequerido;

      ExecProc;

      if (Parameters[0].Value <> 0) then
        raise Exception.Create('Error guardando cabecera de la requisicion');

      IdReq := ParamByName('@IdReqOutPut').Value;

      if parameters[0].value <> 0 then begin
        result := false;
        exit;
      end;
    End;
  //Detalle
    With spDetail, Parameters Do
    Begin

        CreateParameter('@Return_Value', ftInteger, pdReturnValue, 0, Null);
        CreateParameter('@IdInvReq', ftGuid, pdInput, 0, '');
        CreateParameter('@IdProducto', ftString, pdInput, 16, '');
        CreateParameter('@Producto', ftString, pdInput, 0, '');
        CreateParameter('@Cantidad', ftBCD, pdInput, 8, 0);
        CreateParameter('@IdUnidad', ftString, pdInput, 16, '');

      vDataSet.First;
      While Not vDataSet.Eof Do
      Begin


        ParamByName('@IdInvReq').Value        := IdReq;
        ParamByName('@IdProducto').Value      := vDataSet.FieldByName('IdProducto').Value;
        ParamByName('@Producto').Value        := vDataSet.FieldByName('Producto').Value;
        ParamByName('@Cantidad').Value        := vDataSet.FieldByName('Cantidad').Value;
        if (vDataSet.FindField('IdUnidad') <> nil) then
          ParamByName('@IdUnidad').Value        := vDataSet.FieldByName('IdUnidad').Value
        else
          ParamByName('@IdUnidad').Value := 'Unidad';


        ExecProc;

        vDataSet.Next;
      End;
    End;
    Result := True;
    vOutIdInvReq := IdReq;
  Except
    //Result :=  False;
    raise;
  End;
end;

Procedure tInvReqInv.SetInvDataSet(Const DataSet : tAdoDataSet);
Begin
  vDataSet := DataSet;
End;

Procedure tInvReqInv.SetDepartamento(Const Departamento : String);
Begin
  vDepartamento := Departamento;
End;

Procedure tInvReqInv.SetSolicitante(Const Solicitante : String);
Begin
  vSolicitante := Solicitante;
End;

Procedure tInvReqInv.SetReferencia(Const Referencia : String);
Begin
  vReferencia := Referencia;
End;

Procedure tInvReqInv.SetUsuario(Const Usuario : String);
Begin
  vUsuario := Usuario;
End;

Procedure tInvReqInv.SetNota(Const Nota : String);
Begin
  vNota := Nota;
End;

procedure tInvReqInv.SetFechaRequerido(const FechaRequerido: TDatetime);
begin
  vFechaRequerido := FechaRequerido;
end;

procedure tInvReqInv.SetuidReferencia(const uIdReferencia: Variant);
begin
  vuidReferencia := uIdReferencia;
end;

end.
