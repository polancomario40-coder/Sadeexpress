CREATE OR ALTER PROCEDURE [dbo].[cxcListaClientesDepurar]  --cxcListaClientesDepurar '02/01/2011'

 @fecha datetime   

as

  

 declare @ident int,     

   @persize int,    

   @idVend int,  

   @Vencimiento Bit  

   

 declare @aging table (

	[idAgingCXC] [uniqueidentifier] NOT NULL,

--	[Fecha] [datetime] NOT NULL,

	[codigo] [int] NOT NULL ,

	[Nombre] [varchar](100) NULL ,	

	Cedula_RNC varchar(20),

	Direccion varchar(200),

	Telefono1 varchar(20),

	Telefono2 varchar(20),

	MontoAprobado [decimal](19, 2) NOT NULL,

	[Status] varchar(50), 

	Balance decimal(19,2),

	Atraso decimal(19,2), 

	Apertura datetime,

	UltimoPago datetime)

     

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

	 -- into     

		--#tempcxp  

	  from     

		CXC t     

		join Moneda m on t.idMoneda = m.idMoneda    

		right join Cliente e on t.idCliente = e.idCliente    

	    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

	    right join ClienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

		right join svGrupo gc on e.Grupo = gc.idGrupo   

		right join svEmpleado emp on e.idEmpleado = emp.idEmpleado   

	  -- join Cliente e on t.idCliente = e.idCliente    

	  where         

		t.EsCredito = 0    

		and t.fecha <= @fecha     

		and t.cancelado = 0    

	      

	  insert into @tempcxp    

	  select   

		ct.ClienteTipo,  

	    isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente ,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo as ClienteGrupo, 

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

		left join Clientegrupo cg on e.idClienteGrupo = cg.idClienteGrupo

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

 (idAgingCXC, codigo, Nombre, Cedula_RNC,	

  Direccion, Telefono1, Telefono2, MontoAprobado,

  [Status], Balance, Atraso, Apertura, UltimoPago)  

select        

   newid() as idAgingCXC,  

   --@fecha as Fecha,      

   x.idcliente as Codigo,    

   x.Nombre,     

   e.RNC_Cedula,

   e.Direccion,

   e.Telefono,

   e.Fax, 

   e.LimiteCredito as MontoAprobado,

   cst.ClienteStatus as Estado, 

   Balance = sum((Total - Pagado) * Tasa),    

   Vencido = sum(case when @Fecha > Vencimiento then 0.00 else (Total - Pagado) * Tasa end), 

   e.FechaActivo as Apertura,    

   UltimoPago = (select top 1 Fecha from recibo where idCliente = x.idCliente and Cancelado = 0 order by fecha, recibo desc)

  from     

	@tempcxp x join Cliente e on x.idCLiente = e.idCliente 

	join ClienteStatus cst on e.idClienteStatus = cst.idClienteStatus 

  where    

	x.Total <> x.pagado     

  group by x.idCliente, x.Nombre, e.RNC_Cedula, e.Direccion, e.Telefono, e.Fax, e.LimiteCredito, cst.ClienteStatus, e.FechaActivo 





select * from @aging

order by Nombre 


GO
