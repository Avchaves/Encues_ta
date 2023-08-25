
create or alter trigger trg_bita_encuesta
on encuestas
after insert,update--,delete
as
begin
  set nocount on;

  if not exists (select * from deleted)
    update Encuestas
    set FechaAdicion = SYSDATETIME(),
		UsrAdicion = CURRENT_USER
	from inserted inner join Encuestas on inserted.NumeroEncuesta = Encuestas.NumeroEncuesta
  else
    update Encuestas
    set FechaModificacion = SYSDATETIME(),
		UsrModificacion = CURRENT_USER
	from inserted inner join Encuestas on inserted.NumeroEncuesta = Encuestas.NumeroEncuesta
end

-- use ProyectoEncuesta;
-- drop trigger trg_bita_encuesta