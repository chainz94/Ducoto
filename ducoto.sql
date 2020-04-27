-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2020 pada 07.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

CREATE DATABASE ducoto;
USE ducoto;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ducoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(4, 'ducoto', 'ducoto', 'Chainz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`) VALUES
(1, 'Cloud94@gmail.com', 'Cloud94@gmail.com', 'CLOUDERST', '0820808008'),
(2, 'Tifa07@gmail.com', 'Tifa07@gmail.com', 'TIFAS', '011010982');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`) VALUES
(3, 1, '2020-04-01', '100000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(1, 1, 11, 2),
(2, 2, 11, 1),
(3, 3, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `power_produk` varchar(100) NOT NULL,
  `torque_produk` varchar(100) NOT NULL,
  `silinder_produk` varchar(100) NOT NULL,
  `bensinrata_produk` varchar(100) NOT NULL,
  `bensinfull_produk` varchar(100) NOT NULL,
  `tinggi_produk` varchar(100) NOT NULL,
  `berat_produk` varchar(100) NOT NULL,
  `cc_produk` varchar(100) NOT NULL,
  `mesin_produk` varchar(100) NOT NULL,
  `topspeed_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `power_produk`, `torque_produk`, `silinder_produk`, `bensinrata_produk`, `bensinfull_produk`, `tinggi_produk`, `berat_produk`, `cc_produk`, `mesin_produk`, `topspeed_produk`, `deskripsi_produk`, `foto_produk`) VALUES
(1, 'DUCATI PANIGALE V2', '272000000', '155HP', '104Nm', '4 L-Twin', '20 km/l', '17 litres', '840 mm', '176 kg', '955 CC', 'L-Twin', '271 kmh', 'The Red Essence', 'PANIGALE V2.png'),
(2, 'DUCATI PANIGALE V4', '878000000', '214HP', '124Nm ', '4 V-Twin', '14,5 km/l', '16  litres', '835  mm', '175  kg', '1,103  CC', 'V-Twin', '299  kmh', 'The Science of Speed                        ', 'PANIGALE V4.png'),
(4, 'DUCATI PANIGALE V4R', '2100000000', '221HP ', '112Nm ', '4 V-Twin', '14,5 km/l', '16 litres', '830 mm', '172 kg', '998 CC', 'V-Twin', '330 kmh', 'The Sound of Excellence                        ', 'PANIGALE V4 R.png'),
(5, 'DUCATI PANIGALE 1299 R FINAL EDITION', '533000000', '209 HP', '142 Nm', '2 L-Twin', '16 km/l', '17 liters', '830 mm', '168 kg', '1,286 CC', 'L-Twin', '312 kmh', 'Ducati most powerful twin cylinder ever                                                                                                          ', 'PANIGALE 1299.png'),
(6, 'DUCATI SUPERLEGGERA V4', '4100000000', '233 HP', '119 Nm', '4 V4 Engine', '12,5 km/l', '16 litres', '835 mm', '152 kg', '998 CC', 'V4 Engine', '300 kmh', 'Dreams Matter Codename: Project 1708                                                ', 'SUPERLEGGERA V4.png'),
(7, 'DUCATI STREETFIGHTER V4', '311000000', '208HP', '123Nm ', '4 V-Twin', '17 km/l', '16 litres', '845 mm', '180 kg', '1,103 CC', 'V-Twin', '270 kmh', 'The Fight Formula            ', 'STREETFIGHTER V4.png'),
(8, 'DUCATI MONSTER 797', '309000000', '73 HP', '67 Nm', '2 L-Twin', '18 km/l', '16,5 litres', '805 mm', '175 kg', '803 CC', 'L-Twin', '210 kmh', 'Fresh vibes. Sporty Soul', 'MONSTER 797.png'),
(9, 'DUCATI MONSTER 821', '440000000', '109 HP', '86 Nm', '2 L-Twin', '18,5 km/l', '16 litres', '785 - 810 mm', '180 kg', '821 CC', '\r\n            L-Twin', '225 kmh', 'Thats why we love Monster', 'MONSTER 821.png'),
(10, 'DUCATI MONSTER 1200', '455000000', '147 HP', '124 Nm', '4 L-Twin', '19,2 km/l', '16,5 litres', '795 - 820 mm', '187 kg', '1,198 CC', 'L-Twin', '260 kmh', 'I am a Monster', 'MONSTER 1200.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
