 

  

 CREATE OR ALTER PROCEDURE ClienteRpt02(@Activo Bit)    

AS    

SELECT    

  cl.IdCliente,    

  cl.Cliente,    

  sv.Empleado,    

  zo.Zona,    

  cl.Grupo,    

  ct.ClienteTipo,    

  cs.ClienteStatus,    

  cl.Descuento,    

  cg.ClienteGrupo,    

  cl.IdListaPrecio,  

  cl.LimiteCredito,  

  cl.Condicion,  

  cl.Contacto,  

  cl.Direccion,  

  cl.Ciudad,  

  cl.Telefono,  

  cl.Fax,  

  cl.eMail,  

  cl.Rnc_Cedula,  

  cl.Sector  ,

  cl.FechaActivo as FechaInicio

FROM    

  Cliente       cl Inner Join    

  ClienteStatus cs On (cl.IdClienteStatus = cs.IdClienteStatus) Left Outer Join    

  svEmpleado    sv On (sv.IdEmpleado = cl.IdEmpleado) Left Outer Join    

  Zona          zo On (zo.IdZona = cl.IdZona) Left Outer Join    

  ClienteTipo   ct On (ct.IdClienteTipo = cl.IdClienteTipo) Left Outer Join    

  ClienteGrupo  cg On (cg.IdClienteGrupo = cl.IdClienteGrupo)    

WHERE    

  cs.Activo = @Activo    

ORDER BY    

  Cliente  

  
GO
