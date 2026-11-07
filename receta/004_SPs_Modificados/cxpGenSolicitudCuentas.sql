  

  

CREATE OR ALTER PROCEDURE [dbo].[cxpGenSolicitudCuentas]  

 @idSol int,  

 @CtaBanco int   

as  

 declare @Cuentas table (  

         idCuenta varchar(16),  

       idAuxiliar varchar(16),  

         Debito decimal(19,2),  

         Credito decimal(19,2))  

  

 declare @CTASUP varchar(16),  

   @AuxSup varchar(16)  

  

 declare @idTrans int set @idTrans = 20  

 declare @st char(1)  

 declare @total_ret decimal(19,2)  

 declare @idmoneda int,  

   @tasa decimal(19,2)  

     

-- exec LeerParametro 'CTASUPLIDORES', @CTASUP output  

 declare @err int,  

      @ident int,          

      @idCuenta varchar(16),  

      @Valr decimal(19,2),  

      @cxp bit,  

      @GUIDSol uniqueidentifier  

  

 select @Valr = Total ,  

     @ident = idSuplidor,  

     @St = Status,  

     @cxp = MostrarEnCXP,   

        @GUIDSol = GUIDSolicitud,  

  @idMoneda = idMoneda,  

  @tasa = Tasa  

   from cxpSolicitudes   

   where idSolicitud = @idSol  

     

  if (@cxp = 1)   

  begin  

    select @total_ret = dbo.cxpRetencionXSolicitud(@idSol)  

   

   --select @CtaSup = idCuenta  

    --from cxpSuplidores  

    --where idSuplidor = @idEnt  

      

   select @idCuenta = idCuentaMayor,  

         --@idMoneda = idMoneda,  

       @AuxSup = idAuxiliar   

   from cxpBancos    

   where idCuentaBanco = @ctaBanco  

      

   --insert into @Cuentas (IdCuenta,  idAuxiliar, Debito, Credito)  

    --values (@ctasup, @AuxSup, @valr, 0.00)  

      

   insert into @Cuentas (IdCuenta, Debito, Credito)  

    values (@idCuenta, 0.00, @valr - @total_ret)  

      

 insert into @Cuentas(IdCuenta, Debito, Credito)  

 select tr.idCuenta,  

        0.00,  

        sum(((dd.Valor * d.tasa) / s.tasa))  

  from cxpSolicitudes s join cxpSolicitudesDtl d  

    on s.idSolicitud = d.idSolicitud  

    join cxpDocumentos doc on d.idDocumento = doc.idDocumento  

    join cxpSolicitudRet dd on s.idSolicitud = dd.idSolicitud and d.idDocumento = dd.idDocumento   

    join cxpRetencion tr on dd.idRetencion = tr.idRetencion   

  where s.idSolicitud = @idSol    

  group by tr.idCuenta  

    

   if @tasa > 1  

   begin  

     insert into @Cuentas (idCuenta, idAuxiliar, Debito, Credito)  

     select  cp.idCuentaPrima,   

         null,  

    Debito = Debito * (@tasa - 1),  

    Credito = Credito * (@tasa - 1)  

    from @Cuentas c join cgCuentaPrima cp on c.idCuenta = cp.idCuenta and cp.idMoneda = @idMoneda   

    --where c.GUIDDocumento = @GUIDSol    

   end  

     

   insert into @Cuentas (idCuenta, Debito, Credito)  

   select idCuenta, Debito, Credito   

   from dbo.cxpCodificarPagoDocs(@idSol)  

end  

else begin  

  insert into @Cuentas (idCuenta, idAuxiliar, Debito, Credito)  

  select idCuenta,   

   idAuxiliar,  

   Debito = case debcre when 1 then Valor else 0.00 end,  

      Credito = case debcre when 2 then Valor else 0.00 end  

  from cgCodificacion c  

  where c.GUIDDocumento = @GUIDSol    

end  

select  c.*,  

 cat.Descripcion as Cuenta  

   from @cuentas c left join cgCatalogoCuentas cat  

  on c.idCuenta = cat.idCuenta COLLATE SQL_Latin1_General_CP1_CI_AI  

  order by c.Credito, c.idCuenta   

return 0   

  


GO
