

------------ final de:PrdcRsTickets ------------



------------ inicio de:Recibo2CxC ------------



CREATE OR ALTER PROCEDURE [dbo].[Recibo2CxC](@idRecibo uniqueidentifier) AS

declare

  @TipoDoc varchar(16)

set @TipoDoc = 'RC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'

if exists (select 1 from cxc where idcxc = @idRecibo)

begin

  if exists (select 1 from cxcdet where idcxc = @idrecibo)

   -- return -1

  delete from cxc where idcxc = @idRecibo

end

insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, Tasa, idmoneda)

  select 

    f.idRecibo,

    f.Recibo,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    f.TotalNeto,

    f.Fecha,

    f.Concepto,

    -2, --idcxcTipo

    1, --esCredito

    0, --cancelado

    f.idRecibo,

    f.usuario,

    0.00,

    f.tasa,

    f.idmoneda    

  from

    Recibo f

  where 

    f.idRecibo = @idRecibo and f.esCxc = 1    

RETURN @@Error




GO
