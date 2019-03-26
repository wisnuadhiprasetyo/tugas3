-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Mar 2019 pada 16.59
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id` int(50) NOT NULL,
  `orangtua_id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id`, `orangtua_id`, `nama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 1, 'MARKUS', 'SEMARANG', '2018-11-07'),
(2, 2, 'FAJAR', 'BATANG', '2018-04-11'),
(3, 3, 'SITI', 'PEKALONGAN', '2018-11-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kader`
--

CREATE TABLE `kader` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `posyandu_id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kader`
--

INSERT INTO `kader` (`id`, `user_id`, `posyandu_id`, `nama`, `tanggal_lahir`, `alamat`) VALUES
(1, 5, 1, 'SUHARTINI', '1989-03-11', 'JL.WAHYU TEMURUN 12'),
(2, 6, 2, 'DWI', '1987-02-12', 'JL.ANGGREK 3'),
(3, 7, 3, 'SUTINI', '1986-02-02', 'JL.FLAMBOYAN12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `posyandu_id` int(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id`, `user_id`, `posyandu_id`, `nama_ayah`, `nama_ibu`, `alamat`) VALUES
(1, 1, 1, 'SUSYANTO', 'SUTINI', 'JL. WAHYU TEMURUN 12'),
(2, 2, 2, 'SENTOT', 'DWI', 'JL.TERUNTUM 123'),
(3, 3, 3, 'SENTO', 'RINI', 'JL.KASIH12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengukuran`
--

CREATE TABLE `pengukuran` (
  `id` int(11) NOT NULL,
  `anak_id` int(50) NOT NULL,
  `posyandu_id` int(100) NOT NULL,
  `lingkar_kepala` varchar(50) NOT NULL,
  `lingkar_lengan` varchar(50) NOT NULL,
  `berat_badan` varchar(50) NOT NULL,
  `tinggi_badan` varchar(50) NOT NULL,
  `tanggal_pengukuran` varchar(50) NOT NULL,
  `pemeriksa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengukuran`
--

INSERT INTO `pengukuran` (`id`, `anak_id`, `posyandu_id`, `lingkar_kepala`, `lingkar_lengan`, `berat_badan`, `tinggi_badan`, `tanggal_pengukuran`, `pemeriksa`) VALUES
(1, 1, 2, '25cm', '15cm', '20Kg', '80', '29 SEPTEMBER 2019', 'PUSKESMAS'),
(2, 2, 1, '20cm', '16cm', '25Kg', '70cm', '20 SEPTEMBER 2019', 'PUSKEMAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posyandu`
--

CREATE TABLE `posyandu` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posyandu`
--

INSERT INTO `posyandu` (`id`, `nama`, `alamat`) VALUES
(1, 'WIWIN', 'JL. LEMPONGSARI II NO 501 B SEMARANG JAWA TENGAH'),
(2, 'YAYUK', 'JL. VETERAN NO. 14 SEMARANG JAWA TENGAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`) VALUES
(1, 'Wisnu Adhi Prasetyo', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kader`
--
ALTER TABLE `kader`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengukuran`
--
ALTER TABLE `pengukuran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posyandu`
--
ALTER TABLE `posyandu`
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
-- AUTO_INCREMENT untuk tabel `anak`
--
ALTER TABLE `anak`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kader`
--
ALTER TABLE `kader`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengukuran`
--
ALTER TABLE `pengukuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `posyandu`
--
ALTER TABLE `posyandu`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
