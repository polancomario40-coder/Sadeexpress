
CREATE OR ALTER PROCEDURE cxpSolicitudRetencion

 @idSol int

as

 select dd.idRetencion,

	dd.Retencion,

	dd.Porcentaje,

	MontoRetener = sum(d.Valor * (dd.Porcentaje / 100)),

	tr.idCuenta

   from cxpSolicitudes s join cxpSolicitudesDtl d

  on s.idSolicitud = d.idSolicitud

  join cxpDocumentos doc on d.idDocumento = doc.idDocumento

  join cxpDocRetencion dd on d.idDocumento = dd.idDocumento 

  join cxpRetencion tr on dd.idRetencion = tr.idRetencion 

 where s.idSolicitud = @idSol

 group by dd.idRetencion,

	  dd.Retencion,

	  tr.idCuenta,

	  dd.Porcentaje

return 0 




GO
