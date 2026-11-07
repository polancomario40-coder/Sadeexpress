
CREATE OR ALTER PROCEDURE svBorrarCxcDesdeRecibo(@IdRecibo UniqueIdentifier)

AS

  Delete From

    Cxc

  Where

    IdCxc = @IdRecibo




GO
