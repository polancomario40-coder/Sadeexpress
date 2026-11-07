CREATE OR ALTER PROCEDURE [dbo].[cxcAgingCtasXCobrar2]



 @final datetime, 

 @ident int, 

 @persize int = 15,

 @idVend int

as



declare @TotalCli int



select 	

  e.idCliente,

  e.Cliente as Nombre,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  Dias = datediff(day, t.Fecha, @final), 

  t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura, 

  IDRow = t.idCXC,

  t.Fecha,

  t.Valor as Total,

  Pagado = (isnull(

	(select 

           sum(d.TotalAplicado)

        from 

            cxc c 

            join cxcDet d on c.idCXC = d.idCXC

        where 

            d.fecha <= @final

 	    and c.escredito = 1

	    and c.fecha <= @final

            and d.idCXCDebito = t.idCXC

 	    and c.cancelado = 0

        ),0))

into 

  #tempcxp

from 

  CXC t 

  right join Cliente e on t.idCliente = e.idCliente

-- join Cliente e on t.idCliente = e.idCliente

where 

  (@idEnt = 0 or t.idCliente = @idEnt)	

  and (@idVend = 0 or e.idEmpleado = @idVend)	

  and  t.EsCredito = 0

  and t.fecha <= @final  

  and t.cancelado = 0



insert into #tempcxp

select 	

  e.idCliente,

  e.Cliente as Nombre,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  Dias = datediff(day, t.Fecha, @final), 

  t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura, 

  IDRow = t.idCXC,

  t.Fecha,

  -(t.Valor - isnull(sum(d.Valor),0.00)) as Total,

  Pagado = 0.00

from cxc t left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @Final

  join Cliente e on t.idCliente = e.idCliente

where 

  (@idEnt = 0 or t.idCliente = @idEnt)	

  and (@idVend = 0 or e.idEmpleado = @idVend)	

  and  t.EsCredito = 1

  and t.Cancelado = 0

  and t.fecha <= @final  

group by 

  e.idCliente,

  e.Cliente ,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  datediff(day, t.Fecha, @final),

  t.idTipoDocumento,  

  t.CXC, 

  t.idCXC,

  t.Fecha,

  t.Valor

having t.Valor <> isnull(sum(d.Valor),0.00)





--------



select 

  idCliente,

  sum(Valor) - sum(Aplicado) as PorDist  

into

  #TmpDist

from (

  SELECT     

    c.idCliente,

    c.Valor,

    SUM(isnull(cd.Valor,0.00)) AS Aplicado

  FROM         

    dbo.Cxc c LEFT JOIN

    dbo.CxcDet cd ON c.idCxc = cd.idCxc and cd.fecha <= @final

  WHERE     

    (c.esCredito = 1)

    and (c.fecha <= @Final)

    and (@idEnt = 0 or c.idCliente = @idEnt)	

    and (c.Cancelado = 0)

    --and ((cd.fecha is null) or (cd.fecha <= @Final))

  GROUP BY 

    c.idCliente, 

    c.idCxc,

    c.Valor) Datos

Group by

  Datos.idCliente

Order by

  Datos.idCliente



Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)



select 	c.Compania,

	x.idcliente,

	x.Nombre,

	idCXC, 

  	x.Contacto,

	x.Telefono,

	Dias, 

	NoVenc = case when Floor(dias / @persize) = 0 then Total - Pagado else $0 end,

	A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,

	A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,

	A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,

	AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,

	Factura, 

	IDRow,

	Fecha,

	Total,

	Pagado,

 	d.PorDist,

 	('0 a ' + convert(varchar(10), @persize)) as Preriodo1,

 	(convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2)) as Preriodo2,

	(convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3)) as Preriodo3,

	(convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4)) as Preriodo4,

	(convert(varchar(10), @persize*4+1) + ' o Mas') as Preriodo5,

	TotalClientes = @TotalCli,

	BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp 

				where idCliente = x.idCliente),0.00), -- - d.PorDist,

	BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) -- 

--		      isnull((select sum(porDist) from #tmpDist) ,0.00) 	

from 

  #tempcxp x 

  left join #TmpDist d on x.idcliente = d.idcliente

  cross join configuracion c

where


 x.Total <> x.pagado 

order by 

  x.Nombre, x.Fecha, X.FACTURA





drop table #tempcxp

drop table #tmpDist

return 0


GO
