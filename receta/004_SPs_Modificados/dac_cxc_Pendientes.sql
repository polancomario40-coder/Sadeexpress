CREATE OR ALTER PROCEDURE dac_cxc_Pendientes

 @idCliente int,

 @hasta datetime

as

 

select c.*, 

	   Balance = c.Valor - dbo.eduPagadoDocumentoCXC(c.idcxc,@hasta)

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo 

where c.idCliente = @idCliente

	  and c.Fecha <= @hasta

	  and c.cancelado = 0

	  and c.esCredito = 0

	  and c.Valor > dbo.eduPagadoDocumentoCXC(c.idcxc,@hasta)


GO
