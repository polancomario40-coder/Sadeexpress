unit Utils;

interface

uses uSearchClass, Forms, Controls, Classes, SysUtils;

function BuscarRegistro(TBusqueda: TSearchClass; const params: string = ''): Variant;
Function MonToLit(Number : Extended; WithPesos : Byte) : String;

implementation

function BuscarRegistro(TBusqueda: TSearchClass; const params: string = ''): Variant;
begin
  with TBusqueda.Create(Application, params) do begin
    if ShowModal() = mrOk then
      Result := rsRecs.FieldByName(IdField).Value
    else
      Result := -1;

    Release();
  end;
end;

function ModalShow(tfc: TFormClass): TModalResult;
begin
  with tfc.Create(Application) do begin
    Result := ShowModal();
    Release();
  end;
end;

Function MonToLit(Number : Extended; WithPesos : Byte) : String;
// Esta Funcion Convierte un Numero Real a letras, aceptando un parametro
// Extended que es el numero a convertir, y otro parametro que especifica
// si se desea incluir en la cadena las palabras pesos y centavos.
// El valor devuelto es una cadena.
var
   dd,Enteros,Decimales,NumeroStr, EnterosPos : String;
   pp,i,j,sergio, k, Decenas, Centenas : Integer;
   ArrNumeros : Array[1..3, 1..19] of String;
begin
     ArrNumeros[1, 1] := 'Un';
     ArrNumeros[1, 2] := 'Dos';
     ArrNumeros[1, 3] := 'Tres';
     ArrNumeros[1, 4] := 'Cuatro';
     ArrNumeros[1, 5] := 'Cinco';
     ArrNumeros[1, 6] := 'Seis';
     ArrNumeros[1, 7] := 'Siete';
     ArrNumeros[1, 8] := 'Ocho';
     ArrNumeros[1, 9] := 'Nueve';
     ArrNumeros[1, 10] := 'Diez';
     ArrNumeros[1, 11] := 'Once';
     ArrNumeros[1, 12] := 'Doce';
     ArrNumeros[1, 13] := 'Trece';
     ArrNumeros[1, 14] := 'Catorce';
     ArrNumeros[1, 15] := 'Quince';
     ArrNumeros[1, 16] := 'Dieciseis';
     ArrNumeros[1, 17] := 'Diecisiete';
     ArrNumeros[1, 18] := 'Dieciocho';
     ArrNumeros[1, 19] := 'Diecinueve';
     ArrNumeros[2, 1] := '';
     ArrNumeros[2, 2] := 'Veinte';
     ArrNumeros[2, 3] := 'Treinta';
     ArrNumeros[2, 4] := 'Cuarenta';
     ArrNumeros[2, 5] := 'Cincuenta';
     ArrNumeros[2, 6] := 'Sesenta';
     ArrNumeros[2, 7] := 'Setenta';
     ArrNumeros[2, 8] := 'Ochenta';
     ArrNumeros[2, 9] := 'Noventa';
     ArrNumeros[3, 1] := 'Ciento';
     ArrNumeros[3, 2] := 'Doscientos';
     ArrNumeros[3, 3] := 'Trescientos';
     ArrNumeros[3, 4] := 'Cuatrocientos';
     ArrNumeros[3, 5] := 'Quinientos';
     ArrNumeros[3, 6] := 'Seiscientos';
     ArrNumeros[3, 7] := 'Setecientos';
     ArrNumeros[3, 8] := 'Ochocientos';
     ArrNumeros[3, 9] := 'Novecientos';

     Result := '';
     Enteros := '';
     Decimales := '';
     NumeroStr := Trim(FloatToStr(Number));
     If   POS('.', NumeroStr) > 0 then
     begin
          Enteros := Copy(NumeroStr, 1, POS('.', NumeroStr) - 1);
          Decimales := Copy(NumeroStr, POS('.', NumeroStr) + 1, Length(NumeroStr) - POS('.', NumeroStr));
          if length(decimales)<2 then
              if length(decimales) = 0 then
                  decimales := '00'
              else
                  decimales := decimales +'0';

     end

     else
       Enteros := NumeroStr;

     i := Length(Enteros);
     sergio := i;
     j := 1;
     k := 0;

     While i > 0 do
     begin
          EnterosPos := Copy(Enteros, i - 2, i);

          While Length(EnterosPos) < 3 do
                EnterosPos := '0' + EnterosPos;
          If j = 2 then
          begin

//    modificacion by sergio made problemas con millones ( la palabra mil sobra)

             if (sergio >= 6) then
                begin
                pp:=sergio-6;
                dd:=copy(enteros,pp+1,6);
                If dd = '000000' then
                   begin
                   Result := Result; //' de ' + Result;
                   Inc(k);
                   end
                  else
                   begin
                   If copy(enteros,pp+1,3)<>'000' then
                      Result := 'Mil ' + Result
                      else
                      Result := ' ' + Result;

                   Inc(k);
                   end;
                end
// cuando la cantidad sea menor de millones

               else

                begin

                pp:=sergio-3;
                dd:=copy(enteros,pp+1,3);

                If dd = '000' then
                   begin
                   Result := 'Mil ' + Result;
                   Inc(k);
                   end
                  else
                   begin
                   Result := 'Mil ' + Result;
                   Inc(k);
                   end;

                end

           end

          else

           If k = 1 then
              begin
              Result := 'Millones ' + Result;
              j := 1;
              end;

          Decenas := StrToInt(Copy(EnterosPos, 2, 2));
          If Decenas < 20 then
             begin
               If Decenas <> 0 then
                  if (Decenas = 1) AND (i = Length(Enteros)) AND (WithPesos = 0) then
                     Result := ArrNumeros[1, Decenas] + 'o ' + Result
                     else
                      Result := ArrNumeros[1, Decenas] + ' ' + Result;
             end

          else

          begin
               If Copy(IntToStr(Decenas), 2, 1) <> '0' then
                  if (i = Length(Enteros)) AND (Copy(IntToStr(Decenas), 2, 1) = '1')
                     AND (WithPesos = 0) then
                     Result := 'y ' + ArrNumeros[1, StrToInt(Copy(IntToStr(Decenas), 2, 1))] + 'o ' + Result
                  else
                      Result := 'y ' + ArrNumeros[1, StrToInt(Copy(IntToStr(Decenas), 2, 1))] + ' ' + Result;
               Result := ArrNumeros[2, StrToInt(Copy(IntToStr(Decenas), 1, 1))] + ' ' + Result;
          end;

          If StrToInt(EnterosPos) > 99 then
             begin
               Centenas := StrToInt(Copy(EnterosPos, 1, 1));
               If Centenas <> 0 then
                  if (Centenas = 1) AND (Decenas = 0) then
                      Result := 'Cien ' + Result
                  else
                      Result := ArrNumeros[3, Centenas] + ' ' + Result;
             end;

          Dec(I, 3);
          Inc(j);

     end;

     if Decimales <> '' then
        begin
         If WithPesos = 1 then
             Result := Result + 'Pesos con ' + Decimales + '/100 CTS '
            else
             Result := Result + 'con ' + Decimales + '/100 CTS';
        end;

     if (WithPesos = 1) AND (Decimales = '') then
         Result := Result + 'Pesos con 00/100 CTS';
      Result := uppercase(result);
    if copy(Result,1,11)='UN MILLONES' then
        result := copy(Result,1,9)+copy(result,12,length(result)-11);

end;


end.
