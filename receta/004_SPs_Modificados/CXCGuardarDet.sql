CREATE OR ALTER PROCEDURE CXCGuardarDet

 @idCXCDet uniqueidentifier output,

 @IdCXC uniqueidentifier,

 @IdCXCDebito uniqueidentifier,

 @Valor decimal(19,2),

 @Fecha datetime,

 @Descuento decimal(19,2),

 @Tasa decimal(19,2)

as

 if @IdCXCDet is null

 begin

   set @idCXCDet = newid()

   insert into cxcDet (idCXC, idCXCDebito, Valor, Fecha, Descuento, Tasa)

   values (@idCXC, @idCXCDebito, @Valor, @Fecha, @Descuento, @Tasa)

 end

 else 

 begin

   if @Valor = 0 

   begin

     delete from cxcDet 

       where idCXCDet = @idCXCDet

     set @idCXCDet = null

   end

   else 

   begin

     update cxcDet

       set idCXC = @idCXC,

           idCXCDebito = @idCXCDebito,

           Valor = @Valor,

	   Fecha = @Fecha,	

	   Tasa  = @Tasa,

           Descuento = @Descuento

       where idCXCDet = @idCXCDet

   end 

  end

return @@ERROR
GO
