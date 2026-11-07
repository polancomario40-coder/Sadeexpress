
CREATE OR ALTER PROCEDURE cxpGuardarStatusDoc

 @idDoc int,

 @st char(1),

 @Fec datetime

as

-- Procedure Name : bcoGuardarStatusDoc

-- Created By : Jorge

-- Created On : 20/12/2004 3:37:26 PM

begin

	-- local variables

	-- set nocount on and default isolation level

	set nocount on

	set transaction isolation level Read Committed

    update cxpDocumentos

	  set Status = @st,

		  FechaStatus = @Fec

	where idDocumento = @idDoc

	

	return @@ERROR

end




GO
