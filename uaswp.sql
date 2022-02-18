-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Feb 2022 pada 22.25
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaswp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Kesalahan membaca data untuk tabel uaswp.tb_admin: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uaswp`.`tb_admin`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Jahe'),
(2, 'Lada'),
(3, 'Cengkeh'),
(4, 'Vanili'),
(5, 'Kayu Manis'),
(6, 'Pala'),
(7, 'Kemiri'),
(8, 'Daun Salam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(3, 0, 'cengkeh', 60000, '<p>kami stock supplai cengkeh 100 tons perbulan</p>\r\n', 'produk1645216558.jpg', 1, '2022-02-18 20:35:58'),
(4, 0, 'kemiri', 35000, '<p>kami stock supplai 50 tons perbulan</p>\r\n', 'produk1645216699.jpg', 1, '2022-02-18 20:38:19'),
(5, 0, 'pala', 75000, '<p>kami&nbsp; stock&nbsp; supplai 100 tons perbulan</p>\r\n', 'produk1645216760.jpg', 1, '2022-02-18 20:39:20'),
(6, 0, 'kayu manis', 55000, '<p>kami&nbsp; stock supplai&nbsp; 75 tons perbulan</p>\r\n', 'produk1645216822.jpg', 1, '2022-02-18 20:40:22'),
(7, 0, 'vanili', 2500000, '<p>kami stock 100 kg perbulan</p>\r\n', 'produk1645216885.jpg', 1, '2022-02-18 20:41:25'),
(9, 0, 'lada putih', 75000, '<p>kami stock supplai 100 tons perbulan</p>\r\n', 'produk1645217053.jpg', 1, '2022-02-18 20:44:13'),
(10, 0, 'jahe merah', 60000, '<p>kami stock 100 tons perbulan</p>\r\n', 'produk1645217102.jpg', 1, '2022-02-18 20:45:02'),
(11, 0, 'jahe gajah', 40000, '<p>kami&nbsp; stock 200 tons perbulan</p>\r\n', 'produk1645217162.jpg', 1, '2022-02-18 20:46:02'),
(12, 0, 'jahe emprit', 20000, '<p>kami stock 50 tons perbulan</p>\r\n', 'produk1645217202.jpg', 1, '2022-02-18 20:46:42'),
(13, 0, 'lada hitam', 60000, '<p>kami stock 100 tons perbulan</p>\r\n', 'produk1645218558.jpg', 1, '2022-02-18 21:09:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
