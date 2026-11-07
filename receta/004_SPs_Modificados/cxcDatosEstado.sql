



CREATE OR ALTER PROCEDURE [dbo].[cxcDatosEstado]  ---19982,'20181231','00000893'

 --declare

 @idCli int,   

 @Fec DATETIME,

 @idDir varchar(30) = null

 as  

 --set @idcli=19982

 --set @fec='20181231'

 --set @idDir='00000893'

declare   

 @Bal decimal(19,2) ,  

 @PorDist decimal(19,2),  

 @FechaUltCargo datetime ,  

 @RefUltCargo varchar(20) ,    

 @TipoUltCargo varchar(10) ,  

 @MtoUltCargo decimal(19,2) ,  

 @FechaUltPago datetime ,  

 @RefUltPago varchar(20) ,   

 @MtoUltPago decimal(19,2),   

 @Abono decimal(19,2)

--as  

 

 set @Bal = dbo.cxcBalanceCliente(@idCli, @Fec)  

  

 set @PorDist = dbo.cxcCreditoporDist(@idCli, @Fec)  

  

 select top 1

		 	   

		 @FechaUltCargo = f.Fecha,  

		 @RefUltCargo = f.CXC,  

		 @TipoUltCargo = f.idTipoDocumento,  

		 @MtoUltCargo = f.Valor  

  from CXC f   

where  f.idCliente = @idCli and f.Fecha <= @Fec  

 and f.esCredito = 0

 and (@idDir is null or f.idClienteObra = @idDir)   

 order by f.fecha desc, f.CXC desc   

  

 select top 1   

		 @FechaUltPago = r.Fecha,  

		 @RefUltPago = r.CXC,  

		 @MtoUltPago = r.Valor  

  from CXC r   

where  EsCredito = 1  

 and r.idCliente = @idCli   

 and r.Fecha <= @Fec   

 order by fecha desc, CXC desc   



 select 

 @Abono= sum(r.Valor)

   from CXC r   

where  EsCredito = 1  

 and r.idCliente = @idCli   

 and r.Fecha <= @Fec --and (@idDir is null or r.CxC = @idDir)   

 --order by fecha desc, CXC desc   

  

select  @idCli as idCliente,

		@Bal as Balance,   

        @PorDist as PorDist,  

		@FechaUltCargo as FecUltCargo,  

		@RefUltCargo as RefUltCargo,    

		@TipoUltCargo as TipoUltCargo,   

		@MtoUltCargo as MtoUltCargo,  

		@FechaUltPago as FecUltPago,  

		@RefUltPago as RefUltPago,   

		@MtoUltPago as MtoUltPago,  

		@Abono as Abono 

return 0




GO
