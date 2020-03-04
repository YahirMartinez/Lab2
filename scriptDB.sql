create table video
(idvideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)

--Stored CREATE
create procedure sp_video_insertar
@idvideo int,
@titulo varchar (100),
@repro int,
@url varchar(100)
as
begin
insert into video values (@idvideo,@titulo,@repro,@url)
end
--Insert en Stored
exec sp_video_insertar 123,'video 1',1,'youtube.com'
--Select del Stored
select * from video

--Stored Delete
alter procedure sp_video_eliminar
@idvideo int
as
begin
delete from video
where idvideo = @idvideo
end
--Insert en Stored
exec sp_video_eliminar 1

--Stored 
create procedure sp_video_modificar
@idvideo int,
@titulo varchar (100),
@repro int,
@url varchar(100)
as
begin
update video 
set idvideo=@idvideo,titulo=@titulo,repro=@repro,url=@url 
where idvideo=@idvideo
end

exec sp_video_modificar 123,'video 2',1,'youtube.com'