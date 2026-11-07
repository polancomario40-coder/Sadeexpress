CREATE OR ALTER PROCEDURE BifrFactura

(

    @desde DATETIME,

    @hasta DATETIME

)

AS

--DECLARE @fe DATETIME = '20180626';



SELECT NEWID() AS keyfield,

       FechaInicio,

       FechaFin,

       Factura,

       Cliente,

       ISNULL(t.Tasa, 1) AS Tasa,

       SubTotal,

       Descuento,

       Total = SubTotal - Descuento,

       TotalRD = SubTotal * ISNULL(t.Tasa, 1),

       m.Moneda

FROM frFactura f

    JOIN Moneda m

        ON f.idMoneda = m.idMoneda

    LEFT JOIN Tasa t

        ON m.idMoneda = t.idMoneda

          -- AND t.Fecha = @fe

WHERE f.Fecha

      BETWEEN @desde AND @hasta

      AND Cancelado = 0;




GO
