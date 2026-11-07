

CREATE OR ALTER PROCEDURE cxpReportSuplidores  

as  

select  s.idSuplidor,  

 s.Nombre,  

 s.Telefono1,  

 s.Telefono2,  

 s.Fax,  

 s.RNC,  

 s.Direccion,  

 t.Descripcion as Tipo,  

 m.Moneda,

 s.LimiteCredito,

 s.FormaPago,

 s.DiasCredito,

 case s.PedirNCF when 'S' then 'Pedir' 

			     when 'G' then 'Generar'

				 when 'N' then 'No aplica'

 end as TipoNCF ,

 s.Estatus 

from cxpSuplidores s left join cxpTiposSuplidor t  

  on s.TipoSuplidor = t.TipoSuplidor  

  left join Moneda m on s.idMoneda = m.idMoneda  

where s.MostrarEnCXP = 1   

order by t.Descripcion, s.Nombre  

return 0  








GO
