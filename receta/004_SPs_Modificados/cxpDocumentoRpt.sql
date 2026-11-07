CREATE OR ALTER PROCEDURE cxpDocumentoRpt (@idDoc int)

as  

  select d.*,  

  s.Telefono1,  

  s.Telefono2,   

  s.Fax,  

  s.Direccion,  

  s.Nombre,  

  s.RNC,  

  s.PedirNCF,

  tt.Descripcion As ttDescripcion,  

  tt.DebCre As ttDebCre,

  tt.Abrev As ttAbrev,   

  TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = @idDoc),0.00),

 c.idAuxiliar,   

 cc.Descripcion,  

 c.DebCre,  

 c.Automatica,  

 case c.debcre  

     when 1 then c.valor

  else 0.00  

 end as Debito,  

 case c.debcre   

  when 2 then c.valor

  else 0.00  

 end as Credito,

 Moneda



  from cxpDocumentos d join TiposTrans tt   

   on d.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

   left join cxpSuplidores s on d.idSuplidor = s.idSuplidor 

   Left Join cxpDocCuentas c on (c.iddocumento = d.iddocumento)

   Left Join cgCatalogoCuentas cc on (cc.idcuenta = c.idcuenta)

   Left Join Moneda m on (m.idmoneda = d.idmoneda)

    

  where d.idDocumento = @idDoc  

return @@ERROR  




GO
