

CREATE OR ALTER PROCEDURE [dbo].[ecf_reenviar]

 @id uniqueidentifier,

 @ncf varchar(20),

 @usuario varchar(30)

as

 declare @tipo varchar(3) = substring(@ncf,2,2)



 if @tipo in ('34','33')

    update cxc set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where idcxc = @id 

 else if @tipo in ('41','47')

   update cxpDocumentos set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where guiddocumento = @id 

 else if @tipo = '43'

  update bcoGastosMenores set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where guiddocumento = @id 

 else 

   update factura set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where idfactura = @id 



 insert into ecf_compfiscal_log (Compfiscal, Descripcion, ReferenciaId, TipoRef)

 values (@ncf, ('ECF Reenviado por ' + @usuario), @id, @tipo) 




GO
