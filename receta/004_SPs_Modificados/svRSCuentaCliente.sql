

CREATE OR ALTER PROCEDURE svRSCuentaCliente

 @idCliente int,

 @idMoneda int 

as

 select ctc.idCuentaCredito,

		ctc.idCuentaContado

 from cliente c join ClienteTipoCuenta ctc

  on c.idClienteTipo = ctc.idClienteTipo and ctc.idMoneda = @idMoneda

 where c.idCliente = @idCliente

return 0 

 


GO
