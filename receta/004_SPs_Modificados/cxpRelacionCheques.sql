CREATE OR ALTER PROCEDURE cxpRelacionCheques

 @inicio datetime, @final datetime 

AS  

SELECT convert(int, h.Referencia) AS Numero, h.IdDocumento, h.Fecha,   

    h.idSuplidor as IdEntidad, b.NumCuenta as CuentaBanco, e.Nombre, h.IdCuenta,   

    b.Nombre as DescripcionCuenta, h.TotalNeto AS ValorCheque, h.TotalNeto,   

    h.Concepto as TextoConcepto, h.Status AS ST, h.idCuentaBanco,   

    h.FechaStatus as FechaProcesado  

FROM cxpDocumentos h INNER JOIN  

    cxpSuplidores e ON h.IdSuplidor = e.IdSuplidor INNER JOIN  

    cxpBancos b ON h.IdCuentaBanco = b.IdCuentaBanco   

WHERE h.IdTrans = 20 and fecha between @inicio and @final

order by h.idCuentaBanco, 1, Fecha 
GO
