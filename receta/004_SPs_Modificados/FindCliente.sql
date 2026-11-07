

  

  

CREATE OR ALTER PROCEDURE [dbo].[FindCliente](@Orden varchar(100)) AS  

SELECT    

  c.Telefono,   

  SUBSTRING(c.Cliente, 1, 50) AS Cliente,   

  c.idCliente,   

  c.RNC_Cedula,  

  (CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END) AS Activo,   

  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) AS Credito,  

  CONVERT(varchar(20), Notas) AS Notas  

FROM Cliente c   

JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus   

ORDER BY 1;


GO
