   

CREATE OR ALTER PROCEDURE RPTCXCList(@Desde datetime, @Hasta datetime, @idCxcTipo Varchar(10)) AS  

  

SELECT       

  c.idCxc,   

  c.idTipoDocumento,   

  c.idCliente,   

  (Case when cancelado = 1 then 'NULO' else c.Cliente end) as Cliente,   

  c.Fecha,   

  c.Cxc,   

  (Case when cancelado = 1 then 0.00 else c.Valor end) as Valor,  

  c.Concepto,   

  c.Referencia,   

  c.Cancelado,   

  c.idCxcTipo,   

  ct.CxcTipo,   

  ct.CC,   

  c.Usuario,   

  c.Descuento,   

  (Case when cancelado = 1 then 0.00 else c.Total end) as Total ,

  c.idMoneda,

  c.Tasa, 

  m.Moneda 

FROM           

  Cxc c JOIN CxcTipo ct ON c.idCxcTipo = ct.idCxcTipo  

  join Moneda m on c.idMoneda = m.idMoneda 

WHERE       

  (c.idTipoDocumento like  @idCxcTipo)   

  AND (c.Fecha BETWEEN @Desde AND @Hasta)  

ORDER BY  

  m.Moneda, 

  c.idCxcTipo,   

  c.Fecha,   

  c.Cxc
GO
