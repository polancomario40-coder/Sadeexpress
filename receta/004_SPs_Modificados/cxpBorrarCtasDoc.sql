
CREATE OR ALTER PROCEDURE cxpBorrarCtasDoc

 @IdDocumento int

AS

 delete from  cxpDocCuentas

  where idDocumento = @idDocumento

return @@ERROR




GO
