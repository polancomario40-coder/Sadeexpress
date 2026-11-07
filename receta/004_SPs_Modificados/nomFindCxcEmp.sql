


CREATE OR ALTER PROCEDURE nomFindCxcEmp(@Orden VarChar(20))

AS

SELECT c.CxcEmpID, c.CxcEmp, c.EmpleadoID, c.Total, c.Balance,  E.Apellido + '' As Apellido, '' + E.Nombre as Empleado, c.Activo

              FROM CxCEmp c JOIN Empleado E ON c.EmpleadoId = E.EmpleadoID




GO
