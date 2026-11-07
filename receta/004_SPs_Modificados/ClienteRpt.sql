
CREATE OR ALTER PROCEDURE ClienteRpt(@Activo Bit)  

AS  

SELECT  

  IdCliente,

  Cliente,

  Contacto,

  Direccion,

  Ciudad,

  Telefono,

  Fax,

  eMail,

  Rnc_Cedula,

  Sector,

  LimiteCredito,

  Descuento,

  Condicion

FROM  

  Cliente       cl Inner Join  

  ClienteStatus cs On (cl.IdClienteStatus = cs.IdClienteStatus)  

WHERE  

  cs.Activo = @Activo  

ORDER BY  

  Cliente  

  


GO
