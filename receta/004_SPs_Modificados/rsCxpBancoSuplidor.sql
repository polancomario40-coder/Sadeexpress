CREATE OR ALTER PROCEDURE rsCxpBancoSuplidor(@IdSuplidor Int)

AS

  SELECT

    *

  FROM

    cxpBancoSuplidor

  WHERE

    IdSuplidor = @IdSuplidor




GO
