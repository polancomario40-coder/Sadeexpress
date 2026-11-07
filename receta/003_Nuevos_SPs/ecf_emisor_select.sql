









CREATE OR ALTER PROCEDURE [dbo].[ecf_emisor_select] 

as

  

  select replace(rnc,'-','') as Rnc,

		 Compania as Nombre,

		 Direccion,

		 'DOM' as Pais,

		 Ciudad,

		 'DN' as Provincia

  from configuracion

  /*



  select replace(rnc,'-','') as Rnc,

		 'Body Shop Athletic Club' as Compania,

		 'Calle Fantino Falco #42' as Direccion,

		 'DOM' as Pais,

		 'Plaza Body Shop 4to, Nivel Ens. Naco, Santo Domingo' as Ciudad,

		 'DN' as Provincia

  from configuracion

  */


GO
