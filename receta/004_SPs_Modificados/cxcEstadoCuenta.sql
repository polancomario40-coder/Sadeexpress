

CREATE OR ALTER PROCEDURE [dbo].[cxcEstadoCuenta]    

 @ident int,    

 @desde datetime,     

 @final datetime  

as    

create table #tempec    

 (Linea int not null identity(1,1),    

  Tipo varchar(10),     

  idCXC uniqueidentifier,     

  Documento varchar(20),    

  Fecha datetime,    

  Vencimiento DateTime,  

  Debito money,    

  Credito money,    

  NCF varchar(19),  

  idMoneda int,   

  Tasa float,   

  Balance money)    

declare @balinic decimal(19,2)    

  

declare @idMonedaLegal int  

  

Set @idMonedaLegal = (Select top 1 idmoneda from moneda where cursolegal = 1)  

  

select @balinic = dbo.cxcBalanceCliente(@idEnt, dateadd(day, -1, @desde))  

if @balinic <> 0 begin    

  insert into #tempec (Tipo, idCXC, Documento, NCF, Fecha, Debito, Credito, idMoneda, Tasa)     

  values ('B./I.', null,'n/a', 'n/a', dateadd(day, -1, @desde),     

          case when @balinic > 0 then abs(@balinic) else 0.00 end,     

          case when @balinic > 0 then 0.00 else abs(@balinic) end,  

          @idMonedaLegal, 1.00)    

end    

  

  insert into #tempec (Tipo, idCXC,  Documento, NCF, Fecha, Vencimiento, Debito, Credito, idMoneda, Tasa)    

  select      

    r.idTipoDocumento,     

    r.idCXC,    

    r.CXC,    

    r.Compfiscal,  

    r.Fecha,  

    r.Vencimiento,    

    case when r.esCredito = 0 and r.Cancelado = 0 then r.Total else 0.00 end as Debito,    

    case when r.esCredito = 1 and r.Cancelado = 0 then r.Total else 0.00 end as Credito,  

    r.idMoneda,  

    r.Tasa   

  from     

    CXC r      

  where      

    r.idCliente = @idEnt    

    and r.Fecha between @desde and @final    

    and r.Valor <> 0    

  order by     

    r.Fecha,   

    r.Cxc,  

    r.EsCredito    

      

select      

  t.Linea,    

  t.Tipo,     

  t.idCXC,     

  t.Documento,    

  t.NCF,  

  t.Fecha,    

  t.Vencimiento,  

  t.Debito,    

  t.Credito,    

  m.Moneda,   

  t.Tasa,   

  Balance = (select sum((t2.Debito * t2.Tasa) - (t2.Credito * t2.Tasa)) from #tempec t2 where t2.Linea <= t.Linea)  

from     

  #tempec t join moneda m on t.idmoneda = m.idmoneda      

order by     

  t.Linea    

    

drop table #tempec     

return 0  

  

  

  
GO
