
CREATE OR ALTER PROCEDURE cxpRSDocumentoItems

 @idDocumento int

as

 select * from cxpDocumentoItems

 where iddocumento = @idDocumento

return 0 




GO
