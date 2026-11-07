CREATE OR ALTER PROCEDURE [dbo].[svRecodificarFacturas](@Desde datetime, @Hasta datetime) as



DECLARE 

  @idfactura uniqueidentifier, @factura varchar(30)



DECLARE facturas CURSOR FOR 

select idfactura, Factura 

from

  factura f  

where

  f.fecha between @Desde and @Hasta  

order by

  factura



OPEN facturas



FETCH NEXT FROM facturas 

INTO @idfactura, @factura



WHILE @@FETCH_STATUS = 0

BEGIN

	print 'Procesando factura #' + @factura + '...'

	

    exec svGenCodifFactura @idFactura



   -- Get the next author.

   FETCH NEXT FROM facturas

   INTO @idfactura, @factura

END



CLOSE facturas

DEALLOCATE facturas




GO
