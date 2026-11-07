
------------ final de:rssFacturadoyCobrado ------------



------------ inicio de:rssFacturadoyCobradoGrafico ------------



CREATE OR ALTER PROCEDURE rssFacturadoyCobradoGrafico(@Ano Int)

AS

SELECT

  1 As Orden,

  'Enero' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 01) As Facturado,

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 01) As Cobrado

UNION

SELECT

  2 As Orden,

  'Febrero' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 02),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 02)

UNION

SELECT

  3 As Orden,

  'Marzo' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 03),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 03)

UNION

SELECT

  4 As Orden,

  'Abril' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 04),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 04)

UNION

SELECT

  5 As Orden,

  'Mayo' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 05),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 05)

UNION

SELECT

  6 As Orden,

  'Junio' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 06),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 06)

UNION

SELECT

  7 As Orden,

  'Julio' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 07),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 07)

UNION

SELECT

  8 As Orden,

  'Agosto' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 08),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 08)

UNION

SELECT

  9 As Orden,

  'Septiembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 09),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 09)

UNION

SELECT

  10 As Orden,

  'Octubre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 10),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 10)

UNION

SELECT

  11 As Orden,

  'Noviembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 11),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 11)

UNION

SELECT

  12 As Orden,

  'Diciembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 12),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 12)




GO
