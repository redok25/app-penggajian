-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2021 pada 12.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Staff Marketing', '4000000', '800000', '500000'),
(2, 'Staff Finance', '5000000', '500000', '500000'),
(13, 'Staff Administrasi', '6000000', '450000', '500000'),
(14, 'Admin', '5000000', '500000', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(5, '012020', '1234567999', 'Joni', 'Laki-Laki', 'Staff Finance', 15, 3, 3),
(6, '012020', '1445789057', 'sudarmin', 'Laki-laki', 'Staff Marketing', 17, 2, 2),
(7, '122020', '1234567999', 'Joni', 'Laki-Laki', 'Staff Finance', 14, 3, 4),
(8, '122020', '1445789057', 'sudarmin', 'Laki-laki', 'Staff Marketing', 16, 3, 2),
(9, '112020', '1234567999', 'Joni', 'Laki-Laki', 'Staff Finance', 20, 0, 1),
(10, '112020', '1445789057', 'sudarmin', 'Laki-laki', 'Staff Marketing', 19, 2, 0),
(11, '122020', '1', 'Abi', 'Laki-Laki', 'Admin', 0, 0, 0),
(12, '122020', '3', 'Rania', 'perempuan', 'Admin', 0, 0, 0),
(13, '122020', '4', 'Taufik', 'Laki-Laki', 'Admin', 0, 0, 0),
(14, '122020', '2', 'Yela', 'perempuan', 'Admin', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(60) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `username`, `password`, `nik`, `nama_pegawai`, `jenis_kelamin`, `jabatan`, `tgl_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, 'sudarmin', '202cb962ac59075b964b07152d234b70', '1445789057', 'Sudarmin', 'Laki-laki', 'Staff Marketing', '2020-12-01', 'Karyawan Tetap', 'avatar.png', 2),
(5, 'jon', '202cb962ac59075b964b07152d234b70', '1234567999', 'Joni', 'Laki-Laki', 'Staff Finance', '2020-12-01', 'Karyawan Tidak Tetap', 'avatar3.jpg', 2),
(10, 'abi', '19a9228dbbbe3b613190002e54dc3429', '1', 'Abi', 'Laki-Laki', 'Admin', '2020-12-14', 'Karyawan Tetap', 'pp.jpg', 1),
(11, 'yelaelv5', '1d9e18dd1000cf7b20c9b5bd780dc5e2', '2', 'Yela', 'perempuan', 'Admin', '2020-12-14', 'Karyawan Tetap', 'yela.jpg', 1),
(12, 'rania', 'd6bd4288dbcf5d2ae2053a35389e8c56', '3', 'Rania', 'perempuan', 'Admin', '2020-12-14', 'Karyawan Tetap', 'rania.jpg', 1),
(13, 'taufik', 'd4305d7ed2ec97107cd6eb8dd4b6f6b7', '4', 'Taufik', 'Laki-Laki', 'Admin', '2020-12-14', 'Karyawan Tetap', 'taufik.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(60) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(4, 'Alpha', 75000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
