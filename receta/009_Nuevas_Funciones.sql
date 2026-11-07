CREATE FUNCTION svCadenaProductosCotizacion
 (@id UNIQUEIDENTIFIER) 
RETURNS VARCHAR(MAX)
AS BEGIN
  DECLARE @cad VARCHAR(MAX)

  SELECT @cad = ISNULL(@cad + ', ', '') + Producto
  FROM dbo.CotizacionDet WITH (NOLOCK) 
  WHERE idCotizacion = @id

  RETURN ISNULL(@cad, '')
END

GO


	CREATE FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO

CREATE FUNCTION AgregarDiasLaborales
    (
      @Add INT ,
      @FechaInicial DATETIME       
    )
RETURNS DATETIME
AS
    BEGIN
        DECLARE @weeks INT ,
            @libres INT ,
            @Res DATETIME;

        IF DATEPART(WEEKDAY, @FechaInicial) = 7 --sabado
            BEGIN 
                SET @FechaInicial = DATEADD(DAY, 2, @FechaInicial); 
            END;

        IF DATEPART(WEEKDAY, @FechaInicial) = 1 --domingo
            BEGIN 
                SET @FechaInicial = DATEADD(DAY, 1, @FechaInicial); 
            END;

        SET @weeks = ( @Add / 5 ); 

        SET @Add += @weeks * 2; 

        IF ( DATEPART(WEEKDAY, @FechaInicial) > DATEPART(WEEKDAY,
                                                         DATEADD(DAY, @Add,
                                                              @FechaInicial)) )
            BEGIN
                SET @Add += 2;
            END; 

        IF ( DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) = 7 )
            BEGIN 
                SET @Add += 2; 
            END;
    
        SET @libres = 0; --(SELECT diaslibres FROM Feriados WHERE fecha BETWEEN @FechaInicial AND DATEADD(DAY, @FechaInicial, @Add)); 

        IF ( @libres > 0 )
            BEGIN
                SET @Res = dbo.AgregarDiasLaborales(0,
                                                    DATEADD(DAY,
                                                            ( @libres + @Add ),
                                                            @FechaInicial));				 
            END; 

        ELSE
            BEGIN
                SET @Res = DATEADD(DAY, @Add, @FechaInicial);
            END;

        RETURN  @Res;
    END;

GO


CREATE function [dbo].[RoundCorrect](@R DECIMAL(19,4))
RETURNS DECIMAL(19,2)
AS BEGIN
  DECLARE @tmp DECIMAL(19,2), @result DECIMAL(19,2) 

  SET @tmp = (@R * 100.00);

  SET @result = floor(@tmp);

  if (@tmp - @result) >= 0.5 
    set @result = (@result + 1);

  RETURN (@Result / 100.00);
END


GO

 

create function [dbo].[LimpiarRnc] (@str varchar(20))  
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
      set @j = @j + 1  
   end  
   else  
      set @j = len(@instr) + 1  
 end  
  
 return @outstr  
end


GO


create function [dbo].[ecf_buildQRGM]    
 (@id uniqueidentifier) returns varchar(1000)    
as begin     
     
 declare @url varchar(200)    
  
 select @url= convert(varchar(200), valor) from defaults where clave = 'URL_VALQR'  
     
 declare @ncf varchar(20),    
   @itbis varchar(20),    
   @rncEmisor varchar(20),    
   @rncComprador varchar(20),    
   @emision varchar(20),    
   @TipoEcf varchar(20),    
   @secuencia varchar(30),    
   @fechafirma varchar(30),    
   @total varchar(20)    
     
 select @rncEmisor = replace(RNC, '-','')     
 from configuracion     
    
 select @total = convert(varchar(20), sum(Importe))  
 from bcoGastosMenoresDet  
 where GUIDDocumento = @id   
    
 select @ncf = d.compfiscal,     
  @TipoEcf = '34',    
  ---@total = convert(varchar(20), @Total),     
  @rncComprador = @rncEmisor,  
  @emision = convert(varchar(20), d.Fecha, 105),    
  @secuencia = d.CodigoSeguridadEcf    ,
  @fechaFirma = convert(varchar(20), FechaFirmaDigital, 105) + '%20' + convert(varchar(20), FechaFirmaDigital, 108)   
 from bcoGastosMenores d with (NOLOCK)    
 where GUIDDocumento = @id     
    
 --set @fechafirma = @emision + '%2000:00:00'    
    
 if isnull(@secuencia,'') = ''     
   return ''    
    
 return @url + '?RncEmisor=' + @rncEmisor +    
  --'&RncComprador=' + @rncComprador +    
  '&ENCF=' + @ncf +     
  '&FechaEmision=' + @emision +     
  '&MontoTotal=' + @total +     
  '&FechaFirma=' + @fechaFirma +       
  '&CodigoSeguridad=' + @secuencia    
end    

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
      
return @url + '?RncEmisor=' + @rncEmisor +        
  '&ENCF=' + @ncf +         
  '&MontoTotal=' + convert(varchar(20), @total) +         
  '&CodigoSeguridad=' + dbo.urlEncode(@codSeg)    
    
end

GO

CREATE FUNCTION FtSemanaMes ( @fecha DATETIME )
RETURNS INT
AS
    BEGIN
        DECLARE @semanas INT

        SELECT  @semanas = DATEDIFF(week, dbo.StartOfTheMonth(@fecha),
                                    dbo.EndOfTheMonth(@fecha))  
        RETURN @semanas
    END
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
    
 return @url + '?RncEmisor=' + @rncEmisor +    
  case when isnull(@rncComprador,'') = '' then '' else '&RncComprador=' + @rncComprador end +    
  '&ENCF=' + @ncf +     
  '&FechaEmision=' + convert(varchar(20), @emision, 105) +     
  '&MontoTotal=' + convert(varchar(20), @total) +     
  '&FechaFirma=' + convert(varchar(20), @fechaFirma, 105) + '%20' + convert(varchar(20), @fechaFirma, 108) +       
  '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
end    
  

GO

