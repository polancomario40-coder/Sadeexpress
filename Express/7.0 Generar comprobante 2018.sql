Go
update CompFiscal set Contador=Serie+TipoNCF where isnull(contador,'')=''
go
Update CompFiscal set Longitud=10 where isnull(Longitud,'')=''

GO
	alter table cliente add NoRecibirConduces bit
	go
	alter table cliente add RequiereOrdenCliente bit
	go
	alter table Cliente add Monto_Bono_Mortero bit
	go
	alter table Cliente add OCRequerida bit
	go
    alter table ClienteTipo add TipoCompFiscal bit


GO

drop PROCEDURE [dbo].[ClienteAct]
go

/****** Object:  StoredProcedure [dbo].[ClienteAct]    Script Date: 09/11/2025 01:53:16 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[ClienteAct] ( @idCliente INT )      
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

--/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 09/11/2025 12:58:22 p.m. ******/
DROP PROCEDURE [dbo].[svCompFiscal2018]
GO

--/****** Object:  StoredProcedure [dbo].[svCompFiscal2018]    Script Date: 09/11/2025 12:58:22 p.m. ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO


create   PROCEDURE [dbo].[svCompFiscal2018]  
 @OutPut VARCHAR(19) OUTPUT,       
 @TipoDoc VARCHAR(2),  
 @idCliente INT,  
 @VencimientoNCF DATETIME OUTPUT,  
 @reorden BIT OUTPUT  
AS BEGIN   
  
declare  
  @TipoCompFiscal char(2),  
  @NCF varchar(19),  
  @SCF varchar(19),    
  @RC INT,  
  @VENCE DATETIME,  
  @RORDEN BIT  
  
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
  
SELECT TOP 1 @NCF = Serie + @TipoCompFiscal  
FROM CompFiscal cf  
WHERE Terminal = 'Default'  
      AND TipoNCF = @TipoCompFiscal  
  
EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT, @RORDEN OUTPUT  
SET @VencimientoNCF = @VENCE  
SET @reorden = @RORDEN  
  
SET @OutPut = ISNULL(@NCF + @SCF, '')  
  
RETURN 0  
  
END  
GO


GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 09/11/2025 02:28:20 p.m. ******/
DROP PROCEDURE [dbo].[spGetNextCounterNCF]
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 09/11/2025 02:28:20 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



  
CREATE PROCEDURE [dbo].[spGetNextCounterNCF]    
    (    
     @XContador VARCHAR(3),    
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
    WHERE   (a.Serie + a.TipoNCF) = @XContador    
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


