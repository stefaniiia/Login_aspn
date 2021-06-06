create database InfoToolsSv
use InfoToolsSv

create table Usuarios
(
 id int identity (1000,1),
 Usuario varchar(50),
 contrasenia varbinary (500)
)

create procedure SP_AgregarUsuario
@Usuario varchar(50),
@contrasenia varchar(50),
@patron varchar(50)
as 
begin
insert into Usuarios(Usuario,contrasenia) values(@Usuario,ENCRYPTBYPASSPHRASE(@patron,@contrasenia))
end

create procedure SP_ValidarUsuario
@Usuario varchar(50),
@contrasenia varchar(50),
@patron varchar(50)
as 
begin
select *from Usuarios where Usuario=@Usuario and convert(varchar(50),DECRYPTBYPASSPHRASE(@patron,contrasenia))=@contrasenia
end

SP_AgregarUsuario 'mica','contrasenia1234','InfoToolsSv'

select * from Usuarios