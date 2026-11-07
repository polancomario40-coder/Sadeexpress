



CREATE OR ALTER PROCEDURE [dbo].[CxCEmpStadoCta](@EmpleadoID integer, @Fecha datetime) 

AS  

SELECT       

 E.EmpleadoID,   

 E.Apellido + ', ' + E.Nombre AS Empleado,   

 D.Departamento,   

 CxC.CxCEmpID,   

 TT.TipoTransaccion,   

 CxC.Fecha,   

 CxC.Total,   

 CxC.Cuotas,   

 CxC.Descuento,   

 Descontado = isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00),   

 Balance = cxc.Total - isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00),      

 CxC.Activo  

FROM      

 dbo.Empleado E INNER JOIN   

 dbo.Departamento D ON E.DepartamentoId = D.DepartamentoID INNER JOIN   

 dbo.CxCEmp CxC ON E.EmpleadoID = CxC.EmpleadoID INNER JOIN  

 dbo.TipoTransaccion TT ON CxC.TipoTransaccionID = TT.TipoTransaccionID   

WHERE        

 (CxC.Activo = 1)   

 and cxc.Fecha <= @Fecha 

 AND (E.EmpleadoID = @EmpleadoID)  

 and cxc.Total > isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00)

   






GO
