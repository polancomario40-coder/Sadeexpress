
------------ final de:cxpRPTSolicitud ------------



------------ inicio de:cxpRSPagoRetencion ------------



CREATE OR ALTER PROCEDURE cxpRSPagoRetencion

 @idDocumento int

as

 select * from cxpPagoRetencion

 where idDocumento = @idDocumento

return 0 


GO
