



CREATE OR ALTER PROCEDURE [dbo].[cxcNotasGestionCobrosRPT] --null,'20131125','20131125'

 @tipo varchar(16), @desde DATETIME, @hasta DATETIME

AS



if @tipo is Null begin



 select n.*, c.Cliente, c.Direccion, c.Telefono 

 from cxcNotasGestionCobros n JOIN cliente c ON n.idCliente = c.idCliente 

 WHERE FechaAgenda BETWEEN @desde AND @hasta+0.99999999

 and n.Agendar = 1

 ORDER BY c.Cliente 

 

end else begin



 select n.*, c.Cliente, c.Direccion, c.Telefono 

 from cxcNotasGestionCobros n JOIN cliente c ON n.idCliente = c.idCliente 

 WHERE FechaAgenda BETWEEN @desde AND @hasta + 0.99999999

 and TipoNota = @tipo 

 and n.Agendar = 1

 ORDER BY c.Cliente 



end




GO
