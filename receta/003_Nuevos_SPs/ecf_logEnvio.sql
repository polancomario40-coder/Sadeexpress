







  

CREATE OR ALTER PROCEDURE [dbo].[ecf_logEnvio] 

 @id uniqueidentifier, 

 @ncf varchar(20),

 @tipo varchar(16), 

 @trackId varchar(100),      

 @hash varchar(20),  

 @fechaFirma datetime,   

 @error varchar(200)      

 as

 if isnull(@error ,'') = '' set @error = 'OK'



 insert into ecf_compfiscal_log (Compfiscal, trackId, Hashval, Descripcion, ReferenciaId, TipoRef, FechaFirma)

 values (@ncf, @trackId, @hash, @error, @id, @tipo, @fechaFirma)


GO
