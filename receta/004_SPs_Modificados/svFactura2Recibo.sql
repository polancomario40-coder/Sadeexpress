--select * from Recibo r

--join recibodet rd on r.idRecibo=rd.idRecibo







CREATE OR ALTER PROCEDURE [dbo].[svFactura2Recibo](@idFactura uniqueidentifier,@Monto decimal(19,2),@idforma varchar(20) ) AS

  

--declare

--@idFactura uniqueidentifier

--,@Monto decimal(19,2)

--,@idforma varchar(20)

--,@Recibo int



--Set @idFactura= 'B2C91846-77CD-425A-938A-02C933F18E55'

--set @Monto = 350

--set @idforma ='Efectivo'

--set @Recibo=1670







Insert into Recibo(idRecibo,Recibo,idCliente, Cliente,esCxc,idEmpleado,Fecha,valor,Cancelado,Concepto

					,idCompania,Usuario,idPagoForma,idReciboTipo,idMoneda,tasa,idSucursal)





  select 

    newid(),

    

	1771, --dbo.fGetNextCounterINT('Recibo'),

 

    f.idCliente,

    f.Cliente,

	0,f.idEmpleado,convert(datetime,CONVERT(varchar(10), GETDATE(), 103),103)

	,@Monto,0,'Pago a Factura#'+' '+f.Factura,--'Pago a Factura#'+' '+f.Factura,

    1,f.usuario,@idforma,'CxC',1,f.tasa,f.idAlmacen

   

  from

    factura f

    

  where 

    f.idfactura = @idFactura 

    and f.Credito = 1





RETURN @@Error


GO
