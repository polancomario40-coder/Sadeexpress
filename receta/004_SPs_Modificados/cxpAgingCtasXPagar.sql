











CREATE OR ALTER PROCEDURE [dbo].[cxpAgingCtasXPagar] --'12/31/2005',0,30

 @final datetime, 

 @ident int, 

 @persize int = 30

as

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

	Dias = datediff(day, t.Fecha, @final), 

	t.Referencia as Factura, 

	IDRow = idDocumento,

	t.Fecha,

	t.Total ,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0)

into #tempcxp

from cxpDocumentos t join Moneda m on t.idMoneda = m.idMoneda

  join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where t.fecha <= @final  	

      and MostrarEnCXP = 1  

      and t.Status <> 'C' 

      and (@idEnt = 0 or t.idSuplidor = @idEnt)

	and tt.DebCre = 2 

	and t.Total <> isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0) 

--order by t.idMoneda, t.idSuplidor, t.Fecha

insert into @ents (idSuplidor, idMoneda, Nombre, TipoSuplidor) --, MontoNoDistr, Balance)

select distinct 

	t.idSuplidor, 

	t.idMoneda, 

	e.Nombre,

	isnull(ts.Descripcion,'TIPO DE SUPLIDOR NO DEFINIDO') as Descripcion /*, 

	0.0, --dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

	(select sum(case tt.debcre when 1 then d.Total else -d.Total end) 

         from cxpDocumentos d join Tipostrans tt 

   		on d.idTrans = tt.idTrans and tt.Sistema = 'CXP'

	      where d.idSuplidor = t.idSuplidor

		    and d.idMoneda = t.idMoneda

		    and d.Fecha <= @final

		    and d.Status <> 'C') */

from #tempcxp t join cxpSuplidores e

  on t.idSuplidor = e.idSuplidor

left join cxpTiposSuplidor ts on e.TipoSuplidor = ts.TipoSuplidor



/*

update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(case tt.debcre when 2 then d.Total else -d.Total end) 

         from cxpDocumentos d join Tipostrans tt 

   		on d.idTrans = tt.idTrans and tt.Sistema = 'CXP'

	      where d.idSuplidor = t.idSuplidor

		    and d.idMoneda = t.idMoneda

		    and d.MostrarEnCXP = 1

		    and d.Fecha <= @final

		    and (isnull(d.Status,'A') <> 'C' or (isnull(d.Status,'A') = 'C' and isnull(d.FechaStatus,d.fecha) > @final))

		    --and not ((d.status = 'C' and tt.debcre = 2)

		 )

from @ents t

*/



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



select 	e.idSuplidor,

	e.TipoSuplidor, 

	e.Nombre,

	t.idMoneda, 

	t.Moneda, 

	t.idTrans,

	t.IdDocumento,

	t.Dias, 

	NoVenc = case when dias between 00 and 30 then Total - Pagado else $0 end,

	A30    = case when dias between 31 and 60 then Total - Pagado else $0 end,

	A60    = case when dias between 61 and 90 then Total - Pagado else $0 end,

	A90    = case when dias > 90 then Total - Pagado else $0 end,

	t.Factura, 

	t.IDRow,

	t.Fecha,

	t.Total,

	t.Pagado,

	Creditos = e.MontoNoDistr,

	Balance = e.Balance,

	m.Balance as BalanceXMoneda,

	ts.Balance as BalanceXTipo

from #tempcxp t join @ents e 

  on t.idSuplidor = e.idSuplidor and t.idMoneda = e.idMoneda

  join @mons m on t.idMoneda = m.idMoneda

  join @tiposup ts on e.TipoSuplidor = ts.TipoSuplidor and t.idMoneda = ts.idMoneda 

  order by t.Moneda, e.TipoSuplidor, e.Nombre , t.fecha, t.Factura 

drop table #tempcxp

return 0




GO
