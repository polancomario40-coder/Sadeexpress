CREATE OR ALTER PROCEDURE CxCEmpUpdate(@CxcEmpID int) AS

if ISNULL(@CxcEmpID, -1) = -1 

BEGIN

  Update 

    CxCEmp

  Set

    Descontado = isnull((Select Sum(CD.Monto) From CxCEmpDet CD Where CD.CxCEmpID = C.CxCEmpID),0)

  From

    CxCEmp C

END

ELSE

BEGIN

  Update 

    CxCEmp

  Set

    Descontado = isnull((Select Sum(CD.Monto) From CxCEmpDet CD Where CD.CxCEmpID = C.CxCEmpID),0)

  From

    CxCEmp C

  Where 

    CxcEmpID = @CxcEmpID

END


GO
