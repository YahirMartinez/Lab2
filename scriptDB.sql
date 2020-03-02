create table video
(idvideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)

--Stored INSERTAR
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
exec sp_video_insertar 1,'video 1',1,'youtube.com'
--Select del Stored
select * from video