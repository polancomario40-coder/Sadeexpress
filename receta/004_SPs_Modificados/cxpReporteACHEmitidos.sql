
------------ final de:cxpItbisRetenido ------------



------------ inicio de:cxpReporteACHEmitidos ------------





CREATE OR ALTER PROC cxpReporteACHEmitidos

 @inicio datetime, 

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	0 as IdSuplidor, -- quitar esto !!!!

	b.NumCuenta as CuentaBanco, 

	h.Concepto as Nombre, -- quitar esto tambien !!!

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	(case when (h.Status = 'C' and h.fecha = h.fechastatus) then 0.00 else h.Valor end) AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST , h.fechastatus,

	case h.Status 

  	  when 'T' then 'Transito'

	  when '$' then 'Pagado'

	  when 'C' then 'Cancelado'

	 else 'Error'

	end as DescStatus 

FROM bcoDocumentos h --INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 29 

	and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	--and (h.Status = 'T' or h.FechaStatus > @final)

	--and (not h.Status in ('C', '$') or h.FechaStatus < @final)

order by h.Referencia

return 0




GO
