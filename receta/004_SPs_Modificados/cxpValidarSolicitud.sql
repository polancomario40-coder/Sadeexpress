
CREATE OR ALTER PROCEDURE [dbo].[cxpValidarSolicitud]

 @idSolicitud int,

 @st char(1),

 @newst char(1),

 @usuario varchar(30)

as

 if @st = '1'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 ValidadaPor = @usuario,

	 ValidadaEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 if @st = '3'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 RevisadaPor = @usuario,

	 RevisadaEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 if @st = '4'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 ValidadaFinalPor = @usuario,

	 ValidadaFinalEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 

return 0 

 

 






GO
