
CREATE OR ALTER PROCEDURE CarteradeClientes (@idEmpleado int) AS





SELECT     TOP 100 PERCENT e.idEmpleado, e.Empleado, e.Telefono AS TelEmp, c.idCliente, c.Cliente, c.Contacto, c.Direccion, c.Sector, c.Ciudad, c.Telefono, 

                      c.Fax, c.Beeper, c.EMail, c.LimiteCredito, c.idClienteTipo, c.idClienteStatus, c.Descuento, MAX(f.Fecha) AS UltFactura

FROM         svEmpleado e INNER JOIN

                      dbo.Cliente c ON e.idEmpleado = c.idEmpleado LEFT OUTER JOIN

                      dbo.Factura f ON c.idCliente = f.idCliente

WHERE     (e.inactivo = 0) and (@idEmpleado = -1 or e.idEmpleado = @idEmpleado)

GROUP BY e.idEmpleado, e.Empleado, e.Telefono, c.idCliente, c.Cliente, c.Contacto, c.Direccion, c.Sector, c.Ciudad, c.Telefono, c.Fax, c.Beeper, c.EMail, 

                      c.LimiteCredito, c.idClienteTipo, c.idClienteStatus, c.Descuento

ORDER BY e.Empleado, c.Cliente


GO
