



CREATE OR ALTER PROCEDURE [dbo].[cxcEstadoCuentaCobros](@idcliente INT)   

as  

declare  

  @Fecha datetime,  

  @idMonedaLocal int  

  

Set @idMonedaLocal = (Select top 1 idmoneda from moneda where cursolegal = 1)  

Set @Fecha = round(convert(float,getdate()),0,1)  



create table #tempec   

 (Linea int not null identity(1,1),  

  Tipo varchar(20),  

  idcliente int,

  cliente VARCHAR(50),

  idCXC uniqueidentifier,   

  Referencia varchar(20),  

  Fecha datetime,  

  Vencimiento DateTime,

  Valor decimal(19,2),  

  Pagado decimal(19,2),  

  NCF varchar(19), 

  idMoneda int)  

  

insert into #tempec (Tipo, idcliente, cliente,  idCXC, Referencia, Fecha, Vencimiento, Valor, Pagado, idMoneda, NCF)  

select  c.idTipoDocumento, 

		c.idCliente,

		c.Cliente,   

		c.idCXC,  

        c.CXC,   

        c.Fecha,   

        c.Vencimiento,

		c.Valor,   

		Pagado = dbo.cxcBalanceDocumento(c.idCXC, GETDATE(), null),  

        c.idMoneda  ,

        c.CompFiscal        

  from cxc c  

  where c.esCredito = 0  

        and c.Cancelado = 0 

        and c.Fecha <=  GETDATE()     

        AND c.idCliente = @idcliente  

                

select   

 t.Linea,  

 t.Tipo, 

 t.idcliente,

 t.cliente, 

 t.idCXC,   

 t.Referencia,  

 t.Fecha,  

 t.Vencimiento,

 diasVencido = (DATEDIFF(DAY,isnull(t.Vencimiento,t.Fecha),GETDATE())),

 dbo.ConvertMoneda(t.Valor , t.idMoneda, @idMonedaLocal , @Fecha, Null) as Valor,   

 t.Valor as ValorReal,  

 dbo.ConvertMoneda(t.Pagado, t.idMoneda, @idMonedaLocal , @Fecha, Null) as Pagado,  

 t.Pagado as PagadoReal ,  

 t.idMoneda,  

 Pendiente = dbo.ConvertMoneda((t.Valor - t.Pagado), t.idMoneda, @idMonedaLocal , @Fecha, Null),  

 PendienteReal = (t.Valor - t.Pagado),  

 m.Moneda  ,

 t.NCF 

from   

  #tempec t  

  join Moneda m on t.idMoneda = m.idMoneda  

  Cross Join Configuracion c  

where   

  (t.Valor - t.Pagado) <> 0  

order by   

  t.Fecha,

  t.Referencia

  

drop table #tempec   



return 0




GO
