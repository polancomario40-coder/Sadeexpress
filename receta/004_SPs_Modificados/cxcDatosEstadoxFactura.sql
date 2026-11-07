



CREATE OR ALTER PROCEDURE [dbo].[cxcDatosEstadoxFactura] 

 --declare

 @idCli int,   

 @Fec DATETIME,

 --@idDir varchar(30) = null,

 @idFactura uniqueidentifier

 as  

 --set @idcli=137234

 --set @fec='2024-08-20 00:00:00.000'

 --set @idFactura='1AA303A1-B5DA-4931-BAFE-894B0B3FA10E'



declare   

 @Bal decimal(19,2) ,  

 @Abono decimal(19,2)

 



 

  select 

   @Abono= sum(rd.Valor),

   @Bal =r.valor-sum(rd.valor)

   from CXC r   

   left join cxcdet rd on rd.idCxCDebito=r.idCxc

where   

 r.idCliente = @idCli   

 and r.Fecha <= @Fec and rd.idCxCDebito = @idFactura 

 group by r.valor



 if @Bal is null

  begin

 

  select 

   

   @Bal =sum(r.valor)

   from CXC r   



where   

 r.idCliente = @idCli   

 and r.Fecha <= @Fec and r.idCxC = @idFactura 

 end



 



select  @idCli as idCliente,

		@Bal as Balance,          

		@Abono as Abono

		

return 0




GO
