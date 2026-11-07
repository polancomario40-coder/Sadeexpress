

 CREATE OR ALTER PROCEDURE cxpEstadoCuentaEx  

  @idEnt int,  

  @desde datetime,   

  @final datetime  

as  

declare @bi decimal(19,2)  

declare @estado table (  

 LineaNo int not null identity,  

 Tipo varchar(10),  

 idTrans int,  

 IdDocumento int,  

 Fecha datetime,  

 Referencia varchar(20),  

 Status varchar(20),   

 Debito decimal(19,2),  

 Credito decimal(19,2),

 idMoneda varchar(10)

)  

select  @bi =   

 sum (case tt.DebCre   

   when 2 then t.Total   

    else -t.Total    

 end)   

 from cxpDocumentos t   

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'  

  where t.idSuplidor = @idEnt    

 and t.Fecha < @desde  

 and t.Status <> 'C'  

 and t.MostrarEnCXP = 1  

if @bi <> 0.00  

begin   

  insert into @estado  

   (Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito,idMoneda)  

  values   

   ('B/I',  

    null,  

    null,  

    @desde - 1,   

    'n/a',  

    '',  

    case when @bi > 0.00 then @bi else 0.00 end,  

    case when @bi <= 0.00 then @bi else 0.00 end

    ,''

   )  

end  

insert into @estado  

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito,idMoneda)  

select  tt.Abrev,  

 t.idTrans,  

 t.idDocumento,  

 t.Fecha,  

 t.Referencia,  

 Status = case   

    when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'  

    else ''  

 end,   

 case tt.DebCre   

   when 2 then   

  case   

    when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total  

    else 0.00  

  end  

   else 0.00  

 end as Debito,  

 case tt.DebCre   

   when 1 then   

  case   

    when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total  

    else 0.00  

  end  

   else 0.00  

 end as Credito,

 (select moneda from moneda m where m.idmoneda=t.idmoneda) as idmoneda

 from cxpDocumentos t   

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'  

  where t.idSuplidor = @idEnt    

 and t.Fecha between @desde and @final    

 and t.MostrarEnCXP = 1  

order by t.idmoneda,t.Fecha, t.idDocumento  

select  e.*,  

 Balance = isnull((select sum(Debito - Credito) from @estado  

    where LineaNo <= e.LineaNo),0.00)  

from @estado e   

return 0  

  
GO
