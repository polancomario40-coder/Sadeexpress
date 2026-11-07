

CREATE OR ALTER PROCEDURE svFacturaPag2CxC(@idFactura uniqueidentifier) AS

  

declare

  @TipoDoc varchar(16)



set @TipoDoc = 'FT' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'



insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, Condicion, Vencimiento)

  select 

    fp.idFacturaPag,

    f.Factura +'-'+ fp.FacturaPag,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    fp.Monto,

    f.Fecha,

    'FACTURA CREDITO ' + f.factura,

    -1, --idcxcTipo

    0, --esCredito

    0, --cancelado

    fp.idFactura,

    f.usuario,

    0.00,

    f.Condicion,  --plazo antes de iniciar el calculo de mora

    fp.Fecha

  from

    factura f

    join facturaPag fp on fp.idFactura = f.idFactura

  where 

    f.idfactura = @idFactura 

    and f.Credito = 1

  



RETURN @@Error
GO
