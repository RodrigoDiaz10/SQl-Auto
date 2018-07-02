create database ProfEstudiantes;
use ProfEstudiantes;

create table Estudiantes(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    notaBD float(5),
    notaProgramacion float (5)
);

INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Arrayan','Tigo','1777778888',9.2 ,7.7 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Nayomi','Queen','1763727377',7.8 ,7 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Pepe','Marmozets','176746347',3.4 ,6.8 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Juan','Skillet','173455765',5.7 ,10 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Marco','Sunekichi','17234567',8.2 ,9.6 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Alvaro','Valdez','17444567',8.5 ,8.3 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Manolo','Pink','1788889988',9 ,7.5 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Pancho','Pocho','17677865',7.9 ,7.9 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Bryan','Hernandez','1787654312',5.8 ,9.7 );
INSERT INTO Estudiantes  (nombre,apellido,cedula,notaBD,notaProgramacion)
VALUES ('Kimberly','Yamile','17786596',5.8 ,7.8 );





/* Consultas */
select* from Estudiantes 
where notaBD = (select MAX(notaBD) from Estudiantes  )
order by nombre1

select * from Estudiantes  
WHERE notaBD = (select MIN(notaBD) from Estudiantes  )
order by nombre1

select * from Estudiantes 
where notaProgramacion = (select MAX(notaProgramacion) from Estudiantes  )
order by nombre1

select * from Estudiantes  
WHERE notaProgramacion = (select MIN(notaProgramacion) from Estudiantes)
order by nombre1

select * from Estudiantes 
order by notabd DESC ;

select * from Estudiantes  
order by notabd asc ;

/*5 estudianets notas mas altas en base*/
select * from
Estudiantes   order by notabd DESC LIMIT 5 


/*
create table Profesores(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    telefono varchar(10)
);




--
/*uno a muchos
create table Matrias(
    id int not null primary key auto_increment,
    id_profesor int not null,
    nombre varchar (20),
    foreing key (id_profesor)references Profesores(id)
);

create table Profesor_Estudiante(
    id int not null primary key auto_increment,
    id_profesor int not null,
    id_materia int not null
    foreing key (id_profesor) references Profesores(id),
    foreing key (id_materia) references Matrias(id)
);
--



/*muchos a muchos
create table Estudiantes(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    telefono varchar(10),
    id_profesor int not null,
    foreing key (id_profesor) references Profesores(id)

);

create table Profesores(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    telefono varchar(10),
    id_Estudiantes s  int not null,
    foreing key (id_Estudiantes s ) references Estudiantes(id)

);
/* fin relacion muchos a muchos */
