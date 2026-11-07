





  

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

