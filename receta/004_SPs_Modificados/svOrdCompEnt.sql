
------------ final de:svGetDescuentoXCantidad ------------



------------ inicio de:svOrdCompEnt ------------





CREATE OR ALTER PROCEDURE svOrdCompEnt(@idOrdComp uniqueidentifier) AS

  Select

   e. *,

   ee.Empleado,

   f.factura,

   p.promov

  from

    OrdCompEnt e

    left join factura f on e.idfactura = f.idfactura

    left join promov p on e.idpromov = p.idpromov

    left join svEmpleado ee on e.idEmpleado = ee.idempleado

  where

    (@idOrdComp is null) OR (e.idOrdComp = @idOrdComp)

  order by

    e.fecha desc, e.hora desc




GO
