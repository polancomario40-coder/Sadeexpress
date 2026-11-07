

CREATE OR ALTER PROCEDURE [dbo].[cxcAgingCtasXCobrar] 

 @final datetime,         

 @ident int,         

 @persize int = 15,        

 @idVend int,      

 @Vencimiento Bit,    

 @SoloVencido bit,

 @usar_sc bit

as       

  

  declare @TotalCli int        

  select          

    ct.ClienteTipo,      

    e.idCliente,        

    e.Cliente as Nombre,        

    e.Contacto,        

    e.telefono,      

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,        

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE IsNull(t.Vencimiento, t.Fecha) END), @final),        

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,         

    IDRow = t.idCXC,        

    t.Fecha,       

    t.Vencimiento,       

    t.Valor as Total,        

    Pagado = (isnull(        

   (select sum(d.TotalAplicado)        

          from         

              cxc c         

              join cxcDet d on c.idCXC = d.idCXC        

          where         

              d.fecha <= @final        

     and c.cancelado = 0      

              and d.idCXCDebito = t.idCXC        

          ),0)),    

    cg.ClienteGrupo As Categoria,    

    em.Empleado As Vendedor,

    case @usar_sc when 1 then t.idClienteObra else '' end as IdClienteObra,

    case @usar_sc when 1 then co.ClienteObra else '' end as ClienteObra

  into         

    #tempcxp      

  from         

    CXC t         

    join Moneda m on t.idMoneda = m.idMoneda        

    right join Cliente e on t.idCliente = e.idCliente        

    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo      

    left join svGrupo g on e.grupo = g.idGrupo       

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)    

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)    

    left join ClienteObra co on e.idCliente = co.idCliente and t.idClienteObra = co.idClienteObra 

  where         

    (@idEnt = 0 or t.idCliente = @idEnt)         

    and (@idVend = 0 or e.idEmpleado = @idVend)         

    and  t.EsCredito = 0        

    and  (Case when @SoloVencido = 1 then t.Vencimiento else t.fecha end)  <=  @final    

    and t.cancelado = 0        

  insert into #tempcxp        

  select       

    ct.ClienteTipo,      

    e.idCliente,        

    e.Cliente as Nombre,        

    e.Contacto,        

    e.telefono,       

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,       

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    Dias = datediff(day, t.Fecha, @final),         

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,         

    IDRow = t.idCXC,        

    t.Fecha,        

    t.Vencimiento,      

    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,        

    Pagado = 0.00,    

    cg.ClienteGrupo As Categoria,    

    em.Empleado As Vendedor,

    '',

    ''

  from         

    cxc t         

    left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final         

    join Moneda m on t.idMoneda = m.idMoneda        

    join Cliente e on t.idCliente = e.idCliente        

    join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo       

    left join svGrupo g on e.grupo = g.idGrupo      

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)    

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)    

  where         

    (@idEnt = 0 or t.idCliente = @idEnt)         

    and (@idVend = 0 or e.idEmpleado = @idVend)         

    and  t.EsCredito = 1        

    and t.fecha <= @final          

    and t.cancelado = 0        

  group by         

    ct.ClienteTipo,       

    e.idCliente,        

    e.Cliente ,        

    e.Contacto,        

    e.telefono,      

    g.grupo,        

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    datediff(day, t.Fecha, @final),        

    t.idTipoDocumento,          

    t.CXC,         

    t.idCXC,        

    t.Fecha,        

    t.Vencimiento,      

    t.Valor,    

    cg.ClienteGrupo,    

    em.Empleado    

  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)      

--------        

select      

  idMoneda,         

  idCliente,        

  sum(Valor) - sum(Aplicado) as PorDist          

into        

  #TmpDist        

from (        

  SELECT         

    c.idMoneda,          

    c.idCliente,        

    c.Valor,        

 SUM(isnull((cd.Valor * cd.tasa) / c.tasa,0.00)) AS Aplicado        

  FROM                 

    dbo.Cxc c LEFT JOIN        

    dbo.CxcDet cd ON c.idCxc = cd.idCxc        

  WHERE             

    (c.esCredito = 1)        

    and (c.fecha <= @Final)        

   and (@idEnt = 0 or c.idCliente = @idEnt)         

    and (c.Cancelado = 0)        

    and ((cd.fecha is null) or (cd.fecha <= @Final))        

  GROUP BY         

    c.idMoneda,      

    c.idCliente,         

    c.idCxc,        

    c.Valor) Datos        

Group by        

  Datos.idMoneda,      

  Datos.idCliente        

Order by        

  Datos.idMoneda,      

  Datos.idCliente        

Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)        



select        

   c.Compania,        

   x.ClienteTipo,       

   x.idMoneda,        

   x.Moneda,        

   x.idcliente,        

   x.Nombre,        

   x.idClienteObra,

   x.ClienteObra, 

   idCXC,         

   x.Contacto,        

   x.Telefono,      

   x.Grupo,        

   Dias,         

   NoVenc = case when Floor(dias / @persize) <= 0 then Total - Pagado else $0 end,        

   A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,        

   A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,        

   A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,        

   AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,        

   Factura,         

   IDRow,        

   Fecha,        

   Vencimiento,      

   Total,        

   Pagado,        

   Categoria,    

   Vendedor,    

   d.PorDist,        

   CASE WHEN @Vencimiento = 0 THEN       

     ('0 a ' + convert(varchar(10), @persize))       

   ELSE       

     ('No Vencido')       

   END as Preriodo1,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))       

   ELSE      

     ('1 a ' + convert(varchar(10), @persize))         

   END as Preriodo2,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))       

   ELSE      

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))       

   END as Preriodo3,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4))       

   ELSE      

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))       

   END as Preriodo4,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*4+1) + ' o Mas')       

   ELSE      

     (convert(varchar(10), @persize*3+1) + ' a Mas')      

   END as Preriodo5,      

   TotalClientes = @TotalCli,      

   BalanceObra =   isnull((select sum(Total - Pagado) 

							from #tempcxp where idCliente = x.idCliente and idClienteObra= idClienteObra),0.00), 

   BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp         

      where idCliente = x.idCliente),0.00), -- - d.PorDist,        

   BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) --         

  --        isnull((select sum(porDist) from #tmpDist) ,0.00)          

  from         

    #tempcxp x       

    left join #TmpDist d on x.idcliente = d.idcliente and x.idMoneda = d.idmoneda      

    cross join configuracion c        

  where        

    x.Total <> x.pagado         

  order by         

    x.idMoneda,       

	x.ClienteTipo,    	    

    x.Nombre,         

    x.idCliente,

    x.ClienteObra, 

    x.idClienteObra, 

    x.Fecha        

drop table #tempcxp        

drop table #tmpDist        

return 0    

    

    

  


GO
