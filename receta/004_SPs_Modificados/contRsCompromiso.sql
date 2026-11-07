
------------ final de:contRsAvance ------------



------------ inicio de:contRsCompromiso ------------







CREATE OR ALTER PROCEDURE contRsCompromiso(@idContrato uniqueidentifier) AS

  Select

    *

  From

    contCompromiso

  Where

    idContrato = @idContrato

  Order by 

   Fecha




GO
