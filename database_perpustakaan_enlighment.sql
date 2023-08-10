-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 07:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database perpustakaan enlighment`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(4) NOT NULL,
  `NAMA` varchar(40) NOT NULL,
  `ALAMAT` varchar(50) NOT NULL,
  `KOTA` varchar(25) NOT NULL,
  `NOMOR_TELEPON` varchar(15) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `NAMA`, `ALAMAT`, `KOTA`, `NOMOR_TELEPON`, `TANGGAL_LAHIR`) VALUES
('A001', 'Andy', 'Ciracas', 'Jakarta Timur', '087856782090', '1994-01-01'),
('A002', 'Belle', 'Jebres', 'Surakarta', '087756785040', '2003-11-16'),
('A003', 'Charlie', 'Sukomanunggal', 'Surabaya', '087789703452', '2000-10-26'),
('A004', 'Delon', 'Tegalrejo', 'Yogyakarta', '088956408735', '1995-08-22'),
('A005', 'Elly', 'Denpasar Barat', 'Denpasar', '0817252359', '1999-07-17'),
('A006', 'Ferry', 'Baturono', 'Magelang', '08345698076', '2003-05-15'),
('A007', 'Glory', 'Banjarsari', 'Surakarta', '08567785033', '2003-01-16'),
('A008', 'Harry', 'Jetis', 'Yogyakarta', '08574322696', '2002-12-22'),
('A009', 'Iora', 'Banyumanik', 'Semarang', '08175634094', '2005-01-30'),
('A010', 'Jordy', 'Cilandak', 'Jakarta Selatan', '085634219075', '2001-03-27'),
('A011', 'Kaizen', 'Laweyan', 'Surakarta', '087834787028', '2004-02-23'),
('A012', 'Larry', 'Lembang', 'Bandung', '089673972053', '1996-07-09'),
('A013', 'Mario', 'Serengan', 'Surakarta', '083170263811', '2005-03-29'),
('A014', 'Noah', 'Pasar Kliwon', 'Surakarta', '082134709940', '2003-09-13'),
('A015', 'Ophelia', 'Jebres', 'Surakarta', '087839706812', '2000-03-15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `anggota_domisili_surakarta`
-- (See below for the actual view)
--
CREATE TABLE `anggota_domisili_surakarta` (
`ID_ANGGOTA` varchar(4)
,`NAMA` varchar(40)
,`ALAMAT` varchar(50)
,`KOTA` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `anggota_lahir_abad21`
-- (See below for the actual view)
--
CREATE TABLE `anggota_lahir_abad21` (
`ID_ANGGOTA` varchar(4)
,`NAMA` varchar(40)
,`TANGGAL_LAHIR` date
);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `NO_BUKU` varchar(6) NOT NULL,
  `JUDUL_BUKU` varchar(50) NOT NULL,
  `PENGARANG` varchar(40) NOT NULL,
  `PENERBIT` varchar(20) NOT NULL,
  `TAHUN_TERBIT` int(4) NOT NULL,
  `JENIS_BUKU` varchar(30) NOT NULL,
  `ORIGINAL` int(2) NOT NULL,
  `COPY` int(2) NOT NULL,
  `DIPINJAM` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`NO_BUKU`, `JUDUL_BUKU`, `PENGARANG`, `PENERBIT`, `TAHUN_TERBIT`, `JENIS_BUKU`, `ORIGINAL`, `COPY`, `DIPINJAM`) VALUES
('A00001', '10 Hari menguasai Piano', 'Fauzan Mukrim', 'Lima Sekawan', 2019, 'Seni', 2, 2, 0),
('A00002', 'Dialektika Seni Pertunjukkan', 'Kuswarsantyo', 'Bale Seni Condrorado', 2014, 'Seni', 1, 2, 1),
('B00001', '100 Fakta Unik Tumbuhan', ' Yulia Rendra', 'Lima Sekawan', 2019, 'Biologi', 2, 3, 0),
('B00002', 'Peran Biologi dalam Kehidupan', 'Amira Susastro', 'Lima Sekawan', 2018, 'Biologi', 1, 2, 0),
('C00001', '30 Resep Masakan Jawa', 'Dion Yulianto', 'Lima Sekawan', 2018, 'Kuliner ', 3, 1, 0),
('C00020', 'MySQL', 'George Reese', 'O\'Reilly Media', 2007, 'Computer', 1, 0, 1),
('D00001', 'Cerita Rakyat Dari Benua Amerika', 'Darleen', 'Erlanggi', 2019, 'Dongeng', 2, 1, 0),
('D00002', 'Cerita Rakyat Dari Benua Asia', 'Darleen', 'Erlanggi', 2018, 'Dongeng', 3, 2, 0),
('D00003', 'Cerita Rakyat Dari Benua Australia', 'Darleen', 'Erlanggi', 2017, 'Dongeng', 1, 0, 1),
('D00004', 'Cerita Rakyat Dari Benua Eropa', 'Darleen', 'Erlanggi', 2016, 'Dongeng', 1, 0, 0),
('E00001', 'Pasti Lancar Ngomong Inggris', 'Dyan Yulianto', 'Lima Sekawan', 2018, 'English', 2, 2, 0),
('E00002', 'English Vocabulary for Daily', 'Hermawan', 'Lima Sekawan', 2020, 'English', 1, 0, 1),
('E00003', 'TOEFL Secret', 'Riza Ardyanto', 'Oktan', 2019, 'English', 2, 1, 0),
('E00004', 'Teknologi dan Pembelajaran Bahasa Inggris', 'Ramdani', 'Erlanggi', 2015, 'English', 2, 1, 0),
('E00005', 'Mahir Bahasa Inggris dalam 30 Hari', 'Rozaq Hadi', 'Oktan', 2013, 'English', 2, 1, 0),
('F00001', 'Bitterballen Love', 'Alana Izarra', 'Oktan', 2015, 'Novel Fiksi', 1, 0, 0),
('F00002', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Lentera Dipantara', 2005, 'Novel Fiksi', 1, 0, 0),
('F00003', 'Anak Semua Bangsa', 'Pramoedya Ananta Toer', 'Lentera Dipantara', 2005, 'Novel Fiksi', 1, 0, 1),
('G00001', 'Pengantar Sistem Informasi Geografis', 'Rolly Maulana', 'Kreatif Industri', 2019, 'Geografi', 1, 1, 0),
('G00002', 'Atlas geografi', 'Tim Guru Geografi', 'Forum Edukasi', 2018, 'Geografi', 2, 1, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `buku_karangan_darleen`
-- (See below for the actual view)
--
CREATE TABLE `buku_karangan_darleen` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`PENERBIT` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `buku_yang_sedang_dipinjam`
-- (See below for the actual view)
--
CREATE TABLE `buku_yang_sedang_dipinjam` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENERBIT` varchar(20)
,`TAHUN_TERBIT` int(4)
,`JENIS_BUKU` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `buku_yang_tersedia`
-- (See below for the actual view)
--
CREATE TABLE `buku_yang_tersedia` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`PENERBIT` varchar(20)
,`TAHUN_TERBIT` int(4)
,`JENIS_BUKU` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `denda`
-- (See below for the actual view)
--
CREATE TABLE `denda` (
`ID_ANGGOTA` varchar(4)
,`NAMA` varchar(40)
,`DENDA` bigint(16)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jenis_buku_english`
-- (See below for the actual view)
--
CREATE TABLE `jenis_buku_english` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`PENERBIT` varchar(20)
,`JENIS_BUKU` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_buku`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_buku` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`JENIS_BUKU` varchar(30)
,`ORIGINAL` int(2)
,`COPY` int(2)
,`JUMLAH_BUKU` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `keterlambatan_pengembalian`
-- (See below for the actual view)
--
CREATE TABLE `keterlambatan_pengembalian` (
`ID_ANGGOTA` varchar(4)
,`NAMA` varchar(40)
,`KETERLAMBATAN` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lama_peminjaman`
-- (See below for the actual view)
--
CREATE TABLE `lama_peminjaman` (
`ID_ANGGOTA` varchar(4)
,`NAMA` varchar(40)
,`TANGGAL_PINJAM` date
,`TANGGAL_KEMBALI` date
,`LAMA_PINJAM` int(7)
);

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `ID_ANGGOTA` varchar(4) NOT NULL,
  `NO_BUKU` varchar(6) NOT NULL,
  `TANGGAL_PINJAM` date NOT NULL,
  `TANGGAL_KEMBALI` date NOT NULL,
  `KETERANGAN` enum('DIKEMBALIKAN','BELUM DIKEMBALIKAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`ID_ANGGOTA`, `NO_BUKU`, `TANGGAL_PINJAM`, `TANGGAL_KEMBALI`, `KETERANGAN`) VALUES
('A001', 'F00003', '2022-10-18', '2022-10-26', 'DIKEMBALIKAN'),
('A002', 'E00001', '2022-08-11', '2022-08-23', 'DIKEMBALIKAN'),
('A003', 'E00002', '2022-09-22', '2022-09-29', 'DIKEMBALIKAN'),
('A004', 'D00004', '2022-07-12', '2022-07-21', 'DIKEMBALIKAN'),
('A005', 'D00003', '2022-12-07', '0000-00-00', 'BELUM DIKEMBALIKAN'),
('A006', 'E00005', '2022-09-14', '2022-09-30', 'DIKEMBALIKAN'),
('A008', 'E00003', '2022-07-13', '2022-07-27', 'DIKEMBALIKAN'),
('A009', 'A00002', '2022-10-25', '2022-11-04', 'DIKEMBALIKAN'),
('A010', 'E00001', '2022-08-16', '2022-08-23', 'DIKEMBALIKAN'),
('A012', 'C00020', '2022-11-16', '0000-00-00', 'BELUM DIKEMBALIKAN');

-- --------------------------------------------------------

--
-- Stand-in structure for view `status_buku`
-- (See below for the actual view)
--
CREATE TABLE `status_buku` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`JENIS_BUKU` varchar(30)
,`STOCK_BUKU` bigint(21)
,`STATUS_BUKU` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stock_buku`
-- (See below for the actual view)
--
CREATE TABLE `stock_buku` (
`NO_BUKU` varchar(6)
,`JUDUL_BUKU` varchar(50)
,`PENGARANG` varchar(40)
,`JENIS_BUKU` varchar(30)
,`STOCK_BUKU` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `anggota_domisili_surakarta`
--
DROP TABLE IF EXISTS `anggota_domisili_surakarta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `anggota_domisili_surakarta`  AS SELECT `anggota`.`ID_ANGGOTA` AS `ID_ANGGOTA`, `anggota`.`NAMA` AS `NAMA`, `anggota`.`ALAMAT` AS `ALAMAT`, `anggota`.`KOTA` AS `KOTA` FROM `anggota` WHERE `anggota`.`KOTA` = 'Surakarta''Surakarta'  ;

-- --------------------------------------------------------

--
-- Structure for view `anggota_lahir_abad21`
--
DROP TABLE IF EXISTS `anggota_lahir_abad21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `anggota_lahir_abad21`  AS SELECT `anggota`.`ID_ANGGOTA` AS `ID_ANGGOTA`, `anggota`.`NAMA` AS `NAMA`, `anggota`.`TANGGAL_LAHIR` AS `TANGGAL_LAHIR` FROM `anggota` WHERE `anggota`.`TANGGAL_LAHIR` between '2001-01-01' and '2100-01-01''2100-01-01'  ;

-- --------------------------------------------------------

--
-- Structure for view `buku_karangan_darleen`
--
DROP TABLE IF EXISTS `buku_karangan_darleen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buku_karangan_darleen`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENGARANG` AS `PENGARANG`, `buku`.`PENERBIT` AS `PENERBIT` FROM `buku` WHERE `buku`.`PENGARANG` = 'Darleen''Darleen'  ;

-- --------------------------------------------------------

--
-- Structure for view `buku_yang_sedang_dipinjam`
--
DROP TABLE IF EXISTS `buku_yang_sedang_dipinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buku_yang_sedang_dipinjam`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENERBIT` AS `PENERBIT`, `buku`.`TAHUN_TERBIT` AS `TAHUN_TERBIT`, `buku`.`JENIS_BUKU` AS `JENIS_BUKU` FROM (`buku` join `pinjam` on(`buku`.`NO_BUKU` = `pinjam`.`NO_BUKU`)) WHERE `pinjam`.`KETERANGAN` = 'BELUM DIKEMBALIKAN''BELUM DIKEMBALIKAN'  ;

-- --------------------------------------------------------

--
-- Structure for view `buku_yang_tersedia`
--
DROP TABLE IF EXISTS `buku_yang_tersedia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buku_yang_tersedia`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENGARANG` AS `PENGARANG`, `buku`.`PENERBIT` AS `PENERBIT`, `buku`.`TAHUN_TERBIT` AS `TAHUN_TERBIT`, `buku`.`JENIS_BUKU` AS `JENIS_BUKU` FROM (`buku` join `status_buku` on(`buku`.`NO_BUKU` = `status_buku`.`NO_BUKU`)) WHERE `status_buku`.`STATUS_BUKU` = 'TERSEDIA''TERSEDIA'  ;

-- --------------------------------------------------------

--
-- Structure for view `denda`
--
DROP TABLE IF EXISTS `denda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `denda`  AS SELECT `anggota`.`ID_ANGGOTA` AS `ID_ANGGOTA`, `anggota`.`NAMA` AS `NAMA`, (`lama_peminjaman`.`LAMA_PINJAM` - 7) * 2000 AS `DENDA` FROM (`lama_peminjaman` join `anggota` on(`lama_peminjaman`.`ID_ANGGOTA` = `anggota`.`ID_ANGGOTA`))  ;

-- --------------------------------------------------------

--
-- Structure for view `jenis_buku_english`
--
DROP TABLE IF EXISTS `jenis_buku_english`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jenis_buku_english`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENGARANG` AS `PENGARANG`, `buku`.`PENERBIT` AS `PENERBIT`, `buku`.`JENIS_BUKU` AS `JENIS_BUKU` FROM `buku` WHERE `buku`.`JENIS_BUKU` = 'English''English'  ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_buku`
--
DROP TABLE IF EXISTS `jumlah_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_buku`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENGARANG` AS `PENGARANG`, `buku`.`JENIS_BUKU` AS `JENIS_BUKU`, `buku`.`ORIGINAL` AS `ORIGINAL`, `buku`.`COPY` AS `COPY`, `buku`.`ORIGINAL`+ `buku`.`COPY` AS `JUMLAH_BUKU` FROM `buku``buku`  ;

-- --------------------------------------------------------

--
-- Structure for view `keterlambatan_pengembalian`
--
DROP TABLE IF EXISTS `keterlambatan_pengembalian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `keterlambatan_pengembalian`  AS SELECT `anggota`.`ID_ANGGOTA` AS `ID_ANGGOTA`, `anggota`.`NAMA` AS `NAMA`, `lama_peminjaman`.`LAMA_PINJAM`- 7 AS `KETERLAMBATAN` FROM (`anggota` join `lama_peminjaman` on(`anggota`.`ID_ANGGOTA` = `lama_peminjaman`.`ID_ANGGOTA`))  ;

-- --------------------------------------------------------

--
-- Structure for view `lama_peminjaman`
--
DROP TABLE IF EXISTS `lama_peminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lama_peminjaman`  AS SELECT `anggota`.`ID_ANGGOTA` AS `ID_ANGGOTA`, `anggota`.`NAMA` AS `NAMA`, `pinjam`.`TANGGAL_PINJAM` AS `TANGGAL_PINJAM`, `pinjam`.`TANGGAL_KEMBALI` AS `TANGGAL_KEMBALI`, to_days(`pinjam`.`TANGGAL_KEMBALI`) - to_days(`pinjam`.`TANGGAL_PINJAM`) AS `LAMA_PINJAM` FROM (`anggota` join `pinjam` on(`anggota`.`ID_ANGGOTA` = `pinjam`.`ID_ANGGOTA`))  ;

-- --------------------------------------------------------

--
-- Structure for view `status_buku`
--
DROP TABLE IF EXISTS `status_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `status_buku`  AS SELECT `stock_buku`.`NO_BUKU` AS `NO_BUKU`, `stock_buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `stock_buku`.`PENGARANG` AS `PENGARANG`, `stock_buku`.`JENIS_BUKU` AS `JENIS_BUKU`, `stock_buku`.`STOCK_BUKU` AS `STOCK_BUKU`, if(`stock_buku`.`STOCK_BUKU` = '0','KOSONG','TERSEDIA') AS `STATUS_BUKU` FROM `stock_buku``stock_buku`  ;

-- --------------------------------------------------------

--
-- Structure for view `stock_buku`
--
DROP TABLE IF EXISTS `stock_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stock_buku`  AS SELECT `buku`.`NO_BUKU` AS `NO_BUKU`, `buku`.`JUDUL_BUKU` AS `JUDUL_BUKU`, `buku`.`PENGARANG` AS `PENGARANG`, `buku`.`JENIS_BUKU` AS `JENIS_BUKU`, `jumlah_buku`.`JUMLAH_BUKU`- `buku`.`DIPINJAM` AS `STOCK_BUKU` FROM (`buku` join `jumlah_buku` on(`buku`.`NO_BUKU` = `jumlah_buku`.`NO_BUKU`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`NO_BUKU`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD KEY `NO_BUKU` (`NO_BUKU`),
  ADD KEY `NO_BUKU_2` (`NO_BUKU`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`),
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`NO_BUKU`) REFERENCES `buku` (`NO_BUKU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
