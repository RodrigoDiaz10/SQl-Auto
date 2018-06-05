CREATE DATABASE Auto;
USE Auto;
CREATE TABLE Carro (
 id INT PRIMARY KEY , 
 modelo VARCHAR(20) not null, 
 marca varchar(20)not null,
 tipoMotor Varchar(20)not null,
 nombreDuenio varchar (20)not null
 );
 INSERT INTO carro (id,modelo,marca,tipoMotor,marca,nombreDuenio) VALUES ( 1, 'huracan','lambo','4.0 v12','Pepe' );
 INSERT INTO carro (id,modelo,marca,tipoMotor,marca,nombreDuenio) VALUES ( 2, 'gettaro','lambo','4.0 v12','Juan' );
 INSERT INTO carro (id,modelo,marca,tipoMotor,marca,nombreDuenio) VALUES ( 3, 'centaro','lambo','5.0 v12','Marco' );
 INSERT INTO carro (id,modelo,marca,tipoMotor,marca,nombreDuenio) VALUES ( 4, 'huracan','lambo','6.0 v12','Enrique' );
 INSERT INTO carro (id,modelo,marca,tipoMotor,marca,nombreDuenio) VALUES ( 5, 'centaro','lambo','9.0 v12','Esteban' );
 select id, modelo from Carro where id=2; 
 alter table libros add papelesCarro boolean default true;