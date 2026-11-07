
------------ final de:svOrdCompEnt ------------



------------ inicio de:svOrdCompEntList ------------





CREATE OR ALTER PROCEDURE svOrdCompEntList(@idOrdComp uniqueidentifier) AS

  Select

   e. *,

   o.idCliente,

   o.Cliente,

   ee.Empleado,

   f.factura,

   p.promov

  from

    OrdCompEnt e

    inner join OrdComp o on e.idOrdComp = o.idOrdComp

    inner join Cliente c on c.idCliente = o.idCliente 

    left  join factura f on e.idfactura = f.idfactura

    left  join promov p on e.idpromov = p.idpromov

    left  join svEmpleado ee on e.idEmpleado = ee.idempleado

  where

    (@idOrdComp is null) OR (e.idOrdComp = @idOrdComp)

  order by

    e.fecha desc, e.hora desc




GO
