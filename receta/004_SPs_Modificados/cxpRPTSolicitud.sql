




------------ final de:cxpRetencionXSolicitud ------------

------------ inicio de:cxpRPTSolicitud ------------

CREATE OR ALTER PROCEDURE cxpRPTSolicitud

  @idSol int

as

declare @TT_CHEQUE int set @TT_CHEQUE = 20

select

	  s.*,

	  b.Nombre as Banco, 

	  m.Moneda, 

	  case s.Status 

	  when 'A' then 'Aprobada'

	  when '1' then 'No revisada'

	  when '3' then 'Primera Aprob.'

	  when '4' then 'Revisada'

	  when 'P' then 'Pagada: CK #' + (select top 1 referencia from cxpDocumentos

					 where 	idTrans = @TT_CHEQUE 

						and TipoDocOrigen = 'S' 

						and DocOrigen = @idSol 

						and Status <> 'C')

	  when 'C' then 'Anulada'

	end as DescrStatus,

	e.Nombre,

	e.Telefono1,

	e.RNC,

	TotalRetenciones = dbo.cxpRetencionXSolicitud(@idSol),

	doc.Referencia,

	doc.Fecha,

	(d.Valor * d.tasa) / s.tasa as Valor,

	RetencionDoc = (isnull((select sum(Valor) from cxpSolicitudRet where idSolicitud = s.idSolicitud and idDocumento = doc.idDocumento),0.00) * d.Tasa) / s.Tasa

from cxpsolicitudes s left join cxpsuplidores e

  on s.idSuplidor = e.idSuplidor

  left join cxpSolicitudesDtl d on s.idSolicitud = d.idSolicitud

  left join cxpDocumentos doc on d.idDocumento = doc.idDocumento 

  left join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco 

  left join moneda m on s.idMoneda = m.idMoneda 

where s.idSolicitud = @idSol

order by doc.Fecha, doc.Referencia 

return 0 






GO
