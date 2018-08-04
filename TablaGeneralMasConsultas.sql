create database Autos;
use Autos;

create table Tipocarro
(
id int not null auto_increment primary key,
nombre varchar(20) not null
); 

create table MarcaCarro
(
id int not null auto_increment primary key,
nombre varchar(20) not null,
id_tipoCarro int not null,
foreign key(id_tipoCarro)references TipoCarro(id)
);


create table ModeloCarro
(
id int not null auto_increment primary key,
id_marcaCarro int not null,
nombre varchar(20) not null,
id_tipoCarro int not null,
foreign key(id_tipoCarro)references TipoCarro(id),
foreign key(id_marcaCarro)references MarcaCarro(id)
);

create table CaracteristicasCarro
(
id int not null auto_increment primary key,
nombre varchar(20)not null,
id_tipoCarro int not null,
foreign key(id_tipoCarro)references TipoCarro(id)
);

create table ValorCaracteristicas
(
id int not null auto_increment primary key,
valorar varchar(20)not null,
unidadMedida varchar(20)not null,
id_caracteristicas int not null,
id_tipoCarro int not null,
foreign key(id_caracteristicas)references CaracteristicasCarro(id),
foreign key(id_tipoCarro)references TipoCarro(id)
);

create table GeneracionCarro
(
id int not null auto_increment primary key,
descripcion varchar(20)not null,
id_modeloCarro int not null,
id_tipoCarro int not null,
foreign key(id_tipoCarro)references TipoCarro(id),
foreign key(id_tipoCarro)references TipoCarro(id)
);

create table SerieCarro
(
id int not null auto_increment primary key,
id_modeloCarro int not null,
descripcion varchar(20)not null,
id_tipoCarro int not null,
id_generacion int not null,
foreign key(id_generacion)references GeneracionCarro(id),
foreign key(id_modeloCarro)references ModeloCarro(id),
foreign key(id_tipoCarro)references TipoCarro(id)
);

create table Modificaciones
(
id int not null auto_increment primary key,
id_serie int not null,
id_modeloCarro int not null,
descripcion varchar (20),
id_tipoCarro int not null,
foreign key(id_serie)references SerieCarro(id),
foreign key(id_modeloCarro)references ModeloCarro(id),
foreign key(id_tipoCarro)references TipoCarro(id)
);


insert into TipoCarro (id,nombre) values(1,'Automovil');

insert into MarcaCarro (id,nombre,id_TipoCarro) values(1,'Chevrolet',1);
insert into MarcaCarro (id,nombre,id_TipoCarro) values(2,'Peugeot',1);
insert into MarcaCarro (id,nombre,id_TipoCarro) values(3,'Ford',1);
insert into MarcaCarro (id,nombre,id_TipoCarro) values(4,'Mazda',1);
insert into MarcaCarro (id,nombre,id_TipoCarro) values(5,'Toyota',1);


insert into ModeloCarro (id,id_MarcaCarro,nombre,id_tipoCarro) values(2,1,'Chevrolet Aveo',1);
insert into ModeloCarro (id,id_MarcaCarro,nombre,id_tipoCarro) values(3,2,'3008 suv',1);
insert into ModeloCarro (id,id_MarcaCarro,nombre,id_tipoCarro) values(4,3,'ford edge',1);
insert into ModeloCarro (id,id_MarcaCarro,nombre,id_tipoCarro) values(5,1,'agh Chevrolet ii',1);
insert into ModeloCarro (id,id_MarcaCarro,nombre,id_tipoCarro) values(6,1,'ayu Chevrolet ioi',1);


insert into CaracteristicasCarro (id,nombre,id_tipoCarro) values(1,'Plazas',1);
insert into CaracteristicasCarro (id,nombre,id_tipoCarro) values(2,'Motor',1);
insert into CaracteristicasCarro (id,nombre,id_tipoCarro) values(3,'Marca Combustible',1);


insert into ValorCaracteristicas (id,valorar,unidadMedida,id_caracteristicas,id_tipoCarro) values(1,'uno','Minivan',1,1);

/* Stored procedure CRUD -- create -- */

delimiter $$

drop procedure if exists `Autos`.`ejemploC` $$
create procedure `Autos`.`ejemploC` ()
begin

create table nueva(
id int not null auto_increment primary key,
nombre varchar (20),
cambioFecha timestamp default current_timestamp
on update current_timestamp
);
insert into nueva(id,nombre) values (1,'hi',now());
insert into nueva(id,nombre) values (2,'jo',now());

end $$

delimiter ;
call ejemploC();
select* from nueva;

/*Stored Procedure*/
-- 
/* Stored procedure CRUD -- read -- */

delimiter $$

drop procedure if exists `Autos`.`ejemploR` $$
create procedure `Autos`.`ejemploR` ()
begin

select* from nueva
where id =1;

end $$

delimiter ;
call ejemploR();
select* from nueva;

/*Stored Procedure*/
-- 
/* Stored procedure CRUD -- update -- */

delimiter $$

drop procedure if exists `Autos`.`ejemploU` $$
create procedure `Autos`.`ejemploU` ()
begin

update nueva
set id=2,nombre='jo', cambioFecha=now()
where id=1
and cambioFecha='2018-08-04 13:43:04'; /*cambiar la fecha a la fecha en que se modifica*/

end $$

delimiter ;
call ejemploU();
select* from nueva;

/*Stored Procedure*/
--
/* Stored procedure CRUD -- delete -- */

delimiter $$

drop procedure if exists `Autos`.`ejemploD` $$
create procedure `Autos`.`ejemploD` ()
begin
/*solo correr esto despues de creada la tabla nueva del stored procerier*/

delete from nueva 
where id=1
order by timestamp
limit 1;

end $$

delimiter ;
call ejemploD();
select* from nueva;

/*Stored Procedure*/












    
