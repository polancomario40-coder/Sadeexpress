Alter table bcoGastosMenores add FechaRegistro	datetime
go
Alter table bcoGastosMenores add TrackId	varchar(100)
go
Alter table bcoGastosMenores add UltError	varchar(2000)
go
Alter table bcoGastosMenores add HoraEnvio	datetime
go
Alter table bcoGastosMenores add PendValidacion	bit
go
Alter table bcoGastosMenores add TipoNcf varchar(3)
go
Alter table bcoGastosMenores add CodigoSeguridadEcf varchar(20)
go
Alter table bcoGastosMenores add FechaFirmaDigital datetime
go
Alter table bcoGastosMenores add FechaVenceNCF datetime
go
Alter table bcoGastosMenores add StatusEcf varchar(6)


--alter table bcodocumentos add usuario varchar(16)  

GO
/****** Object:  UserDefinedFunction [dbo].[ecf_buildQRGM]    Script Date: 04/02/2026 12:00:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
go


alter procedure [dbo].[bcoRPTDocumento] --'158017CB-CC83-4770-A8DA-002BD234CDCC'  
 @GuidDocumento uniqueidentifier  
as  
 select *,  
 (select Nombre from cxpBancos b where b.idCuentaBanco=d.idCuentaBanco ) as Banco,  
 (select Descripcion from cgCatalogoCuentas c where c.idcuenta=dd.idcuenta) as descripcion,  
 (case when dd.debcre=1 then dd.Valor end) as Debito,  
 (case when dd.debcre=2 then dd.Valor end) as Credito  
 from bcodocumentos d  
 left join bcoDocumentosDtl dd on dd.Guiddocumento=d.Guiddocumento  
 where d.Guiddocumento = @Guiddocumento   -- d.idDocumento=63399  
 order by LineaNum  
return 0  

go
  
  

ALTER procedure [dbo].[bcoGastosMenoresRPT]  
 @GUIDDocumento uniqueidentifier  
as  
 select h.*,  
 QrUrl = dbo.ecf_buildQRGM(h.Guiddocumento),
 d.idCuenta,  
 d.Descripcion,  
 d.Importe  
 from bcoGastosMenores h left join bcoGastosMenoresDet d   
  on h.Guiddocumento = d.guIDDocumento  
 where h.GUIDDocumento = @guiddocumento   
 order by d.Lineanum  
return 0  
  
  

  
