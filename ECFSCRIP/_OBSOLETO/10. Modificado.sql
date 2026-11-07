

alter table devolucion add CompFiscal varchar(16)
go
alter table devolucion add  NcfModificado varchar(19)
go
alter table Almacen add CerrarAlmacen bit
go
alter table PromovDet add idDevolucionDet  uniqueidentifier
GO

--update Defaults set valor='https://ecf.dgii.gov.do/testecf/consultatimbre' where clave = 'URL_VALQR' 

go



GO
/****** Object:  StoredProcedure [dbo].[SPFacturaAnular]    Script Date: 24/12/2025 09:55:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[SPFacturaAnular]
 @idFactura uniqueidentifier, 
 @Anulado bit output, 
 @TipoAnulacion VarChar(2) = 04
AS      

declare @err int      
Set     @err = 0      
Set @Anulado = 0  --retornar false      
IF exists (      
  SELECT Top 1 -- si no existen pago para la cxc de esta factura      
    1      
  FROM      
    Cxc p      
    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc      
    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc      
  WHERE      
    f.idcxc  = @idFactura and p.cancelado = 0)      
BEGIN      
  RETURN -1      
END      
  
IF exists (      
  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura      
    1      
  FROM      
    ProMov p        
  WHERE      
    p.IdReferencia = @idFactura and p.posteado = 1)      
BEGIN      
  RETURN -2      
END      
  
BEGIN TRAN        
  
Update       
    factura       
  set       
    cancelado = 1,       
    fechacancelado =  round(convert(float, fecha),0,1),      
    TipoAnulacion = @TipoAnulacion      
  where       
    idfactura = @idFactura --marcar factura como cancelado      
  set @err = @@Error         
    
  Delete       
  from cxc       
  where idcxc = @idFactura  -- borrar la cxc de la factura      
    
  Set @Err = @@Error      
    
  Delete       
    promovdet      
  from       
    Promov p      
    join promovdet pd on p.idpromov = pd.idpromov      
  where       
    p.idReferencia = @idFactura      
      
  set @err = @@Error         
  Delete       
  from       
    Promov       
  where       
    idreferencia = @idFactura      
      
  set @err = @@Error         
  Set @Anulado = 1  -- retornar true      
  
if isnull(@err,0)  <> 0       
begin      
  ROLLBACK TRAN      
  RETURN 1      
end      
  
COMMIT TRAN      
RETURN 0    
Go



/****** Object:  StoredProcedure [dbo].[ClienteAct]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[ClienteAct]
GO

/****** Object:  StoredProcedure [dbo].[Almacenes]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[Almacenes]
GO

/****** Object:  StoredProcedure [dbo].[Devolucion2CxC]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[Devolucion2CxC]
GO

/****** Object:  StoredProcedure [dbo].[FindDevolucion]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[FindDevolucion]
GO

/****** Object:  StoredProcedure [dbo].[svDevolucion2ProMov]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[svDevolucion2ProMov]
GO

/****** Object:  StoredProcedure [dbo].[Factura2Dev]    Script Date: 11/11/2025 06:31:55 a.m. ******/
DROP PROCEDURE [dbo].[Factura2Dev]


GO

/****** Object:  UserDefinedFunction [dbo].[LimpiarRnc]    Script Date: 18/11/2025 06:05:47 p.m. ******/
DROP FUNCTION [dbo].[LimpiarRnc]
GO

/****** Object:  UserDefinedFunction [dbo].[ecf_buildQR]    Script Date: 18/11/2025 06:05:47 p.m. ******/
DROP FUNCTION [dbo].[ecf_buildQR]
GO

/****** Object:  UserDefinedFunction [dbo].[ecf_buildQRFacturaConsumo]    Script Date: 18/11/2025 06:05:47 p.m. ******/
DROP FUNCTION [dbo].[ecf_buildQRFacturaConsumo]
GO

GO
/****** Object:  StoredProcedure [dbo].[ecf_fact_send]    Script Date: 10/12/2025 11:05:06 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[ecf_fact_send]         
 @id uniqueidentifier        
as                 
 declare @nuId int, @msg varchar(2000), @SumITBis bit        

 IF (SELECT valor FROM Defaults WHERE clave = 'SUMARITBIS') = 1
BEGIN
    SET @SumITBis = 0;
END
ELSE
BEGIN
    SET @SumITBis = 1;
END
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')           
   return -1          
    
 if exists (select 1 from factura where idfactura = @id and cancelado = 1)    
   return -1    
       
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier      
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),      
  @emisorId = UConfiguracion      
 from Configuracion          
      
 begin try        
 begin tran         
          
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,      
    EmisorId,      
    Referencia,          
    TipoReferencia,        
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                
    Itbis2,        
    Itbis3,        
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf)          
 select @rncEmisor,      
  @emisorId,      
  h.idfactura,           
  'FT',        
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  dbo.LimpiarRNC(h.ClienteRNC) as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',          
  SubTotal1 = h.Tasa * sum( case when fd.Itbis > 0 then ((fd.precio * fd.cantidad) - fd.descuento) else 0.00 end),         
  SubTotal3 = h.Tasa * sum( case when fd.Itbis > 0 then 0 else ((fd.precio * fd.cantidad) - fd.descuento) end),         
  case when h.Itbis > 0 then '18' else '' end,          
  '',        
  '',        
  h.Itbis * h.tasa as MontoImpuestos,          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  @SumITBis,--'0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF        
 from factura h with (NOLOCK) join facturadet fd with (NOLOCK) on h.idFactura = fd.idfactura         
 where h.idfactura = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and h.StatusEcf = 'PENDIENTE'--'NUEVO'           
   group by h.idfactura,           
  h.Fecha,                
  h.CompFiscal,                  
  substring(h.compfiscal,2,2),                
  h.ClienteRNC,            
  h.Cliente,            
  h.Itbis,        
  h.tasa,         
  h.CompFiscal,            
  h.CompFiscal,          
  h.FechaVenceNCF        
        
 set @nuId = scope_identity()        
        
 if @nuId is not null begin         
        
 insert into ecfworker..ecf_comprobante_detalle          
    (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,           
     Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)          
 select d.idfactura, 
        @nuId, 
        d.IdProducto, 
        d.idProducto, 
        Left(producto,50), 
        '31', 
        1 as cantidad,       
        ((d.Precio * d.Cantidad) - d.Descuento) * f.Tasa,  
        d.Itbis * f.Tasa,         
        '2',         
        case when d.itbis > 0 then '1' else '4' end,        
        0,        
        0        
  from factura f join facturadet d  on f.idfactura = d.idfactura       
  where f.idfactura = @id         
          
 --set @nuId = SCOPE_IDENTITY()          
        
     update factura         
       set StatusEcf = 'ENVIADO'--'PENDIENTE'          
     where idFactura = @id           
   end         
        
 commit tran        
 end try        
 begin catch        
   set @msg = ERROR_MESSAGE()        
   rollback tran        
   raiserror (@msg,16,6)        
 end catch 




/****** Object:  UserDefinedFunction [dbo].[ecf_buildQRFacturaConsumo]    Script Date: 18/11/2025 06:05:47 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[ecf_buildQRFacturaConsumo]      
 (@ncf varchar(20),     
  @rncEmisor varchar(20),    
  @codSeg varchar(50),     
  @total decimal(19,2)) returns varchar(1000)      
as begin       
      
 declare @url varchar(200)        
   
 
select @url = convert(varchar(200), valor) from defaults where clave = 'ECF_URLQR_FC'    
 if @url is null       
   select @url= 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC';      
     
 if isnull(@codSeg,'') = ''       
   return ''      
      
return @url + '?RncEmisor=' + dbo.limpiarRNC(@rncEmisor) +        
  '&ENCF=' + @ncf +         
  '&MontoTotal=' + convert(varchar(20), @total) +         
  '&CodigoSeguridad=' + dbo.urlEncode(@codSeg)    
    
end

GO

/****** Object:  UserDefinedFunction [dbo].[ecf_buildQR]    Script Date: 18/11/2025 06:05:48 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[ecf_buildQR]      
 (      
  @ncf varchar(20),       
  @tipoEcf varchar(2),       
  @rncEmisor varchar(20),      
  @rncComprador varchar(20),       
  @emision datetime,       
  @codSeg varchar(50),       
  @fechaFirma datetime,      
  @total decimal(19,2)      
 )       
 returns varchar(1000)      
as begin       
       
 declare @url varchar(200)   
 
      
 select @url= convert(varchar(200), valor) from defaults where clave = 'URL_VALQR'      
      
 if isnull(@codSeg,'') = ''       
   return ''      
    
 if @tipoEcf in ('47', '43')      
   set @rncComprador = ''      
      
 --if @tipoEcf in ('47', '43')      
 --  set @rncComprador = ''       
      
 return @url + '?RncEmisor=' + dbo.limpiarRNC(@rncEmisor) +      
  case when isnull(@rncComprador,'') = '' then '' else '&RncComprador=' + @rncComprador end +      
  '&ENCF=' + @ncf +       
  '&FechaEmision=' + convert(varchar(20), @emision, 105) +       
  '&MontoTotal=' + convert(varchar(20), @total) +       
  '&FechaFirma=' + convert(varchar(20), @fechaFirma, 105) + '%20' + convert(varchar(20), @fechaFirma, 108) +         
  '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)      
end      
    
GO

/****** Object:  UserDefinedFunction [dbo].[LimpiarRnc]    Script Date: 18/11/2025 06:05:48 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*--update defaults set valor = 'https://ecf.dgii.gov.do/testecf/consultatimbre'    where clave = 'URL_VALQR'
select dbo.LimpiarRnc('1-111-111-11')
select * from factura where compfiscal like 'E31%'

https://ecf.dgii.gov.do/testecf/consultatimbre?RncEmisor=132409469&RncComprador=00000000000&ENCF=E310000000002&FechaEmision=18-11-2025&MontoTotal=115.25&FechaFirma=18-11-2025%2016:22:53&CodigoSeguridad=jIGeYM

exec RPTFactura 'DBA4C34E-BA40-4608-800E-1BDAE8A27106'

*/

   
CREATE function [dbo].[LimpiarRnc] (@str varchar(20))    
returns varchar(20)    
as    
begin    
 declare @instr varchar(20), @outstr varchar(20)    
 set @outstr = ''    
 declare @j int    
 set @j = 1    
    
 set @instr = @str    
 while @j <= len(@instr) begin    
   if substring(@instr,@j,1) in ('0','1','2','3','4','5','6','7','8','9','N','n','A','a','/') begin       
      set @outstr = @outstr + substring(@instr,@j,1)          
   --   set @j = @j + 1    
   end    
   set @j = @j + 1    
   --else set @j = len(@instr) + 1    
 end    
    
 return @outstr    
end    
    
GO




GO
/****** Object:  StoredProcedure [dbo].[Factura2Dev]    Script Date: 13/11/2025 03:51:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Factura2Dev](@idFactura uniqueidentifier, @idDevolucion uniqueidentifier) AS    
    
  SELECT         
    c.idFactura,     
    c.Factura,     
    c.idCliente,     
    c.Cliente,     
    c.Fecha,     
    c.Nota,     
    c.PorcDesc,    
    c.condicion,     
    c.idMoneda,    
    c.tasa,    
    cd.idFacturaDet,     
    cd.idProducto,     
    cd.Producto,     
    cd.Cantidad,     
    cd.Precio,     
    cd.Descuento,     
    cd.Itbis,     
    cd.LineTotal,   
    c.idAlmacen,
	c.CompFiscal as NCFModificar,
    isnull((Select sum(dd.devCantidad) 
     from devoluciondet dd join devolucion d on d.iddevolucion = dd.iddevolucion 
     where dd.idFacturadet = cd.idfacturadet and d.cancelado = 0 and d.iddevolucion <> isnull(@idDevolucion,'00000000-0000-0000-0000-000000000000')),0.00)  as CantidadDev     
  FROM             
    dbo.Factura c     
    INNER JOIN dbo.FacturaDet cd ON c.idFactura = cd.idFactura    
  WHERE    
    c.idFactura = @idFactura    
    and c.Cancelado = 0    
  


/****** Object:  StoredProcedure [dbo].[svDevolucion2ProMov]    Script Date: 11/11/2025 06:31:56 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[svDevolucion2ProMov]
  @idDevolucion uniqueidentifier,
  @idPromov uniqueidentifier output
AS

Declare 
  @TipoMov int,
  @Secuencia Varchar(16),
  @RecCount int,
  @Error int,
  @id uniqueidentifier

Set @Error = 0

--begin tran

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'TipoMovInvDevolu'))

select @Secuencia = ProMov from promov where idProMov = @idDevolucion 

if @Secuencia is null
  exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut

else begin

  delete from promovdet
  where idPromov = @idDevolucion
  delete from promov
  where idProMov = @idDevolucion
end
Set @Error = @@Error
if (@Error <> 0) or (@TipoMov is null)  begin
  --rollback tran
  Return -1
end

Set @id = newid()

insert into promov (
  idProMov, 
  idProMovTipo, 
  ProMov, 
  Fecha, 
  Salida, 
  idCompania, 
  Referencia, 
  Usuario, 
  idOrdComp, 
  OrdComp, 
  EntregadoPor, 
  RecibidoPor, 
  idAlmacen, 
  Concepto, 
  Nota, 
  idConduce, 
  Conduce, 
  Posteado, 
  PosteadoFecha, 
  idOrdenTrab, 
  OrdenTrab, 
  idReferencia, 
  idAlmacenDestino,
  devolucion)
Select 
  @id, 
  @TipoMov,  
  @Secuencia, 
  d.Fecha, 
  0,  -- Entrada por devoulion
  NULL, 
  d.Devolucion, 
  d.Usuario, 
  Null, 
  Null, 
  d.Usuario, 
  Null, 
  f.idAlmacen,
  'Entra Generada por Devolucion',
  'Cod.Cliente :' + Convert(varchar(30),d.idCliente) +' \ Nombre :'+ Convert(varchar(40),d.Cliente) +'\ Factura :'+ Convert(varchar(30),d.factura),
  Null,
  Null,
  0,
  Null,
  Null,
  Null,
  d.idDevolucion,
  Null,
  1
From 
  Devolucion d
  join Factura f on d.idFactura = f.idFactura   
Where
  idDevolucion = @idDevolucion 
  and d.Cancelado = 0
Set @Error = @@Error
if (@Error <> 0)   begin
  --rollback tran
  Return -2
end

Insert into promovdet(
idProMovDet, 
idProMov, 
ProMovDet, 
idProducto, 
Producto, 
Cantidad, 
Costo, 
idUnidad, 
Posteado, 
XCosto, 
XCantidad, 
Linea, 
CC, 
Referencia, 
idCentroCosto, 
idPartida,
idDevolucionDet)
Select
  newid(),
 @id,
  SUBSTRING(dd.Producto, 1, 60),
  dd.idProducto,
  dd.Producto,
  dd.DevCantidad,
  CASE 
    WHEN 
      isnull((select pd.costo
            from promov p join promovdet pd on p.idpromov = pd.idpromov
            where idProMovDet = fd.idFacturaDet and p.posteado = 1),0) = 0 
    THEN
      dbo.InvProdCosto(dd.idProducto, d.Fecha, f.idAlmacen) * dd.DevCantidad
    ELSE
      (((select pd.costo
            from promov p join promovdet pd on p.idpromov = pd.idpromov
            where idProMovDet = fd.idFacturaDet and p.posteado = 1) / fd.Cantidad) * dd.DevCantidad)
  END,
  fd.idUnidad,
  0,
  Null,
  Null,
  dd.Linea,
  Null,
  NULL,
  Null,
  Null,    -- Partida
  dd.idDevolucionDet
from
  Devolucion d
  join DevolucionDet dd on d.idDevolucion = dd.idDevolucion
  join FacturaDet fd  on fd.idFacturaDet = dd.idFacturaDet
  join Factura f on fd.idFactura = f.idFactura
Where
  d.idDevolucion = @idDevolucion 
  and d.cancelado = 0
Set @Error = @@Error
if (@Error <> 0)  begin
  --rollback tran
  Return -3
end
--Commit Tran
  Set @idPromov = @id
return 0 

GO

/****** Object:  StoredProcedure [dbo].[FindDevolucion]    Script Date: 11/11/2025 06:31:56 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[FindDevolucion](@Orden varchar(10)) AS

Select 
  idDevolucion,
  Devolucion,
  Fecha, 
  Factura,
  convert(varchar(25), cliente) as Cliente 
From 
  Devolucion
Order by
  Fecha Desc
 

GO

/****** Object:  StoredProcedure [dbo].[Devolucion2CxC]    Script Date: 11/11/2025 06:31:56 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Devolucion2CxC]
    (
     @idDevolucion UNIQUEIDENTIFIER
    )
AS
    DECLARE @TipoDoc VARCHAR(16),
        @Errores INT,
        @Resultado INT,
        @NCF VARCHAR(19),
        @hostname VARCHAR(40),
        @IdCliente INT,
        @VencimientoNCF DATETIME,
        @reorden BIT 

    SET @TipoDoc = 'NC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'
    SET @Errores = 0
    SET @Resultado = 0
    SET @hostname = HOST_NAME()
    SET @IdCliente = (SELECT    idCliente
                      FROM      Devolucion
                      WHERE     idDevolucion = @idDevolucion
                     )

    BEGIN TRAN
    EXEC svCompFiscal @NCF OUTPUT, @hostname, 'NC', @IdCliente,
        @VencimientoNCF OUTPUT, @reorden OUTPUT

    INSERT  INTO Cxc
            (idCxc,
             Cxc,
             idCliente,
             Cliente,
             idTipoDocumento,
             Valor,
             Fecha,
             Concepto,
             idCxcTipo,
             esCredito,
             Cancelado,
             Referencia,
             Usuario,
             Descuento,
             Condicion,
             Vencimiento,
             Tasa,
             idMoneda,
             CompFiscal
            )
            SELECT  f.idDevolucion,
                    f.Devolucion,
                    f.idCliente,
                    f.Cliente,
                    @TipoDoc,
                    f.Total,
                    f.Fecha,
                    'DEVOLUCION ' + f.Devolucion,
                    1, --idcxcTipo
                    1, --esCredito
                    0, --cancelado
                    f.idDevolucion,
                    f.Usuario,
                    0.00,
                    0,
                    f.Fecha,
                    f.Tasa,
                    f.idMoneda,
                    @NCF
            FROM    Devolucion f
            WHERE   f.idDevolucion = @idDevolucion

    SET @Errores = @@Error
    IF @Errores <> 0
        BEGIN
            ROLLBACK TRAN
            RETURN @Errores
        END


    DECLARE @NOAPP VARCHAR(16)
    SELECT  CONVERT(VARCHAR(16), Valor)
    FROM    Defaults
    WHERE   Clave = 'NO_APP_DEV'

    IF ISNULL(@NOAPP, '0') <> '1'
        BEGIN 
            INSERT  INTO CxcDet
                    (idCxcDet,
                     idCxc,
                     idCxcDebito,
                     Valor,
                     Fecha
                    )
                    SELECT  NEWID(),
                            f.idDevolucion,
                            f.idFactura,
                            f.Total,
                            f.Fecha
                    FROM    Devolucion f
                            JOIN Factura ff ON f.idFactura = ff.idFactura
                    WHERE   f.idDevolucion = @idDevolucion
                            AND ff.Credito = 1 

            SET @Errores = @@Error
            IF @Errores <> 0
                BEGIN
                    ROLLBACK TRAN
                    RETURN @Errores
                END
        END


    EXEC @Resultado = DevolucionDetCuenta @idDevolucion

    IF @Resultado <> 0
        BEGIN
            ROLLBACK TRAN
            RETURN @Resultado
        END

    IF @Errores <> 0
        BEGIN
            ROLLBACK TRAN
            RETURN 1
        END  

    COMMIT TRAN

    RETURN 0


/****** Object:  StoredProcedure [dbo].[FindDevolucion]    Script Date: 10/11/2025 01:16:36 p.m. ******/
DROP PROCEDURE [dbo].[FindDevolucion]
GO

/****** Object:  StoredProcedure [dbo].[Almacenes]    Script Date: 11/11/2025 06:31:56 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


  CREATE PROCEDURE [dbo].[Almacenes] AS    
    
  Select     
    idAlmacen,     
    Almacen , ContadorEntradas,  
    ContadorSalidas   , CerrarAlmacen 
  From    
    Almacen    
  Where    
    Activo = 1 --and idCompania = @idCompania    
  Order by    
    Almacen    
    



GO


/****** Object:  StoredProcedure [dbo].[ClienteAct]    Script Date: 11/11/2025 06:31:58 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ClienteAct] ( @idCliente INT )      
AS      
    SELECT  idCliente ,      
            Cliente ,      
            Contacto ,      
            LimiteCredito ,      
            Activo ,      
            idEmpleado ,      
            Direccion ,      
            Sector ,      
            Ciudad ,      
            Telefono ,      
            NoPagaItbis ,      
            Descuento ,      
            Fax ,      
            EMail ,      
            idListaPrecio ,      
            Condicion ,      
            idCuenta ,      
            idAuxiliar ,      
            RNC_Cedula ,      
            idCondicion ,      
            c.Notas ,      
            c.idMoneda ,      
            c.OCRequerida ,      
            c.Monto_Bono_Mortero  ,  
   c.NoRecibirConduces,  
   ct.TipoCompFiscal,
   c.RequiereOrdenCliente
    FROM    Cliente c      
            JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus      
            JOIN ClienteTipo ct ON c.idClienteTipo = ct.idClienteTipo      
    WHERE   idCliente = @idCliente 
GO

GO

/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 22/12/2025 07:12:10 p.m. ******/
DROP PROCEDURE [dbo].[svCompFiscal2018]
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 22/12/2025 07:12:10 p.m. ******/
DROP PROCEDURE [dbo].[spGetNextCounterNCF]
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 22/12/2025 07:12:10 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
CREATE PROCEDURE [dbo].[spGetNextCounterNCF]    
    (    
     @XContador VARCHAR(16),    
     @OutPut VARCHAR(16) OUTPUT,    
     @OutVenceNCF DATETIME OUTPUT,    
     @reorden BIT OUTPUT    
    )    
AS    
    DECLARE @id UNIQUEIDENTIFIER  
     
    SELECT TOP 1    
            @OutPut = (REPLICATE('0',    
                                 (a.Longitud - (LEN(CONVERT(VARCHAR, b.Secuencia)))))    
                       + CONVERT(VARCHAR, b.Secuencia)),    
            @OutVenceNCF = b.ValidoHasta,    
            @id = b.idCompFiscalSecuencia,    
            @reorden = CAST(CASE WHEN (ISNULL(b.Reorden, 0) >= (b.SecuenciaFinal    
                                                              - b.Secuencia))    
                                 THEN 1    
                                 ELSE 0    
                            END AS BIT)    
    FROM    CompFiscal a    
            JOIN CompFiscalSecuencia b ON b.uidCompFiscal = a.uidCompFiscal    
    WHERE   (a.Serie + a.TipoNCF+ Sucursal) = @XContador    
            AND b.ValidoHasta >= dbo.dateOf(GETDATE())    
            AND b.Secuencia <= b.SecuenciaFinal    
            AND b.Inactivo = 0    
    ORDER BY b.ValidoHasta    
                
 --si ya se han ejecutado todos los NCF inactivo la secuencia          
    UPDATE  CompFiscalSecuencia    
    SET     Inactivo = 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia = SecuenciaFinal    
    
    --si aun no quedan secuencia    
    UPDATE  CompFiscalSecuencia    
    SET     Secuencia = Secuencia + 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia < SecuenciaFinal    
GO

/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 22/12/2025 07:12:11 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Go
CREATE   PROCEDURE [dbo].[svCompFiscal2018] --null, 'VIRTUALTITO' ,02,0,null,null
 @OutPut VARCHAR(19) OUTPUT,       
 @Terminal VARCHAR(50),
 @TipoDoc VARCHAR(2),  
 @idCliente INT,  
 @VencimientoNCF DATETIME OUTPUT,  
 @reorden BIT OUTPUT
 
AS BEGIN   
  
declare  
  @TipoCompFiscal char(2),  
  @NCF varchar(19),  
  @CF varchar(19), 
  @SCF varchar(19),    
  @RC INT,  
  @VENCE DATETIME,  
  @RORDEN BIT  
  
If not exists(select 1 from compfiscal where terminal=@Terminal)
    SET @Terminal = 'Default';
  
IF @TipoDoc = 'FT'  
BEGIN  
  Set @TipoCompFiscal = (Select   
              TipoCompFiscal  
                  from    
             ClienteTipo ct    
             join Cliente c on ct.idClienteTipo = c.idClienteTipo  
    where   
      c.idcliente = @idcliente)  
END  
ELSE BEGIN  
  SET @TipoCompFiscal =  @TipoDoc  
END  
  
SELECT TOP 1 @NCF = Serie + @TipoCompFiscal + Sucursal ,@CF=Serie + @TipoCompFiscal
FROM CompFiscal cf  
WHERE  ((Terminal = @Terminal
              AND TipoNCF = @TipoCompFiscal
             )
             --OR (Terminal = 'Default'
             --    AND TipoNCF = @TipoCompFiscal
             --   )
            )
  
EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT, @RORDEN OUTPUT  
SET @VencimientoNCF = @VENCE  
SET @reorden = @RORDEN  
  
SET @OutPut = ISNULL(@CF + @SCF, '')  
  
RETURN 0  
  
END  
GO


