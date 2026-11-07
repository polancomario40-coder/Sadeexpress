CREATE OR ALTER PROCEDURE svRsClienteTipoCuenta(@IdClienteTipo Int)

AS

SELECT

  *

FROM

  ClienteTipoCuenta

WHERE

  IdClienteTipo = @IdClienteTipo




GO
