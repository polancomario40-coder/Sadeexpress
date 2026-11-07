

CREATE OR ALTER PROCEDURE cxpDetCRNoDistrib  

  @idEnt int,  

  @final datetime  

as  

declare @estado table (  

 LineaNo int not null identity,  

 Tipo varchar(10),  

 idTrans int,  

 IdDocumento int,  

 Fecha datetime,  

 Referencia varchar(20),  

 Status varchar(20),   

 Total decimal(19,2),  

 Aplicado decimal(19,2)  

)  

insert into @estado  

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Total, Aplicado)  

select  tt.Abrev,  

 h.idTrans,  

 h.idDocumento,  

 h.Fecha,  

 h.Referencia,  

/* Status = case   

    when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'  

    else ''  

 end, */  

 h.Total,  

 isnull(sum(d.Valor * d.tasa),0) / h.Tasa as Aplicado  

from cxpDocumentos h join TiposTrans tt  

  on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'  

left join cxpDocumentosDtl d  

  on h.idDocumento = d.idDocumento and d.Fecha <= @final     

where  h.MostrarEnCXP = 1   

 and h.idSuplidor = @idEnt  

  --and h.idMoneda = @idMon  

 and h.Fecha <= @final  

 and tt.debcre = 1  

 and h.Status <> 'C'  

group by tt.Abrev, h.idtrans, h.idDocumento, h.Fecha, h.Referencia, h.Total  , h.Tasa 

having h.Total <> isnull(sum(d.valor),0)  

   

select  e.*,   

 Pendiente = (isnull(Total,0.00) - Aplicado)   

from @estado e   

where (isnull(Total,0.00) <>  Aplicado)

order by Fecha, idDocumento  

return 0  

  

  
GO
