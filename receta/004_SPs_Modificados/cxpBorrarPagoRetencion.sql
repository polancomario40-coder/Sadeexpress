
------------ final de:cxpBorrarDocumento ------------



------------ inicio de:cxpBorrarPagoRetencion ------------



CREATE OR ALTER PROCEDURE cxpBorrarPagoRetencion

 @idDocumento int

as

 delete from cxpPagoRetencion

 where idDocumento = @idDocumento

return @@ERROR 


GO
