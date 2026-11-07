
CREATE OR ALTER PROCEDURE Conduce2Factura(@idCliente int, @Desde datetime, @Hasta datetime) AS  

  Select   

    c.idConduce, c.Conduce, c.Cliente, c.Fecha, c.Referencia, c.idClienteObra, c.idConduceStatus, c.OrdComp  

  From   

    Conduce c join conducestatus cs on c.idConduceStatus = cs.idConduceStatus  

  Where   

    c.fecha between @Desde and @Hasta   

    and c.idCliente = @idCliente  

    and cs.esFacturable = 1  

    and c.cancelado = 0  

    and not exists (select 1 from facturaconduce fc join factura f on fc.idfactura = f.idFactura

			where fc.idConduce = c.idConduce and f.Cancelado = 0)

  Order by  

    c.fecha  

  

  




GO
