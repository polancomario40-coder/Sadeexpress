   

CREATE OR ALTER PROCEDURE [dbo].[Factura2NCInterna](@idFactura uniqueidentifier) AS  

    

declare  

  @TipoDoc varchar(16),  

  @error int  

  

set @Error = 0  

set @TipoDoc = 'NC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'  

  

  

  

--IF exists (select top 1 1 from cxc where idcxc = @idFactura) BEGIN  

  

--  if exists ( select top 1 1   

--   from cxc c join cxcdet cd on c.idcxc = cd.idcxc  

--  where cd.idcxcdebito = @idFactura and c.cancelado = 0)  begin  

--    RETURN -1  

--  end  

  

--  delete  

--    cxc  

--  from   

--    cxc c   

--    join factura f on c.idcxc = f.idfactura  

--  where  

--    c.idcxc = @idFactura and f.Credito = 0  

  

--  update   

--    cxc  

--  set  

--    idCliente = f.idCliente,  

--    Cliente   = f.Cliente,  

--    fecha     = f.fecha,  

--    valor     = f.Total,  

--    idMoneda  = f.idMoneda,  

--    tasa      = f.tasa,      

--    idDocumento = f.factura,  

--    concepto  = 'FACTURA CREDITO '+f.factura,  

--    usuario   = f.usuario,  

--    condicion = f.condicion,  

--    vencimiento = f.fecha + f.condicion,  

--    CompFiscal = f.CompFiscal,

--    idClienteObra=f.idClienteObra,

--    ClienteObra = co.ClienteObra 

--  from   

--    cxc c   

--    join factura f on c.idcxc = f.idfactura  

--    left join clienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

--  where  

--    c.idcxc = @idFactura and f.Credito = 1      

  

--  Set @Error =  @@Error  

--  if @Error <> 0 begin  

--    RETURN @Error  

--  end  

  

--END ELSE BEGIN  

  select * from cxc where cxc='00000197'

  select * from CxcTipo

  Insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha,

   concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, 

   --Condicion, Vencimiento, CompFiscal, 

   idMoneda, Tasa)  

  select   

    newid(),  --f.idFactura,  

    f.Factura,  

    f.idCliente,  

    f.Cliente,  

    @TipoDoc,  

    f.Total,  

    convert(datetime,CONVERT(varchar(10), GETDATE(), 103),103), --f.Fecha,  

    'FACTURA  '+f.factura,  

    3, --idcxcTipo  

    1, --esCredito  

    0, --cancelado  

    f.idFactura,  

    f.usuario,  

    0.00,  

    --f.Condicion,  

    --f.Fecha + f.Condicion,  

    --f.CompFiscal,  

    f.idMoneda,  

    f.tasa

   

  from  

    factura f   

  where   

    f.idfactura = @idFactura  

  

  Set @Error =  @@Error  

  if @Error <> 0 begin  

    RETURN @Error  

  end  

    

--END  

  

RETURN @@Error


GO
