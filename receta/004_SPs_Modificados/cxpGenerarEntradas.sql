





CREATE OR ALTER PROCEDURE [dbo].[cxpGenerarEntradas]

 @desde datetime,

 @hasta datetime,

 @cheques bit,

 @cxp bit,

 @ChequesCanc bit,

 @usuario varchar(30)

as

 declare @err int,

		 @inicio datetime 



 set @inicio = @desde

 while @inicio <= @hasta

 begin

   if @cxp = 1

   begin

     exec @err = cxpGenEDCXP @inicio, @Inicio, @usuario

   end

   if @cheques = 1

   begin

     exec @err = cxpGenEDCheques @inicio, @Inicio, @usuario

   end

   if @ChequesCanc = 1

   begin

     exec @err = cxpGenEDCksCancelados @inicio, @Inicio, @usuario 

   end

   set @inicio = dateadd(day,1,@inicio)

 end



return isnull(@ERR,0)






GO
