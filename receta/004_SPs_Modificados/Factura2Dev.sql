



CREATE OR ALTER PROCEDURE [dbo].[Factura2Dev](@idFactura uniqueidentifier, @idDevolucion uniqueidentifier) AS    

    

  SELECT         

    c.idFactura,     

    c.Factura,     

    c.idCliente,     

    c.Cliente,     

    c.Fecha,     

    c.Nota,     

    c.PorcDesc,    

    c.condicion,     

    c.idMoneda,    

    c.tasa,    

    cd.idFacturaDet,     

    cd.idProducto,     

    cd.Producto,     

    cd.Cantidad,     

    cd.Precio,     

    cd.Descuento,     

    cd.Itbis,     

    cd.LineTotal,   

    c.idAlmacen,

	c.CompFiscal as NCFModificar,

    isnull((Select sum(dd.devCantidad) 

     from devoluciondet dd join devolucion d on d.iddevolucion = dd.iddevolucion 

     where dd.idFacturadet = cd.idfacturadet and d.cancelado = 0 and d.iddevolucion <> isnull(@idDevolucion,'00000000-0000-0000-0000-000000000000')),0.00)  as CantidadDev     

  FROM             

    dbo.Factura c     

    INNER JOIN dbo.FacturaDet cd ON c.idFactura = cd.idFactura    

  WHERE    

    c.idFactura = @idFactura    

    and c.Cancelado = 0    

  





/****** Object:  StoredProcedure [dbo].[svDevolucion2ProMov]    Script Date: 11/11/2025 06:31:56 a.m. ******/

SET ANSI_NULLS ON


GO
