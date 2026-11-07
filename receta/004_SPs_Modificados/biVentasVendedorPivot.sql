CREATE OR ALTER PROCEDURE [dbo].[biVentasVendedorPivot]



 @Desde datetime, @Hasta datetime 

AS



--DECLARE @Desde datetime, @Hasta datetime 



--SET @Desde ='20150301'



--SET @hasta ='20150330'



declare @LINEA_DISTRIBUIDORA varchar(16)



select @LINEA_DISTRIBUIDORA = convert(varchar(16), valor)

from defaults

where clave = 'LINEA_DISTRIB'



declare @tbl table 

 (KeyField uniqueidentifier, idVendedor int, Vendedor varchar(100), idCliente int, Cliente varchar(100),

  Segmento varchar(100), Categoria varchar(100), Factura varchar(16), Fecha datetime, TotalFactura decimal(19,2),

  idProducto varchar(30), Producto varchar(100), Cantidad float, Precio decimal(19,2), LineTotal decimal(19,2),

  Descuento decimal(19,2), Itbis decimal(19,2), PrecioFinal decimal(19,2), grupo varchar(100), Linea varchar(100), Comisiona BIT,

  DireccionObra VARCHAR(100))

  

insert into @tbl 

SELECT     

  KeyField=newid(), 

  e.idEmpleado as idVendedor, 

  e.Empleado as Vendedor, 

  c.idCliente, 

  c.Cliente,   

  seg.Grupo as Segmento, 

  g.ClienteGrupo as Grupo, 

  f.Factura, 

  f.Fecha, 

  f.total  * f.Tasa as TotalFactura,

  p.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio * f.Tasa,

  fd.LineTotal  * f.Tasa, 

  fd.Descuento  * f.Tasa, 

  fd.Itbis  * f.Tasa, 

  (fd.LineTotal - c.Descuento) * f.Tasa AS PrecioFinal,

  gr.Grupo,

  l.Linea,

  p.Comisiona

  , ( SELECT TOP 1 CASE WHEN co1.direccionobra='' THEN c1.idClienteObra ELSE co1.idClienteObra end 

        FROM conduce c1 

  JOIN FacturaConduce fc1 ON fc1.idConduce = c1.idConduce 

  JOIN factura f1 ON f1.idfactura=fc1.idFactura

  left JOIN ClienteObra co1 ON co1.idClienteObra = c1.idClienteObra

  WHERE c1.idcliente=c.idCliente AND f1.Factura=f.Factura ) as DireccionObra

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

  dbo.svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

  dbo.Producto p ON p.idProducto = fd.idProducto 

   join Grupo gr on gr.idgrupo = p.idgrupo

   join Linea l on gr.idLinea = l.idlinea

  left join ClienteGrupo g on c.idClienteGrupo = g.idClienteGrupo 

  left join svGrupo seg on c.Grupo = seg.idgrupo  

   

 

WHERE     

  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

  and (f.fecha between @Desde and @Hasta)

   and p.paravender = 1 --AND c.idcliente=2246

 -- and p.comisiona = 1

 

  

  --SELECT   co.direccionobra,c.idClienteObra  FROM conduce c 

  --JOIN FacturaConduce fc ON fc.idConduce = c.idConduce 

  --JOIN factura f ON f.idfactura=fc.idFactura

  --left JOIN ClienteObra co ON co.idClienteObra = c.idClienteObra

  --WHERE c.idcliente=2246 AND f.Factura='00019045'  

  --SELECT * FROM ClienteObra ORDER BY idClienteObra co WHERE co.idClienteObra='LA ESPERILLA, TO'

  







-- -- PUERTO RICO!

-- insert into @tbl 

--SELECT     

--  KeyField=newid(), 

--  e.idEmpleado as idVendedor, 

--  e.Empleado as Vendedor, 

--  c.idCliente, 

--  c.Cliente,   

--  seg.Grupo as Segmento, 

--  g.ClienteGrupo as Grupo, 

--  f.Factura, 

--  f.Fecha, 

--  f.total * f.Tasa as TotalFactura,

--  p.idProducto, 

--  fd.Producto, 

--  fd.Cantidad, 

--  fd.Precio * f.Tasa,

--  fd.LineTotal * f.Tasa, 

--  fd.Descuento * f.Tasa, 

--  fd.Itbis * f.Tasa, 

--  (fd.LineTotal - c.Descuento)  * f.Tasa AS PrecioFinal,

--  gr.Grupo,

--  l.Linea,

--  p.Comisiona 

--FROM         

--  pruebarijo..Cliente c INNER JOIN

--  pruebarijo..Factura f ON c.idCliente = f.idCliente INNER JOIN

--  pruebarijo..FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

--  pruebarijo..svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

--  pruebarijo..Producto p ON p.idProducto = fd.idProducto join

--  pruebarijo..Grupo gr on p.idGrupo = gr.idGrupo join 

--  pruebarijo..Linea l on gr.idLinea = l.idLinea 

--  left join pruebarijo..ClienteGrupo g on c.idClienteGrupo = g.idClienteGrupo 

--  left join pruebarijo..svGrupo seg on c.Grupo = seg.idgrupo  

--WHERE     

--  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

--  and (f.fecha between @Desde and @Hasta)

--  and l.idinventario = @LINEA_DISTRIBUIDORA

--   and p.paravender = 1

--  --and p.comisiona = 1

 

  

 select 	

    t.*,   

	Mes = case when t.fecha is null then '' else dbo.padStringLeft(convert(varchar(2), month(t.fecha)),2,'0') + '-' + dbo.cbsNombreMes(t.Fecha) end,

	Anno = Convert(varchar(4), convert(int, Year(t.fecha))),

	PromedioVendProd = (select sum(cantidad * Precio) / sum(cantidad)

		        from @tbl

			where idProducto = t.idProducto and idVendedor = t.idVendedor and cantidad > 0 ),

	PromedioVend = (select sum(cantidad * Precio) / sum(cantidad)

		        from @tbl where idVendedor = t.idVendedor and cantidad > 0 ),

	datepart(w,fecha) as Semana

	        

 from 

   @tbl t 



 order by t.Vendedor, t.idVendedor, t.Fecha 

 

 


GO
