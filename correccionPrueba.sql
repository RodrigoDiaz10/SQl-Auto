create database Prueba;
using Prueba

create table TipoProductos(
id primary key int not null auto_increment,
nombre varchar not null
);

create table Productos(
id primary key int not null auto_increment,
nombre varchar not null,
fechaCad date null,
cantidad int  not null,
precio double,
id_tipoProducto int,
foreign key (id_tipoProducto) references TipoProducto(id_tipoProducto)
);

create table Personas(
id primary key int not null auto_increment,
nombre varchar(20)not null,
apellido varchar(20)not null,
id_tipoCedula int not null,
direccion varchar (20),
telefono varchar (20)
);

create table Juridico(
id_persona primary key int not null auto_increment,
ruc varchar not null,
foreign key (id_persona) references Personas(id_persona)
);

create table Natural(
id primary key int not null auto_increment,
nombre varchar not null,
cedula varchar not null,
foreign key (id_persona) references Personas(id_persona)
);

create table Clientes(
id primary key int not null auto_increment,
id_persona int not null,
facturaCliente int not null,
foreign key (id_persona) references Personas(id_persona)
);

create table Empleados(
id primary key int not null auto_increment,
id_persona int not null,
fechaInicio date not null,
sueldo decimal not null,
foreign key (id_persona) references Personas(id_persona)
);

create table Facturas(
id primary key int not null auto_increment,
numeroFactura int not null,
fechaFactura date time not null,
id_cliente int not null,
id_empleado int not null,
iva decimal not null,
total decimal not null,
foreign key (id_cliente) references Clientes(id_cliente),
foreign key (id_empleado) references Empleados(id_empleado)
);

create table DetalleFacturas(
id primary key int not null auto_increment,
id_facturas int,
id_tipoProducto int,
precio decimal not null,
cantidad int not null,
valorTotal decimal not null,
foreign key (id_tipoProducto) references TipoProducto(id_tipoProducto),
foreign key (id_facturas) references Facturas(id_facturas)
);

create table Bodegas(
id primary key int not null auto_increment,
nombre varchar (20),
id_producto int not null,
foreign key (id_producto) references Productos(id_producto)
);


create table Producto_por_Bodegas(
id primary key int not null auto_increment,
id_bodega int not null,
id_producto int not null,
cantidad int not null,
foreign key (id_bodega) references Bodega(id_bodega),
foreign key (id_producto) references Productos(id_producto)
);

create table Proveedor(
id primary key int not null auto_increment,
id_persona primary key int not null auto_increment,
foreign key (id_persona) references Personas(id_persona)
);

create table Proveedor_por_Productos(
id primary key int not null auto_increment,
id_provedor int not null,
id_producto int not null,
foreign key (id_proveedor) references Proveedor(id_proveedor),
foreign key (id_producto) references Productos(id_producto)
);


