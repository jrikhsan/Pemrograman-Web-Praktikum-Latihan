-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 04:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Masker Kain', 'penyaring udara dari virus, bakteri, kuman dll', 'Masker', 5000, 8, 'masker_kain.jpg'),
(5, 'Masker Medis', 'filtering 70%', 'Masker', 2000, 100, 'masker_medis.jpg'),
(6, 'Masker N95', 'filtrasi hingga 95%', 'Masker', 95000, 9, 'masker_n95.jpg'),
(10, 'Masker Filter', 'Masker kipas anti pengap', 'Masker', 20000, 10, 'masker_filter2.jpg'),
(13, 'Masker Kain Scuba', 'Masker Idol ', 'Masker', 11000, 9, 'masker_scuba3.jpg'),
(14, 'Sabun Mandi', 'Sabun cuci tangan', 'Sabun', 3000, 30, 'soap1.jpg'),
(15, 'Handwash', 'Sabun cuci tangan', 'Sabun', 10000, 20, 'handwash1.jpg'),
(16, 'Hand Sanitazer', 'ukuran 1L', 'Hand Sanitazer', 50000, 10, 'handsanit21.jpg'),
(17, 'Suplemen Vit C', 'penambah imunitas', 'Suplemen', 50000, 5, 'suplemen21.jpg'),
(18, 'Roller Abs', 'pembentuk perut', 'Alat Olahraga', 99000, 9, 'fitness31.jpg'),
(19, 'Sit-up holder', 'penahan kaki', 'Alat Olahraga', 89000, 10, 'fitness1.jpg'),
(20, 'Skipping Row', 'Alat lompat tali', 'Alat Olahraga', 55000, 10, 'fitness21.jpg'),
(21, 'Hand Sanitazer', 'ukuran 500mL', 'Hand Sanitazer', 22500, 10, 'handsanit1.jpg'),
(22, 'Suplemen', '100 kapsul', 'Suplemen', 109000, 5, 'suplemen1.jpg'),
(23, 'Maker Kain Katun', 'Lembut Nyaman', 'Masker', 5000, 30, 'masker_kain21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(66) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Joko', 'Tegal', '2020-07-07 00:29:27', '2020-07-08 00:29:27'),
(2, 'kaka', 'semarang', '2020-07-07 00:32:46', '2020-07-08 00:32:46'),
(3, 'agus', 'JLN PAHLAWAN', '2020-07-07 01:02:15', '2020-07-08 01:02:15'),
(5, 'zaza', 'jkt', '2020-07-07 19:10:41', '2020-07-08 19:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 10, 'Maker Filter', 1, 20000, ''),
(2, 2, 5, 'Masker medis', 3, 2000, ''),
(3, 3, 10, 'Maker Filter', 1, 20000, ''),
(4, 4, 10, 'Maker Filter', 3, 20000, ''),
(5, 5, 10, 'Maker Filter', 1, 20000, ''),
(6, 6, 1, 'Masker Kain', 1, 5000, ''),
(7, 7, 1, 'Masker Kain', 1, 5000, ''),
(8, 7, 6, 'Masker N95', 1, 95000, ''),
(9, 8, 13, 'Masker Kain Scuba', 1, 11000, ''),
(10, 9, 18, 'Roller Abs', 1, 99000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok=stok-new.jumlah
    WHERE id_brg=new.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '321', 2),
(4, 'johan', 'johan123', '12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
