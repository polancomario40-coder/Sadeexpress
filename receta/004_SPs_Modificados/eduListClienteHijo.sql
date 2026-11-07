
------------ final de:eduListadoEstudiantes ------------



------------ inicio de:eduListClienteHijo ------------





CREATE OR ALTER PROCEDURE [dbo].[eduListClienteHijo](@idCliente int) AS

  Select 

    *

  From 

    Cliente c

    join eduEstudiante e on c.idCliente = e.idCliente

  where 

    c.idClienteParent = @idCliente




GO
