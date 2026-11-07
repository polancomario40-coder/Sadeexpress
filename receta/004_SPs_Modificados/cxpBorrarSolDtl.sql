
CREATE OR ALTER PROCEDURE cxpBorrarSolDtl

 @idSolicitud int

as

delete from cxpSolicitudesDtl

where idSolicitud = @idSolicitud

return 0




GO
