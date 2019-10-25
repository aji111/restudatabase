-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2019 pada 02.52
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `deskripsi` varchar(256) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
(26, 'jordan', '', '', ' ', 14000000, 15, '8.jpg'),
(28, 'vans', '', '', ' ', 3000000, 23, '2.jpg'),
(30, 'vans', '', '', ' ', 1000000, 7, '1.jpg'),
(31, 'vans', '', '', ' ', 3000000, 19, '4.png'),
(32, 'vans', '', '', ' ', 400000, 4, '5.jpg'),
(34, 'vans', '', '', ' ', 2542, 564, '6.jpg'),
(35, 'vans', '', '', ' ', 542, 653, '7.jpg'),
(36, 'vans', '', '', ' ', 76476, 764567, '3.jpg'),
(38, 'Adidas', '', '', ' ', 54242785, 76, 'jgf.jpg'),
(39, 'Jordan', '', '', ' ', 53123662, 136, 'download.jpg'),
(40, 'Nike', '', '', ' ', 234587, 43, 'c.jpg'),
(41, 'Nike', '', '', ' ', 8765678, 74, 'images.jpg'),
(42, 'Adidas', '', '', ' ', 3000000, 53, 'g.jpg'),
(43, 'Adidas', '', '', ' ', 4000000, 647, 'images.jpg'),
(44, 'Adidas', '', '', ' ', 40000000, 64, 'jgd.jpg'),
(45, 'Adidas', '', '', ' ', 5555555, 23, 'jgf.jpg'),
(47, 'Compas', '', '', ' ', 100000, 198, 'qw.jpg'),
(48, 'Compas', '', '', ' ', 100000, 124, 'sd.jpg'),
(49, 'Adidas', '', '', ' ', 200000, 87, 'uiaef.jpg'),
(50, 'Compas', '', '', ' Costum', 230000, 234, 'asef.jpg'),
(51, 'vans', '', '', ' Costum', 2000000, 327, 'sfdg.jpg'),
(52, 'Sport', '', '', ' ', 3000000, 13, 'def.jpg'),
(53, 'Adidas', '', '', ' casual', 3500000, 13, 'edgd.jpg'),
(54, 'vans', '', '', ' ', 3000000, 43, 'juyf.jpg'),
(55, 'Bata', '', '', ' casual', 2430000, 23, 'khef.jpg'),
(56, 'Adidas', '', '', ' sport', 2100000, 23, 'o.jpg'),
(57, 'Sneaker', '', '', ' casual', 12300000, 324, 'dsaf.jpg'),
(58, 'Adidas', '', '', ' Ax2', 10500000, 34, 'efds.jpg'),
(59, 'Sneaker', '', '', ' sport', 150000000, 53, 'dsf.jpg'),
(60, 'Nike', '', '', ' sport', 13000000, 43, 'ads.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_buku`, `id_user`, `qty`) VALUES
(15, 12, 2, 0),
(18, 20, 2, 0),
(21, 31, 2, 0),
(22, 30, 1, 0),
(23, 26, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
