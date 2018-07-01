create database ProfEstudiantes;
use ProfEstudiantes;

create table Estudiantes(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    telefono varchar(10)
);

create table Profesores(
    id int not null primary key auto_increment,
    nombre varchar (20),
    apellido varchar(20),
    cedula varchar(10),
    telefono varchar(10)
);
/*uno a muchos*/
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
/*muchos a muchos*/
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
    id_estudiante int not null,
    foreing key (id_estudiante) references Estudiantes(id)

);
/* fin relacion muchos a muchos */
