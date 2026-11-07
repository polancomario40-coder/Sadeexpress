CREATE OR ALTER PROCEDURE [dbo].[svFindClientecentral] --'4','4'

 @mask VARCHAR(200),@id int

AS

 DECLARE @m VARCHAR(202) = ISNULL('%' + LTRIM(RTRIM(@mask)) + '%','%')



if isnull(@id,'')=''  

select TOP 500     

	c.Cliente, 

	c.Telefono,

	c.Beeper,

	c.Contacto,

	c.EMail,

	c.IdCliente , 

  c.RNC_Cedula,

  convert(varchar(40), Notas) as Notas



From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus

  	WHERE 	( CONVERT(VARCHAR(20), c.idcliente) LIKE @m

	      OR c.cliente LIKE @m

				OR c.Telefono LIKE @m

				OR c.Beeper LIKE @m

				OR c.Contacto LIKE @m

				OR c.EMail LIKE @m

				OR c.RNC_Cedula LIKE @m

				OR isnull(c.Notas,'') LIKE @m )   and cs.Activo=1

Order by Cliente;

else

select TOP 500     

	c.Cliente, 

	c.Telefono,

	c.Beeper,

	c.Contacto,

	c.EMail,

	c.IdCliente , 

  c.RNC_Cedula,

  convert(varchar(40), Notas) as Notas



From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus

  	WHERE 	 c.idcliente=@id;

 




GO
