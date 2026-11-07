CREATE OR ALTER PROCEDURE [dbo].[presFindCliente](@Orden varchar(10)) AS





Select  

  c.Cedula,

  c.Apellido, 

  c.Nombre,

  c.idCliente, 

  Convert(varchar(15), c.Telefono) as Telefono, 

  c.Status,

  (CASE WHEN cs.activo = 1 THEN 'Activo' ELSE 'Inactivo' END)  as Activo,

  Convert(varchar(10), Empresa) as Empresa,

  Convert(varchar(20), Nota) as Nota

From 

  presCliente c 

  join presClienteStatus cs ON c.Status = cs.Status 

Order by 1


GO
