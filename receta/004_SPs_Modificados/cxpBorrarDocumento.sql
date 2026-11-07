
------------ final de:cxpBorrarCostoDocumento ------------



------------ inicio de:cxpBorrarDocumento ------------







CREATE OR ALTER PROCEDURE cxpBorrarDocumento

 @idDoc int

as

 declare @Tipo varchar(20),

	 @idSol int

 if exists (select 1 from cxpDocumentosDtl

		where idDocXPagar = @idDoc)

   return 1

 else 

    select @Tipo = TipoDocOrigen,

		   @idSol = DocOrigen

     from cxpDocumentos

     where idDocumento = @idDoc and status <> 'C'

     if (@Tipo = 'S') begin

     	update cxpSolicitudes

	     set Status = 'A'

	     where idSolicitud = @idSol

     end

     delete from cxpDocumentos

      where idDocumento = @idDoc

     delete from bcoDocumentos

     where tipodocorigen in ('CC','CK','ACH') and docorigen = @idDoc

return @@ERROR




GO
