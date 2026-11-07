

CREATE OR ALTER PROCEDURE cxpBuscarSolDtl

 @idSolicitud int

as

 select d.*,

	t.Referencia,

 	t.Total,

	t.Fecha,

	t.idMoneda, 

	tt.Abrev,

	TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = d.idDocumento),0.00)

from cxpSolicitudesDtl d left join cxpDocumentos t

  on d.idDocumento = t.idDocumento

  left join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where d.idSolicitud = @idSolicitud	

return @@ERROR






GO
