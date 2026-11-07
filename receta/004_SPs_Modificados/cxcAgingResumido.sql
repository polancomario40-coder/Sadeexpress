

CREATE OR ALTER PROCEDURE [dbo].[cxcAgingResumido] 

 @fecha datetime   

as     

  

 declare @ident int,     

   @persize int,    

   @idVend int,  

   @Vencimiento Bit  

   

 declare @aging table (	

	[idAgingCXC] [uniqueidentifier] NOT NULL,

	[Fecha] [datetime] NOT NULL,

	[idVendedor] [int]  NULL,

	[Vendedor] [varchar](100) NULL,

	[idCliente] [int] NOT NULL,

	[Cliente] [varchar](100) NULL,

	Grupo varchar(100) NULL, 

	[De1a30] [decimal](19, 2) NOT NULL,

	[De31a45] [decimal](19, 2) NOT NULL,

	[De46a60] [decimal](19, 2) NOT NULL,

	[De61a90] [decimal](19, 2) NOT NULL,

	[De91oMas] [decimal](19, 2) NOT NULL)

     

 select @ident = 0, @persize = 30, @idVend = 0, @Vencimiento = 0  

  

 declare @TotalCli int    

 

 declare @tempcxp table (

  ClienteTipo varchar(100),

  Grupo varchar(100),

  idCliente int,

  Nombre varchar(100),

  Categoria varchar(100), 

  idVendedor int,

  Vendedor varchar(100),

  Contacto varchar(100),

  Telefono varchar(20),

  idMoneda int,

  Moneda varchar(20),

  idCXC uniqueidentifier,

  Dias int,

  Factura varchar(20),

  IDRow uniqueidentifier,

  Fecha datetime,

  Vencimiento datetime,

  Total decimal(19,2),

  Tasa decimal(19,4), 

  Pagado decimal(19,2)

 )

   

insert into @tempcxp

select      

		ct.ClienteTipo,  

		isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.Empleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,         

		Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE t.Vencimiento END), @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,   

		t.Vencimiento,   

		t.Valor as Total,    

		t.Tasa,   

		Pagado = (isnull(    

	   (select sum(d.TotalAplicado)    

			  from     

				  cxc c     

				  join cxcDet d on c.idCXC = d.idCXC    

			  where     

				  d.fecha <= @fecha     

		 and c.cancelado = 0  

				  and d.idCXCDebito = t.idCXC    

			  ),0))    

  

	  from     

		CXC t     

		join Moneda m on t.idMoneda = m.idMoneda    

		right join Cliente e on t.idCliente = e.idCliente    

	 right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

		right join svGrupo gc on e.Grupo = gc.idGrupo   

		right join ClienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

		right join svEmpleado emp on e.idEmpleado = emp.idEmpleado   	  

	  where         

		t.EsCredito = 0    

		and t.fecha <= @fecha     

		and t.cancelado = 0    

	      

	  insert into @tempcxp    

	  select   

		ct.ClienteTipo,  

		isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.EMpleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		Dias = datediff(day, t.Fecha, @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		-(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,    

		t.Tasa,   

		Pagado = 0.00    

	  from     

		cxc t     

		left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @Fecha   

		join Moneda m on t.idMoneda = m.idMoneda    

		join Cliente e on t.idCliente = e.idCliente    

		join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

		LEFT JOIN clienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

	 left join svGrupo gc on e.Grupo = gc.idGrupo   

	 left join svEmpleado emp on e.idEmpleado = emp.idEmpleado   

	  where     

		t.EsCredito = 1    

		and t.fecha <= @fecha  

		and t.cancelado = 0    

	  group by     

		ct.ClienteTipo,   

		gc.Grupo,   

		e.idCliente,    

		e.Cliente ,    

		cg.ClienteGrupo, 

		e.idEmpleado,  

		emp.Empleado,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		datediff(day, t.Fecha, @Fecha),    

		t.idTipoDocumento,      

		t.CXC,     

		t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		t.Valor  ,  

		t.Tasa   

	  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)  

 

insert into @aging

 (idAgingCXC, Fecha, idVendedor, Vendedor, idCliente, Cliente, Grupo, de1a30, de31a45, de46a60, de61a90, De91oMas)  

select         

   newid() as idAgingCXC,  

   @fecha as Fecha,   

   x.idVendedor,  

   x.Vendedor,   

   x.idcliente,    

   x.Nombre,  

   x.Categoria,         

   De1A30 = isnull(sum(case when dias between 0 and 30 then (Total - Pagado) * Tasa else $0 end),0),    

   De31A45 = isnull(sum(case when dias between 31 and 45 then (Total - Pagado) * Tasa else $0 end),0),    

   De46A60 = isnull(sum(case when dias between 46 and 60 then (Total - Pagado) * Tasa else $0 end),0),    

   De61A90 = isnull(sum(case when dias between 61 and 90 then (Total - Pagado) * Tasa else $0 end),0),    

   A91oMas = isnull(sum(case when dias > 90 then Total - Pagado else $0 end  * Tasa),0)

  from     

	@tempcxp x      

  where    

	x.Total <> x.pagado     

  group by x.idVendedor, x.Vendedor, x.idCLiente, x.Nombre, x.Categoria



select a.idAgingCXC, 

a.Fecha, 

a.idCliente, 

a.Cliente, 

a.de1a30, 

a.de31a45, 

a.de46a60, 

a.de61a90, 

a.De91oMas,

(de1a30+de31a45+de46a60+de61a90+De91oMas) BalanceTotal,

idNota,

Nota,

FechaAgenda,

Isnull(Agendar, 0)                       Agendar,

--AGENDADO PARA EL DIA Y LOS NO AGENDADOS PARA EL DIA DE HOY ORDENADOS POR DIA DE VENCIMIENTO

CASE WHEN convert(varchar(10),fechaagenda,105) = convert(varchar(10),GETDATE(),105) THEN 1 ELSE 2 END HoyNoAgendado,

--NO AGENDADOS Y AGENDADOS PARA OTRO DIA

CASE WHEN ((convert(varchar(10),fechaagenda,105) != convert(varchar(10),GETDATE(),105)) AND (Isnull(Agendar, 0) = 1)) THEN 2 ELSE 0 END AgendadoOtroDia

 

from @aging a LEFT JOIN cxcNotasGestionCobros b

                  ON a.idCliente = b.idCliente

                     AND isnull(b.Cerrada,0) = 0

                     AND isnull(b.Agendar,0) = 1

--ORDER BY   15,16,b.FechaAgenda                     

order by cliente 



return 0




GO
