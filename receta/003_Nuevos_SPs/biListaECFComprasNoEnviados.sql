



--[biListaECFComprasNoEnviados] '20250601','20250731'  

              

CREATE OR ALTER PROCEDURE [dbo].[biListaECFComprasNoEnviados]            

 @desde datetime, @hasta datetime, @filtro varchar(20) = '*'    

as             

            

select f.Guiddocumento as KeyField,                 

    f.idDocumento,              

    f.Compfiscal as NCF,            

    f.Fecha,            

    f.Nombre,            

    f.Total,            

    f.HoraEnvio,            

    f.TrackId,            

    f.UltError,  

    f.StatusEcf            

from cxpDocumentos f             

where f.Fecha between @desde and @hasta             

and f.CompFiscal like 'E4[1,7]%'            

and f.status <> 'C'           

and @filtro in ('*', f.statusEcf)    

union all            

select g.GuidDocumento,            

    0,            

    g.Compfiscal,            

    g.Fecha,            

    'Gastos Menores Electronicos',            

    sum(d.Importe) as Total,            

    g.HoraEnvio,            

    g.TrackId,                    

    g.UltError,

    g.StatusEcf

from bcoGastosMenores g left join bcoGastosMenoresDet d on g.GUIDDocumento = d.GUIDDocumento            

where g.fecha between @desde and @hasta             

and g.CompFiscal like 'E43%'            

and @filtro in ('*', g.statusEcf)    

and g.Cancelado = 0        

group by g.GUIDDocumento, g.CompFiscal, g.fecha, g.HoraEnvio,  g.TrackId, g.UltError, g.StatusEcf            

order by 2,3   

  

  


GO
