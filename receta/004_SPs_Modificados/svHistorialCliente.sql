

CREATE OR ALTER PROCEDURE svHistorialCliente

 @desde datetime,

 @hasta datetime,

 @idCliente int

as



declare @tbl table (

 idcxc uniqueidentifier,

 Documento varchar(20),

 Cargo varchar(20),

 Fecha datetime,

 Vence datetime,

 Tipo varchar(10),

 Monto decimal(19,2),

 idMoneda int,

 Credito bit,

 Dias int,

 idCliente int 

)



insert into @tbl 

select	c.idcxc,

		c.cxc,

		c.cxc, 

		c.Fecha,

		c.Vencimiento,

		c.idTipoDocumento,

		c.Valor,

		c.idMoneda,

		0 as Credito,

		null as Dias ,

		c.idCliente 

from cxc c 

where c.cancelado = 0

	  and c.fecha between @desde and @hasta	  

	  and c.escredito = 0

	  and (@idCliente = -1 or c.idCliente = @idCliente)



insert into @tbl 

select	c.idcxc,

		c.cxc,

		c2.cxc, 

		cd.Fecha,

		null,

		c.idTipoDocumento,

		cd.Valor,

		c2.idMoneda,

		1 as Credito,

		Dias = datediff(day, c2.Fecha, cd.Fecha),

		c.idCliente 

from cxc c join cxcdet cd on c.idcxc = cd.idcxc

 join cxc c2 on cd.idcxcdebito = c2.idcxc 

where c.cancelado = 0

	  and cd.fecha between @desde and @hasta	  

	  and c.escredito = 1

	  and c2.cancelado = 0

	  and (@idCliente = -1 or c.idCliente = @idCliente)



select	newid() as id,

		t.idcxc,

		t.Documento,

		t.Cargo,

		t.Fecha,

		t.Vence,

		t.Tipo,

		t.Credito, 		

		m.Moneda,

		cl.idCliente, 

		cl.Cliente,

		cl.LimiteCredito,

		cl.idCondicion,

		TotalCargos = (select sum(Monto) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 0),

		TotalPagos = (select sum(Monto) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 1),

		PromedioDias = (select avg(Dias) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 1),

		Monto = case Credito when 1 then 0 else t.Monto end,

		Rango91 = case when t.Credito = 1 and t.Dias >= 91 then t.Monto else 0 end,

		Rango61 = case when t.Credito = 1 and t.Dias between 61 and 90 then t.Monto else 0 end,

		Rango31 = case when t.Credito = 1 and t.Dias between 31 and 60 then t.Monto else 0 end,

		Rango01 = case when t.Credito = 1 and t.Dias between 01 and 30 then t.Monto else 0 end,

		Rango00 = case when t.Credito = 1 and t.Dias <= 0 then t.Monto else 0 end

from @tbl t join cliente cl on t.idCliente = cl.idCliente join moneda m on t.idmoneda = m.idMoneda

order by cl.Cliente, m.Moneda, t.Cargo, t.Credito, t.fecha, t.Documento



return 0 


GO
