

CREATE OR ALTER PROCEDURE FindClienteActivo(@Orden varchar(100)) AS  

Select    

  c.Cliente,   

  c.idCliente,   

  c.RNC_Cedula,  

  c.Telefono,   

  --(CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END)  as Activo,   

  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) as Credito,  

  Convert(varchar(20), Notas) as Notas  

From   

  Cliente c   

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus   

  where cs.Activo = 1 

Order by 1  

return 


GO
