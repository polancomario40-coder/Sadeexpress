
CREATE OR ALTER PROCEDURE cxpBorrarDocRetencion

 @idDocumento int

as

 delete from cxpdocRetencion

 where idDocumento = @idDocumento

return @@ERROR




GO
