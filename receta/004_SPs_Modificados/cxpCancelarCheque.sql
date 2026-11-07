  

 ------------ final de:cxpBuscarSolicitud ------------  

------------ inicio de:cxpCancelarCheque ------------  

CREATE OR ALTER PROCEDURE cxpCancelarCheque   

 @idCk int

as  

declare --@idTr int,  

 @iddoc int,  

 @Err int,  

 @Fec datetime  

set @Fec = round(convert(float,getdate()),0,1)  

declare @idtr int  

set @idTr = 6  -- transaccion de cheque cancelado  

begin transaction  

declare @fechack datetime  

select @fechack = fecha  

from cxpdocumentos  

where iddocumento = @idCk  

if @fechack < @fec  

begin  

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha,   

                           FechaStatus, idCuentaBanco, TipoDocOrigen,   

                           DocOrigen, Valor, DebCre,tasa)   

select  @idTr as IdTrans,  

 t.Referencia,  

 'A',  

 @fec,   

 @fec,  

 t.idCuentaBanco,  

 'CC',  

 t.idDocumento,  

 t.TotalNeto,  

 1,  

 t.tasa   

from cxpDocumentos t   

where t.Iddocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

set @idDoc = @@IDENTITY  

insert into bcoDocumentosDtl  

 (idDocumento, idCuenta, DebCre, Valor, Automatica)  

select  @idDoc,  

 idCuenta,  

 case debcre when 1 then 2 else 1 end,  

 valor,  

 isnull(Automatica,0)  

from cxpDocCuentas  

where idDocumento = @idck  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

end  

update cxpSolicitudes  

  set Status = 'A' --FechaStatus = nullIddocumento = null, FechaCheque = null , status = 1  

from cxpSolicitudes s join cxpDocumentos d  

  on s.idSolicitud = d.DocOrigen and d.TipoDocOrigen = 'S'  

where d.idDocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update cxpDocumentos  

set Status = 'C', FechaStatus = @fec  

where idDocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update bcoDocumentos  

set Status = 'C', FechaStatus = @fec  

where TipoDocOrigen = 'CK' and DocOrigen = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update nominaEmp  

set cheque = null  

where cheque = @idCk  

commit transaction  

return 0  

  
GO
