















CREATE OR ALTER PROCEDURE [dbo].[ecf_desglocePago_select]

 @id uniqueidentifier

as

  declare @result table (Tipo varchar(16), Monto decimal(19,2))



  declare @ef decimal(19,2), @ck decimal(19,2), @tarj decimal(19,2), @ncr decimal(19,2),

  @otros  decimal(19,2), @credito bit, @total decimal(19,2)



  select @credito = credito, @total = Total

  from factura with (NOLOCK)

  where idfactura = @id



  if @credito = 1 begin

    select '4' as Tipo, @total as Monto

	return 0 

  end



  select @ef = Efectivo, @ck = Cheque, @tarj = Tarjeta, @ncr = 0, @otros = Otros 

  from facturaCobro fc with (NOLOCK) 

  where fc.IdFactura = @id 



  insert into @result values ('1', @ef), ('2', @ck), ('3',@tarj), ('7',@ncr),('8',@otros)



  select * from @result where monto > 0   


GO
