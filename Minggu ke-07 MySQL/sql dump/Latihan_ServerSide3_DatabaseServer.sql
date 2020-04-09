/*
SQLyog Professional v12.09 (64 bit)
MySQL - 8.0.19 : Database - sewa_mobil
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sewa_mobil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sewa_mobil`;

/*Table structure for table `kendaraan` */

DROP TABLE IF EXISTS `kendaraan`;

CREATE TABLE `kendaraan` (
  `no_plat` varchar(20) NOT NULL,
  `tahun` int DEFAULT NULL,
  `tarif` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `id_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_plat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `kendaraan` */

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `no_ktp` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` int DEFAULT NULL,
  PRIMARY KEY (`no_ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pelanggan` */

/*Table structure for table `sopir` */

DROP TABLE IF EXISTS `sopir`;

CREATE TABLE `sopir` (
  `id_sopir` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` int DEFAULT NULL,
  `sim` varchar(5) DEFAULT NULL,
  `tarif` int DEFAULT NULL,
  PRIMARY KEY (`id_sopir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sopir` */

/*Table structure for table `tipe_kendaraan` */

DROP TABLE IF EXISTS `tipe_kendaraan`;

CREATE TABLE `tipe_kendaraan` (
  `id_type` varchar(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tipe_kendaraan` */

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `no_transaksi` varchar(20) NOT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali_rencana` date DEFAULT NULL,
  `tgl_kembali_realisasi` date DEFAULT NULL,
  `jam_kembali_rencana` int DEFAULT NULL,
  `jam_kembali_realisasi` int DEFAULT NULL,
  `denda` int DEFAULT NULL,
  `km_pinjam` int DEFAULT NULL,
  `km_kembali` int DEFAULT NULL,
  `bbm_pinjam` int DEFAULT NULL,
  `bbm_kembali` int DEFAULT NULL,
  `kondisi_mobil_pinjam` varchar(100) DEFAULT NULL,
  `kondisi_mobil_kembali` varchar(100) DEFAULT NULL,
  `kerusakan` varchar(100) DEFAULT NULL,
  `biaya_kerusakan` int DEFAULT NULL,
  `biaya_bbm` int DEFAULT NULL,
  `id_sopir` varchar(10) DEFAULT NULL,
  `no_ktp` int DEFAULT NULL,
  `no_plat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `transaksi` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
