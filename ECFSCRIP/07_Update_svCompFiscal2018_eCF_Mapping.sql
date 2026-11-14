ALTER PROCEDURE [dbo].[svCompFiscal2018]
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
      @RORDEN BIT,
      @UsarECF BIT

    SET @UsarECF = ISNULL((SELECT CAST(Valor AS BIT) FROM Defaults WHERE Clave = 'UsarECF'), 0)

    IF NOT EXISTS(select 1 from compfiscal where terminal=@Terminal)  
    BEGIN
        SET @Terminal = 'Default'
    END

    IF @TipoDoc = 'PI'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '41' ELSE '11' END
    ELSE IF @TipoDoc = 'NC'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '34' ELSE '04' END
    ELSE IF @TipoDoc = 'ND'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '33' ELSE '03' END
    ELSE IF @TipoDoc = 'GM'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '43' ELSE '13' END
    ELSE IF @TipoDoc = 'FT'    
    BEGIN    
        SELECT @TipoCompFiscal = TipoCompFiscal    
        FROM ClienteTipo ct      
        JOIN Cliente c on ct.idClienteTipo = c.idClienteTipo    
        WHERE c.idcliente = @idcliente    
        IF @UsarECF = 1
        BEGIN
            IF @TipoCompFiscal = '01' SET @TipoCompFiscal = '31'
            ELSE IF @TipoCompFiscal = '02' SET @TipoCompFiscal = '32'
            ELSE IF @TipoCompFiscal = '14' SET @TipoCompFiscal = '44'
            ELSE IF @TipoCompFiscal = '15' SET @TipoCompFiscal = '45'
        END
    END    
    ELSE 
    BEGIN    
        SET @TipoCompFiscal = @TipoDoc
        IF @UsarECF = 1
        BEGIN
            IF @TipoCompFiscal = '01' SET @TipoCompFiscal = '31'
            ELSE IF @TipoCompFiscal = '02' SET @TipoCompFiscal = '32'
            ELSE IF @TipoCompFiscal = '14' SET @TipoCompFiscal = '44'
            ELSE IF @TipoCompFiscal = '15' SET @TipoCompFiscal = '45'
        END
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
