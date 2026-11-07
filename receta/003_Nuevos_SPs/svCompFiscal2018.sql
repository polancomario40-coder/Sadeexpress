CREATE OR ALTER PROCEDURE [dbo].[svCompFiscal2018]
 @OutPut VARCHAR(19) OUTPUT,         
 @Terminal VARCHAR(50),  
 @TipoDoc VARCHAR(2),    
 @idCliente INT,    
 @VencimientoNCF DATETIME OUTPUT,    
 @reorden BIT OUTPUT  
AS   
BEGIN     
    DECLARE    
      @TipoCompFiscal char(2),    
      @NCF varchar(19),    
      @CF varchar(19),   
      @SCF varchar(19),      
      @RC INT,    
      @VENCE DATETIME,    
      @RORDEN BIT    

    IF NOT EXISTS(select 1 from compfiscal where terminal=@Terminal)  
    BEGIN
        SET @Terminal = 'Default'
    END

    IF @TipoDoc = 'FT'    
    BEGIN    
        SELECT @TipoCompFiscal = TipoCompFiscal    
        FROM ClienteTipo ct      
        JOIN Cliente c on ct.idClienteTipo = c.idClienteTipo    
        WHERE c.idcliente = @idcliente    
    END    
    ELSE 
    BEGIN    
        SET @TipoCompFiscal = @TipoDoc    
    END    

    SELECT TOP 1 
        @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
        @CF  = Serie + @TipoCompFiscal  
    FROM CompFiscal     
    WHERE Terminal = @Terminal 
      AND TipoNCF = @TipoCompFiscal  

    IF @NCF IS NULL  
    BEGIN  
        SELECT TOP 1 
            @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
            @CF  = Serie + @TipoCompFiscal  
        FROM CompFiscal     
        WHERE Terminal = 'Default' 
          AND TipoNCF = @TipoCompFiscal  
    END  

    IF @NCF IS NULL
    BEGIN
        RETURN
    END

    EXEC @RC = spGetNextCounterNCF 
        @NCF, 
        @SCF OUTPUT, 
        @VENCE OUTPUT, 
        @RORDEN OUTPUT    

    SET @VencimientoNCF = @VENCE    
    SET @reorden = @RORDEN    
    SET @OutPut = ISNULL(@CF + @SCF, '')    
END
GO
