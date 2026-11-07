CREATE OR ALTER PROCEDURE [dbo].[RPTFacturaList]  

 @Desde datetime, @Hasta datetime  

as      

SELECT TOP 100 PERCENT      

  idFactura,       

  Factura,       

  idCliente,       

  Fecha,       

  Hora,    

  f.idAlmacen as Almacen,

  Referencia,       

  Cancelado,       

  FechaCancelado,      

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE SubTotal END) as SubTotal,       

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Itbis END) as Itbis,       

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Descuento END) as Descuento,       

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Total END) as Total,       

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 1 THEN Total ELSE 0.00 END) END) as TotalCR,       

  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 0 THEN Total ELSE 0.00 END) END) as TotalCO,       

  (CASE WHEN Cancelado = 1 THEN 'NULO' ELSE Cliente END) as Cliente,      

  (CASE WHEN f.credito =1 THEN (dbo.cxcbalancedocumento(f.idfactura, @Hasta, null)) ELSE f.total END) as Pagado,      

  Usuario,      

  Condicion,      

  Credito,        

  idCondicion,      

  e.idEmpleado,      

  e.Empleado,      

  m.idMoneda,      

  m.Moneda,      

  f.CompFiscal,  

  f.Tasa   

FROM               

  Factura f      

  left join svEmpleado e on f.idEmpleado = e.idEmpleado      

  join Moneda m on f.idMoneda = m.idMoneda      

WHERE      

  Fecha BETWEEN @Desde AND @Hasta      

ORDER BY       

  m.idMoneda,      

  f.Fecha,      

  f.Factura  


GO
