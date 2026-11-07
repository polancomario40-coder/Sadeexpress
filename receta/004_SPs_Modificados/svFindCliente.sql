CREATE OR ALTER PROCEDURE [dbo].[svFindCliente]

 @mask VARCHAR(200)

AS

 DECLARE @m VARCHAR(202) = ISNULL('%' + LTRIM(RTRIM(@mask)) + '%','%')



select TOP 500     

	c.Cliente, 

	c.IdCliente AS Codigo, 

  c.RNC_Cedula,

  c.Telefono, 

  (CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END)  as Activo, 

  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) as Credito,

  convert(varchar(40), Notas) as Notas

From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus 

	WHERE ( CONVERT(VARCHAR(20), idcliente) LIKE @m

	      OR cliente LIKE @m

				OR c.Telefono LIKE @m

				OR c.RNC_Cedula LIKE @m

				OR isnull(c.Notas,'') LIKE @m )AND cs.Activo=1

Order by Cliente 




GO
