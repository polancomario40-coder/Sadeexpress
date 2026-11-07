





------------ final de:ocBuscarOrdenesRango ------------



------------ inicio de:ocDiarioCompras ------------





------------ final de:ocDetalleLiquidacion ------------

------------ inicio de:ocDiarioCompras ------------

CREATE OR ALTER PROCEDURE [dbo].[ocDiarioCompras]

 @desde datetime,

 @hasta datetime,

 @idSuplidor int,

 @idProducto varchar(30)

as

 select oc.idOrden,

	    do.idDetalleOrden,

	    oc.idSuplidor,

	    oc.Numero, 

	    s.Nombre as Suplidor,

		oc.Fecha,

		do.idProducto,

	    p.Producto,

	    do.Cantidad,

	    do.Costo,

	    do.Itbis,

		do.Descuento,

	    do.idUnidad,

		LineTotal = (do.Cantidad * do.Costo),

        Total = (do.Cantidad * do.Costo) - do.Descuento + do.Itbis ,

        m.Moneda 

 from ocOrdenes oc join ocDetalleOrden do on oc.idOrden = do.idOrden

   join cxpSuplidores s on oc.idSuplidor = s.idSuplidor

   join producto p on do.idProducto = p.idProducto 

   join Moneda m on oc.idMoneda = m.idMoneda 

 where oc.Fecha between @desde and @Hasta

	   and do.TipoItem = 'I'

       and (@idSuplidor = -1 or oc.idSuplidor = @idSuplidor)

       and (@idProducto = '' or do.idProducto = @idProducto)

 order by m.Moneda, oc.Fecha, oc.Numero 








GO
