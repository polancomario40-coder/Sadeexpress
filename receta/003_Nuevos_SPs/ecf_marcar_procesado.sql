









  

CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_procesado]

 @numero varchar(20), @trackId varchar(50), @codSeg varchar(20), @fecFirma datetime, @status varchar(50), @mensaje varchar(2000)

as  

 insert into ecf_compfiscal_log

 (CompFiscal, tipoRef, trackId, Hashval, Descripcion, FechaFirma)

 values (@numero, substring(@numero, 2,2), @trackId, @codSeg, left((@status + '|' + @mensaje),2000), @fecFirma)

  

 if @numero like 'E43%' begin  

   update bcoGastosMenores  

     set PendValidacion = 0, 

		 StatusEcf = @status, 

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

 where CompFiscal = @numero and PendValidacion = 1 

 

 return @@ERROR



 end  

 

 if @numero like 'E4[1,7]%' begin      

   update cxpDocumentos  

     set PendValidacion = 0, 

		 StatusEcf = @status, 

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

 where CompFiscal = @numero and PendValidacion = 1 and idTrans = 1 



 return @@error 

 end  

 

 if @numero like 'E3[3,4]%' begin  

   update cxc  

     set PendValidacion = 0, 

		 StatusEcf = @status, 

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  

   return @@ERROR

 end  



 if substring(@numero,2,2) in ('31','32','44','45','46') begin 

   update factura

     set PendValidacion = 0, 

		 StatusEcf = @status, 

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  

   return @@ERROR

  end  



  return 1


GO
