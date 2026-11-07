CREATE OR ALTER PROCEDURE svClienteNotasList(@IdCliente Int)

AS

SELECT

  Notas,

  IdCliente,

  Cliente

FROM

  Cliente

WHERE

  IdCliente = @IdCliente


GO
