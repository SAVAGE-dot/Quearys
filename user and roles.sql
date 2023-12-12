create table roles (	
	id int primary key,
	descripcion varchar (50),
	estado int default 1
);

create table usuario (
	id int primary key identity (1,1),
	nombre varchar (100),
	apellidos varchar (100),
	alias varchar (50),
	contraseña varchar (max),
	estado int default 1,
	idRoles int
	constraint FK_usuario_roles Foreign Key (idRoles) references roles (id)
);

select * from roles

select R.id, R.descripcion, R.estado  
from roles as R

INSERT INTO roles (id, descripcion, estado) SELECT COALESCE(MAX(id), 0) + 1, 'Logistica', 1 FROM roles;

INSERT INTO roles (id, descripcion, estado)
SELECT COALESCE(MAX(id), 0) + 1, 'Servicio Tecnico', 0
FROM roles;

UPDATE roles set estado = 1 where id = 3;


update roles set descripcion = 'Administrador' where id = 1;

insert into roles (descripcion, estado) values ('Logistica', 0)

insert into roles (id,descripcion, estado) values ((select max(id)+1 from roles ),'Marketing',1)

insert into usuario(nombre, apellidos, alias, contraseña, estado, idRoles) values ('juan', 'vargas', 'juan', 'ee06bf8bfebe408f1954466bb64ba4d6497629d3', 1, 3)

update usuario set nombre = ?, apellidos = ?, alias = ?, contraseña = ?, idRoles = ? where id = ?


select U.id, U.nombre, U.apellidos, U.alias, U.contraseña, U.estado,U.idRoles, R.descripcion
from usuario as U
inner join roles as R on R.id = U.idRoles

select * from optupos_gifts

SELECT O.Id, O.IdVale, O.CodigoPaquete, O.canale_id,G.codigo_compuesto, O.Precio, O.Estado
from otpupos_valeconsumo_relations as O
inner join optupos_gifts as G on G.id = O.IdVale

select R.descripcion from roles as R

select * from usuario

select * from usuario where alias = 'jorge' and contraseña = 'abc123'

select * from usuario where alias = ? and contraseña = ?
