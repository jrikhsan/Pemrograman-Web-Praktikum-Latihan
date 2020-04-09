/*
SQLyog Professional v12.09 (64 bit)
MySQL - 8.0.19 : Database - pendaftaran
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pendaftaran` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `pendaftaran`;

/*Table structure for table `tb_tamu` */

DROP TABLE IF EXISTS `tb_tamu`;

CREATE TABLE `tb_tamu` (
  `no` int NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tb_tamu` */

insert  into `tb_tamu`(`no`,`nama`,`alamat`,`email`,`no_telp`) values (1,'irfan nurhudin','ujung berung','bo_i77@yahoo.com','085613548789'),(2,'Wasmui','Jatimulyo','boy@gmail.com','084567897890'),(3,'Sumarno','Surodadi','man@ymail.com','082469823578');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
