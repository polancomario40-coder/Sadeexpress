
CREATE OR ALTER PROCEDURE cxpBorrarDocItems

 @idDocumento int

as

 delete from cxpdocumentoItems

  where idDocumento = @idDocumento

return @@ERROR




GO
