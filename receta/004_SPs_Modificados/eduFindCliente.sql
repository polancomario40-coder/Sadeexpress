
------------ final de:eduFamilia ------------



------------ inicio de:eduFindCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduFindCliente](@Orden varchar(10)) AS

Select  

  e.Apellidos, 

  e.Nombres,

  c.Telefono,

  e.idCliente,

  ct.ClienteTipo, 

  e.FechaNac,

  cc.cliente as Familia,

  isnull(c.idClienteParent, c.idCliente) as idClienteParent

From

  Cliente c 

  join eduEstudiante e on c.idCliente = e.idCliente 

  left join Cliente cc on cc.idCliente = c.idClienteParent

  join ClienteTipo ct on c.idClienteTipo = ct.idClienteTipo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

Order by 

  1




GO
