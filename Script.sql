
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `Peluqueria`;
USE `Peluqueria`;


#Tabla DUEÑO

DROP TABLE IF EXISTS `dueno`;

CREATE TABLE IF NOT EXISTS `dueno` (
  `DNI` int(30) NOT NULL unique,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(30)  NOT NULL,
  `Dirección` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`)
);


INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Dirección`) VALUES
(45365258, 'Luis', 'Ramirez', '456-8547', 'Córdoba 2584'),
(362459871, 'Nicolás', 'Sulis', '469-5656', 'Aconcagua 688');

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Dirección`) VALUES
(35125633, 'Pedro ', 'Gomez', '452-3747', 'Córdoba 3030'),
(52163516, 'Genobeba', 'Clock', '468-2556', 'Av. Siempre Viva 777');
------------------------------------------------------------------------------------------------

#Tabla PERRO

DROP TABLE IF EXISTS `perro`;
CREATE TABLE IF NOT EXISTS `perro` (
  `ID_Perro` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50)NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(50)NOT NULL,
  `DNI_dueno` int(30)NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  FOREIGN KEY (`DNI_dueno`) 
  REFERENCES `dueno` (`DNI`)
);


INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1,'Toto', '2020-06-10','Macho',35125633),
(2,'Mara', '2018-09-10','Hembra',362459871);

INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(3,'Neo', '2021-05-08','Macho',45365258),
(4,'Mara', '2019-09-11','Macho',52163516);

UPDATE `perro` SET `Nombre` = "MILO" WHERE `ID_Perro`=4;
--------------------------------------------------------------------------------------

#Tabla Historial

DROP TABLE IF EXISTS `historial`;
CREATE TABLE IF NOT EXISTS `historial` (
  `ID_Historial` int(5) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Perro` int(5) NOT NULL,
  `Descripción` varchar(50) NOT NULL,
  `Monto` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  FOREIGN KEY  (`Perro`)
  REFERENCES `perro` (`ID_Perro`)
);

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripción`, `Monto`) VALUES
(1, '2022-08-05', 1, 'Atendido por vacunación ', '3000'),
(2, '2021-11-02', 2, 'Atendida por control anual', '7000');

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripción`, `Monto`) VALUES
(3, '2022-08-05', 3, 'Atendido por hongos ', '2000'),
(4, '2022-11-02', 4, 'Atendido pelo Quemado', '10000');

---------------------------------------------------------------------------------------
 
 # Ejercicio Número 6 Base De Datos
 # Villalba Carlos Germán
 
 # Esta base de datos tuvo modificaciones en los datos a modo práctica para corroborar el correcto 
 #funcionamiento de la actividad.
 
 
 SELECT `Nombre` AS " Mascotas Atendidas durante el año >2022 "
 FROM `perro` INNER JOIN `historial` ON `ID_Perro`= `Perro`
 WHERE `Fecha` LIKE "2022%";
  

 commit;
