CREATE OR ALTER PROCEDURE [dbo].[presClienteList](@Activo bit) as



  Select 

    c.idCliente,

    c.Nombre,

    c.Apellido,

    c.Cedula,

    convert(varchar(15), c.Telefono) as Telefono,

    convert(varchar(20), s.descripcion) as Status

  From

    presCliente c

    join presClienteStatus s on c.status = s.status 

  where

    (s.activo = @Activo) or (@Activo is null)


GO
