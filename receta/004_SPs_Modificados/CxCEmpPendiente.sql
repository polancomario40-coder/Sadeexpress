CREATE OR ALTER PROCEDURE CxCEmpPendiente(@EmpleadoId integer, @Pendiente bit) AS

IF @Pendiente = 1

BEGIN

  Select 

    *

  From

    CxCEmp

  Where 

    Balance > 0

    AND EmpleadoID = @EmpleadoID

  Order by 

    Fecha Desc

END

ELSE

BEGIN

  Select 

    *

  From

    CxCEmp

  Where 

    EmpleadoID = @EmpleadoID

  Order by 

    Fecha Desc

END


GO
