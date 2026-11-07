    

CREATE OR ALTER PROCEDURE [dbo].[eduRPTCXCCodif] 

 @desde datetime,

 @hasta datetime    

as    



select newid() as ID, 

c.idCliente,    

cl.Cliente, 

    c.idcxc,    

    t.CXCTipo,     

    c.cxc as Documento,    

    c.Vencimiento as Fecha,    

    c.Valor,

    c.Concepto, 

    cg.idCuenta,

    cat.Descripcion,

    case cg.DebCre when 1 then cg.Valor else 0.00 end as Debito,

    case cg.DebCre when 2 then cg.Valor else 0.00 end as Credito

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo     

  join Cliente cl on c.idCliente = cl.idCliente 

left join cgCodificacion cg on c.idcxc = cg.GUIDDocumento

left join cgCatalogoCuentas cat on cg.idCuenta = cat.idCuenta 

where c.Vencimiento between @desde and @hasta 

   and c.cancelado = 0    

order by t.CXCTipo, c.fecha, c.cxc, cg.DebCre, cg.idCuenta 

return 


GO
