CREATE OR ALTER PROCEDURE cxpRSBancoSuplidor

 (@IdSuplidor Int)

AS

  SELECT

    *

  FROM

    cxpBancoSuplidor

  WHERE

    IdSuplidor = @IdSuplidor




GO
