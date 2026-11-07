  CREATE OR ALTER PROCEDURE [dbo].[svCobrosporVendedor](@desde datetime, @hasta datetime, @idVend int) as  

  

  select    

        newid() as id,  

 e.Empleado as Vendedor,  

 r.fecha,  

 r.CxC as Pago,  

 r.Valor,  

 r.Tasa,  

 m.Moneda,  

 dr.fecha as FechaApli,  

 f.factura,  

 f.cliente,  

 f.fecha as FechaFact,  

 dr.Valor as Aplicado,  

 dr.Valor * dr.Tasa as Pagado  

from   

  CXC r  

  join CXCDet dr on r.idCXC = dr.IdCXC  

  join Factura f on dr.idCXCDebito = f.idFactura  

  join svEmpleado e on f.idEmpleado = e.idempleado  

  join cliente c on f.idcliente = c.idcliente  

  join Moneda m on f.idMoneda = m.idMoneda  

where    

  r.idTipoDocumento = 'RC'  

  and dr.fecha between @desde and @hasta   

  and f.credito = 1  

  and ((@idVend is null) or (f.idEmpleado = @idVend))  

  

  

UNION ALL  

  

select    

        newid() as id,  

 e.Empleado as Vendedor,  

 f.fecha,  

 'Contado' as Pago,  

        f.Total,  

        f.Tasa,  

 m.Moneda,  

 f.fecha as FechaApli,  

 f.factura,  

 f.cliente,  

 f.fecha as FechaFact,   

 f.subtotal - f.descuento as Aplicado,  

 (f.subtotal - f.descuento) * f.Tasa  

from  

  Factura f  

  join cliente c on f.idcliente = c.idcliente  

  join svEmpleado e on f.idEmpleado = e.idEmpleado  

  join Moneda m on f.idMoneda = m.idMoneda  

where  

  f.fecha between @desde and @hasta   

  and f.credito = 0 and f.cancelado = 0  

  and ((@idVend is null) or (f.idEmpleado = @idVend))  

order by  

  3  

  

  
GO
