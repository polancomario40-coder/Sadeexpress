
CREATE OR ALTER PROCEDURE cxpSolsPorValidarRPT

 @st char(1)  ,

 @desde datetime,

 @hasta datetime

as  

 select s.idSolicitud,  

 s.Numero,  

 s.Fecha,  

 s.Usuario,  

 s.Total,  

 e.Nombre,  

 s.Concepto,  

 s.status,  

 case s.TipoSolicitud   

  when 1 then 'Cheque'  

  when 2 then 'Pago ACH'  

  when 3 then 'Transferencia'  

 end as Tipo,  

 b.Nombre as CtaBanco  ,

 m.Moneda 

 from cxpSolicitudes s join cxpSuplidores e  

  on s.idSuplidor = e.idSuplidor  

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco  

  join moneda m on s.idMoneda = m.idMoneda

 where s.Status = @st  and s.fecha between @desde and @hasta 

 order by s.Fecha, s.Numero  

return 0  

  




GO
