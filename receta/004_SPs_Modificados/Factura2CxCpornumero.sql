


CREATE OR ALTER PROCEDURE [dbo].[Factura2CxCpornumero](@Factura varchar(16)) AS

 

declare

  @TipoDoc varchar(16),

  @idFactura uniqueidentifier



Set @idFactura = (Select top 1 idFactura from factura where Factura = @Factura)



set @TipoDoc = 'FT' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'



update factura set credito = 1 where credito = 0 and idfactura = @idFactura and cancelado = 0



insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Condicion, Vencimiento, idMoneda, Tasa, idClienteObra, ClienteObra)

  select 

    f.idFactura,

    f.Factura,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    f.Total,

    f.Fecha,

    'FACTURA CREDITO '+f.factura,

    -1, --idcxcTipo

    0, --esCredito

    0, --cancelado

    f.idFactura,

    f.usuario,

    f.Condicion,

    f.fecha + condicion,

    f.idmoneda,

    f.Tasa,

    f.idClienteObra,

    co.ClienteObra 

  from

    factura f left join ClienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

  where 

    f.idfactura = @idFactura and f.Credito = 1 and cancelado = 0

  

RETURN @@Error




GO
