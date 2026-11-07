CREATE PROCEDURE [dbo].[ClienteAct] (@idCliente int) AS Select c.idCliente, c.Cliente, c.Contacto, c.LimiteCredito, cs.Activo, c.idEmpleado, c.Direccion, c.Sector, c.Ciudad, c.Telefono, ct.NoPagaItbis, c.Descuento, c.Fax, c.eMail, c.idListaPrecio, c.Condi
cion, c.RNC_Cedula, c.idCondicion, c.Notas, ct.TipoCompFiscal, ct.ClienteTipo, c.idCuenta, c.idAuxiliar, c.IdMoneda From Cliente c LEFT JOIN ClienteStatus cs on (cs.idClienteStatus = c.idClienteStatus) LEFT JOIN ClienteTipo ct on (ct.idClienteTipo = c.idC
lienteTipo) Where c.idCliente = @idCliente
