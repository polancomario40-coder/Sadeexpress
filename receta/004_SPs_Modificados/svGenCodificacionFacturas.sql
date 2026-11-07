CREATE OR ALTER PROCEDURE svGenCodificacionFacturas(@Desde datetime, @Hasta datetime) as    

    

DECLARE     

  @idfactura uniqueidentifier    , @factura varchar(16)

    

DECLARE facturas CURSOR FOR     

select distinct idfactura, factura

from    

  factura f    

  left join cgcodificacion c on f.idfactura = c.Guiddocumento    

where    

  f.fecha between @Desde and @Hasta    

--  and c.Guiddocumento is null    

order by    

  idfactura    

    

OPEN facturas    

    

FETCH NEXT FROM facturas     

INTO @idfactura, @factura

    

WHILE @@FETCH_STATUS = 0    

BEGIN    

    print @factura

    exec svGenCodifFactura @idFactura    

    

   -- Get the next author.    

   FETCH NEXT FROM facturas    

   INTO @idfactura, @factura

END    

    

CLOSE facturas    

DEALLOCATE facturas 


GO
