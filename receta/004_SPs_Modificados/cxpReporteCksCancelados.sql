


CREATE OR ALTER PROC cxpReporteCksCancelados

 @inicio datetime,

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	h.IdSuplidor, 

	b.NumCuenta as CuentaBanco, 

	h.Nombre, 

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	h.Valor AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST, 

	h.FechaStatus

FROM cxpDocumentos h INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 20 

	--and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	and (h.Status = 'C' and h.FechaStatus between @inicio and @final)

order by h.Referencia

return 0 






GO
