



    

    

CREATE OR ALTER PROCEDURE [dbo].[ecf_facturadet_select]        

 @id uniqueidentifier        

as          

  

  declare @det table (        

    IdFactura uniqueidentifier,         

 idFacturaDet uniqueidentifier,        

 idProducto varchar(25),        

 Producto varchar(2000),         

 Cantidad float,        

 Precio decimal(19,2),         

 idUnidad varchar(16),        

 Descuento decimal(19,2),        

 Itbis decimal(19,2),        

 LineTotal decimal(19,2),         

 idCargo uniqueidentifier,        

 dias decimal(19,2),        

 PrecioDia decimal(19,2),        

 idAlmacen varchar(16),        

 Linea int         

  )        

        

  insert into @det         

  (IdFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         

   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea)        

  select idFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         

   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea        

  from FacturaDet         

  where idFactura = @id and idCargo is null         

        

  update e        

    set e.producto = e.Producto + ISNULL(char(13) + char(10) + ' (' + strs.CommaStr + ')', '') ,        

  e.Precio = e.Precio + ISNULL(totales.TPrecio,0),        

  e.PrecioDia = e.PrecioDia + ISNULL(totales.TPrecioDia,0),        

  e.Descuento = e.Descuento + ISNULL(totales.TDescuento,0),        

  e.Itbis = e.Itbis + ISNULL(totales.TItbis,0),        

  e.LineTotal = e.LineTotal + ISNULL(totales.TLineTotal,0)        

  FROM @det e outer apply (SELECT  idfacturadet,STUFF((SELECT  ',' + producto FROM Facturadet EE        

        WHERE  EE.idcargo=E.IdFacturaDet         

       FOR XML PATH('')), 1, 1, '') AS 'CommaStr') strs        

   outer apply (SELECT  SUM(precio) as TPrecio, SUM(descuento) as TDescuento,         

         SUM(itbis) as TItbis, SUM(linetotal) as TLineTotal,        

         SUM(PrecioDia) as TPrecioDia        

          from FacturaDet where idFactura = e.IdFactura and idCargo = e.idFacturaDet) totales        

  

  

  select fd.Idproducto as ProductoId,        

   left(fd.Producto, 70) as Producto,       

   left(p.Observacion,70) as Descripcion,            

   convert(decimal(19,2), fd.Cantidad) as Cantidad,        

   convert(decimal(19,2), fd.LineTotal * f.tasa) as LineTotal,        

   convert(decimal(19,2), f.tasa * fd.Precio) as Precio,        

   convert(decimal(19,2), fd.Itbis * f.Tasa) as Itbis,        

   convert(decimal(19,2), 0) as PrecioOtraMoneda,        

   convert(decimal(19,2), 0) as ItbisOtraMoneda,        

   convert(decimal(19,4), case when fd.Itbis = 0 then 0 else 18 end) as PorcItbis,        

   convert(decimal(19,2), f.Tasa * fd.Descuento) as Descuento,        

   convert(decimal(19,4), 0) as PorcDescuento,        

   fd.idFacturaDet as Id        

  from factura f with (NOLOCK) join @det fd on f.idfactura = fd.idFactura      

  join producto p on fd.idProducto = p.idProducto         

  where f.idFactura = @id 


GO
