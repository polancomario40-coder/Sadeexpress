

CREATE OR ALTER PROCEDURE [dbo].[cxcValidaTieneAgenda](@fecha DATETIME, @idcliente INT)

as

SELECT top 1 1 FROM cxcNotasGestionCobros cngc 

WHERE cngc.idCliente = @idcliente

AND Agendar = 1 AND Cerrada = 0 

--AND CONVERT(VARCHAR(cxcValidaTieneAgenda10),cngc.FechaAgenda,105) = CONVERT(VARCHAR(10),@fecha,105)




GO
