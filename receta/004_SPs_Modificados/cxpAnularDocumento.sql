
CREATE OR ALTER PROCEDURE cxpAnularDocumento

 @idDocumento int,

 @Fecha datetime

as

 if exists (select 1 from cxpDocumentos t join cxpDocumentosDtl d

	     on t.idDocumento = d.idDocumento 

	     where d.idDocXPagar = @idDocumento 

		   and t.Status <> 'C')

 begin

   return 1 

 end

 else begin

   update cxpDocumentos

     set Status = 'C', FechaStatus = @fecha

   where idDocumento = @idDocumento

 end

return @@ERROR




GO
