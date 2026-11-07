









CREATE OR ALTER PROCEDURE [dbo].[ecf_facturas_pendEnvio]      

 @Desde datetime, @Hasta datetime, @filtro varchar(20) = '*'            

as              

SELECT       

  idFactura,               

  Factura,               

  idCliente,               

  Fecha,               

  Hora,            

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

  f.Usuario,              

  Condicion,              

  Credito,                

  idCondicion,              

  e.idEmpleado,              

  e.Empleado,              

  m.idMoneda,              

  m.Moneda,              

  f.CompFiscal,          

  f.Tasa,      

  f.PendValidacion,        

  f.PendEnvioEcf,       

  f.CodigoSeguridadEcf,        

  f.UltError,

  f.StatusEcf

FROM                       

  Factura f with (NOLOCK)         

  join svEmpleado e with (NOLOCK) on f.idEmpleado = e.idEmpleado              

  join Moneda m with (NOLOCK) on f.idMoneda = m.idMoneda              

WHERE              

  Fecha BETWEEN @Desde AND @Hasta              

  and Cancelado = 0      

  and f.CompFiscal like 'E%'  

  and @filtro in ('*', f.StatusEcf)    

ORDER BY               

  m.idMoneda,              

  f.Fecha,              

  f.Factura 


GO
