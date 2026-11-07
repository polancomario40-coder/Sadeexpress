
------------ final de:cxpRSPagoRetencion ------------



------------ inicio de:cxpRSSolicitudRet ------------



CREATE OR ALTER PROCEDURE cxpRSSolicitudRet

 @idSolicitud int

as

 select *

 from cxpSolicitudRet

 where idSolicitud = @idSolicitud

return 




GO
