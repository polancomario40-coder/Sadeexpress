CREATE OR ALTER PROCEDURE rsCxCEmpDet(@CxCEmpID integer) AS

  Select * 

  From CxCEmpDet

  Where CxCEmpID = @CxCEmpID


GO
