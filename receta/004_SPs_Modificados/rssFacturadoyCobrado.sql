
------------ final de:rsOrdCompDetalle ------------



------------ inicio de:rssFacturadoyCobrado ------------





CREATE OR ALTER PROCEDURE rssFacturadoyCobrado(@Ano Int)

AS

SELECT

  1 As Orden,

  'FACTURADO' As Que,

  Sum(CASE When Month(Fecha) = 01 Then Total Else 0.00 END) As Enero,

  Sum(CASE When Month(Fecha) = 02 Then Total Else 0.00 END) As Febrero,

  Sum(CASE When Month(Fecha) = 03 Then Total Else 0.00 END) As Marzo,

  Sum(CASE When Month(Fecha) = 04 Then Total Else 0.00 END) As Abril,

  Sum(CASE When Month(Fecha) = 05 Then Total Else 0.00 END) As Mayo,

  Sum(CASE When Month(Fecha) = 06 Then Total Else 0.00 END) As Junio,

  Sum(CASE When Month(Fecha) = 07 Then Total Else 0.00 END) As Julio,

  Sum(CASE When Month(Fecha) = 08 Then Total Else 0.00 END) As Agosto,

  Sum(CASE When Month(Fecha) = 09 Then Total Else 0.00 END) As Septiembre,

  Sum(CASE When Month(Fecha) = 10 Then Total Else 0.00 END) As Octubre,

  Sum(CASE When Month(Fecha) = 11 Then Total Else 0.00 END) As Noviembre,

  Sum(CASE When Month(Fecha) = 12 Then Total Else 0.00 END) As Diciembre,

  @Ano As Ano

FROM

  Factura

WHERE

  Cancelado = 0 AND

  Year(Fecha) = @Ano

UNION

SELECT

  2,

  'COBRADO',

  Sum(CASE When Month(Fecha) = 01 Then Valor Else 0.00 END) As Enero,

  Sum(CASE When Month(Fecha) = 02 Then Valor Else 0.00 END) As Febrero,

  Sum(CASE When Month(Fecha) = 03 Then Valor Else 0.00 END) As Marzo,

  Sum(CASE When Month(Fecha) = 04 Then Valor Else 0.00 END) As Abril,

  Sum(CASE When Month(Fecha) = 05 Then Valor Else 0.00 END) As Mayo,

  Sum(CASE When Month(Fecha) = 06 Then Valor Else 0.00 END) As Junio,

  Sum(CASE When Month(Fecha) = 07 Then Valor Else 0.00 END) As Julio,

  Sum(CASE When Month(Fecha) = 08 Then Valor Else 0.00 END) As Agosto,

  Sum(CASE When Month(Fecha) = 09 Then Valor Else 0.00 END) As Septiembre,

  Sum(CASE When Month(Fecha) = 10 Then Valor Else 0.00 END) As Octubre,

  Sum(CASE When Month(Fecha) = 11 Then Valor Else 0.00 END) As Noviembre,

  Sum(CASE When Month(Fecha) = 12 Then Valor Else 0.00 END) As Diciembre,

  @Ano As Ano

FROM

  Recibo

WHERE

  Cancelado = 0 AND

  Year(Fecha) = @Ano




GO
