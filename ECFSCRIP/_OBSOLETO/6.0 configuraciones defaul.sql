
--select * from SegObjeto where idSegObjeto like'%ECF%'

--select * from SegPermiso where idSegObjeto like'%ECF%'--idSegObjeto='ENVIARECF'

--select * from defaults where clave='URL_VALQR'

--select  * from EcfWorker..ecf_emisor

--delete SegPermiso where idSegObjeto like'%ECF%'

--delete SegObjeto where idSegObjeto like'%ECF%'

--delete from defaults where clave='URL_VALQR'

Go
--select * from SegPermiso where idSegObjeto='Ecfnoenviado'
insert into SegPermiso
Values ('ECFnoEnviados','Administracion',6,6,6,6,6,6,6,newid())
go
insert into SegPermiso
Values ('ECFnoEnviados','Contabilidad',6,6,6,6,6,6,6,newid())

Go
 alter table defaults alter column Valor sql_variant
 go
 insert into defaults (valor,clave,Descripcion,Categoria,Tipo)
values ('1','UsarEcfs','Generar comprobante electronicos','Cxp','S')
go

 Insert Into Defaults (Clave,Valor,Descripcion,Tipo,Categoria)
 Values(
 'URL_VALQR' ,
 'https://ecf.dgii.gov.do/testecf/consultatimbre',
 'Url para validar qr de factura',
 'S',
 'Ventas')
Go
--select * from defaults where clave='URL_VALQR'
--update defaults set valor='https://ecf.dgii.gov.do/testecf/consultatimbre'  where clave='URL_VALQR'

insert into defaults (clave,valor,Descripcion, Categoria,Tipo)

Values ('AUTO_ENVIAR_ECF','0','Enviar ecfs de facturas tan pronto son registrados','ECF','S')
go

--update defaults set valor=0 where Clave='AUTO_ENVIAR_ECF'
Go

insert into defaults (clave,valor,Descripcion, Categoria,Tipo)

Values ('USAR_ECF','1','Usar facturacion electronica','ECF','S')
go


--select * from  SegPermiso where idSegObjeto='ENVIARECF'
--select * from SegObjeto where idSegObjeto='ENVIARECF'

Insert Into SegPermiso 
Values ('ENVIARECF','Factura',6,6,0,6,6,6,6,newid())

Insert Into SegPermiso 
Values ('ENVIARECF','administracion',6,6,0,6,6,6,6,newid())


Insert Into SegPermiso 
Values ('EDITARECF','Factura',6,6,0,0,0,0,0,newid())

--select * from ecf_status_envio
insert into ecf_status_envio
values ('ENVIADO',0,1)
insert into ecf_status_envio
values ('ENVIANDO',0,1)
insert into ecf_status_envio
values ('ERROR',0,0)
insert into ecf_status_envio
values ('PENDIENTE',1,0)
insert into ecf_status_envio
values ('VALIDADO',0,0)

/* =====================================
   1. CREAR OBJETO
===================================== */
IF NOT EXISTS (
    SELECT 1 
    FROM SegObjeto 
    WHERE idSegObjeto = 'Ecfseguridad'
)
BEGIN
    INSERT INTO SegObjeto (
        idSegObjeto,
        SegObjeto,
        TipoObjeto
    )
    VALUES (
        'Ecfseguridad',
        'ECF Seguridad',
        'FORM'
    );

    PRINT 'SegObjeto creado';
END
ELSE
BEGIN
    PRINT 'SegObjeto ya existe';
END
GO


/* =====================================
   2. PERMISO SISTEMA
===================================== */
IF NOT EXISTS (
    SELECT 1 
    FROM SegPermiso 
    WHERE idSegObjeto = 'Ecfseguridad'
      AND idSegUserGrp = 'Sistema'
)
BEGIN
    INSERT INTO SegPermiso (
        idSegObjeto,
        idSegUserGrp,
        Agregar,
        Editar,
        Borrar,
        Imprimir,
        Abrir,
        Anular,
        Aprobar,
        rowguid
    )
    VALUES (
        'Ecfseguridad',
        'Sistema',
        6,6,6,6,6,6,6,
        NEWID()
    );

    PRINT 'Permiso creado: Sistema';
END
ELSE
BEGIN
    PRINT 'Permiso ya existe: Sistema';
END
GO


/* =====================================
   3. PERMISO SEGURIDAD
===================================== */
IF NOT EXISTS (
    SELECT 1 
    FROM SegPermiso 
    WHERE idSegObjeto = 'Ecfseguridad'
      AND idSegUserGrp = 'Seguridad'
)
BEGIN
    INSERT INTO SegPermiso (
        idSegObjeto,
        idSegUserGrp,
        Agregar,
        Editar,
        Borrar,
        Imprimir,
        Abrir,
        Anular,
        Aprobar,
        rowguid
    )
    VALUES (
        'Ecfseguridad',
        'Seguridad',
        6,6,6,6,6,6,6,
        NEWID()
    );

    PRINT 'Permiso creado: Seguridad';
END
ELSE
BEGIN
    PRINT 'Permiso ya existe: Seguridad';
END
GO