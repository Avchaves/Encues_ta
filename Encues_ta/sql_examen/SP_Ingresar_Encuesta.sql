
/* Procedimiento para ingresar encuesta */
create or alter procedure Sp_IngresarEncuesta(@PNombreParticipante VARCHAR(100),
									 @PGenero VARCHAR(1),
									 @PEdad INT,
									 @PCorreoElectronico VARCHAR(100),
									 @PPartidoPolitico VARCHAR(100)/*,
									 @PCodigoError NVARCHAR OUTPUT,
									 @PMensajeError NVARCHAR OUTPUT*/)
--declare @nombre VARCHAR(100)
--declare @precio DECIMAL(10,2)
as
begin
  insert into Encuestas (NombreParticipante,Genero,Edad,CorreoElectronico,PartidoPolitico)
  values (@PNombreParticipante,@PGenero,@PEdad,@PCorreoElectronico,@PPartidoPolitico)
end

/* Procedimiento para obtener la cantidad de encuestas realizadas */
create or alter procedure Sp_Obt_Cant_Encuestas(@PCantidad INT OUTPUT)
as
begin
  select @PCantidad = count(NumeroEncuesta)
  from Encuestas

  --print @PCantidad

end

/* Procedimiento para obtener la cantidad de encuestas realizadas */
create or alter procedure Sp_Obt_Cant_Por_Genero(@PCantidadMasculino INT OUTPUT, @PCantidadFemenino INT OUTPUT)
as
begin
  select @PCantidadMasculino = count(NumeroEncuesta)
  from Encuestas
  where Genero = 'M'

  select @PCantidadFemenino = count(NumeroEncuesta)
  from Encuestas
  where Genero = 'F'

end



/* Procedimiento para obtener toda la información de las encuestas */
create or alter procedure Sp_Obt_Informacion_Encuestas
as
begin
  select * from Encuestas
  order by NumeroEncuesta
end



-- USE ProyectoEncuesta;