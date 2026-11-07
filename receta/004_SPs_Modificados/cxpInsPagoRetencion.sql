

CREATE OR ALTER PROCEDURE dbo.cxpInsPagoRetencion

    @idDocumento INT,

    @idPagoRetencion UNIQUEIDENTIFIER,

    @idDocXPagar INT,

    @Porcentaje FLOAT,

    @Valor DECIMAL(19, 2),

    @idRetencion INT,

    @Retencion VARCHAR(100),

    @idTipoRetencionDGII INT

AS

    INSERT  INTO cxpPagoRetencion

            (idDocumento,

             idPagoRetencion,

             idDocXPagar,

             Porcentaje,

             Valor,

             idRetencion,

             Retencion,

             idTipoRetencionDGII

            )

    VALUES  (@idDocumento,

             @idPagoRetencion,

             @idDocXPagar,

             @Porcentaje,

             @Valor,

             @idRetencion,

             @Retencion,

             @idTipoRetencionDGII

            ) 

    RETURN @@ERROR 


GO
