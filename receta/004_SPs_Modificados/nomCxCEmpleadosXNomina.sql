--------------------------------------------------





CREATE OR ALTER PROCEDURE [dbo].[nomCxCEmpleadosXNomina](@NominaID int) AS      



declare

  @Fecha datetime



Set @Fecha = (select fecha from nomina where nominaid = @nominaid)





SELECT       

 e.EmpleadoID,       

 e.Nombre,       

 e.Apellido,       

 c.Fecha,       

 tt.TipoTransaccion,       

 c.Total,       

 c.Cuotas,       

 Descontado = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),            

 DescNomina = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha and nominaid = @NominaID),0.00),            

 Balance = c.Total - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),       

 c.CXCEmp,       

 c.Activo,

 @Fecha as FechaNom,

 @NominaID as Nomina     

FROM               

  dbo.Empleado e 

  INNER JOIN CxCEmp c ON e.EmpleadoID = c.EmpleadoID 

  INNER JOIN dbo.TipoTransaccion tt ON c.TipoTransaccionID = tt.TipoTransaccionID      

WHERE           

 c.Fecha <= @Fecha   

 and c.Total > (isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00)  - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha and nominaid = @NominaID),0.00))

ORDER BY       

 c.Fecha


GO
