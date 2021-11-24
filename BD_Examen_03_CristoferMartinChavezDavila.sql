CREATE DATABASE  IF NOT EXISTS Examen_03_Alumnos;

use Examen_03_Alumnos;

DROP TABLE IF EXISTS tb_carrera;
CREATE TABLE tb_carrera
(
  cod_carre int  PRIMARY KEY AUTO_INCREMENT,
  nom_carre varchar(100)
);

DROP TABLE IF EXISTS tb_alumno;
CREATE TABLE tb_alumno
(
  cod_alu char(10),
  nom_alu varchar(25),
  ape_alu varchar(25),
  cod_carre int,
  dni varchar(25),
  correo varchar(30),
  primary key (cod_alu)
);
alter table tb_alumno add constraint FK01 foreign key(cod_carre) references tb_carrera(cod_carre);

insert into tb_carrera values (null, 'Ingenieria Civil');
insert into tb_carrera values (null, 'Ingenieria Minera');
insert into tb_carrera values (null, 'Ingenieria de Sistemas');
insert into tb_carrera values (null, 'Arquitectura');
insert into tb_carrera values (null, 'Medicina');
insert into tb_carrera values (null, 'Derecho');
insert into tb_carrera values (null, 'Ingenieria Industrial');
insert into tb_carrera values (null, 'Administración de Empresas');
insert into tb_carrera values (null, 'Contabilidad');
insert into tb_carrera values (null, 'Economia');
insert into tb_carrera values (null, 'Marketing y Mercadotecnia');
insert into tb_carrera values (null, 'Ingenieria Civil');
insert into tb_carrera values (null, 'Odontologia');
insert into tb_carrera values (null, 'Geologia');
insert into tb_carrera values (null, 'Periodismo');
insert into tb_carrera values (null, 'Historia');
insert into tb_carrera values (null, 'Dieño grafico');
insert into tb_carrera values (null, 'Diseño de Modas');
insert into tb_carrera values (null, 'Cosmetologia');
insert into tb_carrera values (null, 'Nautica');
insert into tb_carrera values (null, 'Turismo');
insert into tb_carrera values (null, 'Quimica');
insert into tb_carrera values (null, 'Fisica');
insert into tb_carrera values (null, 'Biologia Marina');


select * from tb_carrera;

insert into tb_alumno values('abc','Manuel','Fontis',3,'74417353','manuel@gmail.com');
select * from tb_alumno;

insert into tb_alumno values('A001','Scarlet','Ramos',6,'56892536','scar@gmail.com');
insert into tb_alumno values('A002','Ramiro','Dominguez',20,'78945612','rodo@gmail.com');
insert into tb_alumno values('A003','Isabella','Flores',11,'85967213','isa@gmail.com');
insert into tb_alumno values('A004','Micaela','Romero',11,'82469357','miro@gmail.com');
insert into tb_alumno values('A005','Nando','Du Bois',3,'69312548','nando@gmail.com');
insert into tb_alumno values('A006','Gerardo','Tornero',9,'79632584','geto@gmail.com');
insert into tb_alumno values('A007','Pablo','Lopez',13,'74125896','palo@gmail.com');
insert into tb_alumno values('A008','Mark','Ramos',16,'56892536','scar@gmail.com');
insert into tb_alumno values('A009','Josefina','Dominguez',22,'78945612','rodo@gmail.com');
insert into tb_alumno values('A010','Lalo','Flores',19,'85967213','isa@gmail.com');
insert into tb_alumno values('A011','Alexandra','Romero',19,'82469357','miro@gmail.com');
insert into tb_alumno values('A012','Coral','Du Bois',23,'69312548','nando@gmail.com');
insert into tb_alumno values('A013','Angel','Tornero',19,'79632584','geto@gmail.com');
insert into tb_alumno values('A014','Lionel','Lopez',22,'74125896','palo@gmail.com');


select c.nom_carre as 'Carrera',
count(a.cod_carre) as 'Cant. de Alumnos'
from tb_alumno a join tb_carrera c
on a.cod_carre=c.cod_carre
group by a.cod_carre; 
