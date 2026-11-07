CREATE OR ALTER PROCEDURE entradacontVentas  

  @Desde DateTime,   

  @Hasta DateTime,  

  @usuario varchar(30),

  @ED varchar(4)

as  

    

exec svGenCodificacionFacturas @Desde, @Hasta  

  

declare  

  @NumED varchar(20)  

  

declare  

  @TablaTMP Table(NumEntrada Varchar(10), Descripcion Varchar(50), Cuenta Varchar(20), Valor Money, DebCre tinyint, Fecha Datetime, Referencia varchar(20), idCentrocosto uniqueidentifier, idPartida varchar(16))  

  

Set @NumEd = @ED -- convert(varchar(20),(Select Valor From Defaults where Clave = 'NumEDVentas'))  

  

INSERT @TablaTMP (NumEntrada, Descripcion, Cuenta, Valor, DebCre, Fecha, Referencia, idCentrocosto, idPartida)  

SELECT  

  @NumEd,      

  'Ventas de Productos y Servicios',   

  cc.idCuenta,  

  cc.Valor,  

  cc.DebCre,  

  @Hasta,  

  cc.Referencia,  

  cc.idCentroCosto,  

  cc.idPartida  

FROM  

  Factura    ft   

  join cgCodificacion cc on ft.idFactura = cc.GuidDocumento  

WHERE  

--  ((ft.cancelado = 0) or (ft.cancelado = 1 and ft.Fechacancelado > @hasta))   

  ((ft.cancelado = 0) )   

  AND ft.Fecha Between @Desde And @Hasta  

  

----------------------------------------    VENTAS   ---------------------------------------------     

  

exec cgLimpiarIntermedio @NumEd, @Hasta  

  

insert into cgEDIntermedio(EntradaNum, Fecha, idCuenta, DebCre, Valor, Descripcion)  

select NumEntrada,  

       Fecha,  

       Cuenta,  

       DebCre,  

       round(Valor,2),  

       Descripcion  

from @TablaTMP  

  

exec cgImportarEntradaDiario @NumEd, @Hasta, @usuario   

  

return @@ERROR  

  

  

  


GO
