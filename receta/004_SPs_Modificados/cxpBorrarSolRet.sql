
------------ final de:cxpBorrarPagoRetencion ------------



------------ inicio de:cxpBorrarSolRet ------------



CREATE OR ALTER PROCEDURE cxpBorrarSolRet

 @idSolicitud int

as

 delete from cxpSolicitudRet 

 where idSolicitud = @idSolicitud

return @@ERROR




GO
