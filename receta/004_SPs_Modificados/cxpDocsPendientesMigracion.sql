CREATE OR ALTER PROCEDURE [dbo].[cxpDocsPendientesMigracion]

 @final datetime

as

declare

 @ident int, 

 @persize int,

 @Vencimiento bit



--set @final = '08/31/2008'

set @persize = 30

set @Vencimiento = 0

set @ident = 0



--exec cxpAgingVencimiento @final, 0, @perSize, @Vencimiento



declare @ents table (

  idSuplidor int ,

  idMoneda int, 

  Nombre varchar(100), 

  MontoNoDistr decimal(19,2),

  Balance decimal(19,2),

  TipoSuplidor varchar(100)

)



declare @mons table (

  idMoneda int,

  Balance decimal(19,2))

declare @tiposup table (

 idMoneda int,

 TipoSuplidor varchar(100),

 Balance decimal(19,2))



select 	t.idSuplidor, 

	t.idMoneda,

	m.Moneda,

	t.idTrans,

	t.IdDocumento,

	t.CompFiscal, 

	Dias = case @Vencimiento when 1 then datediff(day, isnull(t.Vencimiento,Fecha), @final) else datediff(day, t.Fecha, @final) end, 

	t.Referencia as Factura, 

	IDRow = idDocumento,

	t.Fecha,

	isnull(t.Vencimiento, t.fecha) as Vencimiento, 

	t.FechaEmision, 

	t.Total ,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

                                 and d.fecha <= @final

				 and s.MostrarEnCXP = 1),0.00)

into #tempcxp

from cxpDocumentos t join Moneda m on t.idMoneda = m.idMoneda

  join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where dbo.IncluirPorVencimiento(t.Fecha, t.Vencimiento, @Vencimiento, @final) = 1 

      and MostrarEnCXP = 1  

      and t.Status <> 'C' 

      and (@idEnt = 0 or t.idSuplidor = @idEnt)

	and tt.DebCre = 2 

	and t.Total <> isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and d.fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0) 



insert into @ents (idSuplidor, idMoneda, Nombre, TipoSuplidor) 

select distinct 

	t.idSuplidor, 

	t.idMoneda, 

	e.Nombre,

	isnull(ts.Descripcion,'TIPO DE SUPLIDOR NO DEFINIDO') as Descripcion 

from #tempcxp t join cxpSuplidores e

  on t.idSuplidor = e.idSuplidor

left join cxpTiposSuplidor ts on e.TipoSuplidor = ts.TipoSuplidor



update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(d.Total - d.Pagado) 

				  from #tempcxp d 

				  where d.idSuplidor = t.idSuplidor and d.idMoneda = t.idMoneda) - dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final)

from @ents t



insert into @mons (idMoneda, Balance)

select  idMoneda,

	sum(balance)

from @ents

group by idMoneda



insert into @tiposup (idMoneda, TipoSuplidor, Balance)

select  idMoneda,

	TipoSuplidor,

	sum(balance)

from @ents

group by idMoneda, TipoSuplidor



select 	

	t.Moneda, 		

	e.idSuplidor,

	e.Nombre,	

	d.RNC,

	NCF = d.CompFiscal,		

	t.Factura, 

	t.Fecha,

	t.Total,

	t.Pagado,

	BalanceDoc = t.Total - t.Pagado,

	ITBIS = dbo.cxpTotalITBISDoc(t.idDocumento), 

	BalanceNeto = (t.Total - t.Pagado) - (dbo.cxpTotalITBISDoc(t.idDocumento) - (((dbo.cxpTotalITBISDoc(t.idDocumento) / t.Total))* t.Pagado)),

	d.Tasa 

from #tempcxp t join @ents e 

  on t.idSuplidor = e.idSuplidor and t.idMoneda = e.idMoneda

  join cxpDocumentos d on t.idDocumento = d.idDocumento   

 order by t.Moneda, e.Nombre , t.fecha, t.Factura 



drop table #tempcxp

return 0


GO
