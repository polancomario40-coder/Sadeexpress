





  

    

CREATE OR ALTER PROCEDURE [dbo].[ecf_comprobante_markSent]  

 @id uniqueidentifier,  

 @tipoNcf varchar(2)  

as  

      

  declare @st varchar(20) = 'ENVIADO'       

    

  if (@tipoNcf in ('31','32','44','45','46')) begin  

    update Factura set StatusEcf = @st,HoraEnvio = getdate() 

    where idFactura = @id and statusecf = 'ENVIANDO'

 return 0  

  end  

  

  if (@tipoNcf in ('33','34')) begin  

    update cxc set StatusEcf = @st where idcxc = @id   

 update Devolucion set StatusEcf = @st,HoraEnvio = getdate() where idDevolucion = @id and statusecf = 'ENVIANDO'  

 return 0  

  end  

  

  if (@tipoNcf in ('41','47')) begin  

    update cxpDocumentos set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   

 return 0  

  end  

  

  if (@tipoNcf in ('43')) begin  

    update bcoGastosMenores set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   

 return 0  

end  


GO
