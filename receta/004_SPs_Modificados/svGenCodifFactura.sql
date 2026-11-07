


CREATE OR ALTER PROCEDURE [dbo].[svGenCodifFactura]

  @idFactura uniqueidentifier

as



declare

  @CuentaITBIS varchar(20),

--  @ITBISUS varchar(16),

  @MONEDA_LEGAL int,

  @Tipo Varchar (16),

  @TipoDocumento varchar(16),

  @Fecha datetime,

  @Referencia varchar(16)



declare

  @TablaTMP Table(

    idCuenta Varchar(20), 

    Valor Money, 

    DebCre tinyint, 

    Nota varchar(100),

    idCentroCosto uniqueidentifier,

    CentroCosto varchar(16))



Set @CuentaITBIS  = convert(varchar(20),(Select Valor From Defaults where Clave = 'CuentaITBIS'))

--Set @ITBISUS  = convert(varchar(20),(Select Valor From Defaults where Clave = 'ITBIS_DOLARES'))

Set @Tipo = 'INGRESO'

Set @tipoDocumento ='FT'



Select

  @Fecha =fecha,

  @Referencia = Factura

from

  factura

where

  idfactura = @idFactura



select top 1 @MONEDA_LEGAL = idMoneda

from moneda

where CursoLegal = 1



INSERT @TablaTMP (idCuenta, Valor, DebCre,  Nota, idCentroCosto, CentroCosto)

SELECT   

  p.cc as Cuenta,

  round(fd.linetotal*ft.tasa,2) as valor,

  2 as DebCre,

  convert(varchar(60),'Ing. Prod:[' + p.idProducto + '] ' + p.Producto),

  ft.idCentroCosto,

  ft.CentroCosto

FROM

  Factura    ft Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura) Join

  producto p on fd.idProducto = p.idProducto

WHERE

  ft.idFactura = @idFactura





UNION ALL



SELECT

  p.ccDescuento as Cuenta,

  round(fd.Descuento*ft.tasa,2) as Valor,

  1 as DebCre,

  convert(varchar(60),'Desc.Ventas:' + p.idProducto),

  Null,

  Null

FROM

  Factura    ft Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura) Join

  producto p on fd.idProducto = p.idProducto

WHERE

  fd.descuento > 0

  AND ft.idFactura = @idFactura



UNION ALL



SELECT    

  @CuentaITBIS as Cuenta,

  fd.Itbis * ft.Tasa as Valor,

  2 as DebCre,

  convert(varchar(60),'ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura    ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

WHERE

  fd.itbis > 0

  --and ft.idMoneda = @MONEDA_LEGAL 

  and ft.idFactura = @idFactura



/*UNION ALL



SELECT

  @ITBISUS as Cuenta,

  fd.Itbis as Valor,

  2 as DebCre,

  convert(varchar(60),'ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura    ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

WHERE 

  fd.itbis > 0

  and ft.idMoneda <> @MONEDA_LEGAL 

  and ft.idFactura = @idFactura



UNION ALL



SELECT

  @ITBISUS as Cuenta,

  round(fd.Itbis * (ft.Tasa - 1.00),2) as Valor,

  2 as DebCre,

  convert(varchar(60),'PRIMA ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura  ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

  join cgCuentaPrima cp on cp.idCuenta = @ITBISUS

WHERE

  fd.itbis > 0

  and ft.idMoneda <> @MONEDA_LEGAL 

  AND ft.idFactura = @idFactura*/



----------------------------------------------------------------------------------------------------



if exists (select 1 from @TablaTMP where Valor <> 0)

begin

  insert into @TablaTMP(idCuenta, Valor, DebCre, Nota)

  Select

    (CASE WHEN ft.credito = 1 then ctc.idCuentaCredito else ctc.idCuentaContado end) as Cuenta,

    ft.SubTotal-ft.Descuento+ft.Itbis as Valor,

    1 as DebCre,

    convert(varchar(60),'CxC - '+ m.Moneda + ' Cliente: ' + convert(varchar(16),c.idCliente))

  FROM

    Factura    ft

    join cliente c on ft.idCliente = c.idCliente

    join Moneda m on ft.idMoneda = m.idMoneda

    join ClienteTipoCuenta ctc on (c.idClienteTipo = ctc.idClienteTipo and ft.idMoneda = ctc.idMoneda)

  WHERE

    ft.idFactura = @idFactura



UNION ALL



  Select

    cp.idCuentaPrima as Cuenta,

    round((ft.SubTotal-ft.Descuento+ft.Itbis) * ft.tasa,2)  - (ft.SubTotal-ft.Descuento+ft.Itbis) as Valor,

    1 as DebCre,

    convert(varchar(60),'CxC Prima de: ' + m.Moneda)

  FROM

    Factura ft

    join cliente c on ft.idCliente = c.idCliente

    join Moneda m on ft.idMoneda = m.idMoneda

    join clienteTipoCuenta ctc on c.idClienteTipo = ctc.idClienteTipo and ft.idMoneda = ctc.idMoneda 

   join cgCuentaPrima cp on cp.idCuenta = (CASE WHEN ft.credito = 1 then ctc.idCuentaCredito else ctc.idCuentaContado end)

  WHERE

    ft.idFactura = @idFactura

    and m.cursolegal <> 1

end



----------------------------------------    VENTAS   ---------------------------------------------

delete cgcodificacion where GuidDocumento = @idFactura



insert into cgcodificacion (idCodificacion, GUIDDocumento, idCuenta, Valor, DebCre,  idCentroCosto, CentroCosto, Nota, Referencia, Automatica, Tipo, TipoDocumento, Fecha)

Select

  newid(),

  @idFactura, 

  idCuenta, 

  Valor, 

  DebCre, 

  idCentroCosto, 

  CentroCosto,

  Nota, 

  @Referencia, 

  1,

  @Tipo,

  @TipoDocumento,

  @Fecha

from 

  @TablaTMP






GO
