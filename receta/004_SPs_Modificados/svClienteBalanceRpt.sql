CREATE OR ALTER PROCEDURE svClienteBalanceRpt(@FechaAl DateTime)

AS

SELECT

  cl.IdCliente,

  cl.Cliente,

  mo.Moneda,

  Sum(dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl)) As Balance

FROM

  cxc     cx Inner Join

  Cliente cl On (cl.IdCliente = cx.IdCliente) Inner Join

  Moneda  mo On (mo.IdMoneda = cx.IdMoneda) Inner Join

  CxcTipo ct On (ct.IdCxcTipo = cx.IdCxcTipo)

WHERE

  ct.EsCredito = 0 AND

  cx.Cancelado = 0

GROUP BY

  cl.IdCliente,

  cl.Cliente,

  mo.Moneda

ORDER BY

  mo.Moneda,

  cl.Cliente  


GO
