
CREATE OR ALTER PROCEDURE rsFacturaDetEspec(@idFactura uniqueidentifier) As



  Select *

  from FacturaDetEspec

  where idFactura = @idFactura

    




GO
