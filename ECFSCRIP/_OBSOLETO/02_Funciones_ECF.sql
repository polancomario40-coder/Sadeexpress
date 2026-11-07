-- ============================================================================
-- SCRIPT 02: FUNCIONES PARA FACTURACION ELECTRONICA (ECF) Y QR
-- Sistema: SADE Express ECF
-- Descripcion: Define las funciones auxiliares de ECF y codificacion de URLs
--              para generacion de timbres QR segun especificacion DGII
-- ============================================================================

PRINT '------------------------------------------------------------';
PRINT 'INICIANDO PASO 02: Funciones ECF y Codificacion de Timbre';
PRINT '------------------------------------------------------------';
GO

-- 1. UrlEncode para codificacion de parametros URL (Codigo de Seguridad DGII)
CREATE OR ALTER FUNCTION dbo.UrlEncode(@url VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    IF @url IS NULL RETURN NULL;
    DECLARE @count INT = 1;
    DECLARE @len INT = LEN(@url);
    DECLARE @res VARCHAR(MAX) = '';
    DECLARE @char CHAR(1);
    DECLARE @ascii INT;
    
    WHILE @count <= @len
    BEGIN
        SET @char = SUBSTRING(@url, @count, 1);
        SET @ascii = ASCII(@char);
        IF (@ascii >= 48 AND @ascii <= 57) OR 
           (@ascii >= 65 AND @ascii <= 90) OR 
           (@ascii >= 97 AND @ascii <= 122) OR 
           @char IN ('-', '_', '.', '~')
        BEGIN
            SET @res = @res + @char;
        END
        ELSE
        BEGIN
            SET @res = @res + '%' + UPPER(SUBSTRING(sys.fn_varbintohexstr(CONVERT(VARBINARY(1), @char)), 3, 2));
        END
        SET @count = @count + 1;
    END
    RETURN @res;
END
GO
PRINT 'Funcion creada/actualizada: dbo.UrlEncode';
GO

-- 2. LimpiarRnc
CREATE OR ALTER FUNCTION dbo.LimpiarRnc (@str varchar(20))  
RETURNS varchar(20)  
AS  
BEGIN  
    DECLARE @instr varchar(20), @outstr varchar(20)  
    SET @outstr = ''  
    DECLARE @j int  
    SET @j = 1  
    SET @instr = @str  
    WHILE @j <= LEN(@instr) 
    BEGIN  
        IF SUBSTRING(@instr,@j,1) IN ('0','1','2','3','4','5','6','7','8','9','N','n','A','a','/') 
        BEGIN     
            SET @outstr = @outstr + SUBSTRING(@instr,@j,1)        
            SET @j = @j + 1  
        END  
        ELSE  
            SET @j = LEN(@instr) + 1  
    END  
    RETURN @outstr  
END
GO
PRINT 'Funcion creada/actualizada: dbo.LimpiarRnc';
GO

-- 3. RoundCorrect
CREATE OR ALTER FUNCTION dbo.RoundCorrect(@R DECIMAL(19,4))
RETURNS DECIMAL(19,2)
AS 
BEGIN
    DECLARE @tmp DECIMAL(19,2), @result DECIMAL(19,2) 
    SET @tmp = (@R * 100.00);
    SET @result = FLOOR(@tmp);
    IF (@tmp - @result) >= 0.5 
        SET @result = (@result + 1);
    RETURN (@result / 100.00);
END
GO
PRINT 'Funcion creada/actualizada: dbo.RoundCorrect';
GO

-- 4. svCadenaProductosCotizacion
CREATE OR ALTER FUNCTION dbo.svCadenaProductosCotizacion (@id UNIQUEIDENTIFIER) 
RETURNS VARCHAR(MAX)
AS 
BEGIN
    DECLARE @cad VARCHAR(MAX)
    SELECT @cad = ISNULL(@cad + ', ', '') + Producto
    FROM dbo.CotizacionDet WITH (NOLOCK) 
    WHERE idCotizacion = @id
    RETURN ISNULL(@cad, '')
END
GO
PRINT 'Funcion creada/actualizada: dbo.svCadenaProductosCotizacion';
GO

-- 5. AgregarDiasLaborales
CREATE OR ALTER FUNCTION dbo.AgregarDiasLaborales (@Add INT, @FechaInicial DATETIME)
RETURNS DATETIME
AS
BEGIN
    DECLARE @weeks INT, @libres INT, @Res DATETIME;
    IF DATEPART(WEEKDAY, @FechaInicial) = 7
        SET @FechaInicial = DATEADD(DAY, 2, @FechaInicial); 
    IF DATEPART(WEEKDAY, @FechaInicial) = 1
        SET @FechaInicial = DATEADD(DAY, 1, @FechaInicial); 
    SET @weeks = ( @Add / 5 ); 
    SET @Add += @weeks * 2; 
    IF ( DATEPART(WEEKDAY, @FechaInicial) > DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) )
        SET @Add += 2;
    IF ( DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) = 7 )
        SET @Add += 2; 
    SET @libres = 0;
    IF ( @libres > 0 )
        SET @Res = dbo.AgregarDiasLaborales(0, DATEADD(DAY, ( @libres + @Add ), @FechaInicial));				 
    ELSE
        SET @Res = DATEADD(DAY, @Add, @FechaInicial);
    RETURN @Res;
END
GO
PRINT 'Funcion creada/actualizada: dbo.AgregarDiasLaborales';
GO

-- 6. FtSemanaMes
CREATE OR ALTER FUNCTION dbo.FtSemanaMes (@fecha DATETIME)
RETURNS INT
AS
BEGIN
    DECLARE @semanas INT
    SELECT @semanas = DATEDIFF(week, dbo.StartOfTheMonth(@fecha), dbo.EndOfTheMonth(@fecha))  
    RETURN @semanas
END
GO
PRINT 'Funcion creada/actualizada: dbo.FtSemanaMes';
GO

-- 7. ecf_buildQRGM
CREATE OR ALTER FUNCTION dbo.ecf_buildQRGM (@id uniqueidentifier) 
RETURNS varchar(1000)    
AS 
BEGIN     
    DECLARE @url varchar(200)    
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'URL_VALQR'  
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://ecf.dgii.gov.do/testecf/consultatimbre'

    DECLARE @ncf varchar(20),    
            @itbis varchar(20),    
            @rncEmisor varchar(20),    
            @rncComprador varchar(20),    
            @emision varchar(20),    
            @TipoEcf varchar(20),    
            @secuencia varchar(30),    
            @fechafirma varchar(30),    
            @total varchar(20)    
      
    SELECT @rncEmisor = REPLACE(RNC, '-','') FROM configuracion     
    SELECT @total = CONVERT(varchar(20), SUM(Importe)) FROM bcoGastosMenoresDet WHERE GUIDDocumento = @id   
     
    SELECT @ncf = d.compfiscal,     
           @TipoEcf = '34',    
           @rncComprador = @rncEmisor,  
           @emision = CONVERT(varchar(20), d.Fecha, 105),    
           @secuencia = d.CodigoSeguridadEcf,
           @fechaFirma = CONVERT(varchar(20), FechaFirmaDigital, 105) + '%20' + CONVERT(varchar(20), FechaFirmaDigital, 108)   
    FROM bcoGastosMenores d WITH (NOLOCK)    
    WHERE GUIDDocumento = @id     
     
    IF ISNULL(@secuencia,'') = '' RETURN ''    
     
    RETURN @url + '?RncEmisor=' + @rncEmisor +    
           '&ENCF=' + @ncf +     
           '&FechaEmision=' + @emision +     
           '&MontoTotal=' + @total +     
           '&FechaFirma=' + @fechaFirma +       
           '&CodigoSeguridad=' + dbo.UrlEncode(@secuencia)    
END    
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQRGM';
GO

-- 8. ecf_buildQRFacturaConsumo
CREATE OR ALTER FUNCTION dbo.ecf_buildQRFacturaConsumo      
 (@ncf varchar(20),     
  @rncEmisor varchar(20),    
  @codSeg varchar(50),     
  @total decimal(19,2)) 
RETURNS varchar(1000)      
AS 
BEGIN       
    DECLARE @url varchar(200)        
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'ECF_URLQR_FC'    
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC';      
      
    IF ISNULL(@codSeg,'') = '' RETURN ''      
       
    RETURN @url + '?RncEmisor=' + @rncEmisor +        
           '&ENCF=' + @ncf +         
           '&MontoTotal=' + CONVERT(varchar(20), @total) +         
           '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
END
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQRFacturaConsumo';
GO

-- 9. ecf_buildQR
CREATE OR ALTER FUNCTION dbo.ecf_buildQR    
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
RETURNS varchar(1000)    
AS 
BEGIN     
    DECLARE @url varchar(200)      
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'URL_VALQR'    
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://ecf.dgii.gov.do/testecf/consultatimbre'
     
    IF ISNULL(@codSeg,'') = '' RETURN ''    
   
    IF @tipoEcf IN ('47', '43')    
        SET @rncComprador = ''    
     
    RETURN @url + '?RncEmisor=' + @rncEmisor +    
           CASE WHEN ISNULL(@rncComprador,'') = '' THEN '' ELSE '&RncComprador=' + @rncComprador END +    
           '&ENCF=' + @ncf +     
           '&FechaEmision=' + CONVERT(varchar(20), @emision, 105) +     
           '&MontoTotal=' + CONVERT(varchar(20), @total) +     
           '&FechaFirma=' + CONVERT(varchar(20), @fechaFirma, 105) + '%20' + CONVERT(varchar(20), @fechaFirma, 108) +       
           '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
END    
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQR';
GO

PRINT '------------------------------------------------------------';
PRINT 'PASO 02 COMPLETADO SATISFACTORIAMENTE';
PRINT '------------------------------------------------------------';
GO
