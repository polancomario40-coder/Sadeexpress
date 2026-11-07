
CREATE OR ALTER PROCEDURE cxcClienteLimiteCrBalanceRpt(@FechaAl DateTime, @BalGTLimCr Bit)    

AS    

Declare    

  @Tabla Table (IdCliente Int,    

                Balance Numeric(18,2))  

    

    

INSERT INTO @Tabla (IdCliente, Balance)    

SELECT    

  cx.IdCliente,    

  dbo.ConvertMoneda(cx.Total - dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl), cx.IdMoneda, Null, @FechaAl, Null) As Balance    

FROM    

  Cxc cx    

WHERE    

  cx.Cancelado = 0    

    

SELECT    

  cl.IdCliente,    

  cl.Cliente,    

  co.Condicion,    

  cl.LimiteCredito,    

  Sum(cx.Balance) As Balance,  

  (Select Sum(dbo.ConvertMoneda(c.Total, c.idMoneda, Null, @FechaAl, Null)) from Cxc c Where c.esCredito = 0 And c.Cancelado = 0 And c.IdCliente = cl.IdCliente) As FactUlt6Meses,  

  zo.Zona,    

  em.Empleado As Vendedor,  

  cl.Ciudad,  

  cg.ClienteGrupo,  

  cl.RNC_Cedula,  

  cl.Descuento,

  cl.Direccion,

  cl.Sector,

  cl.Telefono,

  cl.Fax,

  cl.EMail,

  cl.Contacto,

  cl.ComisionFactor,

  cs.ClienteStatus,

  ct.ClienteTipo,

  cl.Grupo,

  lp.ListaPrecio

FROM    

  Cliente       cl Inner Join

  ClienteStatus cs On (cs.idClienteStatus= cl.idClienteStatus) Inner Join

  ClienteTipo   ct On (ct.idClienteTipo = cl.idClienteTipo) Left Outer Join 

  @Tabla        cx On (cl.IdCliente = cx.IdCliente) Left Outer Join

  svCondicion   co On (co.IdCondicion = cl.IdCondicion) Left Outer Join    

  Zona          zo On (zo.IdZona = cl.IdZona) Left Outer Join    

  svEmpleado    em On (em.IdEmpleado = cl.IdEmpleado)  Left Outer Join  

  ClienteGrupo  cg On (cg.IdClienteGrupo = cl.IdClienteGrupo) Left Outer Join

  ListaPrecio   lp On (lp.idListaPrecio = cl.idListaPrecio)

GROUP BY    

  cl.IdCliente,    

  cl.Cliente,    

  co.Condicion,    

  cl.LimiteCredito,    

  zo.Zona,    

  em.Empleado,  

  cl.Ciudad,  

  cg.ClienteGrupo,  

  cl.RNC_Cedula,  

  cl.Descuento,  

  cl.Condicion,

  cl.Direccion,

  lp.ListaPrecio,

  cl.Grupo,

  ct.ClienteTipo,

  cl.Contacto,

  cl.Sector,

  cl.Telefono,

  cl.Fax,

  cl.EMail,

  cl.Sector,

  cs.ClienteStatus,

  cl.ComisionFactor

Having    

  ((@BalGTLimCr = 0) Or (Sum(cx.Balance) > cl.LimiteCredito))    

    




GO
