
CREATE OR ALTER PROCEDURE cxpBorrarDocDtl

 @idDocumento int

as

  delete from cxpDocumentosDtl 

  where Iddocumento = @idDocumento

return @@ERROR




GO
