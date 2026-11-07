CREATE OR ALTER PROCEDURE svHistoricoCliente 

 @idCliente int, @desde datetime, @hasta datetime

as



declare @datos table 

 ([ID] uniqueidentifier,

  Documento varchar(20),

  Fecha datetime,

  Tipo varchar(16),

  Concepto varchar(200),

  Valor decimal(19,2),

  Tasa decimal(19,2),

  ValorRD as Valor * Tasa

 )

 

 

 insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idFactura,

		Factura,

		Fecha,

		'FACT/CONT.',

		'FACTURA DE CONTADO',

		Total,

		Tasa

 from factura 

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   and Credito = 0 

	   

		

insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idcxc,

		cxc,

		Fecha,

		idTipoDocumento,

		Concepto,

		Total,

		Tasa

 from cxc

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   --and Credito = 0 

	   

insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idRecibo,

		Recibo,

		Fecha,

		'RECIBO ING.',

		Concepto,

		Valor,

		Tasa

 from recibo 

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   and esCXC = 0 

	   --and Credito = 0 

	   

select * from @datos				

order by fecha, tipo, documento



return 


GO
