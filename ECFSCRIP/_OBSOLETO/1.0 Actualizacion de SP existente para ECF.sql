
Alter table devolucion add FechaNcfModificado datetime
go


--Insert into Defaults(Clave,Valor,Descripcion,Tipo)
--Values ('UsarEcf',0,'Para usar nuevo Comprobante Electronico','N')
--Go

Alter table CompFiscal add Longitud int
go

update CompFiscal set Longitud=8 where serie='B'
go
update CompFiscal set Longitud=10 where serie='E'
Go

--Alter TABLE [dbo].[Factura] ADD	Computer [varchar](100) NULL
go

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TipoDocumento')
    ALTER TABLE [dbo].[Factura] ADD [TipoDocumento] varchar(16) NULL
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'FecSaldo')
    ALTER TABLE [dbo].[Factura] ADD [FecSaldo] datetime NULL
GO

Alter TABLE [dbo].[Factura] ADD	[TrackId] [varchar](100) NULL
go
Alter TABLE [dbo].[Factura] ADD	[UltError] [varchar](2000) NULL
go
Alter TABLE [dbo].[Factura] ADD	[HoraEnvio] [datetime] NULL 
go
Alter TABLE [dbo].[Factura] ADD	[PendValidacion] [bit] NOT NULL DEFAULT (1)
go
Alter TABLE [dbo].[Factura] ADD	[PendEnvioEcf] [bit] NOT NULL DEFAULT (1)
go
Alter TABLE [dbo].[Factura] ADD	[TipoNcf] [varchar](3) NULL
go
Alter TABLE [dbo].[Factura] ADD	[CodigoSeguridadEcf] [varchar](20) NULL 
go
Alter TABLE [dbo].[Factura] ADD	[FechaFirmaDigital] [datetime] NULL
go
Alter TABLE [dbo].[Factura] ADD	[StatusEcf] [varchar](16) NOT NULL DEFAULT ('PENDIENTE')
Go

ALTER TABLE [dbo].[Cxc] ADD [TrackId] varchar(100) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [UltError] varchar(2000) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [HoraEnvio] datetime NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [PendValidacion] bit NOT NULL DEFAULT ((0))
GO

ALTER TABLE [dbo].[Cxc] ADD [PendEnvioEcf] bit NOT NULL DEFAULT ((0))
GO

ALTER TABLE [dbo].[Cxc] ADD [TipoNcf] varchar(3) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [CodigoSeguridadEcf] varchar(20) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [FechaFirmaDigital] datetime NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [FechaVenceNCF] datetime NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [FechaNcfModificado] datetime NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [NcfModificado] varchar(19) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [TipoNcfModificado] varchar(2) NULL
GO

ALTER TABLE [dbo].[Cxc] ADD [StatusEcf] varchar(16) NOT NULL DEFAULT ('PENDIENTE')
GO

Go

 	
alter TABLE [dbo].[cxpDocumentos] add 	[PendValidacion] [bit]  NOT NULL  DEFAULT (0)
go
alter TABLE [dbo].[cxpDocumentos] add 	[PendEnvioEcf] [bit] NOT NULL DEFAULT ((0))
go
alter TABLE [dbo].[cxpDocumentos] add 	[CodigoSeguridadEcf] [varchar](20) NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[FechaFirmaDigital] [datetime] NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[FechaVenceNCF] [datetime] NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[CompFiscalModificado] [varchar](19) NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[FechaCompFiscalModificado] [datetime] NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[IdClaseGastoModificado] [varchar](16) NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[StatusEcf] [varchar](16) NOT NULL DEFAULT ('PENDIENTE')
go
alter TABLE [dbo].[cxpDocumentos] add 	[TipoNcf] [varchar](3) NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	TrackId	varchar(100),UltError varchar(2000),HoraEnvio datetime
go
alter TABLE [dbo].[cxpDocumentos] add 	[Usuario] [varchar](50) NULL
go
alter TABLE [dbo].[cxpDocumentos] add 	[FechaRegistro] [datetime] NOT NULL DEFAULT (getdate())
go
alter TABLE [dbo].[cxpDocumentos] add 	[RetenerTotalFactura] [bit] NOT NULL DEFAULT ((0))
go
	

Go


--Alter TABLE [dbo].[bcoGastosMenores] ADD	idPagoForma int
Go
Alter TABLE [dbo].[bcoGastosMenores] ADD	[TrackId] [varchar](100) NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[UltError] [varchar](2000) NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[HoraEnvio] [datetime] NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[PendValidacion] [bit] NOT NULL DEFAULT ((1))
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[PendEnvioEcf] [bit] NOT NULL DEFAULT ((1))
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[CodigoSeguridadEcf] [varchar](20) NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[FechaFirmaDigital] [datetime] NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[FechaVenceNCF] [datetime] NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[TipoNcf] [varchar](3) NULL
Go

Alter TABLE [dbo].[bcoGastosMenores] ADD	[StatusEcf] [varchar](16) NOT NULL DEFAULT ('PENDIENTE')
Go


Alter TABLE [dbo].[Devolucion] ADD		[TrackId] [varchar](100) NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[UltError] [varchar](2000) NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[HoraEnvio] [datetime] NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[PendValidacion] [bit] NOT NULL DEFAULT ((1))
Go
Alter TABLE [dbo].[Devolucion] ADD		[PendEnvioEcf] [bit] NOT NULL DEFAULT ((1))
Go
Alter TABLE [dbo].[Devolucion] ADD		[TipoNcf] [varchar](3) NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[CodigoSeguridadEcf] [varchar](20) NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[FechaFirmaDigital] [datetime] NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[FechaVenceNCF] [datetime] NULL
Go
Alter TABLE [dbo].[Devolucion] ADD		[StatusEcf] [varchar](16) NOT NULL DEFAULT ('PENDIENTE') 
Go

Go
Alter table configuracion add Ciudad varchar(200)

Go

-----------------------------------------------------------------PROCEDURE-----------------------------------------------------------


/****** Object:  StoredProcedure [dbo].[svCompFiscal]    Script Date: 17/07/2025 08:59:40 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[svCompFiscal]
    (
     @OutPut VARCHAR(19) OUTPUT,
     @Terminal VARCHAR(50),
     @TipoDoc VARCHAR(2),
     @idCliente INT,
     @VencimientoNCF DATETIME OUTPUT,
     @reorden BIT OUTPUT
    )
AS
    DECLARE @TipoCompFiscal CHAR(2),
        @NCF VARCHAR(19),
        @SCF VARCHAR(19),
        @XContador VARCHAR(16),
        @RC INT,
        @NEW_VER_NCF BIT,
        @VENCE DATETIME,
        @RORDEN BIT,
		@UsarECF BIT

    SET @NEW_VER_NCF = ISNULL((SELECT   CAST(Valor AS BIT)
                               FROM     Defaults
                               WHERE    Clave = 'NEW_VER_NCF'
                              ), 0)
    SET @UsarECF = ISNULL((SELECT   CAST(Valor AS BIT)
                               FROM     Defaults
                               WHERE    Clave = 'UsarECF'
                              ), 0)
    SET @OutPut = NULL

    IF @TipoDoc = 'ND'
        BEGIN
            --SET @TipoCompFiscal = '03'
			IF @UsarECF=1 SET @TipoCompFiscal = '33' ELSE SET @TipoCompFiscal = '03' 
        END
    ELSE
        IF @TipoDoc = 'NC'
            BEGIN
                --SET @TipoCompFiscal = '04'
				IF @UsarECF=1 SET @TipoCompFiscal = '34' ELSE SET @TipoCompFiscal = '04' 
            END
        ELSE
            IF @TipoDoc = 'GM' 
                BEGIN
					--SET @TipoCompFiscal = '13'
				    IF @UsarECF=1 SET @TipoCompFiscal = '43' ELSE SET @TipoCompFiscal = '13'           
			   
			   END
            ELSE
                IF @TipoDoc = 'PI'
                    BEGIN
                        --SET @TipoCompFiscal = '11'
						IF @UsarECF=1 SET @TipoCompFiscal = '41' ELSE SET @TipoCompFiscal = '11' 
                    END
                ELSE
                    IF @TipoDoc = 'FT'
                        BEGIN
                            SET @TipoCompFiscal = (SELECT   TipoCompFiscal
                                                   FROM     ClienteTipo ct
                                                            JOIN Cliente c ON ct.idClienteTipo = c.idClienteTipo
                                                   WHERE    c.idCliente = @idCliente
                                                  )
                        END

    IF ISNULL(RTRIM(LTRIM(@TipoCompFiscal)), '') = ''
        BEGIN
            SET @OutPut = ''
            RETURN 0
        END
  
    SELECT  @NCF = Serie + CASE WHEN @NEW_VER_NCF = 1 THEN ''
                                ELSE (Division + Sucursal + Caja)
                           END + @TipoCompFiscal,
            @XContador = Contador
    FROM    CompFiscal cf
    WHERE   ((Terminal = @Terminal
              AND TipoNCF = @TipoCompFiscal
             )
             OR (Terminal = 'Default'
                 AND TipoNCF = @TipoCompFiscal
                )
            )

    IF @XContador IS NULL
        BEGIN
            SET @OutPut = NULL
            RETURN -1
        END

    IF (@NEW_VER_NCF = 1)
        BEGIN
            EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT,
                @RORDEN OUTPUT
            SET @VencimientoNCF = @VENCE
            SET @reorden = @RORDEN
        END
    ELSE
        EXEC @RC = spGetNextCounterSTR @XContador, @SCF OUTPUT

    SET @OutPut = ISNULL(@NCF + @SCF, '')	

    RETURN 0

go
-----------------------------------------------------------------------------------------------------------------------------------------
/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 15/07/2025 04:29:34 p.m. ******/
DROP PROCEDURE [dbo].[spGetNextCounterNCF]
GO

/****** Object:  StoredProcedure [dbo].[spGetNextCounterNCF]    Script Date: 15/07/2025 04:29:34 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE [dbo].[spGetNextCounterNCF]    
    (    
     @XContador VARCHAR(3),    
     @OutPut VARCHAR(16) OUTPUT,    
     @OutVenceNCF DATETIME OUTPUT,    
     @reorden BIT OUTPUT    
    )    
AS    
    DECLARE @id UNIQUEIDENTIFIER  
     
    SELECT TOP 1    
            @OutPut = (REPLICATE('0',    
                                 (a.Longitud - (LEN(CONVERT(VARCHAR, b.Secuencia)))))    
                       + CONVERT(VARCHAR, b.Secuencia)),    
            @OutVenceNCF = b.ValidoHasta,    
            @id = b.idCompFiscalSecuencia,    
            @reorden = CAST(CASE WHEN (ISNULL(b.Reorden, 0) >= (b.SecuenciaFinal    
                                                              - b.Secuencia))    
                                 THEN 1    
                                 ELSE 0    
                            END AS BIT)    
    FROM    CompFiscal a    
            JOIN CompFiscalSecuencia b ON b.uidCompFiscal = a.uidCompFiscal    
    WHERE   (a.Serie + a.TipoNCF) = @XContador    
            AND b.ValidoHasta >= dbo.dateOf(GETDATE())    
            AND b.Secuencia <= b.SecuenciaFinal    
            AND b.Inactivo = 0    
    ORDER BY b.ValidoHasta    
                
 --si ya se han ejecutado todos los NCF inactivo la secuencia          
    UPDATE  CompFiscalSecuencia    
    SET     Inactivo = 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia = SecuenciaFinal    
    
    --si aun no quedan secuencia    
    UPDATE  CompFiscalSecuencia    
    SET     Secuencia = Secuencia + 1    
    WHERE   idCompFiscalSecuencia = @id    
            AND Secuencia < SecuenciaFinal    
GO

