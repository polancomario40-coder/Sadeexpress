







  

CREATE procedure [dbo].[ecf_selectPendEnvio]    

as    

  declare @st varchar(20) = 'ENVIANDO'     

      

  select Compfiscal as Ncf, IdFactura as Id    

  from factura with (nolock)    

  where statusEcf = @st and CompFiscal like 'E%'

  union all    

  select Compfiscal as Ncf, IdCXC as Id    

  from cxc with (nolock)    

  where statusEcf = @st and CompFiscal like 'E3[3,4]%' 

  union all    

  select Compfiscal as Ncf, GuidDocumento as Id    

  from cxpDocumentos with (nolock)    

  where statusEcf = @st and CompFiscal like 'E4[1,7]%'

  union all    

  select Compfiscal as Ncf, GuidDocumento as Id    

  from bcoGastosMenores with (nolock)    

  where statusEcf = @st and CompFiscal like 'E43%' 

  order by 1    

