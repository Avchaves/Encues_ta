
/* Llamado a Sp_Obt_Cant_Encuestas */
exec Sp_IngresarEncuesta 
@PNombreParticipante = 'Adrian Chaves Marín',
@PGenero = 'M',
@PEdad = 33,
@PCorreoElectronico = 'momessy@gmail.com',
@PPartidoPolitico = 'PLN';

-- USE ProyectoEncuesta;
-- delete from Encuestas;


/* Llamado a Sp_Obt_Cant_Encuestas */
DECLARE @VCantidad INT
exec Sp_Obt_Cant_Encuestas @VCantidad OUTPUT
print @VCantidad

/* Llamado a Sp_Obt_Cant_Por_Genero */
DECLARE @VCantMas INT
DECLARE @VCantFem INT
exec Sp_Obt_Cant_Por_Genero @VCantMas OUTPUT, @VCantFem OUTPUT
print @VCantMas
print @VCantFem

exec Sp_Obt_Informacion_Encuestas






















