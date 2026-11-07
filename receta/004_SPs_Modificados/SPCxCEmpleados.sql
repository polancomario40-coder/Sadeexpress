CREATE OR ALTER PROCEDURE [dbo].[SPCxCEmpleados] AS  

SELECT     TOP 100 PERCENT   

 dbo.Empleado.EmpleadoID,   

 dbo.Empleado.Nombre,   

 dbo.Empleado.Apellido,   

 dbo.CxCEmp.Fecha,   

 dbo.TipoTransaccion.TipoTransaccion,   

 dbo.CxCEmp.Total,   

 dbo.CxCEmp.Cuotas,   

 dbo.CxCEmp.Descontado,   

 dbo.CxCEmp.Balance,   

 dbo.CxCEmp.CXCEmp,   

        dbo.CxCEmp.Activo  

FROM           

 dbo.Empleado INNER JOIN  

        dbo.CxCEmp ON dbo.Empleado.EmpleadoID = dbo.CxCEmp.EmpleadoID INNER JOIN  

        dbo.TipoTransaccion ON dbo.CxCEmp.TipoTransaccionID = dbo.TipoTransaccion.TipoTransaccionID  

WHERE       

 (dbo.CxCEmp.Balance <> 0)  

ORDER BY   

 dbo.CxCEmp.Fecha  




GO
