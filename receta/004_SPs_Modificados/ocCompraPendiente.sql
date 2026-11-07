

CREATE OR ALTER PROCEDURE ocCompraPendiente(@idproducto varchar(30)) as



   Select

     sd.idProducto,     

     sd.idSolicitudDet,

     s.Solicitud,     

     sd.Fecha,

     sd.Cantidad,

     sd.idUnidad as Unidad,     

     

     Orden = (Select sum(cantidad) 

     		  from ocDetalleOrden od

              where od.idSolicitudDet = sd.idSolicitudDet),

              

     Recibido = (Select sum(cantidad) 

        	     from ocRecepcionDet rd 

                 where rd.idSolicitudDet = sd.idSolicitudDet)

   into #tmp               

   From

     ocSolicitudDet sd

     join ocSolicitud s on s.idSolicitud = sd.idSolicitud

   Where

     sd.idproducto = @idProducto

     and sd.cancelado = 0

     and isnull((Select sum(cantidad) 

     		      from ocRecepcionDet rd 

                      where rd.idSolicitudDet = sd.idSolicitudDet),0) < sd.cantidad

   Order by

     sd.Fecha desc, s.Solicitud Desc





declare @reserv float



select @reserv = dbo.invReservadoProducto(@idProducto)



select *, @reserv as Reservado, (Cantidad - Orden) as enSolicitado, (Orden - Recibido) as BackOrder

from #tmp




GO
