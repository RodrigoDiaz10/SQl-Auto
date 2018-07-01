create database Ubicacion_Geografica;
use Ubicacion_Geografica;


create table Continentes(
id primary key int not null auto_increment,
nombre varchar (20)
);

create table Paises(
id primary key int not null auto_increment,
nombre varchar (20),
id_continente int,
foreing key (id_continente)references Continentes(id) 
);

create table Regiones(
id primary key int not null auto_increment,
nombre varchar (20),
id_pais int,
foreing key (id_pais)references Paises(id) 
);

create table Provincias(
id primary key int not null auto_increment,
nombre varchar (20),
id_region int,
foreing key (id_region)references Regiones(id) 
);

create table Cantones(
id primary key int not null auto_increment,
nombre varchar (20),
id_provincia int,
foreing key (id_provincia)references Provincias(id) 
);

create table Parroquias(
id primary key int not null auto_increment,
nombre varchar (20),
id_canton int,
foreing key (id_canton)references Cantones(id) 
);

create table Barrios(
id primary key int not null auto_increment,
nombre varchar (20),
id_parroquia int,
foreing key (id_parroquia)references Parroquias(id) 
);

/* +******+*****+ */

create table Ubicacion_Geografica(
    id primary key int not null auto_increment,
    nombre varchar (20),
    id_ancestro int null,
    id_tipo int not null,
    foreing key (id_ancestro) references Ubicacion_Geografica(id),
    foreing key (id_tipo) references Tipo(id)
);

create table Tipo(
    id int not null auto_increment,
    nombre varchar(20)
);

/* +******+*****+ */