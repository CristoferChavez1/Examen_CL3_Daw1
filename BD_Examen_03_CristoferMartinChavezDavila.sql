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
  cod_Alu int PRIMARY KEY AUTO_INCREMENT,
  nom_Alu varchar(25),
  ape_Alu varchar(25),
  cod_carre int,
  dni varchar(25),
  correo varchar(30)
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

select * from tb_carrera;

insert into tb_alumno values(null,'Manuel','Fontis',3,'74417353','manuel@gmail.com');

select * from tb_alumno;
