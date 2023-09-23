-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 06:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sits`
--

-- --------------------------------------------------------

--
-- Table structure for table `cctv_dokgiat_koordinir`
--

CREATE TABLE `cctv_dokgiat_koordinir` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cctv_dokgiat_koordinir`
--

INSERT INTO `cctv_dokgiat_koordinir` (`idx`, `tanggal`, `lokasi`, `kegiatan`) VALUES
(2, '2023-08-10', 'kesana', 'gak ada'),
(3, '2023-09-11', 'Darmo', 'Aman');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_dokgiat_pemasangan`
--

CREATE TABLE `cctv_dokgiat_pemasangan` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cctv_dokgiat_pemasangan`
--

INSERT INTO `cctv_dokgiat_pemasangan` (`idx`, `tanggal`, `lokasi`, `kegiatan`) VALUES
(2, '2023-08-02', 'Malang', 'Sederhana'),
(4, '2023-08-11', 'sana sini', 'diam'),
(5, '2023-09-11', 'Darmo', 'Pasang CCTV');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_dokgiat_satgas`
--

CREATE TABLE `cctv_dokgiat_satgas` (
  `idx` int(99) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `sebelum` varchar(256) NOT NULL,
  `sesudah` varchar(256) NOT NULL,
  `lokasi` varchar(256) NOT NULL,
  `kegiatan` varchar(256) NOT NULL,
  `progres` varchar(256) NOT NULL,
  `maintener` varchar(256) NOT NULL,
  `tglup` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cctv_dokgiat_satgas`
--

INSERT INTO `cctv_dokgiat_satgas` (`idx`, `tanggal`, `jam`, `sebelum`, `sesudah`, `lokasi`, `kegiatan`, `progres`, `maintener`, `tglup`) VALUES
(1, '2023-09-11', '11:17:00', 'bg.jpg', 'bg.jpg', 'bratang', 's', 's', 's', '2023-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_giatcctv`
--

CREATE TABLE `cctv_giatcctv` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `user` varchar(20) NOT NULL,
  `sebelum` varchar(256) NOT NULL,
  `sesudah` varchar(256) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kegiatan` varchar(50) NOT NULL,
  `progres` varchar(50) DEFAULT NULL,
  `maintener` varchar(50) NOT NULL,
  `tanggal_kamera_up` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cctv_giatkoordinir`
--

CREATE TABLE `cctv_giatkoordinir` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `user` varchar(20) NOT NULL,
  `sebelum` varchar(256) NOT NULL,
  `sesudah` varchar(256) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kegiatan` varchar(50) NOT NULL,
  `progres` varchar(50) DEFAULT NULL,
  `maintener` varchar(20) NOT NULL,
  `tanggal_kamera_up` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cctv_giatsatgas`
--

CREATE TABLE `cctv_giatsatgas` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `user` varchar(20) NOT NULL,
  `sebelum` varchar(256) NOT NULL,
  `sesudah` varchar(256) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kegiatan` varchar(50) NOT NULL,
  `progres` varchar(50) DEFAULT NULL,
  `maintener` varchar(50) NOT NULL,
  `tanggal_kamera_up` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cctv_inven_cctv`
--

CREATE TABLE `cctv_inven_cctv` (
  `idx` int(11) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `sn` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cctv_inven_cctv`
--

INSERT INTO `cctv_inven_cctv` (`idx`, `merk`, `foto`, `sn`, `jumlah`, `tanggal`) VALUES
(6, 'Espon', 'Untitled design.jpg', '21sn', 5, '2023-08-29'),
(10, 'samasug', 'pexels-craig-adderley-2306279.jpg', 'edwqed234', 41341, '4131-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_inven_material`
--

CREATE TABLE `cctv_inven_material` (
  `idx` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cctv_inven_material`
--

INSERT INTO `cctv_inven_material` (`idx`, `nama_barang`, `jumlah`, `tanggal`) VALUES
(2, 'cctv', 6, '2023-08-28'),
(4, 'adaptor', 2, '2023-09-04'),
(5, 'Adaptor', 6, '2023-09-04'),
(6, '', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `cctv_stockcctv`
--

CREATE TABLE `cctv_stockcctv` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(50) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `sn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eva_dokgiat`
--

CREATE TABLE `eva_dokgiat` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eva_dokgiat`
--

INSERT INTO `eva_dokgiat` (`idx`, `tanggal`, `lokasi`, `keterangan`) VALUES
(9, '2023-09-10', 'Darmo', 'Aman');

-- --------------------------------------------------------

--
-- Table structure for table `eva_inven`
--

CREATE TABLE `eva_inven` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eva_inven`
--

INSERT INTO `eva_inven` (`idx`, `tanggal`, `nama`, `jumlah`) VALUES
(13, '2023-09-11', 'makan', 5),
(15, '2023-01-01', 'vijar', 6);

-- --------------------------------------------------------

--
-- Table structure for table `eva_invenkeluar`
--

CREATE TABLE `eva_invenkeluar` (
  `id` int(100) NOT NULL,
  `idx` int(100) NOT NULL,
  `nama_barang` varchar(256) NOT NULL,
  `tglkeluar` date NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eva_invenkeluar`
--

INSERT INTO `eva_invenkeluar` (`id`, `idx`, `nama_barang`, `tglkeluar`, `jumlah`) VALUES
(1, 0, '', '2023-09-11', 1),
(2, 0, '', '2023-09-11', 3),
(5, 9, '', '2023-09-13', 2),
(6, 10, '', '2023-09-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eva_invenmasuk`
--

CREATE TABLE `eva_invenmasuk` (
  `id` int(99) NOT NULL,
  `idx` int(99) NOT NULL,
  `tglmasuk` date NOT NULL,
  `nama` varchar(256) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eva_invenmasuk`
--

INSERT INTO `eva_invenmasuk` (`id`, `idx`, `tglmasuk`, `nama`, `jumlah`) VALUES
(1, 1, '2023-09-12', 'CCTV', 2),
(2, 1, '2023-09-12', '', 1),
(3, 1, '2023-09-11', '', 3),
(5, 0, '2023-09-11', '', 10),
(8, 10, '2023-09-13', '', 6),
(9, 11, '2023-09-13', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `eva_invenstock`
--

CREATE TABLE `eva_invenstock` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(256) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eva_invenstock`
--

INSERT INTO `eva_invenstock` (`idx`, `tanggal`, `kode`, `nama`, `stock`) VALUES
(10, '2023-09-13', 'A1', 'Celana', 5),
(11, '2023-09-13', '12', 'kaka', 6);

-- --------------------------------------------------------

--
-- Table structure for table `keluarcctv`
--

CREATE TABLE `keluarcctv` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tglkeluar` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi` varchar(256) DEFAULT NULL,
  `penerima` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluarcctv`
--

INSERT INTO `keluarcctv` (`id`, `idx`, `tglkeluar`, `jumlah`, `lokasi`, `penerima`, `keterangan`) VALUES
(17, 6, '2023-09-06', 3, NULL, 'Wisnu', 'Keluar pak ekok'),
(18, 6, '2023-09-06', 2, NULL, 'Wisnu', 'Keluar pak ekok'),
(21, 6, '2023-09-07', 1, 'surabaya', 'Zuki', 'cc'),
(22, 6, '2023-09-06', 1, '', 'Kaka', 'mm'),
(23, 10, '2023-09-13', 1, 'malang', 'Zuki', 'cc'),
(25, 13, '2023-09-13', 1, 'surabaya', 'Vijar', 'lagi');

-- --------------------------------------------------------

--
-- Table structure for table `keluarinven`
--

CREATE TABLE `keluarinven` (
  `id` int(99) NOT NULL,
  `idx` int(99) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tglkeluar` date NOT NULL,
  `jumlah` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keluarkebersihan`
--

CREATE TABLE `keluarkebersihan` (
  `id` int(99) NOT NULL,
  `idx` int(99) NOT NULL,
  `nama_barang` varchar(256) NOT NULL,
  `tglkeluar` date NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluarkebersihan`
--

INSERT INTO `keluarkebersihan` (`id`, `idx`, `nama_barang`, `tglkeluar`, `jumlah`) VALUES
(1, 0, '', '2023-09-07', 1),
(2, 0, '', '2023-09-07', 1),
(3, 0, '', '2023-09-07', 1),
(6, 12, '', '2023-09-07', 4),
(7, 9, '', '2023-09-10', 1),
(8, 9, '', '2023-09-10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `keluarmaterial`
--

CREATE TABLE `keluarmaterial` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tglkeluar` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluarmaterial`
--

INSERT INTO `keluarmaterial` (`id`, `idx`, `tglkeluar`, `jumlah`, `penerima`, `keterangan`) VALUES
(2, 3, '2023-09-06', 2, 'Marco', ''),
(3, 3, '2023-09-06', 1, 'Marco', ''),
(5, 2, '2023-09-06', 1, 'Wisnu', 'Bagus'),
(15, 7, '2023-09-13', 5, 'Zuki', 'ambil'),
(21, 17, '2023-09-13', 1, 'Zuki', 'dapat');

-- --------------------------------------------------------

--
-- Table structure for table `keluarsits`
--

CREATE TABLE `keluarsits` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi` varchar(256) DEFAULT NULL,
  `penerima` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluarsits`
--

INSERT INTO `keluarsits` (`id`, `idx`, `tanggal`, `jumlah`, `lokasi`, `penerima`, `keterangan`) VALUES
(1, 2, '2023-09-05', 10, NULL, 'Wisnu', ''),
(6, 5, '2023-09-06', 3, NULL, 'Wisnu', 'Ink'),
(8, 7, '2023-09-07', 1, 'surabaya', 'Vijar', 'hadiah'),
(9, 7, '2023-09-07', 2, 'malang', 'Zuki', 'mm'),
(10, 9, '2023-09-11', 1, 'Darmo', 'Aku', 'Keluar'),
(11, 10, '2023-09-12', 5, 'malang', 'Zuki', 'Di ibahkan'),
(13, 13, '2023-09-15', 1, 'pt marsya', 'Vijar', 'coba');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `ID` int(11) DEFAULT NULL,
  `LOKASI` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`ID`, `LOKASI`) VALUES
(1, 'Darmo-Diponegoro'),
(2, 'Ciliwung-Diponegoro'),
(3, 'Kutai-Diponegoro'),
(4, 'Musi-Diponegoro'),
(5, 'Soetomo-Diponegoro'),
(6, 'Kartini-Diponegoro'),
(7, 'Pasar Kembang-Kedung Doro'),
(8, 'Kedung Sari-Kedung Doro'),
(9, 'Tidar-Kedung Doro'),
(10, 'Blauran-Praban'),
(11, 'Bubutan-Tembaan'),
(12, 'Pahlawan-Tembaan'),
(13, 'Tunjungan-Gemblongan'),
(14, 'Soetomo-Darmo Poliwa'),
(15, 'Pucang Anom-Pucang Anom Timur'),
(16, 'Kertajaya-Dharmawangsa'),
(17, 'Dharmawangsa-Airlangga'),
(18, 'Mustopo-Dharmawangsa'),
(19, 'Karangmenjangan-Mustopo'),
(20, 'Karangmenjangan-Airlangga'),
(21, 'Menur-Kertajaya'),
(22, 'Sumatera-Pemuda'),
(23, 'Jagalan-Pengampon'),
(24, 'Gunungsari-Mastrip Wiyung'),
(25, 'Gunung Sari-Bumi Marinir'),
(26, 'Gunung Sari-Jembatan Rolak'),
(27, 'Gunungsari-Gajahmada'),
(28, 'Jagalan-Pasar Besar'),
(29, 'Ir Soekarno-Arif R Hakim'),
(30, 'Hr Muhamad-Darmo Permai'),
(32, 'Hr Muhammad-Mayjen Sungkono'),
(33, 'Mayjen Sungkono-Dukuh Kupang TVRI'),
(34, 'Adityawarman-Mayjen Sungkono'),
(35, 'Adityawarman-Kutei'),
(36, 'Jend.A.Yani-Raya Margorejo'),
(37, 'Polisi Istimewa-Dinoyo'),
(38, 'Ngagel Jaya Utara-Ngagel Jaya'),
(39, 'Ngagel Jaya Selatan-Ngagel Jaya'),
(40, 'Raya Darmo-Pandegiling'),
(41, 'Gunungsari-Keluar Tol'),
(42, 'Wonokromo-Stasiun Wonokromo'),
(43, 'Ahmad Yani-Jemur Sari Dolog'),
(44, 'Ir H Soekarno-Kenjeran'),
(45, 'Ir H Soekarno-Mulyorejo'),
(46, 'Ir H Soekarno- Unair C'),
(47, 'Ir Soekarno-Kertajaya Indah Koni'),
(48, 'Ir Soekarno-Semolo Waru'),
(49, 'Ir Soekarno-Kedung Baruk'),
(50, 'Sulawesi-Sumatra'),
(51, 'Keputran-Sulawesi'),
(52, 'Rs Islam-Wonokromo'),
(53, 'Nginden-Panjang Jiwo'),
(54, 'Kebon Rojo-Veteran'),
(55, 'Pasar Turi-Tembaan'),
(56, 'Dupak-Demak'),
(57, 'Gresik-Demak'),
(58, 'Ir Soekarno-Gunung Anyar Lor'),
(59, 'Jemursari-Jemur Andayani'),
(60, 'Jemur Andayani-Kendang Sari'),
(61, 'Jemur Sari-Jemur Sari 2'),
(62, 'Margorejo-Prapen'),
(63, 'Margomulyo-Oso Wilangun'),
(64, 'Kembang Jepun-Kapasan'),
(65, 'Kenjeran-Moh Nur'),
(66, 'Ngaglik-Kapasari'),
(67, 'Perak-Rajawali'),
(68, 'Barata Jaya-Bratang Binangun'),
(69, 'Manyar-Bratang Jaya'),
(70, 'Ngagel Jaya Selatan-Manyar'),
(71, 'Ngagel Jaya Selatan-Ngagel Madya'),
(72, 'Bung Tomo-Upa Jiwa'),
(73, 'Dinoyo-Darmo Kali'),
(74, 'Darmokali-Bengawan'),
(75, 'Diponegoro-Banyu Urip'),
(76, 'Jemur Andayani-Kutisari Besar'),
(77, 'Rungkut Industri-Kendangsari'),
(78, 'Kenjeran-Sukolilo Larangan'),
(79, 'Mayjen Sungkono-Bintang Diponggo'),
(80, 'Jend.A.Yani-Jemur BRI'),
(81, 'Kenjeran Thp-Tambak Deres'),
(82, 'Kenjeran Thp-Abdul Latief'),
(83, 'Kusuma Bangsa-Ambengan'),
(84, 'Ambengan-Wijaya Kusuma'),
(85, 'Kenjeran-Tambak Rejo'),
(86, 'Kapas Krampung-Tambak Rejo'),
(87, 'Putro Agung-Kapas Krampung'),
(88, 'Kenjeran-Simokerto'),
(89, 'Jagir Wonokromo-Ngagel'),
(90, 'Panjang Jiwo-Kedung Baruk'),
(91, 'Semolowaru-Sukosemolo'),
(92, 'Undaan Wetan-Ambengan'),
(93, 'Rungkut Madya-Rungkut Asri Tengah'),
(94, 'Jaksa Agung Suprapto-Ambengan'),
(95, 'Kalibutuh-Semarang'),
(96, 'Dupak Rukun-Tol Gresik'),
(97, 'Arif Rahman Hakim-Klampis Anom'),
(98, 'Kartini-Imam Bonjol'),
(99, 'Tegal Sari-Kedungsari'),
(100, 'Arjuno-Tidar'),
(101, 'Sonokembang-Kayoon'),
(102, 'Ngagel Jaya Utara-Ngagel Madya'),
(103, 'Rungkut Tengah-Zamhuri'),
(104, 'Siwalan Kerto-Frontage'),
(105, 'Raya Kali Rungkut-Rungkut puskesmas'),
(106, 'Raya Tenggilis-Tenggilis Barat'),
(107, 'Tandes-Tanjungsari'),
(108, 'Banyu Urip-Simo Pomahan'),
(109, 'Sukomanunggal Jaya-Pos Polisi'),
(110, 'Kupang Jaya-Kupang Indah'),
(111, 'Ry Satelite Indah-'),
(112, 'Darmo-Bengawan'),
(113, 'Merr-Kalijudan'),
(116, 'Gayung Sari Barat-Masjid Agung'),
(117, 'Menur-Pucang Jajar'),
(118, 'Gembong Tebasan-Kapasari'),
(119, 'Pecindilan-Pengampon'),
(120, 'Pegirikan-Karang Tembok'),
(121, 'Balongsari Tama-B. Tama Utara 1'),
(122, 'Darmo Indah-Darmo Indah Barat'),
(123, 'Babatan Indah-Menganti Babatan'),
(124, 'Lakarsantri-Menganti'),
(125, 'Lakarsantri-Citra Raya'),
(126, 'Balongsari-Margomulyo'),
(127, 'Joyoboyo-Gunungsari'),
(128, 'Darmo Permai 3-Yono Suwoyo'),
(129, 'Jl.Brawijaya-Hayam Wuruk'),
(130, 'Ry Satelit Selatan-Ry Sukomanunggal Jy'),
(131, 'Jl. Raya Satelite In-Jl. Raya Satelit Uta'),
(132, 'Jl. Sidotopo Wetan-Jl. Sidoyoso'),
(133, 'Mastrip-Karang Pilang'),
(134, 'Tandes-Darmo Indah'),
(135, 'Embong Wungu-'),
(136, 'Ir Soekarno-Gunung Anyar Timur'),
(137, 'Imam Bonjol-Pandegiling'),
(138, 'Menganti-Royal Residence'),
(139, 'A.Yani-Ketintang Baru'),
(140, 'Raya Manukan-Kyai Amir');

-- --------------------------------------------------------

--
-- Table structure for table `masukcctv`
--

CREATE TABLE `masukcctv` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tglmasuk` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi` varchar(256) DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukcctv`
--

INSERT INTO `masukcctv` (`id`, `idx`, `tglmasuk`, `jumlah`, `lokasi`, `keterangan`) VALUES
(4, 5, '2023-09-05', 5, NULL, 'masuk pak eko'),
(6, 6, '2023-09-06', 4, 'surabaya', 'baguss'),
(8, 6, '2023-09-19', 2, 'Darmo', 'Aman'),
(9, 10, '2023-09-13', 5, 'surabaya', 'coba'),
(10, 12, '2023-09-13', 1, 'surabaya', 'hadiah'),
(11, 13, '2023-09-13', 5, 'malang', 'Di ibahkan');

-- --------------------------------------------------------

--
-- Table structure for table `masukinven`
--

CREATE TABLE `masukinven` (
  `id` int(99) NOT NULL,
  `idx` int(99) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tglmasuk` date NOT NULL,
  `hasil` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukinven`
--

INSERT INTO `masukinven` (`id`, `idx`, `nama`, `tglmasuk`, `hasil`) VALUES
(9, 12, '', '2023-09-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `masukkebersihan`
--

CREATE TABLE `masukkebersihan` (
  `id` int(99) NOT NULL,
  `idx` int(99) NOT NULL,
  `nama_barang` varchar(256) NOT NULL,
  `tglmasuk` date DEFAULT NULL,
  `jumlah` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukkebersihan`
--

INSERT INTO `masukkebersihan` (`id`, `idx`, `nama_barang`, `tglmasuk`, `jumlah`) VALUES
(2, 9, '', '2023-09-07', 6);

-- --------------------------------------------------------

--
-- Table structure for table `masukmaterial`
--

CREATE TABLE `masukmaterial` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tglmasuk` date NOT NULL,
  `serial` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi` varchar(256) DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukmaterial`
--

INSERT INTO `masukmaterial` (`id`, `idx`, `tglmasuk`, `serial`, `jumlah`, `lokasi`, `keterangan`) VALUES
(1, 3, '2023-09-06', '', 20, NULL, ''),
(2, 3, '2023-09-06', '', 5, NULL, ''),
(13, 7, '2023-09-13', '', 11, 'surabaya', 'coba'),
(14, 7, '2023-09-13', '', 4, 'pt marsya', 'Di ibahkan'),
(18, 9, '2023-09-13', '', 5, 'surabaya', 'Di ibahkan'),
(19, 14, '2023-09-13', '', 3, 'malang', 'mm'),
(20, 17, '2023-09-13', '', 5, 'malang', 'coba');

-- --------------------------------------------------------

--
-- Table structure for table `masuksits`
--

CREATE TABLE `masuksits` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `lokasi` varchar(256) DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masuksits`
--

INSERT INTO `masuksits` (`id`, `idx`, `tanggal`, `jumlah`, `lokasi`, `keterangan`) VALUES
(2, 2, '0000-00-00', 9, NULL, ''),
(5, 0, '0000-00-00', 50, NULL, ''),
(14, 9, '2023-09-13', 1, 'Rak', 'Ada'),
(15, 10, '2023-09-12', 10, 'surabaya', 'hadiah');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `contents`, `admin`, `status`) VALUES
(21, 'Disini bisa tulis notes', 'Stock', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `operator_dokgiat`
--

CREATE TABLE `operator_dokgiat` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operator_dokgiat`
--

INSERT INTO `operator_dokgiat` (`idx`, `tanggal`, `id`, `keterangan`) VALUES
(36, '2023-09-09', 15, '15'),
(37, '2023-09-08', 15, '152'),
(38, '2023-09-05', 5, '5'),
(39, '2023-09-03', 3, '3'),
(40, '2023-09-02', 2, '2'),
(41, '2023-09-02', 2, '22');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `lantai` varchar(256) NOT NULL,
  `ruangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `lantai`, `ruangan`) VALUES
(1, 'LANTAI 1', 'RUANG KOORDINATOR'),
(2, 'LANTAI 1', 'LOBBY BAWAH'),
(3, 'LANTAI 1', 'TOILET UTARA'),
(4, 'LANTAI 1', 'TOILET SELATAN '),
(5, 'LANTAI 1', 'R.KARCIS'),
(6, 'LANTAI 1', 'TERAS PARKIR'),
(7, 'LANTAI 2', 'R. OPERATOR'),
(8, 'LANTAI 2', 'DAPUR'),
(9, 'LANTAI 2', 'MUSHOLA'),
(10, 'LANTAI 2', 'TOILET UTARA'),
(11, 'LANTAI 2', 'TOILET SELATAN '),
(12, 'LANTAI 2', 'R. EVALUATOR'),
(13, 'LANTAI 2', 'R. CCTV'),
(14, 'LANTAI 2', 'R. KOORDINATOR');

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_keluar`
--

CREATE TABLE `sbrg_keluar` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(35) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_masuk`
--

CREATE TABLE `sbrg_masuk` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `idx`, `tgl`, `jumlah`, `keterangan`) VALUES
(14, 2, '0000-00-00', 10, ''),
(18, 1, '2023-09-04', 10, ''),
(20, 1, '2023-09-04', 10, ''),
(21, 3, '2023-09-04', 10, ''),
(22, 2, '2023-09-05', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `sits_bukutamu`
--

CREATE TABLE `sits_bukutamu` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `ktp` varchar(256) NOT NULL,
  `surat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sits_bukutamu`
--

INSERT INTO `sits_bukutamu` (`idx`, `tanggal`, `nama`, `no_telp`, `instansi`, `keperluan`, `lokasi`, `ktp`, `surat`) VALUES
(11, '2023-09-04', 'marko', 2147483647, 'Walikota', 'Mancing', 'SITS', 'Untitled design.jpg', ''),
(17, '2023-09-01', 'Besi', 122121, 'SITS', 'Kecelakaan', 'Darmo', 'Virtual Background LPJ.jpg', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `sits_inven`
--

CREATE TABLE `sits_inven` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sits_inven`
--

INSERT INTO `sits_inven` (`idx`, `tanggal`, `nama_barang`, `jumlah_barang`) VALUES
(3, '2023-08-10', 'cctv', 3123);

-- --------------------------------------------------------

--
-- Table structure for table `sits_invkbrshn`
--

CREATE TABLE `sits_invkbrshn` (
  `idx` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sits_invkbrshn`
--

INSERT INTO `sits_invkbrshn` (`idx`, `tanggal`, `nama_barang`, `stock`) VALUES
(15, '2023-09-13', 'Helm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Stock', 'stock'),
(14, 'wisnu', 'wisnu', 'wisnu', 'stock'),
(15, 'admin', 'admin', 'admin', 'stock');

-- --------------------------------------------------------

--
-- Table structure for table `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `lokasi` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `nama`, `jenis`, `ukuran`, `stock`, `satuan`, `lokasi`) VALUES
(298, 'Laptop', 'Elektronik', 'Besar', 10, 'Unit', 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `status_ruangan`
--

CREATE TABLE `status_ruangan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_ruangan` varchar(256) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_ruangan`
--

INSERT INTO `status_ruangan` (`id`, `tanggal`, `id_ruangan`, `status`) VALUES
(1, '2023-09-11', '1', 'sudah'),
(2, '2023-09-19', '6', 'belum'),
(3, '2023-09-14', '7', 'sudah');

-- --------------------------------------------------------

--
-- Table structure for table `stockcctv`
--

CREATE TABLE `stockcctv` (
  `idx` int(11) NOT NULL,
  `serial` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `stock` int(11) NOT NULL,
  `tglkontrak` date NOT NULL,
  `paket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockcctv`
--

INSERT INTO `stockcctv` (`idx`, `serial`, `tipe`, `jenis`, `tahun`, `stock`, `tglkontrak`, `paket`) VALUES
(13, 'Marco ', 'Z', 'IBLIS', 2021, 4, '2023-09-13', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `stockmaterial`
--

CREATE TABLE `stockmaterial` (
  `idx` int(11) NOT NULL,
  `serial` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `stock` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockmaterial`
--

INSERT INTO `stockmaterial` (`idx`, `serial`, `merk`, `tipe`, `tahun`, `stock`) VALUES
(14, 'w2w2w2', 'samsung', 'e-tilang', 2020, 3),
(15, 'sasd', 'hm', 'e-tilang', 2021, 0),
(17, 'm1', 'samsung', 'e-tilang', 2021, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stocksits`
--

CREATE TABLE `stocksits` (
  `idx` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocksits`
--

INSERT INTO `stocksits` (`idx`, `nama_barang`, `stock`) VALUES
(14, 'Helm', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cctv_dokgiat_koordinir`
--
ALTER TABLE `cctv_dokgiat_koordinir`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_dokgiat_pemasangan`
--
ALTER TABLE `cctv_dokgiat_pemasangan`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_dokgiat_satgas`
--
ALTER TABLE `cctv_dokgiat_satgas`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_giatcctv`
--
ALTER TABLE `cctv_giatcctv`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_giatkoordinir`
--
ALTER TABLE `cctv_giatkoordinir`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_giatsatgas`
--
ALTER TABLE `cctv_giatsatgas`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_inven_cctv`
--
ALTER TABLE `cctv_inven_cctv`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_inven_material`
--
ALTER TABLE `cctv_inven_material`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `cctv_stockcctv`
--
ALTER TABLE `cctv_stockcctv`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `eva_dokgiat`
--
ALTER TABLE `eva_dokgiat`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `eva_inven`
--
ALTER TABLE `eva_inven`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `eva_invenkeluar`
--
ALTER TABLE `eva_invenkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eva_invenmasuk`
--
ALTER TABLE `eva_invenmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eva_invenstock`
--
ALTER TABLE `eva_invenstock`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `keluarcctv`
--
ALTER TABLE `keluarcctv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarinven`
--
ALTER TABLE `keluarinven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarkebersihan`
--
ALTER TABLE `keluarkebersihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarmaterial`
--
ALTER TABLE `keluarmaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarsits`
--
ALTER TABLE `keluarsits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masukcctv`
--
ALTER TABLE `masukcctv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masukinven`
--
ALTER TABLE `masukinven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masukkebersihan`
--
ALTER TABLE `masukkebersihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masukmaterial`
--
ALTER TABLE `masukmaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masuksits`
--
ALTER TABLE `masuksits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator_dokgiat`
--
ALTER TABLE `operator_dokgiat`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sits_bukutamu`
--
ALTER TABLE `sits_bukutamu`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `sits_inven`
--
ALTER TABLE `sits_inven`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `sits_invkbrshn`
--
ALTER TABLE `sits_invkbrshn`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `status_ruangan`
--
ALTER TABLE `status_ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockcctv`
--
ALTER TABLE `stockcctv`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `stockmaterial`
--
ALTER TABLE `stockmaterial`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `stocksits`
--
ALTER TABLE `stocksits`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cctv_dokgiat_koordinir`
--
ALTER TABLE `cctv_dokgiat_koordinir`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cctv_dokgiat_pemasangan`
--
ALTER TABLE `cctv_dokgiat_pemasangan`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cctv_dokgiat_satgas`
--
ALTER TABLE `cctv_dokgiat_satgas`
  MODIFY `idx` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cctv_giatcctv`
--
ALTER TABLE `cctv_giatcctv`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cctv_giatkoordinir`
--
ALTER TABLE `cctv_giatkoordinir`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cctv_giatsatgas`
--
ALTER TABLE `cctv_giatsatgas`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cctv_inven_cctv`
--
ALTER TABLE `cctv_inven_cctv`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cctv_inven_material`
--
ALTER TABLE `cctv_inven_material`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cctv_stockcctv`
--
ALTER TABLE `cctv_stockcctv`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eva_dokgiat`
--
ALTER TABLE `eva_dokgiat`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `eva_inven`
--
ALTER TABLE `eva_inven`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `eva_invenkeluar`
--
ALTER TABLE `eva_invenkeluar`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eva_invenmasuk`
--
ALTER TABLE `eva_invenmasuk`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `eva_invenstock`
--
ALTER TABLE `eva_invenstock`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keluarcctv`
--
ALTER TABLE `keluarcctv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `keluarinven`
--
ALTER TABLE `keluarinven`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluarkebersihan`
--
ALTER TABLE `keluarkebersihan`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `keluarmaterial`
--
ALTER TABLE `keluarmaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `keluarsits`
--
ALTER TABLE `keluarsits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `masukcctv`
--
ALTER TABLE `masukcctv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `masukinven`
--
ALTER TABLE `masukinven`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `masukkebersihan`
--
ALTER TABLE `masukkebersihan`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masukmaterial`
--
ALTER TABLE `masukmaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `masuksits`
--
ALTER TABLE `masuksits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `operator_dokgiat`
--
ALTER TABLE `operator_dokgiat`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sits_bukutamu`
--
ALTER TABLE `sits_bukutamu`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sits_inven`
--
ALTER TABLE `sits_inven`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sits_invkbrshn`
--
ALTER TABLE `sits_invkbrshn`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `status_ruangan`
--
ALTER TABLE `status_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockcctv`
--
ALTER TABLE `stockcctv`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stockmaterial`
--
ALTER TABLE `stockmaterial`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stocksits`
--
ALTER TABLE `stocksits`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
