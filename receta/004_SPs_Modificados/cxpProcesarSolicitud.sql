CREATE OR ALTER PROCEDURE cxpProcesarSolicitud

 @idSolicitud int,

 @idDoc int output

as

 declare @tipo int,

	     @cta int,

	     @err int



 select @tipo = TipoSolicitud,

		@cta = idCuentaBanco 

 from cxpSolicitudes

 where idSolicitud = @idSolicitud



 declare @fec datetime



 set @fec = convert(datetime,floor(convert(float, getdate())))



 if @tipo = 1 

 begin

   exec @err = cxpGenerarCheque @idSolicitud, @cta, @fec, @idDoc output

   return @err

 end



 --generar transaccion de pago ACH

 if @tipo = 2

 begin

   exec @err = cxpGenerarPagoACH @idSolicitud, @idDoc output

   return @err

 end



 if @tipo = 3

 begin

   exec @err = cxpGenTransferBco @idSolicitud, @idDoc output

   return @err

 end



 return -1


GO
