-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Okt 2024 pada 10.32
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_raporkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(10) NOT NULL,
  `absen` text NOT NULL,
  `sort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id_absen`, `absen`, `sort`) VALUES
(1, 'Hadir', 'H'),
(2, 'Sakit', 'S'),
(3, 'Izin', 'I'),
(4, 'Tanpa Berita', 'TB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id_agama` int(10) NOT NULL,
  `agama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Katholik'),
(3, 'Kristen'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Kong Hu Chu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulanan`
--

CREATE TABLE `bulanan` (
  `id_bulanan` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `bulanan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bulanan`
--

INSERT INTO `bulanan` (`id_bulanan`, `semester`, `bulanan`) VALUES
(1, 2, 'Januari'),
(2, 2, 'Februari'),
(3, 2, 'Maret'),
(4, 2, 'April'),
(5, 2, 'Mei'),
(6, 2, 'Juni'),
(7, 1, 'Juli'),
(8, 1, 'Agustus'),
(9, 1, 'Sempember'),
(10, 1, 'Oktober'),
(11, 1, 'November'),
(12, 1, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_wali`
--

CREATE TABLE `catatan_wali` (
  `id_catatan` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `catatan_wali`
--

INSERT INTO `catatan_wali` (`id_catatan`, `tahun`, `semester`, `id_kelas`, `id_siswa`, `catatan`) VALUES
(1, 2, 1, 4, 65, ''),
(2, 2, 1, 4, 76, ''),
(3, 2, 1, 4, 75, ''),
(4, 2, 1, 4, 74, ''),
(5, 2, 1, 4, 73, ''),
(6, 2, 1, 4, 72, ''),
(7, 2, 1, 4, 71, ''),
(8, 2, 1, 4, 70, ''),
(9, 2, 1, 4, 69, ''),
(10, 2, 1, 4, 68, ''),
(11, 2, 1, 4, 67, ''),
(12, 2, 1, 4, 66, ''),
(13, 2, 1, 4, 77, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi`
--

CREATE TABLE `dimensi` (
  `id_dimensi` int(10) NOT NULL,
  `dimensi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dimensi`
--

INSERT INTO `dimensi` (`id_dimensi`, `dimensi`) VALUES
(1, 'Beriman, Bertakwa Kepada Tuhan Yang Maha Esa, dan Berakhlak Mulia '),
(2, 'Berkebhinekaan Global'),
(3, 'Bergotong-Royong'),
(4, 'Mandiri'),
(5, 'Bernalar Kritis'),
(6, 'Kreatif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `elemen`
--

CREATE TABLE `elemen` (
  `id_elemen` int(10) NOT NULL,
  `id_dimensi` int(10) NOT NULL,
  `kode_elemen` text NOT NULL,
  `elemen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `elemen`
--

INSERT INTO `elemen` (`id_elemen`, `id_dimensi`, `kode_elemen`, `elemen`) VALUES
(1, 1, '1.1', 'Akhlak Beragama'),
(2, 1, '1.2', 'Akhlak Pribadi'),
(3, 1, '1.3', 'Akhlak Kepada Manusia'),
(4, 1, '1.4', 'Akhlak Kepada Alam'),
(5, 1, '1.5', 'Akhlak Bernegara'),
(6, 2, '2.1', 'Mengenal dan menghargai budaya'),
(7, 2, '2.2', 'Komunikasi dan interaksi antar budaya'),
(8, 2, '2.3', 'Refleksi dan bertanggung jawab terhadap pengalaman kebinekaan'),
(9, 2, '2.4', 'Berkeadilan Sosial'),
(10, 3, '3.1', 'Kolaborasi'),
(11, 3, '3.2', 'Kepedulian'),
(12, 3, '3.3', 'Berbagi'),
(13, 4, '4.1', 'Pemahaman diri dan situasi yang dihadapi'),
(14, 4, '4.2', 'Regulasi Diri'),
(15, 5, '5.1', 'Memperoleh dan memproses informasi dan gagasan'),
(16, 5, '5.2', 'Menganalisis dan mengevaluasi penalaran dan prosedurnya'),
(17, 5, '5.3', 'Refleksi pemikiran dan proses berpikir'),
(18, 6, '6.1', 'Menghasilkan gagasan yang orisinal'),
(19, 6, '6.2', 'Menghasilkan karya dan tindakan yang orisinal'),
(20, 6, '6.3', 'Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `eskul`
--

CREATE TABLE `eskul` (
  `id_eskul` int(10) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `id_sekolah` int(10) NOT NULL,
  `nama_eskul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `eskul`
--

INSERT INTO `eskul` (`id_eskul`, `kode`, `id_sekolah`, `nama_eskul`) VALUES
(1, '1', 1, 'Volly'),
(2, '', 0, 'Pramuka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harian`
--

CREATE TABLE `harian` (
  `id_harian` int(10) NOT NULL,
  `harian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harian`
--

INSERT INTO `harian` (`id_harian`, `harian`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'Sabtu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan_keluarga`
--

CREATE TABLE `hubungan_keluarga` (
  `id_hubungan_keluarga` int(10) NOT NULL,
  `hubunga_keluarga` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungan_keluarga`
--

INSERT INTO `hubungan_keluarga` (`id_hubungan_keluarga`, `hubunga_keluarga`) VALUES
(1, 'Anak Kandung'),
(2, 'Anak Tiri'),
(3, 'Anak Angkat'),
(4, 'Anak Piara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Operator Sekolah'),
(3, 'Guru Mata Pelajaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id_jenis_kelamin` int(10) NOT NULL,
  `jenis_kelamin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_keluar`
--

CREATE TABLE `jenis_keluar` (
  `id_jenis_keluar` int(10) NOT NULL,
  `jenis_keluar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_keluar`
--

INSERT INTO `jenis_keluar` (`id_jenis_keluar`, `jenis_keluar`) VALUES
(1, 'Pindah Sekolah'),
(2, 'Drop Out');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_siswa`
--

CREATE TABLE `jenis_siswa` (
  `id_jenis_siswa` int(10) NOT NULL,
  `jenis_siswa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_siswa`
--

INSERT INTO `jenis_siswa` (`id_jenis_siswa`, `jenis_siswa`) VALUES
(1, 'Siswa Baru'),
(2, 'Siswa Pindahan'),
(3, 'Mutasi Keluar'),
(4, 'Lulusan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat_keluar`
--

CREATE TABLE `jenis_surat_keluar` (
  `id_jenis_surat_keluar` int(10) NOT NULL,
  `jenis_surat_keluar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_surat_keluar`
--

INSERT INTO `jenis_surat_keluar` (`id_jenis_surat_keluar`, `jenis_surat_keluar`) VALUES
(1, 'Umum'),
(2, 'Surat Panggilan Pelanggaran'),
(3, 'Surat Panggilan Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `id_tingkat` int(10) NOT NULL,
  `id_kompetensi_keahlian` int(10) NOT NULL,
  `nama_kelas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_tingkat`, `id_kompetensi_keahlian`, `nama_kelas`) VALUES
(1, 1, 1, 'X AK'),
(2, 1, 2, 'X BD'),
(3, 1, 3, 'X PH'),
(4, 1, 4, 'X RPL'),
(5, 1, 5, 'X LPKKK'),
(6, 2, 1, 'XI AK'),
(7, 2, 2, 'XI BD'),
(8, 2, 3, 'XI PH'),
(9, 2, 4, 'XI RPL'),
(10, 2, 5, 'XI LPKKK'),
(11, 3, 1, 'XII AK'),
(12, 3, 2, 'XII BD'),
(13, 3, 3, 'XII PH'),
(14, 3, 4, 'XII RPL'),
(15, 3, 5, 'XII LPKKK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_wali`
--

CREATE TABLE `kelas_wali` (
  `id_kelas_wali` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_wali`
--

INSERT INTO `kelas_wali` (`id_kelas_wali`, `tahun`, `semester`, `id_kelas`, `id_user`) VALUES
(4, 2, 1, 4, 36),
(11, 2, 1, 1, 0),
(12, 2, 1, 2, 0),
(13, 2, 1, 3, 0),
(14, 2, 1, 5, 0),
(15, 2, 1, 6, 0),
(16, 2, 1, 7, 0),
(17, 2, 1, 8, 0),
(18, 2, 1, 9, 0),
(19, 2, 1, 10, 0),
(20, 2, 1, 11, 0),
(21, 2, 1, 12, 0),
(22, 2, 1, 13, 0),
(23, 2, 1, 14, 35),
(24, 2, 1, 15, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_mapel`
--

CREATE TABLE `kelompok_mapel` (
  `id_kelompok` int(10) NOT NULL,
  `huruf` text NOT NULL,
  `kelompok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok_mapel`
--

INSERT INTO `kelompok_mapel` (`id_kelompok`, `huruf`, `kelompok`) VALUES
(1, 'A', 'Kelompok Mata Pelajaran Umum'),
(2, 'B', 'Kelompok Mata Pelajaran Kejuruan\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_sekolah`
--

CREATE TABLE `kepala_sekolah` (
  `id_kepala_sekolah` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `nama` text NOT NULL,
  `nip` text NOT NULL,
  `nuptk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepegawaian`
--

CREATE TABLE `kepegawaian` (
  `id_kepegawaian` int(10) NOT NULL,
  `kepegawaian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepegawaian`
--

INSERT INTO `kepegawaian` (`id_kepegawaian`, `kepegawaian`) VALUES
(1, 'PNS'),
(2, 'CPNS'),
(3, 'PNS PPK'),
(4, 'PNS Kemenag'),
(5, 'Honorer Sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kompetensi_keahlian`
--

CREATE TABLE `kompetensi_keahlian` (
  `id_kompetensi_keahlian` int(10) NOT NULL,
  `kompetensi_keahlian` text NOT NULL,
  `deskripsi` text NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kompetensi_keahlian`
--

INSERT INTO `kompetensi_keahlian` (`id_kompetensi_keahlian`, `kompetensi_keahlian`, `deskripsi`, `banner`) VALUES
(1, 'Akuntansi', 'Akuntansi Keuangan Lembaga', '1.jpg'),
(2, 'Bisnis Digital', 'Bisnis Daring Dan Pemasaran', '1.jpg'),
(3, 'Perhotelan', 'Akomodasi Perhotelan', '1.jpg'),
(4, 'Rekayasa Perangkat Lunak', 'Informatika/Rekayasa Perangkat Lunak', '1.jpg'),
(5, 'Farmasi Klinis dan Komunitas', 'Farmasi Klinis dan Komunitas Kesehatan', '1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(10) NOT NULL,
  `kurikulum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `kurikulum`) VALUES
(1, 'Kurikulum Merdeka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lager_nilai_mapel`
--

CREATE TABLE `lager_nilai_mapel` (
  `id_lager_nilai_mapel` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai_formatif` char(10) NOT NULL,
  `nilai_sumatif_ph` char(10) NOT NULL,
  `nilai_sumatif_ts` char(10) NOT NULL,
  `nilai_sumatif_as` char(10) NOT NULL,
  `nilai_akhir_mapel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lager_nilai_mid`
--

CREATE TABLE `lager_nilai_mid` (
  `id_lager_nilai_mapel` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai_formatif` char(10) NOT NULL,
  `nilai_sumatif_ph` char(10) NOT NULL,
  `nilai_sumatif_ts` char(10) NOT NULL,
  `nilai_akhir_ts` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_wa`
--

CREATE TABLE `laporan_wa` (
  `id_laporan` int(11) NOT NULL,
  `kontak` varchar(13) NOT NULL,
  `status_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lulusan`
--

CREATE TABLE `lulusan` (
  `id_lulusan` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `tanggal_lulus` date NOT NULL,
  `tingkat_lanjut` enum('Lanjut Study','Bekerja','Berwirausaha','-') NOT NULL,
  `sekolah_tujuan` text NOT NULL,
  `no_ijazah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(10) NOT NULL,
  `id_sekolah` int(10) NOT NULL,
  `id_kelompok` int(10) NOT NULL,
  `nama_mapel` text NOT NULL,
  `s_mapel` text NOT NULL,
  `urut` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_sekolah`, `id_kelompok`, `nama_mapel`, `s_mapel`, `urut`) VALUES
(1, 1, 1, 'Pendidikan Agama dan Budi Pekerti', 'PABP', 1),
(2, 1, 1, 'Pendidikan Pancasila', 'PP', 2),
(3, 1, 1, 'Bahasa Indonesia', 'BI', 3),
(4, 1, 1, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'PJOK', 4),
(5, 1, 1, 'Sejarah', 'Sej', 5),
(6, 1, 1, 'Seni Musik', 'SM', 6),
(7, 1, 1, 'Muatan Lokal Bahasa Daerah', 'MLBD', 7),
(8, 1, 2, 'Matematika', 'MTK', 8),
(9, 1, 2, 'Bahasa Inggris', 'BHSING', 9),
(10, 1, 2, 'Informatika', 'INF', 10),
(11, 1, 2, 'Dasar Dasar Akuntansi dan Keuangan Lembaga', 'DDAKL', 12),
(12, 1, 2, 'Dasar Dasar Bisnis Digital', 'DDBD', 12),
(13, 1, 2, 'Dasar Dasar Perhotelan', 'DDPH', 12),
(14, 1, 2, 'Dasar Dasar Pengembangan Perangkat Lunak dan Gim', 'DDRPL', 12),
(15, 1, 2, 'Dasar Dasar Teknologi Farmasi', 'DDFKK', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_kelas`
--

CREATE TABLE `mapel_kelas` (
  `id_mapel_kelas` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel_kelas`
--

INSERT INTO `mapel_kelas` (`id_mapel_kelas`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_user`) VALUES
(1, 2, 1, 1, 1, 0),
(2, 2, 1, 1, 2, 0),
(3, 2, 1, 1, 3, 0),
(4, 2, 1, 1, 4, 0),
(5, 2, 1, 1, 5, 0),
(6, 2, 1, 1, 6, 0),
(7, 2, 1, 1, 7, 0),
(8, 2, 1, 1, 8, 0),
(9, 2, 1, 1, 9, 0),
(10, 2, 1, 1, 10, 36),
(11, 2, 1, 1, 11, NULL),
(12, 2, 1, 2, 1, 0),
(13, 2, 1, 2, 2, 0),
(14, 2, 1, 2, 3, 0),
(15, 2, 1, 2, 4, 0),
(16, 2, 1, 2, 5, 0),
(17, 2, 1, 2, 6, 0),
(18, 2, 1, 2, 7, 0),
(19, 2, 1, 2, 8, 0),
(20, 2, 1, 2, 9, 0),
(21, 2, 1, 2, 10, 36),
(22, 2, 1, 2, 12, NULL),
(23, 2, 1, 3, 1, NULL),
(24, 2, 1, 3, 2, NULL),
(25, 2, 1, 3, 3, NULL),
(26, 2, 1, 3, 4, NULL),
(27, 2, 1, 3, 5, NULL),
(28, 2, 1, 3, 6, NULL),
(29, 2, 1, 3, 7, NULL),
(30, 2, 1, 3, 8, NULL),
(31, 2, 1, 3, 9, NULL),
(32, 2, 1, 3, 10, NULL),
(33, 2, 1, 3, 13, NULL),
(34, 2, 1, 4, 1, 0),
(35, 2, 1, 4, 2, 0),
(36, 2, 1, 4, 3, 0),
(37, 2, 1, 4, 4, 0),
(38, 2, 1, 4, 5, 0),
(39, 2, 1, 4, 6, 0),
(40, 2, 1, 4, 7, 0),
(41, 2, 1, 4, 8, 0),
(42, 2, 1, 4, 9, 0),
(43, 2, 1, 4, 10, 36),
(44, 2, 1, 4, 14, 36),
(45, 2, 1, 5, 1, 0),
(46, 2, 1, 5, 2, 0),
(47, 2, 1, 5, 3, 0),
(48, 2, 1, 5, 4, 0),
(49, 2, 1, 5, 5, 0),
(50, 2, 1, 5, 6, 0),
(51, 2, 1, 5, 7, 0),
(52, 2, 1, 5, 8, 0),
(53, 2, 1, 5, 9, 0),
(54, 2, 1, 5, 10, 36),
(55, 2, 1, 5, 15, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_proyek`
--

CREATE TABLE `mapel_proyek` (
  `id_mapel_proyek` int(10) NOT NULL,
  `id_proyek_kelas` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id_mapel_siswa` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_tingkat` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_keluar`
--

CREATE TABLE `mutasi_keluar` (
  `id_mutasi_keluar` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `jenis_keluar` int(10) NOT NULL,
  `alasan` text NOT NULL,
  `sekolah_tujuan` text NOT NULL,
  `no_surat` int(10) NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_masuk`
--

CREATE TABLE `mutasi_masuk` (
  `id_mutasi_masuk` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `sekolah_asal` text NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_assesmen_subelemen`
--

CREATE TABLE `nilai_assesmen_subelemen` (
  `id_nilai_assesmen_subelemen` int(10) NOT NULL,
  `id_proyek_kelas` int(10) NOT NULL,
  `id_dimensi` int(10) NOT NULL,
  `id_elemen` int(10) NOT NULL,
  `id_sub_elemen` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_formatif`
--

CREATE TABLE `nilai_formatif` (
  `id_nilai_formatif` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_tujuan` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL,
  `middle` int(10) NOT NULL,
  `nas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_formatif`
--

INSERT INTO `nilai_formatif` (`id_nilai_formatif`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_tujuan`, `id_siswa`, `nilai`, `middle`, `nas`) VALUES
(1, 2, 1, 4, 14, 1, 80, 80, 1, 1),
(2, 2, 1, 4, 14, 1, 81, 0, 1, 1),
(3, 2, 1, 4, 14, 1, 82, 0, 1, 1),
(4, 2, 1, 4, 14, 1, 83, 0, 1, 1),
(5, 2, 1, 4, 14, 1, 84, 0, 1, 1),
(6, 2, 1, 4, 14, 1, 86, 0, 1, 1),
(7, 2, 1, 4, 14, 1, 85, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kelas`
--

CREATE TABLE `nilai_kelas` (
  `id_nilai_kelas` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `jumlah` char(10) NOT NULL,
  `nilai` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_kelas`
--

INSERT INTO `nilai_kelas` (`id_nilai_kelas`, `tahun`, `semester`, `id_kelas`, `id_siswa`, `jumlah`, `nilai`) VALUES
(36, 2, 1, 4, 80, '57', '57'),
(37, 2, 1, 4, 81, '', ''),
(38, 2, 1, 4, 82, '', ''),
(39, 2, 1, 4, 83, '', ''),
(40, 2, 1, 4, 84, '', ''),
(41, 2, 1, 4, 86, '', ''),
(42, 2, 1, 4, 85, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kelas_mid`
--

CREATE TABLE `nilai_kelas_mid` (
  `id_nilai_kelas_mid` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `jumlah` char(10) NOT NULL,
  `nilai` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mapel`
--

CREATE TABLE `nilai_mapel` (
  `id_nilai_mapel` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` char(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `kktp` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mapel_mid`
--

CREATE TABLE `nilai_mapel_mid` (
  `id_mapel_mid` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `jumlah` char(10) NOT NULL,
  `nilai` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mata_pelajaran`
--

CREATE TABLE `nilai_mata_pelajaran` (
  `id_nilai_mata_pelajaran` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_mata_pelajaran`
--

INSERT INTO `nilai_mata_pelajaran` (`id_nilai_mata_pelajaran`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_siswa`, `nilai`) VALUES
(396, 2, 1, 4, 14, 80, '57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_proyek`
--

CREATE TABLE `nilai_proyek` (
  `id_nilai_proyek` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `proyek` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_dimensi` int(10) NOT NULL,
  `id_elemen` int(10) NOT NULL,
  `id_sub_elemen` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_sumatif_as`
--

CREATE TABLE `nilai_sumatif_as` (
  `id_nilai_sumatif_as` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_sumatif_as`
--

INSERT INTO `nilai_sumatif_as` (`id_nilai_sumatif_as`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_siswa`, `nilai`) VALUES
(1, 2, 1, 4, 14, 80, 10),
(2, 2, 1, 4, 14, 81, 0),
(3, 2, 1, 4, 14, 82, 0),
(4, 2, 1, 4, 14, 83, 0),
(5, 2, 1, 4, 14, 84, 0),
(6, 2, 1, 4, 14, 86, 0),
(7, 2, 1, 4, 14, 85, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_sumatif_ph`
--

CREATE TABLE `nilai_sumatif_ph` (
  `id_nilai_sumatif_ph` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_tujuan` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL,
  `middle` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_sumatif_ph`
--

INSERT INTO `nilai_sumatif_ph` (`id_nilai_sumatif_ph`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_tujuan`, `id_siswa`, `nilai`, `middle`) VALUES
(1, 2, 1, 4, 14, 1, 80, 81, 1),
(2, 2, 1, 4, 14, 1, 81, 0, 1),
(3, 2, 1, 4, 14, 1, 82, 0, 1),
(4, 2, 1, 4, 14, 1, 83, 0, 1),
(5, 2, 1, 4, 14, 1, 84, 0, 1),
(6, 2, 1, 4, 14, 1, 86, 0, 1),
(7, 2, 1, 4, 14, 1, 85, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_sumatif_ts`
--

CREATE TABLE `nilai_sumatif_ts` (
  `id_nilai_sumatif_ts` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_sumatif_ts`
--

INSERT INTO `nilai_sumatif_ts` (`id_nilai_sumatif_ts`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_siswa`, `nilai`) VALUES
(1, 2, 1, 4, 14, 80, 0),
(2, 2, 1, 4, 14, 81, 0),
(3, 2, 1, 4, 14, 82, 0),
(4, 2, 1, 4, 14, 83, 0),
(5, 2, 1, 4, 14, 84, 0),
(6, 2, 1, 4, 14, 86, 0),
(7, 2, 1, 4, 14, 85, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_ujian`
--

CREATE TABLE `nilai_ujian` (
  `id_nilai` int(10) NOT NULL,
  `id_paket_soal` int(10) NOT NULL,
  `id_siswa` int(20) NOT NULL,
  `acak_soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `sisa_waktu` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `jml_benar` int(5) NOT NULL,
  `jml_kosong` int(5) NOT NULL,
  `jml_salah` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `status` varchar(100) NOT NULL,
  `size` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembagian_raport`
--

CREATE TABLE `pembagian_raport` (
  `id_pembagian` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `tanggal_mid` date NOT NULL,
  `tanggal_rapor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembagian_raport`
--

INSERT INTO `pembagian_raport` (`id_pembagian`, `tahun`, `semester`, `tanggal_mid`, `tanggal_rapor`) VALUES
(1, 2, 1, '2024-10-04', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembina_eskul`
--

CREATE TABLE `pembina_eskul` (
  `id_pembina_eskul` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_eskul` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembina_eskul`
--

INSERT INTO `pembina_eskul` (`id_pembina_eskul`, `tahun`, `semester`, `id_eskul`, `id_user`) VALUES
(3, 2, 1, 1, 35),
(5, 2, 1, 2, 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(10) NOT NULL,
  `pendidikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `pendidikan`) VALUES
(1, 'S2'),
(2, 'S1'),
(3, 'D3'),
(4, 'D2'),
(5, 'SMA/MA/SMK/MAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengingat`
--

CREATE TABLE `pengingat` (
  `id_pengingat` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_pengingat` varchar(30) NOT NULL,
  `waktu_pengingat` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `aktif` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengingat`
--

INSERT INTO `pengingat` (`id_pengingat`, `user_id`, `nama_pengingat`, `waktu_pengingat`, `pesan`, `aktif`) VALUES
(12, 1, 'Pengingat penginputan nilai ra', '2024-09-03T18:56', 'tolong segera di inputkan nilainya', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `piket_harian`
--

CREATE TABLE `piket_harian` (
  `id_piket_harian` int(10) NOT NULL,
  `id_harian` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prakerin`
--

CREATE TABLE `prakerin` (
  `id_prakerin` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `mitra` text NOT NULL,
  `lokasi` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `bulan` char(10) NOT NULL,
  `tanggal` char(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_absen` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `penyelenggara` text NOT NULL,
  `nama_kegiatan` text NOT NULL,
  `tingkat` enum('Internasional','Nasional','Provinsi','Kabupaten','Kecamatan','Sekolah') NOT NULL,
  `tanggal_sertifikat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek_kelas`
--

CREATE TABLE `proyek_kelas` (
  `id_proyek_kelas` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_tema` int(10) NOT NULL,
  `judul_proyek` text NOT NULL,
  `deskripsi_singkat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek_subelemen`
--

CREATE TABLE `proyek_subelemen` (
  `id_proyek_subelemen` int(10) NOT NULL,
  `id_proyek_kelas` int(10) NOT NULL,
  `id_dimensi` int(10) NOT NULL,
  `id_elemen` int(10) NOT NULL,
  `id_sub_elemen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek_tema`
--

CREATE TABLE `proyek_tema` (
  `id_tema` int(10) NOT NULL,
  `tema` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proyek_tema`
--

INSERT INTO `proyek_tema` (`id_tema`, `tema`) VALUES
(1, 'Gaya Hidup Berkelanjutan'),
(2, 'Kearifan Lokal'),
(3, 'Bhinneka Tunggal Ika'),
(4, 'Bangunlah Jiwa dan Raganya'),
(5, 'Suara Demokrasi'),
(6, 'Rekayasa dan Teknologi'),
(7, 'Kewirausahaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekrutmen`
--

CREATE TABLE `rekrutmen` (
  `id_rekrutmen` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `tanggal_mulai_pendaftaran` date DEFAULT NULL,
  `tanggal_tutup_pendaftaran` date DEFAULT NULL,
  `pengumuman_administrasi` date DEFAULT NULL,
  `pengumuman_hasil` date DEFAULT NULL,
  `cbt_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(10) NOT NULL,
  `npsn` text NOT NULL,
  `nama_sekolah` text NOT NULL,
  `id_jenjang` int(10) NOT NULL,
  `bentuk_sekolah` int(10) NOT NULL,
  `yayasan` text NOT NULL,
  `website` text NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `kontak` text NOT NULL,
  `desa` text NOT NULL,
  `kecamatan` text NOT NULL,
  `kabupaten` text NOT NULL,
  `provinsi` text NOT NULL,
  `logo_prov` text NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `logo` text NOT NULL,
  `gambar1` text NOT NULL,
  `lokasi` int(10) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `frame_peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `npsn`, `nama_sekolah`, `id_jenjang`, `bentuk_sekolah`, `yayasan`, `website`, `alamat`, `email`, `kontak`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `logo_prov`, `tahun`, `semester`, `logo`, `gambar1`, `lokasi`, `visi`, `misi`, `frame_peta`) VALUES
(1, '20505005', 'SMK ABDI NEGARA TUBAN', 1, 1, 'ABDI NEGARA', 'web.smkabdinegara.sch.id', 'JL. DR. Wahidin Sudirohusodo NO.798 Sidorejo Tuban', 'smkabdinegara798@gmail.com', '--', 'Sidorejo', 'Tuban', 'Tuban', 'Jawa Timur', '20505005-220px-Coat_of_arms_of_East_Java.svg.png', 2, 1, '20505005-SMK ABDI LOGO_1.png', 'contohgambar1.jpg', 1, 'Terwujudnya insan yang berkarakter, unggul dalam prestasi, berwawasan global, dan peduli lingkungan', 'sadjlkasdlsa asdlsamdlsa mdasldalsd sajdlsamkldnsa dsadiiwqeoqwoisad sadkaslkdals msadlkksamdlsa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1817.3598243287408!2d123.10916123639596!3d-8.270567482943843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dab81937a537f3d%3A0x5a7cbcdd72391dc2!2sRumah%20AL%20FARIBI!5e1!3m2!1sid!2sid!4v1699366304253!5m2!1sid!2sid\" style=\"width:100%; height:100%;\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(10) NOT NULL,
  `semester` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id_semester`, `semester`) VALUES
(1, 'Ganjil'),
(2, 'Genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL,
  `nama_siswa` text NOT NULL,
  `nis` text NOT NULL,
  `nisn` text NOT NULL,
  `kelamin` int(10) DEFAULT NULL,
  `agama` int(10) DEFAULT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text NOT NULL,
  `kontak_siswa` text NOT NULL,
  `hub_keluarga` int(10) NOT NULL,
  `jumlah_saudara` int(10) NOT NULL,
  `anak_ke` int(10) NOT NULL,
  `nama_ayah` text NOT NULL,
  `nama_ibu` text NOT NULL,
  `alamat_ortu` text NOT NULL,
  `kontak_ortu` text NOT NULL,
  `pekerjaan_ayah` text NOT NULL,
  `pekerjaan_ibu` text NOT NULL,
  `nama_wali` text NOT NULL,
  `alamat_wali` text NOT NULL,
  `pekerjaan_wali` text NOT NULL,
  `kontak_wali` text NOT NULL,
  `sekolah_asal` text NOT NULL,
  `terima_kelas` int(10) DEFAULT NULL,
  `jurusan` varchar(10) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `terima_tanggal` date DEFAULT NULL,
  `username` text NOT NULL,
  `pass` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `foto` text NOT NULL,
  `jenis_siswa` int(10) NOT NULL,
  `aktif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `kontak_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `sekolah_asal`, `terima_kelas`, `jurusan`, `nik`, `terima_tanggal`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(1, 'AFWINDA AFRIYANTI', '3507/913/8.3.3', '0083923417', 2, 1, 'TUBAN', '2008-12-27', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'DESI ALPI YUNITA', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0083923417', '0083923417', '$2y$10$OhunOXr9Fp1MIuu7HGA3c.UUa5aEB7DYZ.KkbcW6GMLn9o8MvdTMW', '', 1, 1),
(2, 'AURELLYA NAUFARA MEYLA PUTRI', '3508/914/8.3.3', '0088321882', 2, 1, 'TUBAN', '2008-05-04', 'DK MLANGWE RT/RW 002/004 DESA MENTOSO KECAMATAN JENU KABUPATEN TUBAN KODE POS 62352', '', 0, 0, 0, '', 'LILIK NURYANI', 'DK MLANGWE RT/RW 002/004 DESA MENTOSO KECAMATAN JENU KABUPATEN TUBAN KODE POS 62352', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0088321882', '0088321882', '$2y$10$35FVWwxBErUTZyzW7PgxM.JTA/OfP1udj3aAB3unmdvQ3NF47OJMa', '', 1, 1),
(3, 'CINTA MAULIDYA', '1111111111', '0095381824', 2, 1, 'TUBAN', '2009-03-23', 'DUSUN GEMPOL RT/RW 02/10 DESA GENAHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SUWARNING', 'DUSUN GEMPOL RT/RW 02/10 DESA GENAHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0095381824', '0095381824', '$2y$10$MxtQU9mSmltyWpvVwhOjHuke6Y24D1EtOAMr6cjOnYSTHUpDtxc2y', '', 1, 1),
(4, 'FITRI OKTAVIA', '3509/915/8.3.3', '0086492067', 2, 1, 'TUBAN', '2008-10-27', 'DSN BOGOR RT 002 RW 010 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '', 0, 0, 0, '', 'NAR\'UM', 'DSN BOGOR RT 002 RW 010 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0086492067', '0086492067', '$2y$10$hfTW.C/oantxXgRrxgSHweaS7JCpwwzUJ9VQxXzOEkRYpuZgA9bAW', '', 1, 1),
(5, 'INTAN NUR QOMARIAH YUNITA', '3510/916/8.3.3', '0097334140', 2, 1, 'TUBAN', '2009-06-26', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'IKA AYU NUR VERRY', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0097334140', '0097334140', '$2y$10$nkoYEK0cIkwGpiY8iCZAiO/NXZsA.ilGgvKYEiJYSXltYMdW//LyO', '', 1, 1),
(6, 'JUNIA RIZKY AMELLIA', '3511/917/8.3.3', '3093035334', 2, 1, 'LAMONGAN', '2009-06-01', 'PLOSOKUNING RT/RW 001/002 DESA GINTUNGAN KECAMATAN KEMBANGBAHU', '', 0, 0, 0, '', 'JUNARTIK', 'PLOSOKUNING RT/RW 001/002 DESA GINTUNGAN KECAMATAN KEMBANGBAHU', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '3093035334', '3093035334', '$2y$10$bukLoQ1.Er5J1BHklU534ex3U4QyFaGnFGoTgyOF2E3sFtsL7a9oG', '', 1, 1),
(7, 'KIKI OKTAVIANA PUTRI ', '3512/918/8.3.3', '0091419099', 2, 1, 'TUBAN', '2009-10-12', 'DSN SELANG RT/RW 003/004 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'MARTI\'AH', 'DSN SELANG RT/RW 003/004 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0091419099', '0091419099', '$2y$10$oFokFhDF9P/RFlnFAcFePe6vt8/yVaCIvyunyWNDz/sj8k7rDRMlu', '', 1, 1),
(8, 'ROBIATUL CHULFIA', '3513/919/8.3.3', '0087796692', 2, 1, 'TUBAN', '2008-04-23', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'CARCIM', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0087796692', '0087796692', '$2y$10$n15kuVX4aPPVycPqkiqF4uzs2u24SNFz/pQLhREgIFU7ymzyoaT4a', '', 1, 1),
(9, 'SINDI VIKA AULIA', '3515/921/8.3.3', '0098172557', 2, 1, 'TUBAN', '2009-06-20', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'HARWATI', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0098172557', '0098172557', '$2y$10$pB6VIpNt73G/z59ALhUa5.C1mEIU6MewjcLuI8EUf7Ik1.zildAla', '', 1, 1),
(10, 'SAFIRA NUR AULIA ', '3514/920/8.3.3', '0094814471', 2, 1, 'TUBAN', '2009-02-09', 'DSN BANGKALAN RT/RW 004/004 DESA TEGALREJO KECAMATAN MERAKURAK', '', 0, 0, 0, '', 'SUMILAH', 'DSN BANGKALAN RT/RW 004/004 DESA TEGALREJO KECAMATAN MERAKURAK', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0094814471', '0094814471', '$2y$10$CRwnLuVnHJVuOUiSbVvaMurkD1dKU8LJeS0QaIZ1ngEQlaTDcsVdu', '', 1, 1),
(11, 'YASMIN ARA ISABEL', '3516/922/8.3.3', '0081512484', 2, 1, 'TUBAN', '2008-11-28', 'JERUK GULUNG RT/RW 004/005  DESA SAMBONGREJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'PUJIATI', 'JERUK GULUNG RT/RW 004/005  DESA SAMBONGREJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'AK', '', '2024-07-16', '0081512484', '0081512484', '$2y$10$ac6NoHw.N2eJgtw0RB/dUe0lFyyzBt3IWU.W6yxuuAgg/X.z1Teki', '', 1, 1),
(12, 'AHMAD FEBY PURWANTO', '3517/491/8.1.1', '0091927818', 1, 1, 'TUBAN', '2009-01-26', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'ASTIK', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PEMBANTU RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0091927818', '0091927818', '$2y$10$QloXWf3ChaHqb.Ruuv54deydf2XxEp/Q2zzYjtXy.oXuInxNyWKOC', '', 1, 1),
(13, 'AMANDA SISKA OLIVIA', '3518/492/8.1.1', '0088984120', 2, 1, 'TUBAN', '2008-12-25', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '', 0, 0, 0, '', 'SULASTIN', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0088984120', '0088984120', '$2y$10$PKl6cEp5F0QhGbf2VaF4nO98xQBEKzc66n67ViOmHOQ4TNQwE9e2W', '', 1, 1),
(14, 'DENDRA', '3519/493/8.1.1', '0095510294', 1, 1, 'TUBAN', '2009-03-27', 'DSN BOGOR RT/RW 002/013 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'MIJAH', 'DSN BOGOR RT/RW 002/013 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0095510294', '0095510294', '$2y$10$99Mcf8dLm5k.QEvtCWk8vuC9IzIU6klkMShsjRWULB/ZEXBH96rRS', '', 1, 1),
(15, 'DEWI LESTARI', '3520/494/8.1.1', '0098359426', 2, 1, 'TUBAN', '2009-05-17', 'DSN TLOGOPULE RT/RW 001/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'HENI ISWATI', 'DSN TLOGOPULE RT/RW 001/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'MENINGGAL DUNIA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0098359426', '0098359426', '$2y$10$p7ipEf887yyZgOiL5pU7LOfFn3VcaZ9OOOc/YXQIgVZppP1IJY2BS', '', 1, 1),
(16, 'MAYA AL MAIROH', '3521/495/8.1.1', '0092898410', 2, 1, 'TUBAN', '2009-02-13', 'DSN JADI RT/RW 004/007 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SAMSI', 'DSN JADI RT/RW 004/007 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0092898410', '0092898410', '$2y$10$GD9zMwizEFJKyDcRwwGcw.fbp9RbymiKfzB1tnPBQqutAZFRFor9e', '', 1, 1),
(17, 'NITALIYA', '3522/496/8.1.1', '0085607370', 2, 1, 'TUBAN', '2008-04-12', 'DSN TLOGO RT/RW 001/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'KASPI', 'DSN TLOGO RT/RW 001/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0085607370', '0085607370', '$2y$10$rejNYjSJhWRrr3JzV5vQpuN81rTb6n0WHbpKkzUbXA8x1QxVNbtGm', '', 1, 1),
(18, 'NURVINA ELIVTIANA', '3523/497/8.1.1', '0081784318', 2, 1, 'TUBAN', '2009-06-28', 'DSN TLOGOPULE RT/RW 003/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'YULIANA', 'DSN TLOGOPULE RT/RW 003/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0081784318', '0081784318', '$2y$10$oOmWKMo6AhUavA9DRkO5oep.0nMRE0OTW21FewhGfEmsHGzTuR8Dy', '', 1, 1),
(19, 'QURIYATI KHASANAH MA\'ARIF', '3524/498/8.1.1', '0089699355', 2, 1, 'TUBAN', '2008-09-20', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'FATMAWATI MA\'ARIF', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'KARYAWAN SWASTA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0089699355', '0089699355', '$2y$10$89OCStGpTA6BNL4Ct.Koc.wcv4cjo/9ymODAsJgeDMIIUqYp4EiyO', '', 1, 1),
(20, 'RINI NUR AULIA', '3525/499/8.1.1', '0093343110', 2, 1, 'TUBAN', '2009-08-21', 'GOLOKAN RT/RW 003/002 DESA GOLOKAN KECAMATAN SEDAYU', '', 0, 0, 0, '', 'SUMIJAH', 'GOLOKAN RT/RW 003/002 DESA GOLOKAN KECAMATAN SEDAYU', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0093343110', '0093343110', '$2y$10$6CkjqkdrJKSRwchAAxKiiu1BfuC8.NLoLBDsuXBWILt2BHjyuE7l.', '', 1, 1),
(21, 'SAIFUL NURDIM', '3526/500/8.1.1', '0086249441', 1, 1, 'TUBAN', '2008-01-01', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '', 0, 0, 0, '', 'DARTI', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0086249441', '0086249441', '$2y$10$RNg7ynB6VgtnqTsRQt0kg.AqZyzUeMMp0S2FkSsmQoXMfmMH4gwra', '', 1, 1),
(22, 'SAL SABIL JULI BETHA SAFIRA', '3527/501/8.1.1', '0087772992', 2, 1, 'TUBAN', '2008-07-25', 'DSN KRAJAN RT/RW 003/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'TRIMURTI', 'DSN KRAJAN RT/RW 003/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0087772992', '0087772992', '$2y$10$uhROmGFqJ6REBWiCO1pYHO9ZgtT/rNywwBT9Yz5Oh1QGJ.HKX5yi6', '', 1, 1),
(23, 'SITI NUR\'AISYAH', '3528/502/8.1.1', '0082884404', 2, 1, 'TUBAN', '2008-09-20', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'PARSIYEM', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0082884404', '0082884404', '$2y$10$p3H.jhmhAd412gaVKUMU3emTDixJmT4Foo8eggHEqhkBqqJF9QRrS', '', 1, 1),
(24, 'SITI YUNIA FAROATUN ', '3529/503/8.1.1', '3096569562', 2, 1, 'TUBAN', '2009-06-06', 'DSN KOWANG SELATAN RT/RW 005/004 DESA KOWANG KECAMATAN SEMANDING', '', 0, 0, 0, '', 'DARSILAH', 'DSN KOWANG SELATAN RT/RW 005/004 DESA KOWANG KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '3096569562', '3096569562', '$2y$10$Ooucut.Ea3PTGefjdvV4ze/EZZmlofGrD6gSUS/Ci2s4smFnP2pRy', '', 1, 1),
(25, 'SRI RAHAYU TRIATMOJO', '3530/504/8.1.1', '0085453517', 2, 1, 'TUBAN', '2008-03-27', 'DS LERANWETAN RT/RW 002/001 DESA LERAN WETAN KECAMATAN PALANG', '', 0, 0, 0, '', 'RUSMI', 'DS LERANWETAN RT/RW 002/001 DESA LERAN WETAN KECAMATAN PALANG', '0', '0', 'PEDAGANG', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0085453517', '0085453517', '$2y$10$zXJFTyhlPKDCyuI5uF5hPeB56wjJQwSwxeOFdzpR87ahXMnCDKFO2', '', 1, 1),
(26, 'SULISTIANA', '3531/505/8.1.1', '0085336136', 2, 1, 'TUBAN', '2008-12-02', 'DSN KRAJAN RT/RW 001/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'CINARCIP', 'DSN KRAJAN RT/RW 001/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0085336136', '0085336136', '$2y$10$jeoQw1BNJoswEaJsu9qBwudvuypP6uwFrhhi322OlkHtJbjTtwWx.', '', 1, 1),
(27, 'VIONALITA AFRIANTI', '3532/506/8.1.1', '0096935017', 2, 1, 'TUBAN', '2009-01-29', 'DSN MOJOKOPEK RT/RW 002/031 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'USWATUL KHASANAH', 'DSN MOJOKOPEK RT/RW 002/031 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0096935017', '0096935017', '$2y$10$DuV3jhdJOMY0myCy5PbgSO/.P03I824pFG6L2HKzPoNezMlnOJAkm', '', 1, 1),
(28, 'YULFAIDA RAMADANI PUTRI AGUSTIN', '3533/507/8.1.1', '0086936967', 2, 1, 'TUBAN', '2008-08-31', 'DSN CUNGKUP RT/RW 011/003 DESA PENAMBANGAN KECAMATAN SEMANDING', '', 0, 0, 0, '', 'YULI ASTUTIK', 'DSN CUNGKUP RT/RW 011/003 DESA PENAMBANGAN KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'BD', '', '2024-07-16', '0086936967', '0086936967', '$2y$10$GHIXePY92Mvjim9fHUPwr.Ok15Y/eIN1TbGbaFvXno1QzQPSU0gVW', '', 1, 1),
(29, 'AGUSTINA ZAYYAN NABILA', '3552/246/5.3.1', '0081829471', 2, 1, 'LAMONGAN', '2008-06-22', 'SAWO KECIK RT/RW 005/004 DESA BRONDONG KECAMATAN BRONDONG', '', 0, 0, 0, '', 'SITI INDAH WATI', 'SAWO KECIK RT/RW 005/004 DESA BRONDONG KECAMATAN BRONDONG', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0081829471', '0081829471', '$2y$10$Put6vz4iQAVVXCqBO9Cz7OypQ46M5huJDBisTyDatGMbCoFhBZ.W6', '', 1, 1),
(30, 'AISYA SEPTIA PUTRI', '3553/247/5.3.1', '3098143153', 2, 1, 'TUBAN', '2009-11-30', 'NGESONG RT/RW 002/008 DESA SEDAYULAWAS KECAMATAN BRONDONG', '', 0, 0, 0, '', 'DARWATI', 'NGESONG RT/RW 002/008 DESA SEDAYULAWAS KECAMATAN BRONDONG', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '3098143153', '3098143153', '$2y$10$zAwWTNwaobQgFSn.wgmuleNoEZJv9yBWAClVZldIjDEq3f/RrLgKW', '', 1, 1),
(31, 'AISYAH SHALSA NUR IZAROH', '3554/248/5.3.1', '0082713422', 2, 1, 'TUBAN', '2008-12-03', 'JL.MERIK GG SADIG IV RT/RW 001/003 KELURAHAN SIDOREJO KECAMATAN TUBAN', '', 0, 0, 0, '', 'KASMUNTIK', 'JL.MERIK GG SADIG IV RT/RW 001/003 KELURAHAN SIDOREJO KECAMATAN TUBAN', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0082713422', '0082713422', '$2y$10$jpPATRJnZSozPDB4tlchK.TddHHHkwRZmGSSlsG/I1M6kDadiqEdy', '', 1, 1),
(32, 'ALYA RIZKEYLA SAFITRI', '3555/249/5.3.1', '0088095402', 2, 1, 'SURABAYA', '2008-10-03', 'DSN KOWANG SELATAN RT/RW 006/004 DESA KOWANG KECAMATAN SEMANDING', '', 0, 0, 0, '', 'TINA', 'DSN KOWANG SELATAN RT/RW 006/004 DESA KOWANG KECAMATAN SEMANDING', '0', '0', 'KARYAWAN SWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0088095402', '0088095402', '$2y$10$PjoosDKK7WL160Pq6PK/7OQWbMb24d1EZ3RbznLY1qJQUIffDiW56', '', 1, 1),
(33, 'ANGGI FAJAR MULYANI', '3556/250/5.3.1', '0087170788', 2, 1, 'TUBAN', '2008-06-23', 'DUSUN GENENG RT/RW 001/005 DESA GRABAGAN KECAMATAN GRABAGAN', '', 0, 0, 0, '', 'WATI', 'DUSUN GENENG RT/RW 001/005 DESA GRABAGAN KECAMATAN GRABAGAN', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0087170788', '0087170788', '$2y$10$Bu1aCeUARRM87iz6hVcLlOTQ1qAqL21bwsV4/w9PfN47EQ7crlIba', '', 1, 1),
(34, 'AZARINA ROSNAIDA', '3557/251/5.3.1', '0087183497', 2, 1, 'TUBAN', '2008-12-12', 'DSN PANGKALAN RT.RW 003/005 DESA MANDIREJO KECAMATAN MERAKURAK', '', 0, 0, 0, '', 'RUSMIATUN', 'DSN PANGKALAN RT.RW 003/005 DESA MANDIREJO KECAMATAN MERAKURAK', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0087183497', '0087183497', '$2y$10$Zy9C8B5m3ZZqXAhXVF1Wy.LiWAPlE3KoY9snDk0nPyQuVZZbvD3/W', '', 1, 1),
(35, 'BINTANG IMAM SAFI\'I', '3558/252/5.3.1', '0087333210', 1, 1, 'TUBAN', '2008-07-15', 'DSN JADI KRAJAN RT/RW 001/009 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'MUNTINI', 'DSN JADI KRAJAN RT/RW 001/009 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0087333210', '0087333210', '$2y$10$htxWW/LUigDMQ5Kvz56.KugsF4B8Z9SqJKfGlAzsq6F48UyrwABji', '', 1, 1),
(36, 'BUNGA BARBALINO WANIMBO', '3559/253/5.3.1', '0081670305', 2, 3, 'JAYAPURA', '2008-04-09', 'MUGI DUSUN MUGI DESA MUGI KECAMATAN MUGI', '', 0, 0, 0, '', 'YULIANA HALIMA RONSUMBRE', 'MUGI DUSUN MUGI DESA MUGI KECAMATAN MUGI', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0081670305', '0081670305', '$2y$10$Ob9u7w/RyEWtlbYK5yrESe8cBbvTX7HxmbPjAKqHj4gh95Hvut.k.', '', 1, 1),
(37, 'CHERY KHANIARANI PERMANA', '3560/254/5.3.1', '0093682801', 2, 1, 'GRESIK', '2009-05-20', 'DSN DRUDI LOR RT/RW 001/003 DESA SAMBONGREJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'DIANA YULIYANTI', 'DSN DRUDI LOR RT/RW 001/003 DESA SAMBONGREJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0093682801', '0093682801', '$2y$10$id0Jl3HPX3Zo5O1kxf4oi.G.IP9sr5JPdC7lI5L5kpO0.V.BTy09K', '', 1, 1),
(38, 'DINDA AYU YULIANTI', '3561/255/5.3.1', '0095716664', 2, 1, 'TUBAN', '2009-06-02', 'DSN GESIKAN RT/RW 004/004 DESA GESIKAN KECAMATAN GRABAGAN ', '', 0, 0, 0, '', 'LINA ASTUTIK', 'DSN GESIKAN RT/RW 004/004 DESA GESIKAN KECAMATAN GRABAGAN ', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0095716664', '0095716664', '$2y$10$h2075eOFeB8y2GgSvGCxdOJgb9IT9LYWDX3lUNV52Wy1X4lDx4cUq', '', 1, 1),
(39, 'EVA ANJARSARI', '3562/256/5.3.1', '0094004442', 2, 1, 'TUBAN', '2009-07-13', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'MUGTINI', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0094004442', '0094004442', '$2y$10$aCHndi6CpgejxjWgQHyFgeNWHBKEntoFITUQ6WQFRb9WNljnLwV4S', '', 1, 1),
(40, 'FERONIKA WAMINOP', '3563/257/5.3.1', '3085415312', 2, 2, 'NINATI', '2008-03-20', 'NINATI DUSUN NINATI RT/RW 002/- DESA NINATI KECAMATAN NINATI', '', 0, 0, 0, '', 'KLEMASIA KUTKET', 'NINATI DUSUN NINATI RT/RW 002/- DESA NINATI KECAMATAN NINATI', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '3085415312', '3085415312', '$2y$10$1QNp/SxExGEGWypx/2dKmOzbZry94G.uozXtnTIbeyTKGmlp4INHq', '', 1, 1),
(41, 'FIRDA NUR APIPAH', '3564/258/5.3.1', '0086561931', 2, 1, 'TUBAN', '2008-10-29', 'DSN TLOGOPULE RT/RW 001/032 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SRI REJEKI ', 'DSN TLOGOPULE RT/RW 001/032 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0086561931', '0086561931', '$2y$10$cJUuTGajCILhT6rdR/y9jeJp62hyEyCuoil5P7bVg4Iwbbv5X4B1.', '', 1, 1),
(42, 'INDAH SEPTYA RAMADHANI', '3565/259/5.3.1', '0082462210', 2, 1, 'TUBAN', '2008-09-14', 'DSN KOWANG SELATAN RT/RW 002/006 DESA KOWANG KECAMATAN SEMANDING', '', 0, 0, 0, '', 'NURWATI', 'DSN KOWANG SELATAN RT/RW 002/006 DESA KOWANG KECAMATAN SEMANDING', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0082462210', '0082462210', '$2y$10$P8Ik7yaD4mZUMmiTd8gjBOl9LA6UEtWBEmDLQQKeQO5ZI6D2NV2xS', '', 1, 1),
(43, 'ISNA FITRIYAH', '3566/260/5.3.1', '0095245735', 2, 1, 'TUBAN', '2009-10-11', 'DSN SELANG RT/RW 002/004 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SITI ASIYAH', 'DSN SELANG RT/RW 002/004 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0095245735', '0095245735', '$2y$10$FDaNoQLjALmWB5qTzmbPReHpLFs03Oda5pVqoT7mm2oplDE1FsdO6', '', 1, 1),
(44, 'JESSICA MALVA NYSA', '3567/261/5.3.1', '0088586496', 2, 1, 'TUBAN', '2008-12-04', 'JL.GAJAH MADA GG MERDEKA RT/RW 005/005 KELURAHAN SIDOREJO KECAMATAN TUBAN', '', 0, 0, 0, '', 'NINA ITA PURWATI', 'JL.GAJAH MADA GG MERDEKA RT/RW 005/005 KELURAHAN SIDOREJO KECAMATAN TUBAN', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0088586496', '0088586496', '$2y$10$BrvgOtIJ6.APZ.PCHL0KIuIufUssH.UooXfnvJAGLk2vNklsd4fJ.', '', 1, 1),
(45, 'KAYLA FINDA ARZETA', '3568/262/5.3.1', '0092258995', 2, 1, 'TUBAN', '2009-02-03', 'DUSUN KOWANG UTARA RT/RW 002/001 DESA KOWANG KECAMATAN SEMANDING', '', 0, 0, 0, '', 'LAMSINAH', 'DUSUN KOWANG UTARA RT/RW 002/001 DESA KOWANG KECAMATAN SEMANDING', '0', '0', 'TIDAK BEKERJA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0092258995', '0092258995', '$2y$10$SrTfOvBMjLdf6ht9IS4Awu.cjqaSi4Cp8GQvHnH6rXBLfhiWGRIeu', '', 1, 1),
(46, 'KERIN SILALAHI', '3569/263/5.3.1', '0085892694', 2, 3, 'PANGGURUAN', '2008-06-14', 'PERUMAHAN GEDONGOMBO BLOK J-13 RT/RW 006/007 KELURAHAN GEDONGOMBO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'TUMIUR SINAGA', 'PERUMAHAN GEDONGOMBO BLOK J-13 RT/RW 006/007 KELURAHAN GEDONGOMBO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0085892694', '0085892694', '$2y$10$GcbQOr5ZIl9PrCcwEHq0RuH2te/AE8jKMsRMJS5eso1DkAeSmZNfW', '', 1, 1),
(47, 'LU LU NUR ISMAH', '3570/264/5.3.1', '0089785434', 2, 1, 'TUBAN', '2008-04-30', 'GG MANGGIS NO.3 RT/RW 001/002 KELURAHAN KINGKING KECAMATAN TUBAN', '', 0, 0, 0, '', 'ENY LESTARI', 'GG MANGGIS NO.3 RT/RW 001/002 KELURAHAN KINGKING KECAMATAN TUBAN', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0089785434', '0089785434', '$2y$10$XamyZnBb5vE2Wkrly9kS2.fbYh051qK.rDP6DMcHxfe.4Sd0N3JNW', '', 1, 1),
(48, 'NILNA ROHMATAL MAULA', '5555555555', '3098867550', 2, 1, 'TUBAN', '2009-05-10', 'PALANG SELATAN RT/RW 003/007 DESA PALANG KECAMATAN PALANG', '', 0, 0, 0, '', 'SULIKAH', 'PALANG SELATAN RT/RW 003/007 DESA PALANG KECAMATAN PALANG', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '3098867550', '3098867550', '$2y$10$492tT2ik/7i7sFTU9Xnb6u8s1Z9dMIaohycMW8YfAiVkxhwq2IZt.', '', 1, 1),
(49, 'REVITA MEISYA RINDANI', '3571/265/5.3.1', '0093092464', 2, 1, 'TUBAN', '2009-05-29', 'DSN KOWANG UTARA RT/RW 005/001 DESA KOWANG KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SUNDARI', 'DSN KOWANG UTARA RT/RW 005/001 DESA KOWANG KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0093092464', '0093092464', '$2y$10$0sqvxgtVSXJEonsLHsOdo.ePnUOZqN7mYWZ4ra1GVG3PdNXSIB3Mq', '', 1, 1),
(50, 'SALSA BELA RAQIBATUN NAJA', '3572/266/5.3.1', '0091172193', 2, 1, 'TUBAN', '2009-01-01', 'DSN KEDUNGSARI RT/RW 003/005 DESA TUWIRI WETAN KECAMATAN MERAKURAK ', '', 0, 0, 0, '', 'SUNTIRAH', 'DSN KEDUNGSARI RT/RW 003/005 DESA TUWIRI WETAN KECAMATAN MERAKURAK ', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0091172193', '0091172193', '$2y$10$ZRVXszleHaYgGAIAZvMQe.wdZPO6Wnv/7QJNNJeaQGJTukB2aN83e', '', 1, 1),
(51, 'SELFI NUR AINI', '3573/267/5.3.1', '0086100441', 2, 1, 'TUBAN', '2008-06-02', 'DSN BOGOR RT/RW 003/013 DS. BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'TUTIK', 'DSN BOGOR RT/RW 003/013 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0086100441', '0086100441', '$2y$10$Cw3gP01iZ4Ddsn0PNFOWveoHwqHoAzs9JgngYskpPZuJT455t3Y02', '', 1, 1),
(52, 'SIFA UL MUNAWAROH', '3574/268/5.3.1', '0092242063', 2, 1, 'TUBAN', '2009-03-06', 'DSN TLOGOPULE RT/RW 002/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SULIKAH', 'DSN TLOGOPULE RT/RW 002/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0092242063', '0092242063', '$2y$10$dCGh.s.NB60vh7HFFC7QWubVO8NMm6nxHw6zhW/HZmzrvMV94vx9q', '', 1, 1),
(53, 'TAQIYATUL ANIQOH', '3575/269/5.3.1', '0085064949', 2, 1, 'TUBAN', '2008-08-13', 'DSN MEDOKAN RT/RW 004/016 DESA BEKTIHARJO KECAMATAN SEMANDING ', '', 0, 0, 0, '', 'MARSINI', 'DSN MEDOKAN RT/RW 004/016 DESA BEKTIHARJO KECAMATAN SEMANDING ', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0085064949', '0085064949', '$2y$10$6x.hiRNOcxgewHv/Hug4IO9uYhU4ysH9XjHrxlJ5VMqNSHN8Ze/b6', '', 1, 1),
(54, 'TIARA AYU AZZAHRA', '3576/270/5.3.1', '0092930844', 2, 1, 'TUBAN', '2009-06-24', 'DUSUN KRAJAN INDAH RT/RW 001/005 DESA TEGALBANG KECAMATAN PALANG', '', 0, 0, 0, '', 'SRIWIJI SETYANINGSIH ', 'DUSUN KRAJAN INDAH RT/RW 001/005 DESA TEGALBANG KECAMATAN PALANG', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0092930844', '0092930844', '$2y$10$NPjywvzHTottckgbhQ83XuiZ8K2ZhB3OL5IaNACdyCUiLxZ2.c7U.', '', 1, 1),
(55, 'TIKA WAHYUNI ', '3577/271/5.3.1', '0084788525', 2, 1, 'TUBAN', '2008-10-28', 'DSN KRAJAN RT/RW 002/001 DESA SUMBER KECAMATAN MERAKURAK', '', 0, 0, 0, '', 'GENDUK SITI SUMARLIK', 'DSN KRAJAN RT/RW 002/001 DESA SUMBER KECAMATAN MERAKURAK', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0084788525', '0084788525', '$2y$10$I4iZZ0qhFqKvKcXLiV8p2eNT.3VznIHRdkuPKZz8c4xszkieE7BpS', '', 1, 1),
(56, 'TRESYA DWI MARTHA', '3578/272/5.3.1', '0089065992', 2, 1, 'TUBAN', '2008-03-26', 'DSN NGRAYUNG RT/RW 009/001 DESA NGRAYUNG KECAMATAN PLUMPANG', '', 0, 0, 0, '', 'SULIANIK', 'DSN NGRAYUNG RT/RW 009/001 DESA NGRAYUNG KECAMATAN PLUMPANG', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0089065992', '0089065992', '$2y$10$Nu5YpPtOAACrLTilX/HMAuME1TExl4CFVjnr3.VEbmfhxk4XHFKFy', '', 1, 1),
(57, 'VALENCIA NUR LAILA', '3579/273/5.3.1', '0086514582', 2, 1, 'TUBAN', '2008-01-07', 'DSN BOGOR RT/RW 001/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'HOLILAH', 'DSN BOGOR RT/RW 001/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0086514582', '0086514582', '$2y$10$COa8GihVJ7ztBKEjCXzyS.dNv8v2QMD1P7T45Uu6YB4dmqCbGn7Ya', '', 1, 1),
(58, 'WIDYA WULAN APRILIA', '3580/274/5.3.1', '0099784935', 2, 1, 'TUBAN', '2009-04-17', 'DUSUN SENDANG PANCUR RT/RW 002/005 DESA GENAHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'DIDIK', 'DUSUN SENDANG PANCUR RT/RW 002/005 DESA GENAHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0099784935', '0099784935', '$2y$10$6FoTtZmnyik3pVWrkVVz5e0Mfb00QqLFXozB1HKwbcTiwzYDS2wHu', '', 1, 1),
(59, 'WINDA ESTURINA', '3581/275/5.3.1', '0076889226', 2, 1, 'TUBAN', '2007-11-28', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SRI ASTUTIK', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PEKERJAAN LAINNYA', '0', '0', '0', '0', '0', 1, 'LPKKK', '', '2024-07-16', '0076889226', '0076889226', '$2y$10$2j6rcuRCNMfnGkFS54vsWux4keXzap.pU4cYPFYmJZDKvhLg50UjS', '', 1, 1),
(60, 'AHMAD AGUS SETYA ABADI', '3534/611/9.2.1', '0088042575', 1, 1, 'TUBAN', '2008-05-15', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'LILIK SURTINI', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0088042575', '0088042575', '$2y$10$KeKSC8/qVGSWRnW3g64p4ubAXc0iXXhr/h4mQ1NxDuSm53W0WoTji', '', 1, 1),
(61, 'AHMAD JALIL', '3535/612/9.2.1', '0084433174', 1, 1, 'TUBAN', '2008-04-05', 'DS BANJARJO RT/RW 018/005 DESA BANJARJO KECAMATAN BANCAR', '', 0, 0, 0, '', 'FITRIYAH', 'DS BANJARJO RT/RW 018/005 DESA BANJARJO KECAMATAN BANCAR', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0084433174', '0084433174', '$2y$10$HAlaxxAwgluAxcoQ3ULn.e6vuNlYpTbzoT5kkKVyBkfOfyCY3XcO.', '', 1, 1),
(62, 'AHMAD ROBI', '3535/613/9.2.1', '0085987867', 1, 1, 'TUBAN', '2008-04-01', 'DSN BOGOR RT/RW 001/011 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SUKARSIH', 'DSN BOGOR RT/RW 001/011 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0085987867', '0085987867', '$2y$10$F6BjnUQIJCH8X9z5PbXzzeOB6p5etbzckbhOwKkavhSiDyjFkNoFC', '', 1, 1),
(63, 'ANGGA HANDAYANA SAPUTRA', '3536/614/9.2.1', '0094524380', 1, 1, 'TUBAN', '2008-11-09', 'NGIMBANG RT/RW 004/006 DESA NGIMBANG KECAMATAN PALANG', '', 0, 0, 0, '', 'INDAH WAHYUN', 'NGIMBANG RT/RW 004/006 DESA NGIMBANG KECAMATAN PALANG', '0', '0', 'KARYAWAN SWASTA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0094524380', '0094524380', '$2y$10$P2RpgZdgnEWKR9F/bgu3V.Hw55.TBB380W73qJHroie27ngYLGlvm', '', 1, 1),
(64, 'ANITA  TABITA', '3536/615/9.2.1', '0046661092', 2, 1, 'TUBAN', '2008-04-25', 'DSN BOGOR RT/RW 002/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SANTINIK', 'DSN BOGOR RT/RW 002/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0046661092', '0046661092', '$2y$10$aqNf8iJa65im/JSvWG96Le/l81MhkHRefPrmYFR6Js5CpvSFE3fhK', '', 1, 1),
(65, 'ARMAS DION SAPUTRA', '3537/616/9.2.1', '0074831450', 1, 1, 'TUBAN', '2007-06-14', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'TARMINAH', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0074831450', '0074831450', '$2y$10$6fojIYhOjAv0/i/aJErMneUqElupA991GqT2YZ3/a1Wj/deIPHqeK', '', 1, 1),
(66, 'CIKA AGUSTINA', '3537/617/9.2.1', '0084022362', 2, 1, 'KEDIRI', '2008-08-08', 'DSN BANGKOK II RT/RW 002/002 DESA KLAMPISAN KECAMATAN KANDANGAN', '', 0, 0, 0, '', 'MESIJAH', 'DSN BANGKOK II RT/RW 002/002 DESA KLAMPISAN KECAMATAN KANDANGAN', '0', '0', 'MENINGGAL DUNIA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0084022362', '0084022362', '$2y$10$oKqK2.KRaoRTXGm.UA38FOJ8/bAYzuJ4mslWTb3vJneI4i9tR18KS', '', 1, 1),
(67, 'CIKA AMELIA', '3538/618/9.2.1', '0092199978', 2, 1, 'TUBAN', '2009-03-30', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'S.EKA NUTHAYATI', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'KARYAWAN SWASTA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0092199978', '0092199978', '$2y$10$fdRTIPsxqT2fDdmZmPnFiejYJC.nnY2c2X.3gO.ELUL5q7G8/rp8e', '', 1, 1),
(68, 'DURAKIM', '3538/619/9.2.1', '0082006355', 1, 1, 'TUBAN', '2008-12-12', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'YULAIKAH', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0082006355', '0082006355', '$2y$10$JlwTrTdSADzGNvGTaK6haO8W7kIGdwRjd0FPCk.Op8FeIbJdUp2rO', '', 1, 1),
(69, 'EKA WALUYO PUTRO', '3539/620/9.2.1', '0072511826', 1, 1, 'TUBAN', '2007-04-14', 'DSN TLOGONONGKO RT/RW 006/002 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SITI DARWATI', 'DSN TLOGONONGKO RT/RW 006/002 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0072511826', '0072511826', '$2y$10$J..tZ8oYwKUjAmKBrBzcU.ZFy76wmv11wH2QLALl1OHA4KljKFsOW', '', 1, 1),
(70, 'FELENT HEFANDO', '3539/621/9.2.1', '0083250556', 1, 1, 'TUBAN', '2008-08-03', 'DSN BOGOR RT/RW 003/014 DESA BEKTIHARJO DAN BELIKAN SPDH ', '', 0, 0, 0, '', 'RUSTIANAWATI', 'DSN BOGOR RT/RW 003/014 DESA BEKTIHARJO DAN BELIKAN SPDH ', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0083250556', '0083250556', '$2y$10$zIGYTUmedhQvpsVIH3QABOfGPAQuVZIi6OrKbZaopl0qyQBfsZWT6', '', 1, 1),
(71, 'KEREN SANGEROKI', '3540/622/9.2.1', '0097868726', 2, 3, 'BITUNG', '2009-04-20', 'LINGKUNGAN II RT/RW 001/002 DESA PINANGUNIAN KECAMATAN AEREMBAGA', '', 0, 0, 0, '', 'MANDRICE GETA', 'LINGKUNGAN II RT/RW 001/002 DESA PINANGUNIAN KECAMATAN AEREMBAGA', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0097868726', '0097868726', '$2y$10$bzrqsMIUokyl60W0p/iPaup6808vgtQcPDBQPWpAUMhzho0QHna3e', '', 1, 1),
(72, 'MOHAMMAD ZUBAERI AKBAR', '3540/623/9.2.1', '0094853593', 1, 1, 'TUBAN', '2009-11-01', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'NANIK KASARI', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0094853593', '0094853593', '$2y$10$4KgqpYy8/ZuFBGrVkKtOpOfDJkCwqHCqrf7OOaVgEuA..Zi4GQtCy', '', 1, 1),
(73, 'MONICA SILFIANA', '3541/624/9.2.1', '0082670430', 2, 1, 'TUBAN', '2008-01-19', 'BONGKOL 1 RT/RW 002/02 DESA SUMURGUNG KECAMATAN TUBAN', '', 0, 0, 0, '', 'JUARTININGSIH', 'BONGKOL 1 RT/RW 002/02 DESA SUMURGUNG KECAMATAN TUBAN', '0', '0', 'WIRASWASTA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0082670430', '0082670430', '$2y$10$bQPg1nfgY3c5IPGZgdCJOu/oYb3Q2goMGggsEezsg4pVkt.O53dQe', '', 1, 1),
(74, 'NANDA ANDIKA', '3541/625/9.2.1', '0085128954', 1, 1, 'TUBAN', '2008-05-23', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SUPATMI', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0085128954', '0085128954', '$2y$10$ZztfdHkm2qaZeAA9dgBv.u9zDKEBrZPtlZzs0V8rt7.K4DuyY0anS', '', 1, 1),
(75, 'OCYROSE ', '3542/626/9.2.1', '0097443987', 2, 1, 'TUBAN', '2008-04-21', 'DSN KARANG GAYAM RT/RW 008/002 DESA BANJARJO KECAMATAN BANCAR', '', 0, 0, 0, '', 'ADE FERSIPIANTI', 'DSN KARANG GAYAM RT/RW 008/002 DESA BANJARJO KECAMATAN BANCAR', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0097443987', '0097443987', '$2y$10$n6q/js7J4xXrQuvhA.F.tO3XSHjWVnbKZUUvLSVTykPrSBxwVNKxq', '', 1, 1),
(76, 'RINA RENATA', '3542/627/9.2.1', '0085581657', 2, 1, 'TUBAN', '2008-05-14', 'DSN TLOGOPULE RT/RW 001/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'PASMINTEN', 'DSN TLOGOPULE RT/RW 001/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0085581657', '0085581657', '$2y$10$8leKAALWi/MXNZ9On42hgeGek6x071r2sR2Fhckr35hfhw8WVQLMO', '', 1, 1),
(77, 'SA IN DAVA OFANSA', '3543/628/9.2.1', '0087112414', 1, 1, 'TUBAN', '2008-10-25', 'DSN JADI KRAJAN RT/RW 003/008 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'WATINI', 'DSN JADI KRAJAN RT/RW 003/008 DESA JADI KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0087112414', '0087112414', '$2y$10$1dBjVfVrJ8NlhsKhIbnBBOvFfVS42UVyNJcudpUTHGQcZhoxRvynO', '', 1, 1),
(78, 'WIDIYANA PUTRI ANISYAH', '3543/629/9.2.1', '0087410172', 2, 1, 'TUBAN', '2008-06-13', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'ANI RINAWATI', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0087410172', '0087410172', '$2y$10$f5mw2Jb3ApWbpHGs/D6BOer0YLz6PV.wlixoWxHr34Tnr9ChFgsf.', '', 1, 1),
(79, 'ZIDAN NIAM NUR ROHMAN', '3544/630/9.2.1', '0092212153', 1, 1, 'TUBAN', '2009-06-19', 'DSN TLOGONONGKO RT/RW 002/002 DESA JADI KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SISWATI', 'DSN TLOGONONGKO RT/RW 002/002 DESA JADI KECAMATAN SEMANDING', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 1, 'PH', '', '2024-07-16', '0092212153', '0092212153', '$2y$10$zoY/GohNLy9y92zvK/qh2OWSfORs2zAEPz1ho7H0b5W5NQxem9xBK', '', 1, 1),
(80, 'AGUSTINUS SELEGANI', '3545/782/4.1.1', '3084817806', 1, 3, 'KENDETAPA', '2008-04-20', 'KENDETAPA DESA KENDETAPA KECAMATAN HOMEYO', '', 0, 0, 0, '', 'DOLINA SELEGANI', 'KENDETAPA DESA KENDETAPA KECAMATAN HOMEYO', '0', '0', 'TIDAK BEKERJA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '3084817806', '3084817806', '$2y$10$OZygAd/SEnUDgajemLmaWuMQr69Prfg/pC9Z1CfwT6HghaqLsj8uq', '', 1, 1),
(81, 'BAYU SAMUDRA', '3546/783/4.1.1', '0089385625', 1, 1, 'TUBAN', '2008-04-09', 'DSN BOGOR RT/RW 00/008 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'CARIYATI', 'DSN BOGOR RT/RW 00/008 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0089385625', '0089385625', '$2y$10$ohy81CwuB1G/LUc3D2NJLukIOdn3Xen.s5GrCqNyNOG5ZOpOCU86G', '', 1, 1),
(82, 'FRANSISKUS FERY KEGOU', '3547/784/4.1.1', '0092637522', 1, 2, 'NABIRE', '2009-02-09', 'JL POROS RT/RW 001/002 DESA BOMOPAI', '', 0, 0, 0, '', 'ANDRIANA DEGEKOTO', 'JL POROS RT/RW 001/002 DESA BOMOPAI', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0092637522', '0092637522', '$2y$10$d9Qd9/NhDSAl.Hwy9pJTWOG7uLOA3QAzxNDG046rieQfmhXLXX/cy', '', 1, 1),
(83, 'GIOVANNI ELYSIA DEWI', '3548/785/4.1.1', '0095118059', 2, 1, 'TUBAN', '2009-02-25', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '', 0, 0, 0, '', 'SUHARTIN', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0095118059', '0095118059', '$2y$10$/zqXF5W7.gkKvJOO9X5WuOvh5rarbZ3Y9gZPMeaiih2yOy.zcS6q6', '', 1, 1),
(84, 'KRISTIAN WAHYUDI ARDIASYAH', '3549/786/4.1.1', '0085892636', 1, 1, 'TUBAN', '2008-12-17', 'DSN MOJOKOPEK RT/RW 002/029 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'DARWATI', 'DSN MOJOKOPEK RT/RW 002/029 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0085892636', '0085892636', '$2y$10$inuQdldObL2/69LapYDnqOxQZGJ9tkSJhRoEB2Fp4C/LTu9HCqnE.', '', 1, 1),
(85, 'MUHAMMAD NUR ALIF', '3551/788/4.1.1', '0083092770', 1, 1, 'TUBAN', '2009-08-23', 'DSN MEKARSARI RT/RW 004/001 DESA WOLUTENGAH KECAMATAN KEREK', '', 0, 0, 0, '', 'KUSIKAH', 'DSN MEKARSARI RT/RW 004/001 DESA WOLUTENGAH KECAMATAN KEREK', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0083092770', '0083092770', '$2y$10$3WIqzkX6xL.0bTSXmjKTC.WqfRAONg9629J4Shmmn.YxT9UeASPbq', '', 1, 1),
(86, 'MUHAMAD WAFIYUL AHDI', '3550/787/4.1.1', '0095147265', 1, 1, 'TUBAN', '2008-02-29', 'DSN TLOGO RT/RW 002/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '', 0, 0, 0, '', 'MUNASIH', 'DSN TLOGO RT/RW 002/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '0', 1, 'RPL', '', '2024-07-16', '0095147265', '0095147265', '$2y$10$1qlqVDtzs8sedBVfClRrt.04K6JmLAwHjphz3HXxHknDc1oKKfE2a', '', 1, 1),
(87, 'ADINDA NOVERA KRISTIANINGSIH', '3406/898.102', '0085097934', 2, 1, 'TUBAN', '2008-11-19', 'DSN JARUM RT 002 RW 018 PRUNGGAHAN KULON KEC. SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'SUMPI', 'DSN JARUM RT 002 RW 018 PRUNGGAHAN KULON KEC. SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NEGERI 3 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0085097934', '0085097934', '$2y$10$L8WJ/rGa4/deEqUUG/cp1uQUkBIAi7IeteQOA65LrjedBW7IbYlzy', '', 1, 1),
(88, 'ALIYA PUTRI VERNANDA', '3407/899.102', '0076054715', 2, 1, 'TUBAN', '2007-07-13', 'DSN BOGOR RT/RW 02/015 DS BEKTIHARJO KECAMATAN SEMANDING', '', 1, 3, 2, '', 'SUPRI', 'DSN BOGOR RT/RW 02/015 DS BEKTIHARJO KECAMATAN SEMANDING', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NEGERI 4 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0076054715', '0076054715', '$2y$10$aO1GlEpZieuAjZ5kLkJN.OqgCUpgn0BR5ZmiZ.y.t0AIQIj8yiGE6', '', 1, 1),
(89, 'BARBIE GLADIS EXELZA', '3408/900.102', '0079120258', 2, 1, 'SUKOHARJO', '2007-03-19', 'DSN JUMOK RT 001 / RW 008 SERUT KEC. NGUTER KAB SUKOHARJO JAWA TENGAH 57571', '', 1, 2, 3, '', 'PARNI', 'DSN JUMOK RT 001 / RW 008 SERUT KEC. NGUTER KAB SUKOHARJO JAWA TENGAH 57571', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMP NEGERI 3  TUBAN', 2, 'AK', '', '2023-07-15', '0079120258', '0079120258', '$2y$10$kHXwo87KOsHCn5qt/Zle8up27O.VxptudsABV59xARkyfnYJ1LyOy', '', 1, 1),
(90, 'CINTYA DWI FEBRIANTI', '3409/901.102', '0071808582', 2, 1, 'TUBAN', '2007-02-07', 'DOROMUKTI GG SEDAP MALAM NO 420 RT 003 RW 003 KEL. DOROMUKTI KEC. TUBAN  KAB TUBAN', '', 1, 1, 1, '', 'YUNI SETYANINGSIH', 'DOROMUKTI GG SEDAP MALAM NO 420 RT 003 RW 003 KEL. DOROMUKTI KEC. TUBAN  KAB TUBAN', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 TUBAN', 2, 'AK', '', '2023-07-15', '0071808582', '0071808582', '$2y$10$ZceklQ8.8oXyEAHDcZ360ubH5.LO9ObDm.Mldsv6W8xu4yaw6L6lm', '', 1, 1),
(91, 'DECHA MULYASARI', '3410/902.102', '0079226254', 2, 1, 'TUBAN', '2007-12-14', 'DSN WINONG RT 001 RW 008 SUGIHARJO  KEC. TUBAN KAB TUBAN 62351', '', 1, 1, 2, '', 'SANTIYAH', 'DSN WINONG RT 001 RW 008 SUGIHARJO  KEC. TUBAN KAB TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTs NEGERI 3 TUBAN', 2, 'AK', '', '2023-07-15', '0079226254', '0079226254', '$2y$10$07IwkDHd/rzbCwcoUYSDyeRxOUJr4.u6nGT/fbOsfMTlrnN5RzTsS', '', 1, 1),
(92, 'DICHA AGRILYA ANGELITA', '3411/903.102', '0073876870', 2, 1, 'TUBAN', '2007-11-04', 'LINGK WIRE RT 004 RW 007 KEL GEDONGOMBO KEC SEMANDING KAB TUBAN 62381', '', 1, 2, 1, '', 'PUTRI NOVITASARI', 'LINGK WIRE RT 004 RW 007 KEL GEDONGOMBO KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'PKBM TAMAN SISWA MONDOKAN TUBAN', 2, 'AK', '', '2023-07-15', '0073876870', '0073876870', '$2y$10$ma04SaP0q7/b63GjwuucX.BSwH2VmYGNQDJCeo4OJ0Kk.OLvqSG1S', '', 1, 1),
(93, 'EKA NUR AINI', '3412/904.102', '0076394387', 2, 1, 'TUBAN', '2007-05-05', 'DSN TLOGOPULE RT 001  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'KASWIN', 'DSN TLOGOPULE RT 001  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'SMP NEGERI 4 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0076394387', '0076394387', '$2y$10$ieYTOxigwdtYkMT4OFxnGurvvEjTm01ZcAn/Jnp2rX6PF3pctS3Ti', '', 1, 1),
(94, 'KHOIRIYA CINTA LESTARI', '3413/905.102', '0078219451', 2, 1, 'TUBAN', '2007-06-03', 'BOGOR RT 002 RW 015 BEKTIHARJO KEC SEMANDING TUBAN 62381', '', 1, 1, 1, '', 'HARIS ROHMAWATI', 'BOGOR RT 002 RW 015 BEKTIHARJO KEC SEMANDING TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NEGERI 4 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0078219451', '0078219451', '$2y$10$ZbjXhVCLwtovCC3WSo5mze3OcX1hPPv.WZJLPsWtc9GAHID/PN9ui', '', 1, 1),
(95, 'KHOIRUR ROCHMAN AGUS FERDYANSYAH', '3414/906.102', '0076864575', 1, 1, 'TUBAN', '2007-08-05', 'DSN MEDOKAN RT 004 RW 016 BEKTIHARJO KEC SEMANDING KAB. TUBAN 62381', '', 1, 2, 2, '', 'LAMITIN', 'DSN MEDOKAN RT 004 RW 016 BEKTIHARJO KEC SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NEGERI 4 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0076864575', '0076864575', '$2y$10$2FjAnpiHmDXbXGmBo0Oe4OMGfmdC19xeynWjxMPUWL6DjmPvCA5Y2', '', 1, 1),
(96, 'NIMATUL IZAA', '3415/907.102', '0072567640', 2, 1, 'TUBAN', '2007-11-28', 'DSN TLOGOPULE RT 002  RW 036 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'EVIANA', 'DSN TLOGOPULE RT 002  RW 036 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NEGERI 4 SEMANDING TUBAN', 2, 'AK', '', '2023-07-15', '0072567640', '0072567640', '$2y$10$f39KTUVjFB4EvYYgmGDDduDVP3NT9J.VgtXia7PN3xaH584apuLOe', '', 1, 1),
(97, 'QOYYUM NAYMA PROVIDI', '3416/908.102', '0072283326', 2, 1, 'BOJONEGORO', '2007-06-02', 'JL. APOKAT GG ABC NO.15 KEL PERBON KEC. TUBAN KAB TUBAN 62351', '', 1, 3, 3, '', 'ERLINAWATI', 'JL. APOKAT GG ABC NO.15 KEL PERBON KEC. TUBAN KAB TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NEGERI 2 TUBAN', 2, 'AK', '', '2023-07-15', '0072283326', '0072283326', '$2y$10$0UqhKDXtlpUDu922bCPj/ONq1C4BnSanz70f97eE6mOkx5Et4lsEC', '', 1, 1),
(98, 'RATNA AMELIA', '3417/909.102', '0073086368', 2, 1, 'TUBAN', '2007-11-09', 'DSN SUMBERAGUNG RT 006 / RW 001  DAHOR KEC. GRABAGAN KAB. TUBAN 62373', '', 1, 1, 1, '', 'LASMIRAH', 'DSN SUMBERAGUNG RT 006 / RW 001  DAHOR KEC. GRABAGAN KAB. TUBAN 62373', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NEGERI 1 GRABAGAN TUBAN', 2, 'AK', '', '2023-07-15', '0073086368', '0073086368', '$2y$10$sXACz26O9pdnXNG/WlwG3OSRNL//xklaILDe7IPbQTJ8wZnbzmTFa', '', 1, 1),
(99, 'SELVI AYU ANJANI', '3418/910.102', '0082614169', 2, 1, 'TUBAN', '2008-02-20', 'DSN BECOK RT 004 RW 007  TEGALREJO KEC MERAKURAK TUBAN 62355', '', 1, 1, 1, '', 'KUSRIAH', 'DSN BECOK RT 004 RW 007  TEGALREJO KEC MERAKURAK TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK TUBAN', 2, 'AK', '', '2023-07-15', '0082614169', '0082614169', '$2y$10$PBc0UvAjX..cTCkDp30twe3tHyUYmwgpowko8ej23Esdk2yLbuta.', '', 1, 1),
(100, 'TASYA NUR FAIDA', '3419/911.102', '0073107529', 2, 1, 'TUBAN', '2007-12-09', 'JL. PANGLIMA SUDIRMAN GG. PRAHU RT 002 / RW 001 KEL. KARANGSARI KEC.TUBAN KAB TUBAN 62314', '', 1, 4, 3, '', 'AINUL ROCIP TANTI FARANDANI', 'JL. PANGLIMA SUDIRMAN GG. PRAHU RT 002 / RW 001 KEL. KARANGSARI KEC.TUBAN KAB TUBAN 62314', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTs MANBAIL FUTUH TUBAN', 2, 'AK', '', '2023-07-15', '0073107529', '0073107529', '$2y$10$6I7qWrqPpxZ1oJZrMiBkje7DgVMSGEJQRaQK9ZntMObVo6uHBR1iy', '', 1, 1),
(101, 'YUSFIKA AURALIA', '3504/912.102', '0066088767', 2, 1, 'SURABAYA', '2006-02-05', 'DSN KARANGANYAR RT 006/RW 002 PURWOREJO KEC. JENU KAB TUBAN 62352', '', 1, 1, 1, '', 'SYAROH', 'DSN KARANGANYAR RT 006/RW 002 PURWOREJO KEC. JENU KAB TUBAN 62352', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'MTs JAWAHIRUL ULUM JABON SIDOARJO', 2, 'AK', '', '2023-07-15', '0066088767', '0066088767', '$2y$10$kBFrTuIwF.5vU4r7N39UHu8slu8XiBARFj5p5iwcKkTf3claa59aW', '', 1, 1),
(102, 'ANDRIYAN SAPUTRA', '3420/471.096', '0088230311', 1, 1, 'TUBAN', '2008-05-09', 'DSN KRAJAN RT 003 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '', 1, 3, 2, '', 'MUNTIANI', 'DSN KRAJAN RT 003 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 2, 'BD', '', '2023-07-15', '0088230311', '0088230311', '$2y$10$TkGkcLy.rXCJXNcbcSQ0S.s4of6V3/aa2a4byFpyHRsRBdSPaSmji', '', 1, 1),
(103, 'DHIMAS ANDHIKA PRATAMA', '3423/474.096', '0082973867', 1, 1, 'TUBAN', '2008-04-23', 'DSN KRAJAN RT 001 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '', 1, 2, 1, '', 'MUNTI\'AH', 'DSN KRAJAN RT 001 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS HIDAYATUL ISLAMIYAH', 2, 'BD', '', '2023-07-15', '0082973867', '0082973867', '$2y$10$IKDZg2Hu.YOKYjwH12IY7.dMEoQCNTULTQ291uCvEhrpRWATArQxq', '', 1, 1),
(104, 'FANIA RAHMA TASA FEBRIANA', '3424/475.096', '0073046887', 2, 1, 'TUBAN', '2007-02-08', 'DSN JABUNG RT 003 RW 004 SUGIHWARAS KEC JENU KAB TUBAN 62352', '', 1, 1, 1, '', 'WARTATIK', 'DSN JABUNG RT 003 RW 004 SUGIHWARAS KEC JENU KAB TUBAN 62352', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'PKBM TAMAN SISWA MONDOKAN TUBAN', 2, 'BD', '', '2023-07-15', '0073046887', '0073046887', '$2y$10$czx7dc2z5QgIwi1WtzXP5u5JKZz7a4jfLBmGDpk6e76Ux30kOYBa2', '', 1, 1),
(105, 'LENA OKTAFIA', '3425/476.096', '0082352473', 2, 1, 'TUBAN', '2008-06-02', 'DSN TELO RT 001 RW 002 PAKIS KEC. GRABAGAN KAB TUBAN 62371', '', 1, 2, 1, '', 'SULIKAH', 'DSN TELO RT 001 RW 002 PAKIS KEC. GRABAGAN KAB TUBAN 62371', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 PLUMPANG', 2, 'BD', '', '2023-07-15', '0082352473', '0082352473', '$2y$10$8RloAOqSJpWq9C0bUKlF/.NlZ9uklWSzilagPyTrLvg1tDO/ZytUq', '', 1, 1),
(106, 'M. ALIF MAHMUD AL MUBAROQ', '3333333333', '0074242153', 1, 1, 'TUBAN', '2007-10-26', 'DUSUN KEPET RT/RW 001/005 DESA TUNAH KECAMATAN SEMANDING', '', 0, 0, 0, '', 'NUR HANIFAH', 'DUSUN KEPET RT/RW 001/005 DESA TUNAH KECAMATAN SEMANDING', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '', 2, 'BD', '', '2023-07-15', '0074242153', '0074242153', '$2y$10$gxw6p4gc/WrjZITL665FNeX3OW2SinnIrE1jvbNrdF9txcDqZRW9m', '', 1, 1),
(107, 'MEISAROH DEWI WIDIANINGRUM', '3426/477.096', '0082340039', 2, 1, 'TUBAN', '2008-05-24', 'DSN KRAJAN RT 002 RW 002 GESING KEC. SEMANDING KAB. TUBAN 62381', '', 1, 1, 2, '', 'TUMIRAH', 'DSN KRAJAN RT 002 RW 002 GESING KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 2, 'BD', '', '2023-07-15', '0082340039', '0082340039', '$2y$10$HCya1Zo7uUmuezB26vHp4.xf/.WSS8Y3WKG3Ndg6U3e4JCFlSlOwK', '', 1, 1),
(108, 'MOCHAMAD RISAL ALFA RISQI', '3427/478.096', '0055980792', 1, 1, 'TUBAN', '2005-12-30', 'DSN KRAJAN RT 001 RW 004 GESING KEC. SEMANDING KAB. TUBAN 62381', '', 1, 2, 2, '', 'SUBAIDAH', 'DSN KRAJAN RT 001 RW 004 GESING KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENINGGAL DUNIA', '0', '0', '0', '0', 'MTS HIDAYATUL ISLAMIYAH', 2, 'BD', '', '2023-07-15', '0055980792', '0055980792', '$2y$10$Fo48WxWbkxgleO4Lo2ApP.nvu5Z9OOUCKFjlHLNkR0hcPOD7DhjRS', '', 1, 1),
(109, 'MOHAMAD REZA ADITIYA', '3428/479.096', '0081649079', 1, 1, 'TUBAN', '2008-03-18', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 2, '', 'SARMI', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'BD', '', '2023-07-15', '0081649079', '0081649079', '$2y$10$fVqdmkjV5XPT6ukP0rv9/.iFlCoDlY.SFTFSJLkROiP18mGPTOGeO', '', 1, 1),
(110, 'MUHAMMAD DWI ANGGA SAPUTRA', '3429/480.096', '0077001102', 1, 1, 'TUBAN', '2007-07-27', 'DSN BECOK RT 002 RW 008 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 2, 2, '', 'DARSIH', 'DSN BECOK RT 002 RW 008 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK TUBAN', 2, 'BD', '', '2023-07-15', '0077001102', '0077001102', '$2y$10$hF8FViyJGq/Z/l84nuO.2uhq17AkpyhVBTfon1JlxB8kNTGzeQwzG', '', 1, 1),
(111, 'MUHAMMAD IDO FIKY', '3430/481.096', '0061895385', 1, 1, 'TUBAN', '2006-10-24', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB. TUBAN 62381', '', 1, 1, 2, '', 'KASMINAH', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB. TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 2, 'BD', '', '2023-07-15', '0061895385', '0061895385', '$2y$10$CVvtViRnL9Ibz4Dxsqsn5ueu9vfVyLHxaOI5SRprqyMmsEhq5WT.y', '', 1, 1),
(112, 'NAYLA ANDINI AGIS RAMADHANI', '3431/482.096', '0069084549', 2, 1, 'TUBAN', '2006-10-19', 'RAWABAGUS UTARA RT 005 RW 001 MAGERSARI KEC. KARAWANG TIMUR KAB KARAWANG 41371 / DSN JEDUNG RT 001  RW 005 BOGOREJO KEC MERAKURAK  KAB TUBAN 62355', '', 1, 1, 2, '', 'WAHYU NUR ISNAINI ASTUTI', 'RAWABAGUS UTARA RT 005 RW 001 MAGERSARI KEC. KARAWANG TIMUR KAB KARAWANG 41371 / DSN JEDUNG RT 001  RW 005 BOGOREJO KEC MERAKURAK  KAB TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'PKBM TAMAN SISWA MONDOKAN TUBAN', 2, 'BD', '', '2023-07-15', '0069084549', '0069084549', '$2y$10$NKN.PAr1QkiA7492bTCYRe8knfJlPLQPeJBajSY3Nrw108IR9fAP.', '', 1, 1);
INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `kontak_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `sekolah_asal`, `terima_kelas`, `jurusan`, `nik`, `terima_tanggal`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(113, 'NENI VIDIYANA', '3432/483.096', '0078832047', 2, 1, 'TUBAN', '2007-08-13', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'LESTARI', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'BD', '', '2023-07-15', '0078832047', '0078832047', '$2y$10$jwYF0CYgTRMeY2718pHgN.4W15OEOpLaNRGBv5.mC/eeFJvH307Xq', '', 1, 1),
(114, 'NINA LINDA ASTUTIK', '3433/484.096', '0078487506', 2, 1, 'TUBAN', '2007-06-18', 'DSN GESIKAN RT 003 RW 004 GESIKAN KEC.GRABAGAN KAB TUBAN  62371', '', 1, 2, 2, '', 'SRIAH', 'DSN GESIKAN RT 003 RW 004 GESIKAN KEC.GRABAGAN KAB TUBAN  62371', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 1 GRABAGAN', 2, 'BD', '', '2023-07-15', '0078487506', '0078487506', '$2y$10$llA3klLWIZP9dy1LR/VtBOlZ/OUTSTtoQqPFQH3e324qFMuvA8FTm', '', 1, 1),
(115, 'NURVITA', '3434/485.096', '0084680967', 2, 1, 'TUBAN', '2008-02-29', 'DSN BONGKOL 2 RT 002 RW 006 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', 1, 3, 3, '', 'NGANTI', 'DSN BONGKOL 2 RT 002 RW 006 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTSN 3 TUBAN', 2, 'BD', '', '2023-07-15', '0084680967', '0084680967', '$2y$10$PYGA/ZX0yH1g458zrbz3WOpoY03SByvhtucewlkyvwv9aJxVo4SFW', '', 1, 1),
(116, 'RIA INDAWATI', '3435/486.096', '0068160185', 2, 1, 'TUBAN', '2008-01-31', 'LINGK KIRING RT 001  RW 014 GEDONGOMBO  KEC SEMANDING KAB. TUBAN 62381', '', 1, 1, 1, '', 'JASMANI', 'LINGK KIRING RT 001  RW 014 GEDONGOMBO  KEC SEMANDING KAB. TUBAN 62381', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 2, 'BD', '', '2023-07-15', '0068160185', '0068160185', '$2y$10$SH8x21lrqVtSZ0cVXWX9mOx89F863BxjueluwwQMXcAPaRtuedPKq', '', 1, 1),
(117, 'SAYJITSU HIROSA', '3436/487.096', '0074389079', 2, 1, 'TUBAN', '2007-08-28', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'CAMI HARTI', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'BD', '', '2023-07-15', '0074389079', '0074389079', '$2y$10$KVs0lpC.vvwB1.g/SVmzReEjn/iIK2E64if6Pfh177/lY0oNHr7zy', '', 1, 1),
(118, 'THEO RIZKI DIMAS KALENDRA', '3437/488.096', '0084958876', 1, 1, 'TUBAN', '2008-02-22', 'DSN GENDRUK RT 001  RW 001 GRABAGAN KEC GRABAGAN KAB. TUBAN 62371', '', 1, 1, 1, '', 'MUNTOLIAH', 'DSN GENDRUK RT 001  RW 001 GRABAGAN KEC GRABAGAN KAB. TUBAN 62371', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 1 GRABAGAN', 2, 'BD', '', '2023-07-15', '0084958876', '0084958876', '$2y$10$aAQmdd0MJlwT5k3wKRv7EeiMDJ5A8Xfk3/YSLsxgv6hliuAdvQoRS', '', 1, 1),
(119, 'UMI MA\'ARIFATUS TSANI\'AH', '3438/489.096', '0079421752', 2, 1, 'TUBAN', '2007-01-26', 'DSN WINONG RT 001  RW 009 SUGIHARJO KEC TUBAN KAB. TUBAN 62319', '', 1, 1, 2, '', 'TASMI', 'DSN WINONG RT 001  RW 009 SUGIHARJO KEC TUBAN KAB. TUBAN 62319', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 2, 'BD', '', '2023-07-15', '0079421752', '0079421752', '$2y$10$nSVLf0xL7UeeQX1kH8/i8e2PON5sMjozgzGjar.Uk/8GuDxRKpQzi', '', 1, 1),
(120, 'ANI NUR JANNAH', '3484/226.072', '0079252539', 2, 1, 'TUBAN', '2007-05-07', 'DSN MOJOKOPEK RT 001 RW 027 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 0, 0, '', 'RINI NUR HIDAYAH', 'DSN MOJOKOPEK RT 001 RW 027 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '', 2, 'LPKKK', '', '2023-07-15', '0079252539', '0079252539', '$2y$10$JU6sUlWLkOEV6/sN3nB1zullEGKFyp.i/MLQtSws8GoiTAAOPuF1.', '', 1, 1),
(121, 'CINTA FANISA', '3485/227.072', '0084500392', 2, 1, 'PIMPING', '2008-07-15', 'DSN GEMANTING RT 001 RW 008 GENAHARJO KEC. SEMANDING KAB. TUBAN 62381', '', 1, 0, 0, '', 'ISA SARITA IKUN', 'DSN GEMANTING RT 001 RW 008 GENAHARJO KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '', 2, 'LPKKK', '', '2023-07-15', '0084500392', '0084500392', '$2y$10$rsOKlq6c5hC2JPzz679OXOWkT9aq4Xpx2Zoi8KM6xrTw8KV8VUyf2', '', 1, 1),
(122, 'CINTA TRIWIJAYA', '3486/228.072', '0074355309', 2, 1, 'TUBAN', '2007-03-26', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 1, 1, '', 'RITA WATI', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENINGGAL DUNIA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '0074355309', '0074355309', '$2y$10$kRjopbMwrjRl2YnN1uVvb.gBrMlztUaYZ1QJCL10bJdR3S9LIoxj.', '', 1, 1),
(123, 'DEVIE FANEZA ALFAZIRA', '3487/229.072', '0078136736', 2, 1, 'TUBAN', '2007-02-02', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 1, 1, '', 'WARTIK', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 2 TUBAN', 2, 'LPKKK', '', '2023-07-15', '0078136736', '0078136736', '$2y$10$9Yz3U5KtQ3RyPxMb.8BP8uz1d9wM59RDR9oGJM6wi8TDyuaecNs8O', '', 1, 1),
(124, 'DINDA NURUL QOMARIYAH', '3488/230.072', '3080024442', 2, 1, 'TUBAN', '2008-03-21', 'DSN BANCANG RT 002 RW 011 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 2, 1, '', 'SRI PURWATI', 'DSN BANCANG RT 002 RW 011 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '3080024442', '3080024442', '$2y$10$dC21vcHtdVyS.FjUkHAu3uENFI23bEsJu.mc5odqcTvIQZAXJSM9S', '', 1, 1),
(125, 'FADILA YUNI ASTITI', '3489/231.072', '0077011698', 2, 1, 'TUBAN', '2007-06-25', 'DSN KARANG WINANGUN RT 001 RW 001 TUWIRI WETAN KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 1, 2, '', 'DARWATI', 'DSN KARANG WINANGUN RT 001 RW 001 TUWIRI WETAN KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS HIDAYATUL MUBTADIIN', 2, 'LPKKK', '', '2023-07-15', '0077011698', '0077011698', '$2y$10$bAz0/FYJPg/T81yMV76ni.cktkvUm1Z8W/mjAP9wf/JWXr0Y1iFky', '', 1, 1),
(126, 'FELISIA', '3490/232.072', '0072032536', 2, 1, 'TUBAN', '2007-05-04', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 2, 1, '', 'TUTINAWATI', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '0072032536', '0072032536', '$2y$10$WvZz7d18DOXS9JLlG.6qROTvhAXSalU5WMRoA.y3pChhiCaUTDZIm', '', 1, 1),
(127, 'GADIS EKA MEFIA MUKHAN', '3491/233.072', '3089102437', 2, 1, 'TUBAN', '2008-10-03', 'DSN BANCANG RT 001 RW 012 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 4, 2, '', 'TITIN NOFIAH', 'DSN BANCANG RT 001 RW 012 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP MU ALLIMIN', 2, 'LPKKK', '', '2023-07-15', '3089102437', '3089102437', '$2y$10$6eTBJeQTeQL5GYvdD8lc/u1eacV/7OA/cwvuc9O.5Sr/lt4JmGg3i', '', 1, 1),
(128, 'MAHDISA MAYA YOLANY', '3492/234.072', '0083929826', 2, 1, 'TUBAN', '2008-04-14', 'JL PANGLIMA SUDIRMAN RT 002 RW 002 KARANGSARI KEC. TUBAN KAB. TUBAN 62314', '', 1, 0, 0, '', 'NURHAYANTI', 'JL PANGLIMA SUDIRMAN RT 002 RW 002 KARANGSARI KEC. TUBAN KAB. TUBAN 62314', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '', 2, 'LPKKK', '', '2023-07-15', '0083929826', '0083929826', '$2y$10$kX6JLyGEy79lSZUivdQvDOyY4pRvlyHBSyZUINNZ46ASl.xqncIOO', '', 1, 1),
(129, 'MAYA MELYSSA PUTRI', '3493/235.072', '0085627138', 2, 1, 'TUBAN', '2008-02-12', 'DSN TELO RT 002 RW 002 PAKIS KEC. GRABAGAN KAB. TUBAN 62373', '', 1, 1, 1, '', 'MUHSINATIN', 'DSN TELO RT 002 RW 002 PAKIS KEC. GRABAGAN KAB. TUBAN 62373', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 PALANG', 2, 'LPKKK', '', '2023-07-15', '0085627138', '0085627138', '$2y$10$ysKmdRz0vxXGIrVwQVDjKuiTQL8jkE8FQU1F/cO9gpv2TMLKR2NBO', '', 1, 1),
(130, 'MAYLAFFASYA NAJWA AL-SHIHAB', '3495/237.072', '0073262209', 2, 1, 'TUBAN', '2007-07-17', 'JL. HOS COKROAMINOTO NO 266 RT 007 RW 004 GEDONGOMBO KEC. SEMANDING KAB. TUBAN 62381', '', 1, 3, 2, '', 'NINIK SETIYOWATI', 'JL. HOS COKROAMINOTO NO 266 RT 007 RW 004 GEDONGOMBO KEC. SEMANDING KAB. TUBAN 62381', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 2 TUBAN', 2, 'LPKKK', '', '2023-07-15', '0073262209', '0073262209', '$2y$10$2Sbo4qQlSQroxi./3sK.h.pvcD35RfcUSbEHdgRBAu72/GeKFGkKe', '', 1, 1),
(131, 'MELISCA ANANDA PRATAMA', '3496/238.072', '0079594439', 2, 1, 'TUBAN', '2007-10-17', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 0, 0, '', 'NURPIATI', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'WIRASWASTA', '0', '0', '0', '0', '', 2, 'LPKKK', '', '2023-07-15', '0079594439', '0079594439', '$2y$10$cCPkgSqLQwlpuOw7clVXpOxfTXI9b/KNDTx0eabjycLVzkUYFg.t.', '', 1, 1),
(132, 'NURUL LAILA SAGITA', '3497/239.072', '0085130985', 2, 1, 'TUBAN', '2008-01-06', 'DSN SINGGRT RT 002 RW 003 PUCANGAN KEC. PALANG KAB. TUBAN 62391', '', 1, 2, 2, '', 'NGATMINAH', 'DSN SINGGRT RT 002 RW 003 PUCANGAN KEC. PALANG KAB. TUBAN 62391', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 5 TUBAN', 2, 'LPKKK', '', '2023-07-15', '0085130985', '0085130985', '$2y$10$bgmr.itplby5lb6EYsu7BuaL0aHHFHoE1gJFWCM8/Zkf2OaerHgiC', '', 1, 1),
(133, 'PRISCA GADIS OKTAVIA', '3498/240.072', '0073909093', 2, 1, 'TUBAN', '2007-10-26', 'DSN KARANGANYAR RT 004 RW 002 TEMAJI KEC. JENU KAB. TUBAN 62352', '', 1, 2, 1, '', 'TUTUT', 'DSN KARANGANYAR RT 004 RW 002 TEMAJI KEC. JENU KAB. TUBAN 62352', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NU HIDAYATUL ULLUM TALUN', 2, 'LPKKK', '', '2023-07-15', '0073909093', '0073909093', '$2y$10$skw5FIoL7SmRsLnkjzO/TunLZ.g4IxG/ANu8LY1vVyW7rtqRSq44u', '', 1, 1),
(134, 'SITI ASTINA MAHARANI', '3499/241.072', '0076386475', 2, 1, 'TUBAN', '2007-09-16', 'DSN BANCANG RT 001 RW 010 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 1, 1, '', 'NURKAYATIN', 'DSN BANCANG RT 001 RW 010 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '0076386475', '0076386475', '$2y$10$3zcvEUTHOCxC66Q2CIqoMui8Yj6hn0yP/TP.dG3EdsgDGDTVdph8.', '', 1, 1),
(135, 'WASI\'AH NELA MARZUQOH', '3500/242.072', '0088996381', 2, 1, 'TUBAN', '2008-01-11', 'DSN TLOGO WUNI RT 001 RW 003 TEMANDANG KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 3, 1, '', 'RETNO WATI', 'DSN TLOGO WUNI RT 001 RW 003 TEMANDANG KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '0088996381', '0088996381', '$2y$10$OU.WT/lEnCRZhz81vC5gK.vSEdOMGQKrvQrRnfwMe0WC7yDV2KwmW', '', 1, 1),
(136, 'YAYUK WIJAYANTI', '3501/243.072', '0081337803', 2, 1, 'TUBAN', '2008-05-30', 'DSN TLOGOPULE RT 002 RW 037 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', 1, 6, 5, '', 'CARTI', 'DSN TLOGOPULE RT 002 RW 037 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'MTS SALAFIYAH MERAKURAK', 2, 'LPKKK', '', '2023-07-15', '0081337803', '0081337803', '$2y$10$7c0cPzaRrW8nEwyBrzpnBuMkEJ1q.ezdN7W5qtKjkAHb2alfBMXAO', '', 1, 1),
(137, 'YOLANDA AYLIN TRIHAPSARI', '3502/244.072', '0085016452', 2, 1, 'TUBAN', '2008-08-28', 'DSN BONGKOL 1 RT 002 RW 003 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', 1, 1, 1, '', 'ISMIWATI', 'DSN BONGKOL 1 RT 002 RW 003 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS SUMBERSARI KOWANG', 2, 'LPKKK', '', '2023-07-15', '0085016452', '0085016452', '$2y$10$CITOGY5r1oReb79BM2S0g.LhdZb3cF5/q7OYEM17I3geLBXHHTZ0y', '', 1, 1),
(138, 'YUNUS MAHMUD', '3503/245.072', '0068062206', 1, 1, 'TUBAN', '2006-09-22', 'DSN KARANGREJO RT 003 RW 005 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 1, 1, '', 'NURUL HIKMAH', 'DSN KARANGREJO RT 003 RW 005 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'LPKKK', '', '2023-07-15', '0068062206', '0068062206', '$2y$10$dn9FOu8GS83.t/i6V93cTeG7G6di2JtLNYqHUVlfmGxX4gqn8/0du', '', 1, 1),
(139, 'AGENG HAYYU AL MUHYI', '3439/581.105', '0081317868', 1, 1, 'BOGOR', '2008-06-05', 'JL.A YANI NO.24 RT 004 RW 002 NGRAMBE KAB.NGAWI 63623', '', 1, 1, 2, '', 'ANIK PURWANINGRUM', 'JL.A YANI NO.24 RT 004 RW 002 NGRAMBE KAB.NGAWI 63623', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL ANWAR PAKEL', 2, 'PH', '', '2023-07-15', '0081317868', '0081317868', '$2y$10$Vc99v.tSpqtDXRrJ0mEYbODyTG0kXJMz1y5oC2p7MZg9OAzorJrwy', '', 1, 1),
(140, 'ANGGUN AGUSTIN', '3440/582.105', '0064308410', 2, 1, 'TUBAN', '2006-08-23', 'CENDORO UTARA RT 001 RW 002 CENDORO KEC PALANG KAB. TUBAN 62391', '', 1, 1, 1, '', 'IRAWATI', 'CENDORO UTARA RT 001 RW 002 CENDORO KEC PALANG KAB. TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 GRABAGAN', 2, 'PH', '', '2023-07-15', '0064308410', '0064308410', '$2y$10$yoZrasPboU0eiwB70xWg3uI.BDeQOuVYABWPFcuvbNOy0xAYxHPFO', '', 1, 1),
(141, 'CELSI OLIVVIA PUTRI', '3442/584.105', '0073805616', 2, 1, 'TUBAN', '2007-08-21', 'DSN TLOGOPULE RT 002  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'MARWI ASTUTIK', 'DSN TLOGOPULE RT 002  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'MTS HIDAYATUSH SHIBYAN', 2, 'PH', '', '2023-07-15', '0073805616', '0073805616', '$2y$10$Gb4z07dNa0MAsPR2MpC6L.WqbX6qrLXoWHFCUjsQKP3NPoeLN8xsq', '', 1, 1),
(142, 'CHESY ANASTASYA TERERE', '3443/585.105', '0082041175', 2, 3, 'TUBAN', '2008-07-13', 'GG. WIJAYA KUSUMA I RT 002 RW 003 RONGGOMULYO KEC. TUBAN KAB. TUBAN 62313', '', 1, 1, 1, '', 'SRI UTAMI', 'GG. WIJAYA KUSUMA I RT 002 RW 003 RONGGOMULYO KEC. TUBAN KAB. TUBAN 62313', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA BECOK', 2, 'PH', '', '2023-07-15', '0082041175', '0082041175', '$2y$10$iv31sEz3AKw9ZCIrqNc0leo8ZnFs9lUAj4y/vJZoFHRKwEJ/CH3yW', '', 1, 1),
(143, 'DELLA AFRILIA NANDA', '3444/586.105', '0072254352', 2, 1, 'TUBAN', '2007-02-17', 'DSN MOJOKOPEK RT 002 RW 031 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 2, 2, '', 'SARPUK', 'DSN MOJOKOPEK RT 002 RW 031 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPNU HIDAYATUL ULUM TALUN', 2, 'PH', '', '2023-07-15', '0072254352', '0072254352', '$2y$10$mOuUITUARpGkHazXX.L7H.BPJ9NUG5rb2QxwrQ1CeMaQa6ZzBq/Hq', '', 1, 1),
(144, 'DIANA RAHAYU WARDANA', '3445/587.105', '3071572751', 2, 1, 'JAKARTA', '2007-06-02', 'KP.PISANGAN RT 008 RW 003 PENGGILINGAN KEC. CAKUNG KOTA JAKARTA TIMUR PROV. DKI JAKARTA 13940', '', 1, 2, 3, '', 'YAYAH NGATRIYAH', 'KP.PISANGAN RT 008 RW 003 PENGGILINGAN KEC. CAKUNG KOTA JAKARTA TIMUR PROV. DKI JAKARTA 13940', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'PH', '', '2023-07-15', '3071572751', '3071572751', '$2y$10$tLnztmZYEeqouyxJ7ddTYegi6iVeZWLGVrzkn3EL11v.2QERn/ww.', '', 1, 1),
(145, 'DICKY WAHYUDIN FEBRYEAN ARMANSYAH', '3446/588.105', '0077724216', 1, 1, 'AMURANG', '2007-02-23', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', 1, 2, 1, '', 'WASEMI', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'MTS SUMBERSARI KOWANG', 2, 'PH', '', '2023-07-15', '0077724216', '0077724216', '$2y$10$48vnCHziDOx6LNWSFR1pM.IWmPUaBu287S8Q6RNorT.1nR8W7VR4q', '', 1, 1),
(146, 'DWI WULAN DARI', '3447/589.105', '0063967280', 2, 1, 'TUBAN', '2006-02-14', 'JL. SUMUR SRUMBUNG N0. 18 KUTOREJO KEC TUBAN KAB.TUBAN 62311', '', 1, 2, 2, '', 'TATIK', 'JL. SUMUR SRUMBUNG N0. 18 KUTOREJO KEC TUBAN KAB.TUBAN 62311', '', '', 'MENINGGAL DUNIA', '0', '0', '0', '0', 'SMPN 1 GRABAGAN', 2, 'PH', '', '2023-07-15', '0063967280', '0063967280', '$2y$10$wIXlOl0D/38AWaimuhgpbOFAiEh2Tm4eLWWZn331enwdz574nmfri', '', 1, 1),
(147, 'EKO BAGUS PRASETYO', '3448/590.105', '0074193670', 1, 1, 'TUBAN', '2007-03-31', 'DSN TLOGOPULE RT 002 BRW 033 TLOGOPULE SEMANDING KAB TUBAN 62381', '', 1, 6, 6, '', 'TARPIK', 'DSN TLOGOPULE RT 002 BRW 033 TLOGOPULE SEMANDING KAB TUBAN 62381', '', '', 'TIDAK BEKERJA', '0', '0', '0', '0', 'MTS SALAFIYAH MERAKURAK', 2, 'PH', '', '2023-07-15', '0074193670', '0074193670', '$2y$10$zklnM9GgvoCSBev5m3nnv.80WIvrwnuSn53s465QWAnz.ZXu.LQLy', '', 1, 1),
(148, 'ELIS RISKI APRILIYANI', '3449/591.105', '0077367362', 2, 1, 'TUBAN', '2007-05-02', 'DSN KARANGAGUNG TENGAH RT 009 RW 002 KARANGAGUNG KEC PALANG KAB. TUBAN 62391', '', 1, 1, 1, '', 'SRIYANI', 'DSN KARANGAGUNG TENGAH RT 009 RW 002 KARANGAGUNG KEC PALANG KAB. TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 2, 'PH', '', '2023-07-15', '0077367362', '0077367362', '$2y$10$gnNZ5zTOhyr7qOHfi8l8j.U7Dk3gtBkMomHk7hkptVFWQnxv.PIK.', '', 1, 1),
(149, 'FINA YULIA PRATIWI', '3450/592.105', '0073264716', 2, 1, 'TUBAN', '2007-02-06', 'JL.SEMANGKA RT 002 RW 007 PERBON KEC TUBAN KAB. TUBAN 62351', '', 1, 1, 1, '', 'YULAIKAH', 'JL.SEMANGKA RT 002 RW 007 PERBON KEC TUBAN KAB. TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 PLUMPANG', 2, 'PH', '', '2023-07-15', '0073264716', '0073264716', '$2y$10$9LRsjSb9kizHqThLnQmVO.NrZpCzUvEgfte1NSIrp5FEup7PgJvvS', '', 1, 1),
(150, 'HANDIKA IRFAN FIRNANDA', '3451/593.105', '0072398743', 1, 1, 'TUBAN', '2007-10-15', 'DSN SEMAMPIR RT 001 RW 001 SEMBUNGREJO KEC. MERAKURAK KAB. TUBAN 62355', '', 1, 1, 1, '', 'SITI HENIK', 'DSN SEMAMPIR RT 001 RW 001 SEMBUNGREJO KEC. MERAKURAK KAB. TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 BRONDONG', 2, 'PH', '', '2023-07-15', '0072398743', '0072398743', '$2y$10$fA0YrAKG7hZ.SYI5TvFSeu14cJ2BK8be.2FMl1AWe9oQznAFM9UNS', '', 1, 1),
(151, 'HERLIAN DWI SEPTIANI', '3452/594.105', '0044744481', 2, 1, 'TUBAN', '2004-09-23', 'DSN SEMANDING TIMUR RT 002 RW 006 SEMNDING KEC SEMANDING KAB TUBAN 62381', '', 1, 2, 2, '', 'SUKIRAH', 'DSN SEMANDING TIMUR RT 002 RW 006 SEMNDING KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPK ST PETRUS TUBAN', 2, 'PH', '', '2023-07-15', '0044744481', '0044744481', '$2y$10$o1e9QHnlBZ.JJ7v5Bb15W.HzT2/6r3CMYgb6EclYLnvJUynkAdxde', '', 1, 1),
(152, 'HIMA FITRIA FIDAYANTI', '3453/595.105', '3081365402', 2, 1, 'TUBAN', '2008-07-03', 'DSN KARANG ANYAR RT 001 RW 001 PUCANGAN KEC MONTONG KAB. TUBAN 62357', '', 1, 6, 7, '', 'ASWATI', 'DSN KARANG ANYAR RT 001 RW 001 PUCANGAN KEC MONTONG KAB. TUBAN 62357', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 10 RAJA AMPAT', 2, 'PH', '', '2023-07-15', '3081365402', '3081365402', '$2y$10$rHtNqgHDJP9UiSEpzKuzYeypo17P9Qs5al0UiduRNuLlUG8HcB0bC', '', 1, 1),
(153, 'IGO ARI PRATAMA SAPUTRA', '3454/596.105', '0073682654', 1, 1, 'TUBAN', '2007-11-19', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'SARTIK', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'PH', '', '2023-07-15', '0073682654', '0073682654', '$2y$10$tlSm.7Ox190V9X5tEa5a9uMDowpgTbpJlHblkWmJ6lq.g1SXnpwrm', '', 1, 1),
(154, 'JAMILATUL HIDAYATI', '3455/597.105', '0078774458', 2, 1, 'TUBAN', '2007-10-07', 'DSN JARUM RT 002 RW 021 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 2, 1, '', 'SUSANA', 'DSN JARUM RT 002 RW 021 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPI SUNAN BEJAGUNG', 2, 'PH', '', '2023-07-15', '0078774458', '0078774458', '$2y$10$iHokDILTwkjbg7BOLwr/NuJE8cDNC7CDrKArORbRfFLvrQ/TggYVa', '', 1, 1),
(155, 'MAHENDRA ', '3456/598.105', '0077943081', 1, 1, 'TUBAN', '2007-07-07', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '', 1, 2, 3, '', 'PUJI', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '', '', 'PERDAGANGAN', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'PH', '', '2023-07-15', '0077943081', '0077943081', '$2y$10$92.xiKV03r80VUYzXlBHj.7QJSScotJqyMJRcUdg0voCVixR7StKW', '', 1, 1),
(156, 'MAR ATUS SHOLIHAH', '3457/599.105', '0073149316', 2, 1, 'TUBAN', '2007-11-12', 'KOWANG SELATAN RT 00  RW 00    KOWANG KEC. SEMANDING KAB. TUBAN 62381', '', 1, 1, 2, '', 'TRI DIYAH PURWANTI', 'KOWANG SELATAN RT 00  RW 00    KOWANG KEC. SEMANDING KAB. TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 2, 'PH', '', '2023-07-15', '0073149316', '0073149316', '$2y$10$UPgmVT1oEQhyDsZwK9BKM.Jd4xIWeBP492JFUbUHRc1zLH9zjCoJ6', '', 1, 1),
(157, 'MAYA KIN-KIN ANGGRIYANI', '3458/600.105', '0083546000', 2, 1, 'TUBAN', '2008-03-05', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'WARLIK ELIKA', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 2 PALANG', 2, 'PH', '', '2023-07-15', '0083546000', '0083546000', '$2y$10$kClrHRFnFfhq6.k5m9zd9ursDVF939QXvIXHf2aFtsNIbv3CWb3Wa', '', 1, 1),
(158, 'MILDA HIDAYATUL UMMAH', '3459/601.105', '0084331161', 2, 1, 'TUBAN', '2008-11-15', 'PAKEL RT 015 RW 003 PAKEL KEC. MONTONG KAB TUBAN 62357 ', '', 1, 4, 4, '', 'HARMIKI', 'PAKEL RT 015 RW 003 PAKEL KEC. MONTONG KAB TUBAN 62357 ', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 PALANG', 2, 'PH', '', '2023-07-15', '0084331161', '0084331161', '$2y$10$t.gfeOH96VmH9CQIBmzh3.RZ0YAE6Gav0yvKoSm3SAuF2MCVHVGke', '', 1, 1),
(159, 'MOHAMMAD AZKA NAUFAL HILMI', '3460/602.105', '3077263829', 1, 1, 'TUBAN', '2007-11-07', 'DSN KRAJAN RT 004 RW 008 JADI KEC SEMANDING KAB TUBAN 62381', '', 1, 4, 5, '', 'HJ. SUTIK', 'DSN KRAJAN RT 004 RW 008 JADI KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS YANBU\'UL ULUM', 2, 'PH', '', '2023-07-15', '3077263829', '3077263829', '$2y$10$ojd5XABZJ5XjvbRTw2QxLuTukgcBzIJx8s2nzKYowFUjmsgofC2qW', '', 1, 1),
(160, 'NOVI AULIA RAHMAWATI', '3461/603.105', '0076848202', 2, 1, 'TUBAN', '2007-07-25', 'CENDORO SELATAN RT 003 RW 006 KEC PALANG KAB TUBAN 62391', '', 1, 2, 2, '', 'KASWATI', 'CENDORO SELATAN RT 003 RW 006 KEC PALANG KAB TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 PALANG', 2, 'PH', '', '2023-07-15', '0076848202', '0076848202', '$2y$10$Jc6/DAQ7AW39qmekEusz/.ULD7dGNOwRn0mx/qxfqIuTazFyI84m6', '', 1, 1),
(161, 'REFA ZULI AMELIA', '3462/604.105', '0074952652', 2, 1, 'TUBAN', '2007-07-30', 'DSN BECOK RT 004 RW 008  TEGALREJO KEC MERAKURAK KAB TUBAN 62355', '', 1, 1, 1, '', 'RUKMINI', 'DSN BECOK RT 004 RW 008  TEGALREJO KEC MERAKURAK KAB TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'PH', '', '2023-07-15', '0074952652', '0074952652', '$2y$10$MlXxavMF7hnLZCguLgyOme87f4cAtE7kZMhZC9NPAQjqtQ6LNqdia', '', 1, 1),
(162, 'RISKA MAULIDA RAHMA', '3464/606.105', '0082299466', 2, 1, 'TUBAN', '2007-10-10', 'DSN SINGGET RT 005 RW 003 PUCANGAN KEC PALANG KAB TUBAN 62391', '', 1, 1, 1, '', 'KARIYANI', 'DSN SINGGET RT 005 RW 003 PUCANGAN KEC PALANG KAB TUBAN 62391', '', '', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'SMPN 3 TANJUNG PALAS UTARA', 2, 'PH', '', '2023-07-15', '0082299466', '0082299466', '$2y$10$nu3FEQoosl0SHNvyXb229OVGVT18Y3TAbvQf9B3lFgimGS0MiToy2', '', 1, 1),
(163, 'RISQI DWI FIRNANDO', '3465/607.105', '0075411891', 1, 1, 'TUBAN', '2007-07-05', 'DSN JADI RT 004 RW 007 JADI KEC SEMANDING KAB TUBAN 62381', '', 1, 5, 3, '', 'MARNING', 'DSN JADI RT 004 RW 007 JADI KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'PH', '', '2023-07-15', '0075411891', '0075411891', '$2y$10$ChMoRrR3rryQ5awGAN3xG.QzEdDdTemQudg7uKj0js.EcwdQdUsZ2', '', 1, 1),
(164, 'SELVIA FAIZURA', '3466/608.105', '0072863667', 2, 1, 'TUBAN', '2007-11-03', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'WARTINIK', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 2, 'PH', '', '2023-07-15', '0072863667', '0072863667', '$2y$10$YTZD3HLBD3SPa1.fXL3NteDILLfL.LjPHLN.gDhr40MIS3IxjyyOu', '', 1, 1),
(165, 'SYAFINA NADYA PUTRI', '3467/609.105', '0075759118', 2, 1, 'TUBAN', '2007-01-17', 'DSN GESIKAN  RT 005 RW 004 GESIKAN  KEC GRABAGAN KAB TUBAN 62373', '', 1, 1, 2, '', ' RITA RAHAYU NINGSIH ', 'DSN GESIKAN  RT 005 RW 004 GESIKAN  KEC GRABAGAN KAB TUBAN 62373', '', '', 'PETANI', '0', '0', '0', '0', 'SMP NURUL HUDA', 2, 'PH', '', '2023-07-15', '0075759118', '0075759118', '$2y$10$l.FmMRJeTiyAV0/zhTWnvOatuod9GhUGMzDyL7.TE1Mv2cGFmEsrq', '', 1, 1),
(166, 'WISNU SAPUTRA ', '3468/610.105', '0088738928', 1, 1, 'TUBAN', '2008-12-02', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '', 1, 4, 4, '', 'PUJI', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '', '', 'PERDAGANGAN', '0', '0', '0', '0', 'SMPN 1 MERAKURAK', 2, 'PH', '', '2023-07-15', '0088738928', '0088738928', '$2y$10$DBdtDPT7H/3/TAAUbfaj3uXOMBYWQg/4JkvR4PSfU18VP0awOTbQK', '', 1, 1),
(167, 'ADINDA FATIMATUS ZAHRA ISLAMI', '3470/767.063', '0084976371', 2, 1, 'TUBAN', '2008-07-11', 'DSN MULUNG RT 003 RW 002 BOGOREJO KEC MERAKURAK KAB TUBAN 62355', '', 1, 1, 1, '', 'SITI ROHMAH', 'DSN MULUNG RT 003 RW 002 BOGOREJO KEC MERAKURAK KAB TUBAN 62355', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 2, 'RPL', '', '2023-07-15', '0084976371', '0084976371', '$2y$10$zq4tINYSm9z/1qVU8rAZP.YS7602YQZzHcH/JtZ9bpucA1L0hZzVK', '', 1, 1),
(168, 'AULIA RENANDA PASHA', '3471/768.063', '0072726779', 2, 1, 'TEGAL', '2007-10-06', 'DSN NGRAYUNG RT 011 / RW 001 NGRAYUNG KEC. PLUMPANG KAB TUBAN 62382', '', 1, 1, 1, '', 'ULFA MISTUTIK', 'DSN NGRAYUNG RT 011 / RW 001 NGRAYUNG KEC. PLUMPANG KAB TUBAN 62382', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMP NURUL HUDA', 2, 'RPL', '', '2023-07-15', '0072726779', '0072726779', '$2y$10$u0vfg67c1D9AqOyl8ppf/e/ObYpfSZyYCSQIhCNUi1XUOgXkIXK3S', '', 1, 1),
(169, 'AZUHRIL REGA FAHRIN AKBAR MUHAMMAD', '3472/769.063', '0073508319', 1, 1, 'LAMONGAN', '2007-11-12', 'LABUHAN RT 004 RW 001 LABUHAN KEC BRONDONG KAB.LAMONGAN 62263', '', 1, 1, 1, '', 'RUBI ATUN', 'LABUHAN RT 004 RW 001 LABUHAN KEC BRONDONG KAB.LAMONGAN 62263', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 TUBAN', 2, 'RPL', '', '2023-07-15', '0073508319', '0073508319', '$2y$10$TD7NND7KKMUMyB7v7G8WtehE79.qJJS1wgENDQOxCjWUkH49KXpVC', '', 1, 1),
(170, 'CHRISTIABELLA', '3473/770.063', '0085026047', 2, 3, 'AMBON', '2008-02-04', 'JL. M.YAMIN NO 25 F RT 002 RW 003 GEDONGOMBO KEC. SEMANDING KAB.TUBAN 62381', '', 1, 1, 1, '', 'LANY SOLAPUNG TUNGGAL', 'JL. M.YAMIN NO 25 F RT 002 RW 003 GEDONGOMBO KEC. SEMANDING KAB.TUBAN 62381', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 2 PLUMPANG ', 2, 'RPL', '', '2023-07-15', '0085026047', '0085026047', '$2y$10$jIU8/0EYSDTA3T2HUnldkOaMsHs2u9LyUmd4CCICOjhKVCTJjzTSu', '', 1, 1),
(171, 'DANIEL AGKWILA MANGGAPROW', '3474/771.063', '0066246226', 1, 3, 'URBINASOPEN', '2006-12-06', 'DSN URBINASOPEN DESA URBINASOPEN KEC. WAIGEO TIMUR KAB. RAJA AMPAT PROV. PAPUA BARAT DAYA', '', 1, 1, 1, '', 'MAGRICE URBINAS', 'DSN URBINASOPEN DESA URBINASOPEN KEC. WAIGEO TIMUR KAB. RAJA AMPAT PROV. PAPUA BARAT DAYA', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS HIDAYATUSH SHIBYAN', 2, 'RPL', '', '2023-07-15', '0066246226', '0066246226', '$2y$10$QEaE5HOqxqSG/GXOclS6eOVQ/UMrw2bvvzr9gKqfeoz/y8kYj3VJ2', '', 1, 1),
(172, 'EVA OKTAVIANA', '3476/773.063', '0079644925', 2, 1, 'TUBAN', '2007-10-27', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 4, 1, '', 'TUTIK NINGSIH', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'MTS HIDAYATUSH SHIBYAN CENDORO', 2, 'RPL', '', '2023-07-15', '0079644925', '0079644925', '$2y$10$lsXehpwa0nxYfThZjhpciO5BqbgtxqHObPy8XIcJfWm6/bqXAOlYu', '', 1, 1),
(173, 'FARIL FIRNANDA', '3477/774.063', '0086599185', 1, 1, 'TUBAN', '2008-02-08', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'ULIS ITA WINARTI', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 JENU', 2, 'RPL', '', '2023-07-15', '0086599185', '0086599185', '$2y$10$kYPIxZACN5tiZbnj0eoRfOwD9ZFgahsM44WEDX/hotI2TTwyVa.pO', '', 1, 1),
(174, 'FRIZHA TRI ANGELS', '3478/775.063', '0087660050', 2, 1, 'TUBAN', '2008-10-13', 'DSN MOJOKOPEK RT 001 RW 030 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 2, '', 'NGASMI', 'DSN MOJOKOPEK RT 001 RW 030 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 1 SARANG', 2, 'RPL', '', '2023-07-15', '0087660050', '0087660050', '$2y$10$h8xutZgLVDjjtWR4ZgNZZO1cYLsAXzQLfBKfLWCmYZzmis9izde82', '', 1, 1),
(175, 'MOHAMMAD IWAN SAPUTRA', '3479/776.063', '0089646116', 1, 1, 'TUBAN', '2008-01-24', 'BONGKOL 1 RT 004 RW 001 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', 1, 1, 1, '', 'KASTI\'AH ', 'BONGKOL 1 RT 004 RW 001 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA', 2, 'RPL', '', '2023-07-15', '0089646116', '0089646116', '$2y$10$vM4EaQQ7YuqCGxo3.b.VnuVoqF5GSqWtTzNeDvga520yi/SjfeGIi', '', 1, 1),
(176, 'NANDANA RIVA ARDIANSYAH', '3480/777.063', '0078615165', 1, 1, 'SIDOARJO', '2007-09-21', 'DSN KRADENAN RT OO2 RW 002 KRADENAN KEC PALANG KAB TUBAN 62391', '', 1, 1, 1, '', 'MIKE INDRAYANI', 'DSN KRADENAN RT OO2 RW 002 KRADENAN KEC PALANG KAB TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 2, 'RPL', '', '2023-07-15', '0078615165', '0078615165', '$2y$10$3ufiMBuoE//MsHD35bjMwedXC/rU1S7Uh3sVkYHOaE8sfcgEhtpLy', '', 1, 1),
(177, 'RAGIL ABDULLOH RAJIB', '3481/778.063', '0073825573', 1, 1, 'TUBAN', '2007-07-22', 'DSN KRADENAN RT OO3 RW 001 KRADENAN KEC PALANG KAB TUBAN 62391', '', 1, 1, 1, '', 'SRI INDAH NYOMANINGSIH', 'DSN KRADENAN RT OO3 RW 001 KRADENAN KEC PALANG KAB TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS HIDAYATUSH SHIBYAN', 2, 'RPL', '', '2023-07-15', '0073825573', '0073825573', '$2y$10$IJvR56zawcD20Up98MslY.ljOkt9gvd65gpTIyQopCh64SFP66dA.', '', 1, 1),
(178, 'SITI NUR LAILATUS SHOLIHAH', '3482/779.063', '0088663562', 2, 1, 'TUBAN', '2008-03-15', 'BONGKOL II RT 002 RW 006  SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', 1, 2, 3, '', 'DJAWUL', 'BONGKOL II RT 002 RW 006  SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 2, 'RPL', '', '2023-07-15', '0088663562', '0088663562', '$2y$10$kvFSMTVEnkrfqaWHG/erAOLjTdhIsNgHfO9eQCRMmerXMHNy3GznS', '', 1, 1),
(179, 'YOGA DIMAS NUR SAPUTRO', '3483/780.063', '0088630556', 1, 1, 'TUBAN', '2008-04-30', 'DSN KARANGREJO  RT 006 RW 003 KRADENAN KEC PALANG KAB TUBAN 62391', '', 1, 4, 2, '', 'SULISTYOWATI', 'DSN KARANGREJO  RT 006 RW 003 KRADENAN KEC PALANG KAB TUBAN 62391', '', '', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'PKBM TAMAN SISWA', 2, 'RPL', '', '2023-07-15', '0088630556', '0088630556', '$2y$10$vfBjsH6loyqBEWdNv3ySauquy213b0.e28lhiDiSeuFzYIHhfI/.G', '', 1, 1),
(180, 'DINDA EKA WULAN PRATIWI', '3326/884.102', '0077271100', 2, 1, 'TUBAN', '2007-01-25', 'DSN JARUM RT 001  / RW 025 PERUNGGAHAN KULON KEC SEMANDING KAB. TUBAN 62381 ', '', 1, 1, 1, '', 'ISDI ANIM', 'DSN JARUM RT 001  / RW 025 PERUNGGAHAN KULON KEC SEMANDING KAB. TUBAN 62381 ', '', 'SOPIR', 'PETANI', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 3, 'AK', '', '2022-07-13', '0077271100', '0077271100', '$2y$10$r/fzCzEMlZhiuREQkHFJQ.PZklmG0eshG61Lk8TjZWuJfkgPyN7ti', '', 1, 1),
(181, 'DWI RISTA OVIYANTI', '3327/885.102', '0065978989', 2, 1, 'LAMONGAN', '2006-12-27', 'WEDUNG RT 001 / RW 007 SEDAYULAWAS KEC. BRONDONG KAB.LAMONGAN 62263', '', 1, 2, 2, '', 'ELVI FATHIYAH', 'WEDUNG RT 001 / RW 007 SEDAYULAWAS KEC. BRONDONG KAB.LAMONGAN 62263', '', 'WIRASWASTA', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'MTS M 21 WEDUNG', 3, 'AK', '', '2022-07-13', '0065978989', '0065978989', '$2y$10$5zQLXnAVpxM1VZdgTPzrveEmE9G5VJgcPR3b9nGoUyiFG0s47iDIq', '', 1, 1),
(182, 'HESTI HERLINA AYU PRATIWI', '3328/886.102', '0066153262', 2, 1, 'TUBAN', '2006-08-16', 'DSN MOJOKOPEK RT 001 / RW 028 PERUNGGAHAN KULON KEC .SEMANDING TUBAN 62381', '', 1, 1, 1, '', 'JULIASTRI', 'DSN MOJOKOPEK RT 001 / RW 028 PERUNGGAHAN KULON KEC .SEMANDING TUBAN 62381', '', 'SWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 3, 'AK', '', '2022-07-13', '0066153262', '0066153262', '$2y$10$aQmpMiVilPG7iPg45JW6vOPErSLayek0sQTs2fLgeLYgyOugevNim', '', 1, 1),
(183, 'JULIANAWATI', '3405/897.102', '0068139262', 2, 1, 'TUBAN', '2006-07-26', 'DSN KRAJAN  RT 003 RW 1 DS KRAJAN KEC SEMANDING KAB TUBAN 62381', '', 1, 1, 1, '', 'SUMARNI', 'DSN KRAJAN  RT 003 RW 1 DS KRAJAN KEC SEMANDING KAB TUBAN 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', '', 3, 'AK', '', '2022-07-13', '0068139262', '0068139262', '$2y$10$XkuRftaCUXpa/sATbeUovexB.JwZKhOu9VXUiHKaUHShqellMF.em', '', 1, 1),
(184, 'KISWIJI JEFONI', '3329/887.102', '0067614407', 2, 1, 'TUBAN', '2005-06-26', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '', 1, 1, 1, '', 'NGASNI AL ANIK', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '', 'WIRASWASTA', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 3, 'AK', '', '2022-07-13', '0067614407', '0067614407', '$2y$10$2XfKLqmkq351qu4V019A4OC9NffiGMRBQIDRhJAzmFDrkx7r/cpw.', '', 1, 1),
(185, 'NABILA PUTRI RAMADHANI', '3330/888.102', '0069835847', 2, 1, 'TUBAN', '2006-10-10', 'DSN REMEN RT 001 RW 004 REMEN KEC. JENU KAB. TUBAN 62352', '', 1, 1, 1, '', 'NURWITOPAH', 'DSN REMEN RT 001 RW 004 REMEN KEC. JENU KAB. TUBAN 62352', '', 'WIRASWASTA', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 1 JENU', 3, 'AK', '', '2022-07-13', '0069835847', '0069835847', '$2y$10$VlInvksEb16U6dEpAEcEIOoL55L/mSkI9p6XqFakSBsEL3ZhHZ/bi', '', 1, 1),
(186, 'NIA AMELIYA', '3331/889.102', '0051634970', 2, 1, 'TUBAN', '2005-01-02', 'DSN JARUM RT 002  / RW 014 JADI KEC SEMANDING KAB. TUBAN 62381 ', '', 1, 3, 2, '', 'YASMI', 'DSN JARUM RT 002  / RW 014 JADI KEC SEMANDING KAB. TUBAN 62381 ', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 3, 'AK', '', '2022-07-13', '0051634970', '0051634970', '$2y$10$V5SDtZihbovMyf/uwEkKqO6wvp/slMgkSOG6cpOAAwESgmS9hYevW', '', 1, 1),
(187, 'RIZKY PUTRI INDAH LESTARI', '3332/890.102', '0069566802', 2, 1, 'TUBAN', '2006-12-27', 'DSN TLOGOPULE RT 1 RW 37 Ds.PRUNGGAHAN KEC. SEMANDING 62381', '', 1, 3, 4, '', 'TAWI', 'DSN TLOGOPULE RT 1 RW 37 Ds.PRUNGGAHAN KEC. SEMANDING 62381', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'AK', '', '2022-07-13', '0069566802', '0069566802', '$2y$10$Hu4o24sjRgyx43fL79dR2uUmJ.k7efAJ2ekdG3sQCxA8Jf0CRkcOm', '', 1, 1),
(188, 'SELFIANA SAFITRI', '3333/891.102', '0078957091', 2, 1, 'TUBAN', '2007-03-28', 'Ds. WOLUTENGAH RT 4 RW 2 KEC. KEREK 62356', '', 1, 2, 1, '', 'SULASINI', 'Ds. WOLUTENGAH RT 4 RW 2 KEC. KEREK 62356', '', 'WIRASWASTA', 'WIRASWASTA', '0', '0', '0', '0', 'MTS BAITUSSALAF', 3, 'AK', '', '2022-07-13', '0078957091', '0078957091', '$2y$10$mqQYjctoPwbxF0w5XiDb0ezWnWRXRJsRu81Ww3M6sHUDL2dXQeMg2', '', 1, 1),
(189, 'SELPINA DOUW', '3334/892.102', '0075509494', 2, 2, 'WIDIMEI', '2006-09-08', 'JALAN BANDARA RT 2 RW 3 WAGHETE I KEC. TIGI 98763', '', 1, 7, 5, '', 'MARSELA PAKAGE', 'JALAN BANDARA RT 2 RW 3 WAGHETE I KEC. TIGI 98763', '', 'PNS', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 TIGI', 3, 'AK', '', '2022-07-13', '0075509494', '0075509494', '$2y$10$l2N02KrQKvF95dKkoZXQleHTIFGCuyquus5ITmUHk2gqtRhf.KP0u', '', 1, 1),
(190, 'SITI FAIS NUR HASANAH', '3335/893.102', '0066159384', 2, 1, 'TUBAN', '2006-07-27', 'Jl. HAYAM WURUK RT 2 RW 28 Ds. MOJO KOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 1, 2, 2, '', 'TASMIRAH', 'Jl. HAYAM WURUK RT 2 RW 28 Ds. MOJO KOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 'WIRASWASTA', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'AK', '', '2022-07-13', '0066159384', '0066159384', '$2y$10$6hVkTD0C3SwbumOsP0NFVexmJ4QsmtWw9AExQd0L2Q.cJ1BZKGsUa', '', 1, 1),
(191, 'SITI SHOLIKHA', '3336/894.102', '0072767505', 2, 1, 'SURABAYA', '2007-07-17', 'WONOSARI WETAN I NO. 22RT1RW7WONOKUSUMOKEC. SEMAMPIR60154', '', 1, 2, 2, '', 'SITA MEIRAWATI', 'WONOSARI WETAN I NO. 22RT1RW7WONOKUSUMOKEC. SEMAMPIR60154', '', '-', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 27 SURABAYA', 3, 'AK', '', '2022-07-13', '0072767505', '0072767505', '$2y$10$a5vu8d9VpvVP7iBJsI3gVOfTpKcAzYkT7yjaBAEImMCR.LsnhDCMW', '', 1, 1),
(192, 'UMI MAGHFIROH', '3337/895.102', '0077946134', 2, 1, 'TUBAN', '2007-05-26', 'DSN SECANG RT 4 RW 15 Ds. BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 1, 3, 1, '', 'ENDANG', 'DSN SECANG RT 4 RW 15 Ds. BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 3, 'AK', '', '2022-07-13', '0077946134', '0077946134', '$2y$10$BunIleU84oqUo4fLeUBr1.TyVPxgY1WdvSLUV5npE8b8RPHJRpnDq', '', 1, 1),
(193, 'WIDYA AYU LUGITA', '3338/896.102', '0071199171', 2, 1, 'TUBAN', '2007-10-03', 'DSN TLOGOPULE RT 1 RW 37 TLOGOPULE PRUNGGAHAN KEC. SEMANDING 62381', '', 1, 2, 1, '', 'DARWIN', 'DSN TLOGOPULE RT 1 RW 37 TLOGOPULE PRUNGGAHAN KEC. SEMANDING 62381', '', '', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'AK', '', '2022-07-13', '0071199171', '0071199171', '$2y$10$tV4eUdd6uS/f9/ggHgAlWOyq11u7jBWBdForC6m.6.iVHCLzu1eu2', '', 1, 1),
(194, 'ARJUN ASTUTIK', '3339/451.096', '0063618860', 2, 1, 'TUBAN', '2006-06-26', 'DSN. WIDENGAN RT 5 RW 13 KEL. GEDONGOMBO KEC. SEMANDING 62381', '', 1, 2, 2, '', ' SUMIASIH', 'DSN. WIDENGAN RT 5 RW 13 KEL. GEDONGOMBO KEC. SEMANDING 62381', '', '-', 'BURUH', '0', '0', '0', '0', 'MTS SUMBERSARI KOWANG', 3, 'BD', '', '2022-07-13', '0063618860', '0063618860', '$2y$10$Na0cxRKVrfWPR6dj69/EI.94FXNKxp4nl2jncMDFUN4GIglzv0z0K', '', 1, 1),
(195, 'AYU ULANDARI', '3340/452.096', '0075305322', 2, 1, 'BOJONEGORO ', '2007-04-29', 'DSN DAWUNG RT 05 RW 09 DS. GRABAGAN KEC. GRABAGAN KAB. TUBAN 62373', '', 1, 0, 1, '', 'BARNI', 'DSN DAWUNG RT 05 RW 09 DS. GRABAGAN KEC. GRABAGAN KAB. TUBAN 62373', '', 'WIRASWASTA', 'WIRASWASTA', '0', '0', '0', '0', 'SMP MU\' ALLIMIN', 3, 'BD', '', '2022-07-13', '0075305322', '0075305322', '$2y$10$gYted18R6kS0NVOAaZVwV.F9ri6OgFutrqH8QayoOx46.0pahXODS', '', 1, 1),
(196, 'DHI ERNA SEFIA MUSTIKA', '3341/453.096', '0063062386', 2, 1, 'TUBAN', '2006-09-06', 'DSN. MANGKUNG RT 3 RW 5 DS. NGINO KEC. SEMANDING 62381', '', 1, 1, 2, '', 'KAMIASRI', 'DSN. MANGKUNG RT 3 RW 5 DS. NGINO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 3, 'BD', '', '2022-07-13', '0063062386', '0063062386', '$2y$10$jvYaReZM6pUNvNrATOnsJO.xHc7Z3IAqJoZCc8J2G47M9vvYf3nXi', '', 1, 1),
(197, 'DWI SUPRIYATININGSIH', '3342/454.096', '0067357840', 2, 1, 'TUBAN', '2006-11-19', 'DSN. TLOGOPUE RT 1 RW 34  DS. PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 1, 2, 2, '', 'PASINAH', 'DSN. TLOGOPUE RT 1 RW 34  DS. PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 'PETANI', 'PEDAGANG KECIL', '0', '0', '0', '0', 'SMPI SUNAN BEJAGUNG', 3, 'BD', '', '2022-07-13', '0067357840', '0067357840', '$2y$10$lYd3KWtnQqY6hZDrFr6nUeh4h6K3/79Xa07JU3VZyImdAJPqdb8yO', '', 1, 1),
(198, 'FERREN YUANDA', '3343/455.096', '0078746221', 2, 4, 'SAMARINDA', '2007-08-21', 'JL AMINAH SYUKUR NO.27 RT 1 RW 0 PELABUHAN KEC. SAMARINDA ILIR 75112', '', 1, 3, 3, '', 'FATIMAH', 'JL AMINAH SYUKUR NO.27 RT 1 RW 0 PELABUHAN KEC. SAMARINDA ILIR 75112', '', '-', 'WIRASWASTA', '0', '0', '0', '0', 'SMP KATOLIK 1 WR. SOEPRATMAN SAMARINDA', 3, 'BD', '', '2022-07-13', '0078746221', '0078746221', '$2y$10$owc868WnoY04kWt98BNMJuQgN1iwdlQ3fIJT9pc0k7o3deonN/Eya', '', 1, 1),
(199, 'HITA NUR FAIDA', '3344/456.096', '0075392907', 2, 1, 'TUBAN', '2007-01-08', 'DS. WOLUTENGAH RT 5 RW 2 HKEC. KEREK 62356', '', 1, 2, 1, '', 'SITI KHOLIFAH', 'DS. WOLUTENGAH RT 5 RW 2 HKEC. KEREK 62356', '', 'WIRASWASTA', 'PEDAGANG KECIL', '0', '0', '0', '0', 'MTS BAITUSSALAF', 3, 'BD', '', '2022-07-13', '0075392907', '0075392907', '$2y$10$kEHKt9W5GdaAThS0F2DeJeNImKoSaOVsHxAaTflZexbA1XXnqoz5y', '', 1, 1),
(200, 'MOCH. ALIF ILHAM RAIHAN', '3345/457.096', '0068865769', 1, 1, 'TUBAN', '2006-04-25', 'DSN SAMBUNG REJO RT 5 RW 2 DS DAHOR KEC. GRABAGAN 62373', '', 1, 3, 2, '', 'SITI BASWATI', 'DSN SAMBUNG REJO RT 5 RW 2 DS DAHOR KEC. GRABAGAN 62373', '', 'SOPIR', 'PETANI', '0', '0', '0', '0', 'SMPN 2 RENGEL', 3, 'BD', '', '2022-07-13', '0068865769', '0068865769', '$2y$10$LuvwxnK6zfNpb3urPRh6l.mOMY6OLtSTyQedm0HRAEVrm.Qd1SELW', '', 1, 1),
(201, 'MOCH. ESSKA AFANDY', '3346/458.096', '0065314157', 1, 1, 'TUBAN', '2006-06-24', 'JLN. DESA GESINGRT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 1, 1, 1, '', 'WASINI', 'JLN. DESA GESINGRT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 'TANI', 'BURUH', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 3, 'BD', '', '2022-07-13', '0065314157', '0065314157', '$2y$10$a/J7yQcReBFxmAz2uqx0J.p6s4uGpmHA0vpaLKGMUiuNjfMbVxPBu', '', 1, 1),
(202, 'MOHAMAD ALDI ARDIANSYAH', '3347/459.096', '0061818155', 1, 1, 'TUBAN', '2006-11-30', 'JLN. DESA GESINGRT 1 RW 2 KRAJAN GESING KEC. SEMANDING 62381', '', 1, 1, 1, '', 'SUMARTINIK', 'JLN. DESA GESINGRT 1 RW 2 KRAJAN GESING KEC. SEMANDING 62381', '', 'TANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 3, 'BD', '', '2022-07-13', '0061818155', '0061818155', '$2y$10$hKi/pshoLY4dADZMelzuxuXUKBKqtQ4579xsJcMD10hqLgqae1rAm', '', 1, 1),
(203, 'NANDA RIZKA KURNIA PUTRI', '3348/460.096', '0075289504', 2, 1, 'TUBAN', '2007-05-13', 'JL. RAYA BEKTIHARJO RT 1 RW 5 BEKTIHARJO KEC. SEMANDING 62381', '', 1, 3, 2, '', 'TUTIK', 'JL. RAYA BEKTIHARJO RT 1 RW 5 BEKTIHARJO KEC. SEMANDING 62381', '', '-', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'BD', '', '2022-07-13', '0075289504', '0075289504', '$2y$10$fO6oF15NQeWl9tPcc79vne1QcEAoKcObR9xibZNIJ3ZGwg1TB43Q.', '', 1, 1),
(204, 'NEDA AL HABIB UBAIDILLAH', '3349/461.096', '0063140837', 1, 1, 'TUBAN', '2006-06-09', 'DSN TLOGOPULE RT 2 RW 33 DS PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 1, 1, 1, '', 'DASUPIN', 'DSN TLOGOPULE RT 2 RW 33 DS PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 'SWASTA', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'BD', '', '2022-07-13', '0063140837', '0063140837', '$2y$10$SRN7khDSXBDR5VJseDXUm.9rFnVinqGUmTJOGlxxQEMaYeq/J9X3.', '', 1, 1),
(205, 'NOVA KARISMA ILYAS', '3350/462.096', '0078192306', 2, 1, 'LAMONGAN', '2007-04-05', 'DSN CUNGKUP  RT 11 RW 3 DS. PENAMBANGAN KEC. SEMANDING 62381', '', 1, 1, 1, '', 'CATUR WULANDARI', 'DSN CUNGKUP  RT 11 RW 3 DS. PENAMBANGAN KEC. SEMANDING 62381', '', 'WIRASWASTA', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'SMPN 1 SEMANDING', 3, 'BD', '', '2022-07-13', '0078192306', '0078192306', '$2y$10$0mWHdBx2TCh5vd/xArgVZeB/jrs.qLaZv5re72rZB4kCnsdZeUIbi', '', 1, 1),
(206, 'OGA DIAN SAPUTRA', '3351/463.096', '0066054543', 1, 1, 'TUBAN', '2006-10-30', 'JLN. DESA GESING RT 1 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 1, 2, 1, '', 'SUSIATUN', 'JLN. DESA GESING RT 1 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 'WIRASWASTA', 'BURUH', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 3, 'BD', '', '2022-07-13', '0066054543', '0066054543', '$2y$10$wceBODaRpZVph6qxhy1dfe/PgpEkRNELITmZRASSbyosPyUMyGysm', '', 1, 1),
(207, 'OKTAMELINDA DWI SAFITRI', '3352/464.096', '0066037840', 2, 1, 'LAMONGAN', '2006-10-23', 'JL. AKBP SUROKO RT 1 RW 2 KEBONSARI KEC. TUBAN 62317', '', 1, 1, 2, '', 'SITI FATIMAH', 'JL. AKBP SUROKO RT 1 RW 2 KEBONSARI KEC. TUBAN 62317', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 1 TUBAN', 3, 'BD', '', '2022-07-13', '0066037840', '0066037840', '$2y$10$9mK9zRvvgJSrUpBqztyEXu1mP1HjicfIQjELZjXmvJd15nWEJiIT6', '', 1, 1),
(208, 'RURUL PUJI SAFITRI', '3353/465.096', '0078598780', 2, 1, 'TUBAN', '2007-01-08', 'DSN KRAJAN MEDOKAN RT 1 RW 5 DS. BEKTIHARJO KEC. SEMANDING 62381', '', 1, 0, 1, '', 'ISTUN SURYAWATI', 'DSN KRAJAN MEDOKAN RT 1 RW 5 DS. BEKTIHARJO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'BD', '', '2022-07-13', '0078598780', '0078598780', '$2y$10$RoY.Tawd4.IUK8tJOswJRO7yuLFbFDmCPtdFVhYd7OxVuBRZNZZYO', '', 1, 1),
(209, 'SISKA INDA INATA', '3355/467.096', '0063836945', 2, 1, 'TUBAN', '2006-04-23', 'JLN. WATUONDO RT 4 RW 16 MEDOKAN BEKTIHARJO KEC. SEMANDING 62381', '', 1, 2, 3, '', 'PARNI', 'JLN. WATUONDO RT 4 RW 16 MEDOKAN BEKTIHARJO KEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'BD', '', '2022-07-13', '0063836945', '0063836945', '$2y$10$YBqEKEip4TA5zVxS52KTveV7wmiCfIwXEePs7lOhOIk2gdqtnDVYG', '', 1, 1),
(210, 'SOFI DESTIA NOVITA', '3356/468.096', '0068528218', 2, 1, 'TUBAN', '2006-12-16', 'DSN SECANG RT 2 RW14 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 1, 0, 1, '', 'PARMI', 'DSN SECANG RT 2 RW14 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'BD', '', '2022-07-13', '0068528218', '0068528218', '$2y$10$HErLmLUbMs.X.RPV8yTblu.7Y2sGGc1ahpFIgSS11h6BbNd9BuYVK', '', 1, 1),
(211, 'ZUSHINTA MEGA PERMATA', '3358/470.096', '0077734097', 2, 1, 'TUBAN', '2007-04-17', 'MANGKUNG RT 1 RW5 MANGKUNG NGINO KEC. SEMANDING 62381', '', 1, 1, 2, '', 'KASRI', 'MANGKUNG RT 1 RW5 MANGKUNG NGINO KEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 2 SEMANDING', 3, 'BD', '', '2022-07-13', '0077734097', '0077734097', '$2y$10$l0ZaEt7YBEW9hVu0VSPwLOcoEFR0/rm.nqFLKbEFOGzWTl6SFVFPG', '', 1, 1),
(212, 'CHIKKA VALENSIA KURNIA FITRI', '3386/207.072', '0067103362', 2, 1, 'TUBAN', '2006-10-22', 'DSN NGRAYUNG RT 004 RW 001 DESA NGRAYUNG KEC, PLUMPANG TUBAN 62382', '', 1, 2, 1, '', 'VERI KRISTININGSIH', 'DSN NGRAYUNG RT 004 RW 001 DESA NGRAYUNG KEC, PLUMPANG TUBAN 62382', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 PLUMPANG', 3, 'LPKKK', '', '2022-07-13', '0067103362', '0067103362', '$2y$10$SAaLQvPBxuv61njwxRHXTOQ.fhFtCoCdC6Wz9Qw1E47D04J7.rGXC', '', 1, 1),
(213, 'CYNTYA EKA RAHAYU', '3387/208.072', '0077706929', 2, 1, 'TUBAN', '2007-10-07', 'BECOK RT 2 RW  7 TEGALREJO KEC. MERAKURAK', '', 1, 0, 1, '', 'SUSIATI', 'BECOK RT 2 RW  7 TEGALREJO KEC. MERAKURAK', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0077706929', '0077706929', '$2y$10$pMxGa6MV1XIdzk4AsoF7O.7tianhCvb5yVgGo31BXG/Qmjykos1ou', '', 1, 1),
(214, 'DWI NUR INTAN FEBYA MAHARANI', '3388/209.072', '0076134393', 2, 1, 'TUBAN', '2007-02-17', 'DSN. BANCANG RT O1 RW 09 TAHULU KEC. MERAKURAK', '', 1, 1, 2, '', 'SUTIKAH', 'DSN. BANCANG RT O1 RW 09 TAHULU KEC. MERAKURAK', '', 'PERANGKAT DESA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0076134393', '0076134393', '$2y$10$IHET8JukenWtMEI9a1wuBu/ATELvQA99PCJOM5XYwtjIKJJh...Cq', '', 1, 1),
(215, 'ELIFA MEI ELGIA SARI', '3389/210.072', '0076079691', 2, 1, 'TUBAN', '2007-05-31', 'BANCANG RT 1 RW 11 TAHULU KEC. MERAKURAK', '', 1, 2, 1, '', 'JUWARNING', 'BANCANG RT 1 RW 11 TAHULU KEC. MERAKURAK', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0076079691', '0076079691', '$2y$10$rtJPRPmW4Z7VrLwmSOvc1.KdW7K7LAH03ah7pSYz76gxb5Z.odGXC', '', 1, 1),
(216, 'FIRDAUS NUZULA RAMADHANI', '3390/211.072', '0069522292', 2, 1, 'TUBAN', '2006-10-10', 'DSN KARANG DHUWUR  RT 20 RW 6 KARANG DHUWUR BANJARJO KEC. BANCAR 62354', '', 1, 2, 1, '', 'ZULIYANA', 'DSN KARANG DHUWUR  RT 20 RW 6 KARANG DHUWUR BANJARJO KEC. BANCAR 62354', '', 'NELAYAN', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP MUH. 3 BANCAR', 3, 'LPKKK', '', '2022-07-13', '0069522292', '0069522292', '$2y$10$5RPQD.STEQ2YTz7Hmt.tzOUl41taeJXlw9jKIL2ijMoRrb/fikgFm', '', 1, 1),
(217, 'FITRI DEVITA OCTASIA', '3391/212.072', '0078176081', 2, 1, 'PASURUAN', '2007-10-27', 'JL. BANYULANGSE RT 4 RW 1 KRAJAN BOTO KEC. SEMANDING 62381', '', 1, 2, 1, '', 'LILIK ERNAWATI', 'JL. BANYULANGSE RT 4 RW 1 KRAJAN BOTO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 3, 'LPKKK', '', '2022-07-13', '0078176081', '0078176081', '$2y$10$a9f1GFD1nrtWPDbuyIRkg.hZ44InG9gY2ioHKvwGW4l5kxNxYPTLu', '', 1, 1),
(218, 'GUSTIA NINGSIH LARASATI KHORIN', '3392/213.072', '0075748694', 2, 1, 'TUBAN', '2007-08-15', 'DSN BANCANG RT 3 RW 9 TAHULU KEC. MERAKURAK 62355', '', 1, 3, 1, '', 'SUVIYAS', 'DSN BANCANG RT 3 RW 9 TAHULU KEC. MERAKURAK 62355', '', '-', 'KARYAWAN SWASTA', '0', '0', '0', '0', 'MTS MANBAIL FUTUH', 3, 'LPKKK', '', '2022-07-13', '0075748694', '0075748694', '$2y$10$HLbUl5vwWS7vNpP26XBLoOs4rOfHW.qCrz7t877MkCLr4slfTzjku', '', 1, 1),
(219, 'ICHA AMELLIA', '3393/214.072', '0071445605', 2, 1, 'TENGGARONG', '2007-07-14', 'DUSUN JADI RT 2 RW 9 JADI KEC. SEMANDING 62381', '', 1, 1, 2, '', 'YULIANTIK', 'DUSUN JADI RT 2 RW 9 JADI KEC. SEMANDING 62381', '', 'ARSITEK', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS. AL KAUTSAR TENGGARONG', 3, 'LPKKK', '', '2022-07-13', '0071445605', '0071445605', '$2y$10$3J/wslqk4lvqFDKSfibPEOEB/toLi4kFU81MFfHzykJwMqCfG3WoW', '', 1, 1),
(220, 'JOKO SATRIYO', '3394/215.072', '0067885701', 1, 1, 'TUBAN', '2006-07-13', 'JLN. DESA GESING RT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 1, 2, 2, '', 'SARNI', 'JLN. DESA GESING RT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS MIFTAHUL HUDA TUNAH', 3, 'LPKKK', '', '2022-07-13', '0067885701', '0067885701', '$2y$10$OJLXGefAO8FzA1rqGEu6kO.ZivNtnl.Il6C83fQ4zCkw3MpysMWu.', '', 1, 1),
(221, 'LAELATUL FITRIAH', '3395/216.072', '0061297170', 2, 1, 'TUBAN', '2006-10-23', 'DSN DORODUWUR RT 01 RW 08 TAHULU KEC . MERAKURAK', '', 1, 3, 4, '', 'PANCI', 'DSN DORODUWUR RT 01 RW 08 TAHULU KEC . MERAKURAK', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA', 3, 'LPKKK', '', '2022-07-13', '0061297170', '0061297170', '$2y$10$8Oq8xj6YfHYuisWuyTZn/Orxn45VU2I2DHHGbEJv/QqroT67vAI1K', '', 1, 1);
INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `kontak_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `sekolah_asal`, `terima_kelas`, `jurusan`, `nik`, `terima_tanggal`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(222, 'MALINCE SELEGANI', '3396/217.072', '0036281052', 2, 2, 'BILAI', '2006-04-21', 'BILAI RT 0 RW 0 DALIMBABILAI KEC. HOMEYO', '', 1, 1, 2, '', 'DOMENIKA BAGUBAU', 'BILAI RT 0 RW 0 DALIMBABILAI KEC. HOMEYO', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP YPPK BILAI', 3, 'LPKKK', '', '2022-07-13', '0036281052', '0036281052', '$2y$10$xWd9QZMGHQB8v5GKWOTp..dU8nEW5uDo1WLFL04rzPqUFZflE3vKq', '', 1, 1),
(223, 'MOH AIMAN SYAFIQ', '3397/218.072', '0066439337', 1, 1, 'TUBAN', '2006-09-09', 'DSN RAWASAN RT 1 RW 3 RAWASAN KEC. JENU 62352', '', 1, 0, 1, '', 'CHOIRIYAH ULFAH', 'DSN RAWASAN RT 1 RW 3 RAWASAN KEC. JENU 62352', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS MIFTAHUL HUDA RAWASAN', 3, 'LPKKK', '', '2022-07-13', '0066439337', '0066439337', '$2y$10$QFVIFdGFCuNOpGMb0uCuBuhx9Ko/bJJbY243wWeWWlNO34z.Q.Liq', '', 1, 1),
(224, 'NANDA FANI RAMADHANI', '3398/219.072', '0062913099', 2, 1, 'TUBAN', '2006-10-13', 'DSN. BECOK RT 05/ RW 07  DS. TEGALREJO KEC. MERAKURAK KAB. TUBAN', '', 1, 0, 1, '', 'KASTRI', 'DSN. BECOK RT 05/ RW 07  DS. TEGALREJO KEC. MERAKURAK KAB. TUBAN', '', 'WIRASWASTA', 'PETANI', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0062913099', '0062913099', '$2y$10$Y2x5ga8Q3njKds2iH760qO89AlzXHVLhWr73CmT1gHJrEC31kWlAG', '', 1, 1),
(225, 'NATALIA TEBAI', '3399/220.072', '0088687692', 2, 3, 'OKAGO', '2008-11-25', 'IYAIPUGI RT 4 RW 0 ENAROTALI KEC. PANIAI TIMUR 98700', '', 1, 9, 1, '', 'SAFIRA KEIYA', 'IYAIPUGI RT 4 RW 0 ENAROTALI KEC. PANIAI TIMUR 98700', '', 'PNS', 'PETANI', '0', '0', '0', '0', 'SMP YPPGI ENAROTALI', 3, 'LPKKK', '', '2022-07-13', '0088687692', '0088687692', '$2y$10$F/mMdrpUgFyr4wEd.WI2p.F0hsUvNabtg6USq9tx2VXn2DwGdOzNG', '', 1, 1),
(226, 'RINA AMELIA WATI', '3400/221.072', '0085832863', 2, 1, 'TUBAN', '2008-07-07', 'DSN BECOK RT 01 RW 07 TEGALREJO KEC. MERAKURAK', '', 1, 1, 1, '', 'SUGIATININGSIH', 'DSN BECOK RT 01 RW 07 TEGALREJO KEC. MERAKURAK', '', 'WIRASWASTA', 'PETANI', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0085832863', '0085832863', '$2y$10$bOk2qdCXHjvYX7/6sNJQPO8JqZDIt.I1tixFMnf7lQ456HMNwotca', '', 1, 1),
(227, 'SUKMA MELATI PUTRI WARKAWANI', '3401/222.072', '0065962423', 2, 1, 'SERUI', '2006-02-06', 'JL. MOH. TOHA RT 1 R W1 ANOTAUREI KEC. YAPEN SELATAN', '', 1, 6, 3, '', 'MEI LIDIA WARKAWANI', 'JL. MOH. TOHA RT 1 R W1 ANOTAUREI KEC. YAPEN SELATAN', '', 'KARYAWAN SWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NEGERI ANOTAUREI', 3, 'LPKKK', '', '2022-07-13', '0065962423', '0065962423', '$2y$10$qMcdzkJLNx90VzpgmiZmwuYpfFIRYCX8pLtTcXYhrCRwy0dNm34yi', '', 1, 1),
(228, 'UMI ZUMROTUN KHASANAH', '3402/223.072', '0062768412', 2, 1, 'TUBAN', '2006-09-08', 'DSN. BANCANG 01 RW 10 DS. TAHULU KEC. MERAKURAK', '', 1, 1, 1, '', 'WARJUKIN', 'DSN. BANCANG 01 RW 10 DS. TAHULU KEC. MERAKURAK', '', 'SOPIR', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NURUL HUDA MERAKURAK', 3, 'LPKKK', '', '2022-07-13', '0062768412', '0062768412', '$2y$10$r1jdb6hevOfTXDjMU3AQVu8t82vtFwdmaYTxAcToI1Ts2uGEIifdC', '', 1, 1),
(229, 'YOHANA KEIYA', '3403/224.072', '0067695227', 2, 2, 'TIMIKA', '2006-05-24', 'JL SARERA RT 16 RW 6 KALISEMEN KEC. NABIRE BARAT 98856', '', 1, 2, 1, '', 'MARTINA PIGAI', 'JL SARERA RT 16 RW 6 KALISEMEN KEC. NABIRE BARAT 98856', '', '-', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP NEGERI 2 WANGGAR', 3, 'LPKKK', '', '2022-07-13', '0067695227', '0067695227', '$2y$10$gI6l7W0LT7GMS1b2eHyZmekMmwccFkCxP277R79n8ubqd.CoAJ/BS', '', 1, 1),
(230, 'YULINCE NAWIPA', '3404/225.072', '9992665800', 2, 3, 'ENAROTALI', '2007-07-17', 'POGEI ENAROTALI KEC.PANIAI TIMUR KAB. PANIAI  PROVINSI PAPUA', '', 1, 9, 5, '', 'SELPINA TENOUYE', 'POGEI ENAROTALI KEC.PANIAI TIMUR KAB. PANIAI  PROVINSI PAPUA', '', 'PNS', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP YPPGI ENAROTALI', 3, 'LPKKK', '', '2022-07-13', '9992665800', '9992665800', '$2y$10$8HqHFjz.pNRWWSNECpaaq.HgLA78reQABdL8pWa18b5k0StPgpwVu', '', 1, 1),
(231, 'AHMAD RIZQI', '3359/571.105', '0077859414', 1, 1, 'TUBAN', '2007-06-12', 'JL. RAYA JADI RT 02 RW 07 KRAJANJADIKEC. SEMANDING 62381', '', 1, 0, 1, '', 'KARSINI', 'JL. RAYA JADI RT 02 RW 07 KRAJANJADIKEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'PH', '', '2022-07-13', '0077859414', '0077859414', '$2y$10$SI8UAbvuq9SMrrWhREBLfe9ESPzfJzJjml1GfwSOIMEe6BzqtLfYe', '', 1, 1),
(232, 'ANUR ROHMAN', '3360/572.105', '0064854635', 1, 1, 'TUBAN', '2006-09-25', 'JL. RAYA JADI RT 02 RW 07 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 0, 1, '', 'KASTONAH', 'JL. RAYA JADI RT 02 RW 07 KRAJAN JADI KEC. SEMANDING 62381', '', 'PEDAGANG', 'PEDAGANG BESAR', '0', '0', '0', '0', 'SMP MUALLIMIN TUBAN', 3, 'PH', '', '2022-07-13', '0064854635', '0064854635', '$2y$10$227Xpd7x4JIUq8JB950zy.16LRUclKRyJjOwyFre2Z6owibNuhFZG', '', 1, 1),
(233, 'DIMAS STIAWAN', '3361/573.105', '0074134093', 1, 1, 'TUBAN', '2007-03-07', 'JL. RAYA JADI RT 2 RW 8 BOKGEDE JADI KEC. SEMANDING 62381', '', 1, 2, 3, '', 'SRIYEM', 'JL. RAYA JADI RT 2 RW 8 BOKGEDE JADI KEC. SEMANDING 62381', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 3, 'PH', '', '2022-07-13', '0074134093', '0074134093', '$2y$10$50rA0p9h6tF24suinQAqx.VjyO4ASiCjXVipkJXzcDG2/1kZ7xgQy', '', 1, 1),
(234, 'ERLINCE NAYLA DWI MATELDA', '3362/574.105', '0074283379', 2, 1, 'LAMONGAN', '2007-01-15', 'JL. PEMUDART3RW2BRONDONGBRONDONGKEC. BRONDONG 62263', '', 1, 2, 2, '', 'SANDIK WAHYUNINGSIH', 'JL. PEMUDART3RW2BRONDONGBRONDONGKEC. BRONDONG 62263', '', 'KARYAWAN SWASTA', 'BURUH', '0', '0', '0', '0', 'SMP MUH. 14 PACIRAN', 3, 'PH', '', '2022-07-13', '0074283379', '0074283379', '$2y$10$3FT1xq6IMGvj9oUSWuK4f.1NVwG3gpymydKLm37tl3k/HUrjCeryC', '', 1, 1),
(235, 'FERDY YOGA DWI PRATAMA', '3363/575.105', '0073511340', 1, 1, 'TUBAN', '2007-04-17', 'JL. RAYA JADI RT 3 RW 7 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 1, 2, '', 'GANTI', 'JL. RAYA JADI RT 3 RW 7 KRAJAN JADI KEC. SEMANDING 62381', '', 'PETANI', '', '0', '0', '0', '0', 'SMP MUALLIMIN TUBAN', 3, 'PH', '', '2022-07-13', '0073511340', '0073511340', '$2y$10$lWCFea8JrFKFz5FIvxUrvOil6NuHGHL4GzQiTsMY.W28Y27W43zc.', '', 1, 1),
(236, 'HENI RAHMAYANTI', '3364/576.105', '0073719455', 2, 1, 'TUBAN', '2007-03-04', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG 62357', '', 1, 1, 2, '', 'SUKARNI', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG 62357', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPN 1 MONTONG', 3, 'PH', '', '2022-07-13', '0073719455', '0073719455', '$2y$10$cXkSfAHFJSDAO.NrfDxNseHUV6J5SrOQeEtNh/vZ3iDfVi905UIU2', '', 1, 1),
(237, 'NAYSILLA JULYA PUTRI', '3365/577.105', '0068455957', 2, 1, 'TUBAN', '2006-07-17', 'DSN. JEMBEL RT1 RW 7 JEMBEL SUGIHWARAS KEC. JENU 62352', '', 1, 4, 3, '', 'MARNI WULAN SARI', 'DSN. JEMBEL RT1 RW 7 JEMBEL SUGIHWARAS KEC. JENU 62352', '', 'SWASTA', 'PEDAGANG KECIL', '0', '0', '0', '0', 'MTS. DARUL MA\'ARIF PAYAMAN', 3, 'PH', '', '2022-07-13', '0068455957', '0068455957', '$2y$10$4zN9G5xNWfSbItjPOeSAlu3RQiLKv5auSp52cCsgoL8D2x9MVxUDy', '', 1, 1),
(238, 'REVITA NIKEN FARADILA', '3366/578.105', '0075039282', 2, 1, 'TUBAN', '2007-07-12', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG', '', 1, 2, 1, '', 'DEWI SRI RAHMAWATI', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 1 MONTONG', 3, 'PH', '', '2022-07-13', '0075039282', '0075039282', '$2y$10$eH4NqPJeGaa4FKrofXM3H./y9nDqH/YfZLR497vK7TW8hjFpaPUP2', '', 1, 1),
(239, 'ZASKIA SAFNA NURANI', '3368/580.105', '0062161054', 2, 1, 'TUBAN', '2006-09-12', 'SUGIHARJO - TUBAN RT5 RW 8 WINONG SUGIHARJO KEC. TUBAN 62351', '', 1, 2, 0, '', 'TRI SUSANTI', 'SUGIHARJO - TUBAN RT5 RW 8 WINONG SUGIHARJO KEC. TUBAN 62351', '', 'PEDAGANG', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS MANBAIL FUTUH', 3, 'PH', '', '2022-07-13', '0062161054', '0062161054', '$2y$10$2Ehyzk5Jv.ScK9jLshyai.t00eepjLbEUHHA/MPvarRiptKFlxWYG', '', 1, 1),
(240, 'AMINULLAH MAULANA IBRAHIM AMRI', '3369/750.063', '0097937920', 1, 1, 'KENDAL', '2007-03-16', 'DSN TARING RT 9 RW 15 GEDONGOMBO KEC. SEMANDING', '', 1, 4, 4, '', 'MIRA SASMIMING', 'DSN TARING RT 9 RW 15 GEDONGOMBO KEC. SEMANDING', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS. SUMBERSARI KOWANG', 3, 'RPL', '', '2022-07-13', '0097937920', '0097937920', '$2y$10$dOihRkWn/22QF664x91gMemj111dDWfKCdIfOfc8utTzHN/4Kvxt2', '', 1, 1),
(241, 'CHIKA IMELDA', '3371/752.063', '0068625097', 2, 1, 'TUBAN', '2006-04-28', 'JL. PANGLIMA SUDIRMAN RT 1 RW 2 KARANGSARI KEC. TUBAN 62314', '', 1, 3, 2, '', 'Dwi Lestari', 'JL. PANGLIMA SUDIRMAN RT 1 RW 2 KARANGSARI KEC. TUBAN 62314', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMP PGRI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0068625097', '0068625097', '$2y$10$cVuguFTqIGhupHiZoC9ti.fOUj0bRWIo9m3fwp1yevljZg8Kk1MHq', '', 1, 1),
(242, 'ERNA NURVITA SARI', '3372/753.063', '3066300818', 2, 1, 'TUBAN', '2006-09-27', 'MOJOKOPEK RT 2 RW 28 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING', '', 1, 2, 2, '', 'SUMARTI', 'MOJOKOPEK RT 2 RW 28 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'RPL', '', '2022-07-13', '3066300818', '3066300818', '$2y$10$ulhpxvI289bFbWef/aa2ZuWxnsTK7yhrittaFt.VPYh4f0zn9OtLe', '', 1, 1),
(243, 'FERDI ARISKA', '3373/754.063', '0066966616', 1, 1, 'TUBAN', '2006-05-26', 'DSN SECANG RT 3RW 15 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 1, 1, 1, '', 'YENI PALUPI', 'DSN SECANG RT 3RW 15 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'WIRASWASTA', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'RPL', '', '2022-07-13', '0066966616', '0066966616', '$2y$10$I7ViWm3pHgGtlc95ntR.0ucBRDvSW2RjCm3kuC9gqTAeI6wSmBOx2', '', 1, 1),
(244, 'HARDIANSYAH SAMUNI', '3374/755.063', '0069290505', 1, 1, 'TUBAN', '2006-06-13', 'DSN KRAJAN RT2 RW2 BOTO KEC. SEMANDING 62381', '', 1, 1, 1, '', 'YUNTINI', 'DSN KRAJAN RT2 RW2 BOTO KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0069290505', '0069290505', '$2y$10$7r1X49Y1p4JecFk5pah2/ev4sNnfuU/M1JgACWOgCtznVrpiiBkEy', '', 1, 1),
(245, 'IDA WIDIASTUTIK', '3375/756.063', '0064665112', 2, 1, 'TUBAN', '2006-11-16', 'JL. RAYA GAJI RT 6 RW 3 SIDOMULYO GAJI KEC. KEREK 62356', '', 1, 1, 1, '', 'SUPARMI', 'JL. RAYA GAJI RT 6 RW 3 SIDOMULYO GAJI KEC. KEREK 62356', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMP NEGERI 2 KEREK', 3, 'RPL', '', '2022-07-13', '0064665112', '0064665112', '$2y$10$LWVSNWPwZCjFqzSn5NoZQuWzDwDFH09cG1O/HYQ5eKujx9jCPw/8S', '', 1, 1),
(246, 'IMELDA SUSANTO', '3376/757.063', '0079233876', 2, 1, 'TUBAN', '2007-09-25', 'LATSARI 3 GG. BAGUS RT4 RW 4 LATSARI KEC. TUBAN 62314', '', 1, 1, 1, '', ' LIANNA WATI', 'LATSARI 3 GG. BAGUS RT4 RW 4 LATSARI KEC. TUBAN 62314', '', '', 'WIRASWASTA', '0', '0', '0', '0', 'SMP KATOLIK RONGGOLAWE TUBAN', 3, 'RPL', '', '2022-07-13', '0079233876', '0079233876', '$2y$10$fO4L0eA0ei.6UJ2erOXvRu4YLbknT54BdHKma4xFjTKd41FZA0GT.', '', 1, 1),
(247, 'MUHAMMAD ALFIAN FEBRIANSYAH', '3377/758.063', '0072662658', 1, 1, 'TUBAN', '2007-02-09', 'JL. BANYU LANGSE RT 4 RW 4 KRAJAN BOTO KEC. SEMANDING 62381', '', 1, 1, 2, '', 'SUMIJAH', 'JL. BANYU LANGSE RT 4 RW 4 KRAJAN BOTO KEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0072662658', '0072662658', '$2y$10$dCE3wC9DxrAfcZUdk5ogj.wbj6n5o0n5EGo4o2WeiTQ5Z6fkR.B6u', '', 1, 1),
(248, 'NAILA SALSABILA', '3378/759.063', '0077726482', 2, 1, 'TUBAN', '2007-02-28', 'DS. SUWALAN RT 3 RW 1 KRAJAN SUWALAN KEC. JENU 62352', '', 1, 1, 1, '', 'JULIKAH', 'DS. SUWALAN RT 3 RW 1 KRAJAN SUWALAN KEC. JENU 62352', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'MTS MANBAIL FUTUH', 3, 'RPL', '', '2022-07-13', '0077726482', '0077726482', '$2y$10$M3cbmjyxFWLzkHIBTu1PWu6cKZy/35tNlzUDwbSoHRw0NBqx1rZtq', '', 1, 1),
(249, 'NAYLA KARTIKA PUTRI', '3379/760.063', '0069486834', 2, 1, 'TUBAN', '2006-09-13', 'DESA SUMURGUNG RT 2 RW 8 KUTHI SUMURGUNG KEC. TUBAN 62351', '', 1, 1, 1, '', 'SAMININGSIH', 'DESA SUMURGUNG RT 2 RW 8 KUTHI SUMURGUNG KEC. TUBAN 62351', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'SMPN 4 TUBAN', 3, 'RPL', '', '2022-07-13', '0069486834', '0069486834', '$2y$10$IWMi9usm6zFZlKH4EiKfuuLy95W2iizN0Jw8fUxsRUAfO5mIkDjky', '', 1, 1),
(250, 'NAZAR ALI ROHMATULLOH', '3380/761.063', '0067684801', 1, 1, 'TUBAN', '2006-10-28', 'JL. RAYA JADI RT 4 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 3, 4, '', 'KASWINARUM', 'JL. RAYA JADI RT 4 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 'PETANI', 'PETANI', '0', '0', '0', '0', 'SMPI SUNAN BEJAGUNG', 3, 'RPL', '', '2022-07-13', '0067684801', '0067684801', '$2y$10$w/CBO2MQfjUUfyCrEZqcwO2CC2sQmBYBis91BFxMuy4LDY4aenaYK', '', 1, 1),
(251, 'NONI ICHA NURAENI', '3381/762.063', '0061202342', 2, 1, 'TUBAN', '2006-09-25', 'HAYAM WURUK RT 25 RW 9 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 1, 2, 1, '', 'LASEMI', 'HAYAM WURUK RT 25 RW 9 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '', 'KULI BANGUNAN', 'PETANI', '0', '0', '0', '0', 'SMPN 4 SEMANDING', 3, 'RPL', '', '2022-07-13', '0061202342', '0061202342', '$2y$10$5zl2nGD8pqBTsStr8h7RI.EL/jZEJ.3DfZ4nTpdfNbhM9I23H49Oq', '', 1, 1),
(252, 'OKTA VIANA LESTARI', '3382/763.063', '0076456155', 2, 1, 'TUBAN', '2007-10-06', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 1, 1, '', 'KATIMAH', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 'PETANI', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0076456155', '0076456155', '$2y$10$CL736uBuz9.xV/wfCxmAxu/259r66GhZm3reACTnmYPRFEuxS69iq', '', 1, 1),
(253, 'RAHAYU WIDANINGSIH', '3383/764.063', '0075011417', 2, 1, 'TUBAN', '2007-08-10', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 1, 1, '', ' SULESTARI', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 'WIRASWASTA', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0075011417', '0075011417', '$2y$10$gqWXteJYkyrIux5Ua2Je4uwATsZiS129tm/bj12qFT2mLvUZJb..e', '', 1, 1),
(254, 'SABRINA RAHAYU NURFAIZAH', '3505/781.063', '0138774220', 2, 1, 'TUBAN', '2007-08-10', 'DS JADI RT3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 0, 0, '', '', '0', '0', '0', 'PETANI', '0', '0', '0', '0', '0', 3, 'RPL', '', '2022-07-13', '0138774220', '0138774220', '$2y$10$YGnmgZ5FnZaRME2IZoJWCOvFbuRT7Tzn2xFjFAPBn0C6eLmRHjKK6', '', 1, 1),
(255, 'SADEWO VIGO MANDALA PUTRA', '3384/765.063', '0073308212', 1, 1, 'TUBAN', '2007-01-10', 'DSN BOGOR RT/RW 003/015 BEKTIHARJO KEC. SEMANDING     ', '', 1, 1, 1, '', 'SUTRINIS', 'DSN BOGOR RT/RW 003/015 BEKTIHARJO KEC. SEMANDING     ', '', 'GURU', 'MENGURUS RUMAH TANGGA', '0', '0', '0', '0', 'MTS NEGERI 3 TUBAN', 3, 'RPL', '', '2022-07-13', '0073308212', '0073308212', '$2y$10$.uRSyz86UDxS.OG5AhdHgO/fZvHQWD2t.j5b29qyQfIAag8JG.Al.', '', 1, 1),
(256, 'SENDY RAFI SAPUTRA', '3385/766.063', '0079527331', 1, 1, 'TUBAN', '2007-10-10', 'JADI RT 3 RW 11 KRAJAN JADI KEC. SEMANDING 62381', '', 1, 1, 2, '', ' RITA', 'JADI RT 3 RW 11 KRAJAN JADI KEC. SEMANDING 62381', '', 'PEDAGANG', 'PEDAGANG KECIL', '0', '0', '0', '0', 'SMPN 3 SEMANDING', 3, 'RPL', '', '2022-07-13', '0079527331', '0079527331', '$2y$10$CMChrKijdpl7lEKsaF.mF.v9fW4H6ycAEu2He9OtGcy.dZnEvYatG', '', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_eskul`
--

CREATE TABLE `siswa_eskul` (
  `id_siswa_eskul` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_eskul` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `predikat` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa_eskul`
--

INSERT INTO `siswa_eskul` (`id_siswa_eskul`, `tahun`, `semester`, `id_eskul`, `id_siswa`, `predikat`, `keterangan`) VALUES
(1, 2, 1, 1, 80, '', ''),
(2, 2, 1, 1, 81, '', ''),
(3, 2, 1, 1, 82, '', ''),
(4, 2, 1, 1, 83, '', ''),
(5, 2, 1, 1, 84, '', ''),
(6, 2, 1, 1, 86, '', ''),
(7, 2, 1, 1, 85, '', ''),
(8, 2, 1, 2, 1, '', ''),
(9, 2, 1, 2, 2, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_kelas`
--

CREATE TABLE `siswa_kelas` (
  `id_siswa_kelas` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_tingkat` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa_kelas`
--

INSERT INTO `siswa_kelas` (`id_siswa_kelas`, `tahun`, `semester`, `id_tingkat`, `id_kelas`, `id_siswa`, `status`) VALUES
(1, 2, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 2, 1),
(3, 2, 1, 1, 1, 3, 1),
(4, 2, 1, 1, 1, 68, 1),
(5, 2, 1, 1, 1, 4, 1),
(6, 2, 1, 1, 1, 5, 1),
(7, 2, 1, 1, 1, 6, 1),
(8, 2, 1, 1, 1, 7, 1),
(9, 2, 1, 1, 1, 72, 1),
(10, 2, 1, 1, 1, 8, 1),
(11, 2, 1, 1, 1, 10, 1),
(12, 2, 1, 1, 1, 9, 1),
(13, 2, 1, 1, 1, 11, 1),
(14, 2, 1, 1, 2, 12, 1),
(15, 2, 1, 1, 2, 13, 1),
(16, 2, 1, 1, 2, 14, 1),
(17, 2, 1, 1, 2, 15, 1),
(18, 2, 1, 1, 2, 16, 1),
(19, 2, 1, 1, 2, 17, 1),
(20, 2, 1, 1, 2, 18, 1),
(21, 2, 1, 1, 2, 19, 1),
(22, 2, 1, 1, 2, 20, 1),
(23, 2, 1, 1, 2, 21, 1),
(24, 2, 1, 1, 2, 22, 1),
(25, 2, 1, 1, 2, 23, 1),
(26, 2, 1, 1, 2, 24, 1),
(27, 2, 1, 1, 2, 25, 1),
(28, 2, 1, 1, 2, 26, 1),
(29, 2, 1, 1, 2, 27, 1),
(30, 2, 1, 1, 2, 28, 1),
(31, 2, 1, 1, 3, 60, 1),
(32, 2, 1, 1, 3, 61, 1),
(33, 2, 1, 1, 3, 62, 1),
(34, 2, 1, 1, 3, 63, 1),
(35, 2, 1, 1, 3, 64, 1),
(36, 2, 1, 1, 3, 65, 1),
(37, 2, 1, 1, 3, 66, 1),
(38, 2, 1, 1, 3, 67, 1),
(39, 2, 1, 1, 3, 69, 1),
(40, 2, 1, 1, 3, 70, 1),
(41, 2, 1, 1, 3, 71, 1),
(42, 2, 1, 1, 3, 73, 1),
(43, 2, 1, 1, 3, 74, 1),
(44, 2, 1, 1, 3, 75, 1),
(45, 2, 1, 1, 3, 76, 1),
(46, 2, 1, 1, 3, 77, 1),
(47, 2, 1, 1, 3, 78, 1),
(48, 2, 1, 1, 3, 79, 1),
(49, 2, 1, 1, 4, 80, 1),
(50, 2, 1, 1, 4, 81, 1),
(51, 2, 1, 1, 4, 82, 1),
(52, 2, 1, 1, 4, 83, 1),
(53, 2, 1, 1, 4, 84, 1),
(54, 2, 1, 1, 4, 86, 1),
(55, 2, 1, 1, 4, 85, 1),
(56, 2, 1, 1, 5, 29, 1),
(57, 2, 1, 1, 5, 30, 1),
(58, 2, 1, 1, 5, 31, 1),
(59, 2, 1, 1, 5, 32, 1),
(60, 2, 1, 1, 5, 33, 1),
(61, 2, 1, 1, 5, 34, 1),
(62, 2, 1, 1, 5, 35, 1),
(63, 2, 1, 1, 5, 36, 1),
(64, 2, 1, 1, 5, 37, 1),
(65, 2, 1, 1, 5, 38, 1),
(66, 2, 1, 1, 5, 39, 1),
(67, 2, 1, 1, 5, 40, 1),
(68, 2, 1, 1, 5, 41, 1),
(69, 2, 1, 1, 5, 42, 1),
(70, 2, 1, 1, 5, 43, 1),
(71, 2, 1, 1, 5, 44, 1),
(72, 2, 1, 1, 5, 45, 1),
(73, 2, 1, 1, 5, 46, 1),
(74, 2, 1, 1, 5, 47, 1),
(75, 2, 1, 1, 5, 48, 1),
(76, 2, 1, 1, 5, 49, 1),
(77, 2, 1, 1, 5, 50, 1),
(78, 2, 1, 1, 5, 51, 1),
(79, 2, 1, 1, 5, 52, 1),
(80, 2, 1, 1, 5, 53, 1),
(81, 2, 1, 1, 5, 54, 1),
(82, 2, 1, 1, 5, 55, 1),
(83, 2, 1, 1, 5, 56, 1),
(84, 2, 1, 1, 5, 57, 1),
(85, 2, 1, 1, 5, 58, 1),
(86, 2, 1, 1, 5, 59, 1),
(87, 2, 1, 2, 6, 87, 1),
(88, 2, 1, 2, 6, 88, 1),
(89, 2, 1, 2, 6, 169, 1),
(90, 2, 1, 2, 6, 89, 1),
(91, 2, 1, 2, 6, 90, 1),
(92, 2, 1, 2, 6, 91, 1),
(93, 2, 1, 2, 6, 144, 1),
(94, 2, 1, 2, 6, 92, 1),
(95, 2, 1, 2, 6, 93, 1),
(96, 2, 1, 2, 6, 94, 1),
(97, 2, 1, 2, 6, 95, 1),
(98, 2, 1, 2, 6, 96, 1),
(99, 2, 1, 2, 6, 97, 1),
(100, 2, 1, 2, 6, 98, 1),
(101, 2, 1, 2, 6, 99, 1),
(102, 2, 1, 2, 6, 100, 1),
(103, 2, 1, 2, 6, 101, 1),
(104, 2, 1, 2, 7, 102, 1),
(105, 2, 1, 2, 7, 103, 1),
(106, 2, 1, 2, 7, 104, 1),
(107, 2, 1, 2, 7, 105, 1),
(108, 2, 1, 2, 7, 106, 1),
(109, 2, 1, 2, 7, 107, 1),
(110, 2, 1, 2, 7, 108, 1),
(111, 2, 1, 2, 7, 109, 1),
(112, 2, 1, 2, 7, 110, 1),
(113, 2, 1, 2, 7, 111, 1),
(114, 2, 1, 2, 7, 112, 1),
(115, 2, 1, 2, 7, 113, 1),
(116, 2, 1, 2, 7, 114, 1),
(117, 2, 1, 2, 7, 115, 1),
(118, 2, 1, 2, 7, 177, 1),
(119, 2, 1, 2, 7, 116, 1),
(120, 2, 1, 2, 7, 117, 1),
(121, 2, 1, 2, 7, 118, 1),
(122, 2, 1, 2, 7, 119, 1),
(123, 2, 1, 2, 8, 139, 1),
(124, 2, 1, 2, 8, 140, 1),
(125, 2, 1, 2, 8, 141, 1),
(126, 2, 1, 2, 8, 142, 1),
(127, 2, 1, 2, 8, 143, 1),
(128, 2, 1, 2, 8, 145, 1),
(129, 2, 1, 2, 8, 146, 1),
(130, 2, 1, 2, 8, 147, 1),
(131, 2, 1, 2, 8, 148, 1),
(132, 2, 1, 2, 8, 149, 1),
(133, 2, 1, 2, 8, 150, 1),
(134, 2, 1, 2, 8, 151, 1),
(135, 2, 1, 2, 8, 152, 1),
(136, 2, 1, 2, 8, 153, 1),
(137, 2, 1, 2, 8, 154, 1),
(138, 2, 1, 2, 8, 155, 1),
(139, 2, 1, 2, 8, 156, 1),
(140, 2, 1, 2, 8, 157, 1),
(141, 2, 1, 2, 8, 158, 1),
(142, 2, 1, 2, 8, 159, 1),
(143, 2, 1, 2, 8, 160, 1),
(144, 2, 1, 2, 8, 161, 1),
(145, 2, 1, 2, 8, 162, 1),
(146, 2, 1, 2, 8, 163, 1),
(147, 2, 1, 2, 8, 164, 1),
(148, 2, 1, 2, 8, 165, 1),
(149, 2, 1, 2, 8, 166, 1),
(150, 2, 1, 2, 9, 167, 1),
(151, 2, 1, 2, 9, 168, 1),
(152, 2, 1, 2, 9, 170, 1),
(153, 2, 1, 2, 9, 171, 1),
(154, 2, 1, 2, 9, 172, 1),
(155, 2, 1, 2, 9, 173, 1),
(156, 2, 1, 2, 9, 174, 1),
(157, 2, 1, 2, 9, 175, 1),
(158, 2, 1, 2, 9, 176, 1),
(159, 2, 1, 2, 9, 178, 1),
(160, 2, 1, 2, 9, 179, 1),
(161, 2, 1, 2, 10, 120, 1),
(162, 2, 1, 2, 10, 121, 1),
(163, 2, 1, 2, 10, 122, 1),
(164, 2, 1, 2, 10, 123, 1),
(165, 2, 1, 2, 10, 124, 1),
(166, 2, 1, 2, 10, 125, 1),
(167, 2, 1, 2, 10, 126, 1),
(168, 2, 1, 2, 10, 127, 1),
(169, 2, 1, 2, 10, 128, 1),
(170, 2, 1, 2, 10, 129, 1),
(171, 2, 1, 2, 10, 130, 1),
(172, 2, 1, 2, 10, 131, 1),
(173, 2, 1, 2, 10, 132, 1),
(174, 2, 1, 2, 10, 133, 1),
(175, 2, 1, 2, 10, 134, 1),
(176, 2, 1, 2, 10, 135, 1),
(177, 2, 1, 2, 10, 136, 1),
(178, 2, 1, 2, 10, 137, 1),
(179, 2, 1, 2, 10, 138, 1),
(180, 2, 1, 3, 11, 180, 1),
(181, 2, 1, 3, 11, 181, 1),
(182, 2, 1, 3, 11, 182, 1),
(183, 2, 1, 3, 11, 183, 1),
(184, 2, 1, 3, 11, 184, 1),
(185, 2, 1, 3, 11, 185, 1),
(186, 2, 1, 3, 11, 186, 1),
(187, 2, 1, 3, 11, 187, 1),
(188, 2, 1, 3, 11, 188, 1),
(189, 2, 1, 3, 11, 189, 1),
(190, 2, 1, 3, 11, 190, 1),
(191, 2, 1, 3, 11, 191, 1),
(192, 2, 1, 3, 11, 192, 1),
(193, 2, 1, 3, 11, 193, 1),
(194, 2, 1, 3, 12, 194, 1),
(195, 2, 1, 3, 12, 195, 1),
(196, 2, 1, 3, 12, 196, 1),
(197, 2, 1, 3, 12, 197, 1),
(198, 2, 1, 3, 12, 198, 1),
(199, 2, 1, 3, 12, 199, 1),
(200, 2, 1, 3, 12, 200, 1),
(201, 2, 1, 3, 12, 201, 1),
(202, 2, 1, 3, 12, 202, 1),
(203, 2, 1, 3, 12, 203, 1),
(204, 2, 1, 3, 12, 204, 1),
(205, 2, 1, 3, 12, 205, 1),
(206, 2, 1, 3, 12, 206, 1),
(207, 2, 1, 3, 12, 207, 1),
(208, 2, 1, 3, 12, 208, 1),
(209, 2, 1, 3, 12, 209, 1),
(210, 2, 1, 3, 12, 210, 1),
(211, 2, 1, 3, 12, 211, 1),
(212, 2, 1, 3, 13, 231, 1),
(213, 2, 1, 3, 13, 232, 1),
(214, 2, 1, 3, 13, 233, 1),
(215, 2, 1, 3, 13, 234, 1),
(216, 2, 1, 3, 13, 235, 1),
(217, 2, 1, 3, 13, 236, 1),
(218, 2, 1, 3, 13, 237, 1),
(219, 2, 1, 3, 13, 238, 1),
(220, 2, 1, 3, 13, 239, 1),
(221, 2, 1, 3, 14, 240, 1),
(222, 2, 1, 3, 14, 241, 1),
(223, 2, 1, 3, 14, 242, 1),
(224, 2, 1, 3, 14, 243, 1),
(225, 2, 1, 3, 14, 244, 1),
(226, 2, 1, 3, 14, 245, 1),
(227, 2, 1, 3, 14, 246, 1),
(228, 2, 1, 3, 14, 247, 1),
(229, 2, 1, 3, 14, 248, 1),
(230, 2, 1, 3, 14, 249, 1),
(231, 2, 1, 3, 14, 250, 1),
(232, 2, 1, 3, 14, 251, 1),
(233, 2, 1, 3, 14, 252, 1),
(234, 2, 1, 3, 14, 253, 1),
(235, 2, 1, 3, 14, 254, 1),
(236, 2, 1, 3, 14, 255, 1),
(237, 2, 1, 3, 14, 256, 1),
(238, 2, 1, 3, 15, 212, 1),
(239, 2, 1, 3, 15, 213, 1),
(240, 2, 1, 3, 15, 214, 1),
(241, 2, 1, 3, 15, 215, 1),
(242, 2, 1, 3, 15, 216, 1),
(243, 2, 1, 3, 15, 217, 1),
(244, 2, 1, 3, 15, 218, 1),
(245, 2, 1, 3, 15, 219, 1),
(246, 2, 1, 3, 15, 220, 1),
(247, 2, 1, 3, 15, 221, 1),
(248, 2, 1, 3, 15, 222, 1),
(249, 2, 1, 3, 15, 223, 1),
(250, 2, 1, 3, 15, 224, 1),
(251, 2, 1, 3, 15, 225, 1),
(252, 2, 1, 3, 15, 226, 1),
(253, 2, 1, 3, 15, 227, 1),
(254, 2, 1, 3, 15, 228, 1),
(255, 2, 1, 3, 15, 229, 1),
(256, 2, 1, 3, 15, 230, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_prakerin`
--

CREATE TABLE `siswa_prakerin` (
  `id_siswa_prakerin` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_prakerin` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_elemen`
--

CREATE TABLE `sub_elemen` (
  `id_sub_elemen` int(10) NOT NULL,
  `id_dimensi` int(10) NOT NULL,
  `id_elemen` int(10) NOT NULL,
  `kode` text NOT NULL,
  `sub_elemen` text NOT NULL,
  `capaianE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_elemen`
--

INSERT INTO `sub_elemen` (`id_sub_elemen`, `id_dimensi`, `id_elemen`, `kode`, `sub_elemen`, `capaianE`) VALUES
(1, 1, 1, '01.01.01', 'Mengenal dan Mencintai Tuhan Yang Maha Esa', 'Menerapkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dalam ritual ibadahnya baik ibadah yang bersifat personal maupun sosial.'),
(2, 1, 1, '01.01.02', 'Pemahaman Agama/Kepercayaan', 'Memahami struktur organisasi, unsurunsur utama agama / kepercayaan dalam konteks Indonesia, memahami kontribusi agama/kepercayaan terhadap peradaban dunia.'),
(3, 1, 1, '01.01.03', 'Pelaksanaan Ritual Ibadah', ''),
(4, 1, 2, '01.02.01', 'Integritas', ''),
(5, 1, 2, '01.02.02', 'Merawat Diri secara Fisik, Mental dan Spiritual', ''),
(6, 1, 3, '01.03.01', 'Mengutamakan persamaan dengan orang lain dan menghargai perbedaan', ''),
(7, 1, 3, '01.03.02', 'Berempati kepada orang lain', ''),
(8, 1, 4, '01.04.01', 'Memahami Keterhubungan Ekosistem Bumi', ''),
(9, 1, 4, '01.04.02', 'Menjaga Lingkungan Alam Sekitar', ''),
(10, 1, 5, '01.05.01', 'Melaksanakan Hak dan Kewajiban sebagai Warga Negara Indonesia', ''),
(11, 2, 6, '02.06.01', 'Mendalami budaya dan identitas budaya', ''),
(12, 2, 6, '02.06.02', 'Mengeksplorasi dan membandingkan pengetahuan budaya, kepercayaan, serta praktiknya', 'Menganalisis dinamika budaya yang mencakup pemahaman, kepercayaan, dan praktik keseharian dalam rentang waktu yang panjang dan konteks yang luas.'),
(13, 2, 6, '02.06.03', 'Menumbuhkan rasa menghormati terhadap keanekaragaman budaya', ''),
(14, 2, 7, '02.07.01', 'Berkomunikasi antar budaya', ''),
(15, 2, 7, '02.07.02', 'Mempertimbangkan dan menumbuhkan berbagai perspektif', 'Menyajikan pandangan yang seimbang mengenai permasalahan yang dapat menimbulkan pertentangan pendapat. Memosisikan orang lain dan budaya yang berbeda darinya secara setara, serta bersedia memberikan pertolongan ketika orang lain berada dalam situasi sulit'),
(16, 2, 8, '02.08.01', 'Refleksi terhadap pengalaman kebinekaan', ''),
(17, 2, 8, '02.08.02', 'Menghilangkan stereotip dan prasangka', ''),
(18, 2, 8, '02.08.03', 'Menyelaraskan perbedaan budaya', ''),
(19, 2, 9, '02.09.01', 'Aktif membangun masyarakat yang inklusif, adil, dan berkelanjutan', ''),
(20, 2, 9, '02.09.02', 'Berpartisipasi dalam proses pengambilan keputusan bersama', ''),
(21, 2, 9, '02.09.03', 'Memahami peran individu dalam demokrasi', ''),
(22, 3, 10, '03.10.01', 'Kerja sama', 'Membangun tim dan mengelola kerjasama untuk mencapai tujuan bersama sesuai dengan target yang sudah ditentukan.'),
(23, 3, 10, '03.10.02', 'Komunikasi untuk mencapai tujuan bersama', ''),
(24, 3, 10, '03.10.03', 'Saling-ketergantungan positif', 'Menyelaraskan kapasitas kelompok agar para anggota kelompok dapat saling membantu satu sama lain memenuhi kebutuhan mereka baik secara individual maupun kolektif.'),
(25, 3, 10, '03.10.04', 'Koordinasi Sosial', 'Menyelaraskan dan menjaga tindakan diri dan anggota kelompok agar sesuai antara satu dengan lainnya serta menerima konsekuensi tindakannya dalam rangka mencapai tujuan bersama'),
(26, 3, 11, '03.11.01', 'Tanggap terhadap lingkungan Sosial', 'Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan berkontribusi sesuai dengan kebutuhan masyarakat untuk menghasilkan keadaan yang lebih baik.'),
(27, 3, 11, '03.11.02', 'Persepsi sosial', 'Melakukan tindakan yang tepat agar orang lain merespon sesuai dengan yang diharapkan dalam rangka penyelesaian pekerjaan dan pencapaian tujuan'),
(28, 3, 12, '03.12.01', 'Berbagi', 'Mengupayakan memberi hal yang dianggap penting dan berharga kepada orang-orang yang membutuhkan di masyarakat yang lebih luas (negara, dunia).'),
(29, 4, 13, '04.13.01', 'Mengenali kualitas dan minat diri serta tantangan yang dihadapi', 'Mengidentifikasi kekuatan dan tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.'),
(30, 4, 13, '04.13.02', 'Mengembangkan refleksi diri', 'Melakukan refleksi terhadap umpan balik dari teman, guru, dan orang dewasa lainnya, serta informasiinformasi karir yang akan dipilihnya untuk menganalisis karakteristik dan keterampilan yang dibutuhkan dalam menunjang atau menghambat karirnya di masa depan.'),
(31, 4, 14, '04.14.01', 'Regulasi emosi', 'Mengendalikan dan menyesuaikan emosi yang dirasakannya secara tepat ketika menghadapi situasi yang menantang dan menekan pada konteks belajar, relasi, dan pekerjaan.'),
(32, 4, 14, '04.14.02', 'Penetapan tujuan belajar, prestasi, dan pengembangan diri serta rencana strategis untuk mencapainya', 'Mengevaluasi efektivitas strategi pembelajaran digunakannya, serta menetapkan tujuan belajar, prestasi, dan pengembangan diri secara spesifik dan merancang strategi yang sesuai untuk menghadapi tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.'),
(33, 4, 14, '04.14.03', 'Menunjukkan inisiatif dan bekerja secara mandiri', 'Menentukan prioritas pribadi, berinisiatif mencari dan mengembangkan pengetahuan dan keterampilan yang spesifik sesuai tujuan di masa depan.'),
(34, 4, 14, '04.14.04', 'Mengembangkan pengendalian dan disiplin diri', 'Melakukan tindakantindakan secara konsisten guna mencapai tujuan karir dan pengembangan dirinya di masa depan, serta berusaha mencari dan melakukan alternatif tindakan lain yang dapat dilakukan ketika menemui hambatan.'),
(35, 4, 14, '04.14.05', 'Percaya diri, tangguh (resilient), dan adaptif', 'Menyesuaikan dan mulai menjalankan rencana dan strategi pengembangan dirinya dengan mempertimbangkan minat dan tuntutan pada konteks belajar maupun pekerjaan yang akan dijalaninya di masa depan, serta berusaha untuk mengatasi tantangantantangan yang ditemui.'),
(36, 5, 15, '05.15.01', 'Mengajukan pertanyaan', 'Mengajukan pertanyaan untuk menganalisis secara kritis permasalahan yang kompleks dan abstrak.'),
(37, 5, 15, '05.15.02', 'Mengidentifikasi, mengklarifikasi, dan mengolah informasi dan gagasan', 'Secara kritis mengklarifikasi serta menganalisis gagasan dan informasi yang kompleks dan abstrak dari berbagai sumber. Memprioritaskan suatu gagasan yang paling relevan dari hasil klarifikasi dan analisis.'),
(38, 5, 16, '05.16.01', 'Menganalisis dan mengevaluasi penalaran dan prosedurnya', 'Menganalisis dan mengevaluasi penalaran yang digunakannya dalam menemukan dan mencari solusi serta mengambil keputusan.'),
(39, 5, 17, '05.17.01', 'Merefleksi dan mengevaluasi pemikirannya sendiri', 'Menjelaskan alasan untuk mendukung pemikirannya dan memikirkan pandangan yang mungkin berlawanan dengan pemikirannya dan mengubah pemikirannya jika diperlukan.'),
(40, 6, 18, '06.18.01', 'Menghasilkan gagasan yang orisinal', 'Menghasilkan gagasan yang beragam untuk mengekspresikan pikiran dan/atau perasaannya, menilai gagasannya, serta memikirkan segala risikonya dengan mempertimbangkan banyak perspektif seperti etika dan nilai kemanusiaan ketika gagasannya direalisasikan.'),
(41, 6, 19, '06.19.01', 'Menghasilkan karya dan tindakan yang orisinal', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/ atau tindakan, serta mengevaluasinya dan mempertimbangkan dampak dan risikonya bagi diri dan lingkungannya dengan menggunakan berbagai perspektif.'),
(42, 6, 20, '06.20.01', 'Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan', 'Bereksperimen dengan berbagai pilihan secara kreatif untuk memodifikasi gagasan sesuai dengan perubahan situasi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `perihal` text NOT NULL,
  `asal_instansi_surat` text NOT NULL,
  `isi_surat` text NOT NULL,
  `nomor_surat` text NOT NULL,
  `tanggal_surat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_pelajaran`
--

CREATE TABLE `tahun_pelajaran` (
  `id_tahun_pelajaran` int(11) NOT NULL,
  `tahun_pelajaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahun_pelajaran`
--

INSERT INTO `tahun_pelajaran` (`id_tahun_pelajaran`, `tahun_pelajaran`) VALUES
(1, '2023-2024'),
(2, '2024-2025'),
(3, '2025-2026'),
(4, '2026-2027'),
(5, '2027-2028');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkat`
--

CREATE TABLE `tingkat` (
  `id_tingkat` int(10) NOT NULL,
  `tingkat` text NOT NULL,
  `fase` varchar(20) NOT NULL,
  `akhir` int(10) NOT NULL,
  `tabjad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tingkat`
--

INSERT INTO `tingkat` (`id_tingkat`, `tingkat`, `fase`, `akhir`, `tabjad`) VALUES
(1, '10', 'E', 0, 'X'),
(2, '11', 'F', 0, 'XI'),
(3, '12', 'F', 1, 'XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_tambahan`
--

CREATE TABLE `tugas_tambahan` (
  `id_tugas_tambahan` int(10) NOT NULL,
  `tugas_tambahan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tugas_tambahan`
--

INSERT INTO `tugas_tambahan` (`id_tugas_tambahan`, `tugas_tambahan`) VALUES
(1, 'Wakil Kepala Sekolah Urusan Kurikulum'),
(2, 'Wakil Kepala Sekolah Urusan Kesiswaan'),
(3, 'Wakil Kepala Sekolah Urusan Sarana Prsarana'),
(4, 'Wakil Kepala Sekolah Urusan Hubungan Masyarakat'),
(5, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan_pembelajaran`
--

CREATE TABLE `tujuan_pembelajaran` (
  `id_tujuan` int(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `id_tingkat` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `urut` int(10) NOT NULL,
  `tujuan` text NOT NULL,
  `kktp` int(11) NOT NULL,
  `middle_formatif` int(10) NOT NULL,
  `middle_ph` int(10) NOT NULL,
  `formatif_as` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tujuan_pembelajaran`
--

INSERT INTO `tujuan_pembelajaran` (`id_tujuan`, `tahun`, `semester`, `id_tingkat`, `id_kelas`, `id_mapel`, `urut`, `tujuan`, `kktp`, `middle_formatif`, `middle_ph`, `formatif_as`) VALUES
(1, 2, 1, 0, 4, 14, 1, 'algoritma', 75, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `jabatan` int(10) NOT NULL,
  `nama` text NOT NULL,
  `kelamin` int(10) NOT NULL,
  `agama` int(10) NOT NULL,
  `nip` text NOT NULL,
  `nuptk` text NOT NULL,
  `kontak` text NOT NULL,
  `id_kepegawaian` int(10) NOT NULL,
  `ijazah` int(10) NOT NULL,
  `id_tugas_tambahan` int(10) NOT NULL,
  `username` text NOT NULL,
  `pass` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `foto` text NOT NULL,
  `moto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `jabatan`, `nama`, `kelamin`, `agama`, `nip`, `nuptk`, `kontak`, `id_kepegawaian`, `ijazah`, `id_tugas_tambahan`, `username`, `pass`, `password`, `foto`, `moto`) VALUES
(1, 2, 'ADMINISTRATOR', 1, 1, '-', '-', '85707357', 5, 5, 5, 'abdira', 'abdira', '$2y$10$n2WmEQC0IKFKZGRuqsSOZ.q2m.oNlYMeIzOLQsdxRGwb/8OH7xu.6', '', ''),
(2, 1, 'Nanang Slamet Mulyono, S.Pd, MPd', 1, 1, '-', '-', '6285', 1, 1, 5, 'nanang', '12345678', '$2y$10$RXcq.svd5qFnoPZIa3JOZueaoAbFk7m6SxDLmBFukI5YhWPlbOCw6', '', ''),
(3, 3, 'Susmiyati, S.Pd.', 2, 1, '-', '-', '6285', 5, 2, 5, 'susmiyati', '12345678', '$2y$10$5RihsDmVEwE8vX6E64wax.vY3ZTkNCIwUVYFoLjZLbyDKUZ1QXLV6', '', ''),
(4, 3, 'Uswatun Hasanah, S.Pd.', 2, 1, '-', '-', '6285', 5, 2, 5, 'uswatun', '12345678', '$2y$10$Xnc8DzE4YqS2y0Q80txOY.lcO.wpOuRJD8zc9s2eOztc9p39tfaKm', '', ''),
(5, 3, 'Dasa Eka Nugroho, A.Md, Par.', 1, 1, '-', '-', '6285', 5, 2, 5, 'dasa', '12345678', '$2y$10$prGkV7Ll4aRY5b64YkDUkuSnKjORhOQyzjm.0A8yFP1eIH0fV8Re.', '', ''),
(6, 3, 'Dra.Tutik Rahayu', 2, 1, '-', '-', '6285', 5, 2, 5, 'tutik', '12345678', '$2y$10$s8XrA9iMuE7v0fZhlT7k2u4hQ30DLluI/.lExgpb52bTxv3VnkYAu', '', ''),
(7, 3, 'Hendra Tonik Geolistianto, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'hendra', '12345678', '$2y$10$apBpugKB1IMtG6HHp6eNCOLeW1FO84CONLwKk7QbBDWCoOQ/yRI2i', '', ''),
(8, 3, 'Miftakhul Huda', 1, 1, '-', '-', '6285', 5, 2, 5, 'miftakhul', '12345678', '$2y$10$LhWnkQdwGxy48P7gYfVNgeNsBxIKwXDRAIuKBmvhDGgkgoByQCkSe', '', ''),
(9, 3, 'Masrondi,S.Sn', 1, 1, '-', '-', '6285', 5, 2, 5, 'masrondi', '12345678', '$2y$10$9nZTeGIXEzShnWog5/zkmOahkYUj.Sn2SQDTU3Hlfzi7NEhRHdiGO', '', ''),
(10, 3, 'Nuriska Qodriyawanti, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'nuriska', '12345678', '$2y$10$XX79jFDhnaXCA7pSk/IBX.uXoiGqodFeD.4FY85u/SQT3zincZ8XG', '', ''),
(11, 3, 'Nuzulul Nurhayati, S.Si,M.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'nuzulul', '12345678', '$2y$10$3JJbYU1ZXHKf.wv4enaDceoxq3p7JZifUUxrA4x8hTApkeZ7ZMiTa', '', ''),
(12, 3, 'Muhari, MA', 1, 1, '-', '-', '6285', 5, 2, 5, 'muhari', '12345678', '$2y$10$2FMW/G4G8sNJF7Noub.OW.AdfkOgz7SKeLM7AEUhkcS6JmSDUn.HO', '', ''),
(13, 3, 'Dyah Ayu Maulidina Munita Sari, S.Pd.', 2, 1, '-', '-', '6285', 5, 2, 5, 'ayu', '12345678', '$2y$10$KKfolGsjCHSCvktcHrmQ1.LDEzWEmbwVeTMkgFc0oCwrTPqVV0q1W', '', ''),
(14, 3, 'Suryawanto, S.Pd.', 1, 1, '-', '-', '6285', 5, 2, 5, 'suryawanto', '12345678', '$2y$10$gkqMLlLNYAYVL2SYC4ogNerEaiUJzwQqmH2a5TwnrWDMIx6vC.uKi', '', ''),
(15, 3, 'Nurul Khoiriyah, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'nurul', '12345678', '$2y$10$u5LJXMUOlxHV7myckRa5m.H/1iKHIQ1onWeJUHL98Pn0gfSHN/V8.', '', ''),
(16, 3, 'Samiadi, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'samiadi', '12345678', '$2y$10$BmiX473Kx0XeDh6J50L/2.e8Gf4Ss0zPSBuEqRsxHXKrAKP2x3hOC', '', ''),
(17, 3, 'Agus Tyas Ferry Firmansyah, S.Pd.', 1, 1, '-', '-', '6285', 5, 2, 5, 'aferry', '12345678', '$2y$10$V0.B8vpnjopnRgAUDbHa/uxIHZ39pW.vQ0O6w8YeHeykimubFfTeC', '', ''),
(18, 3, 'Zaeni S.Th', 1, 3, '-', '-', '6285', 5, 2, 5, 'zaeni', '12345678', '$2y$10$l4dq9zV4zpWCEKpH033NiuTcdiXuil/fLJdKw990xkFAkNceYJDA2', '', ''),
(19, 3, 'Herlina Faizah,S.PdI', 2, 1, '-', '-', '6285', 5, 2, 5, 'herlina', '12345678', '$2y$10$gCP8VE9fR.L.Br6UQuFDUeIRMQzVQeReWbTs/GzmND/bz2A2VeLiS', '', ''),
(20, 3, 'Konis Zaitun, Amd. Keb', 2, 1, '-', '-', '6285', 5, 2, 5, 'konis', '12345678', '$2y$10$RVfAegT3zPuJDRpUbw22buhKKXlQbCJXEDV6zsFPpu638rQyCCHg6', '', ''),
(21, 3, 'Setiawan, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'setiawan', '12345678', '$2y$10$3lwQZ2E0iOZiGQEW9dTFE.c4QFsqlwgvDiMOA0lbE0sdmnu5jkt7a', '', ''),
(22, 3, 'Siti Eli Novianti,S.Pdi', 2, 1, '-', '-', '6285', 5, 2, 5, 'eli', '12345678', '$2y$10$YlYBpacncSUdnvfV4neCR.hFWB0tdGyrya13miRtCe9jk5pPFknnm', '', ''),
(23, 3, 'Yanny Husain Kusuma, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'yanny', '12345678', '$2y$10$dVyau6cA48PDnVo5P/RC5erte11lTNMa/290oGrhdrQ80T4UD0equ', '', ''),
(24, 3, 'Sisca Silviana, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'sisca', '12345678', '$2y$10$5.jZcyk6LHssGxad7TJufOnw.YFI84Kfn1nr2hLbG1VHlXYxNswbW', '', ''),
(25, 3, 'Destri Cahyono, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'destri', '12345678', '$2y$10$Yh.slBqsPAdgEo7/MIVz9emp9e5u6npEyaY6vcvnNRt5l1kAhunRO', '', ''),
(26, 3, 'Ines Galuh Aprilian, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'ines', '12345678', '$2y$10$sw4eO9stEsPi0wxPLHv5y.75JxchOvSzhP5lrmjvOGocQydXhRT1O', '', ''),
(27, 3, 'Lin Ningsih Agustina, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'lin', '12345678', '$2y$10$iNnu.E9/JJoN49E0hEiCmO4rI9BL/FLgqBt/griDmeiDsRcGU7zwy', '', ''),
(28, 3, 'Hanif Arifani Akbar, S.Farm, A.Pt', 1, 1, '-', '-', '6285', 5, 2, 5, 'hanif', '12345678', '$2y$10$merZh/K2Pp2PLBDvgjhKLOhnuqKF.NWcENewHijZNkSQqJKKZGUtW', '', ''),
(29, 3, 'Siti Aminur Rohmawati, S.Pd', 2, 1, '-', '-', '6285', 5, 2, 5, 'ami', '12345678', '$2y$10$PkPP6kIRt.nd7o7YR7ofK.qs3PLYRg6In7dRLKoCvx9jXoiMxQIoC', '', ''),
(30, 3, 'Eko Puji Santoso, S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'eko', '12345678', '$2y$10$wdkWjZq40IJwZ50NnL32eOyS82U30UcMBXtqyBbHwF4WQ7Sn8sLEC', '', ''),
(31, 3, 'Hendrik Dwi Cahyono,S.Pd', 1, 1, '-', '-', '6285', 5, 2, 5, 'hendrik', '12345678', '$2y$10$EeQsnKulm/.TeZ0dM0VwwuhKo0y3.rfwPFtiJAnPfTxVeCRixWppu', '', ''),
(32, 3, 'Kamalita, S.Farm, A.Pt', 2, 1, '-', '-', '6285', 5, 2, 5, 'kamalita', '12345678', '$2y$10$2pPa4ocL7hZV7hF4aRkhaOCwv5GxpN1FuC0Dhu7x8amYh7CEZzSxu', '', ''),
(33, 3, 'Ummu Hanik, S.Ak', 2, 1, '-', '-', '6285', 5, 2, 5, 'hanik', '12345678', '$2y$10$ZFKRzSN/OuyuVHpBLcnEiOLW2OXeCw3AlWfbAV45NSCRZTZ5cDhMO', '', ''),
(34, 3, 'Drs. Roziqin, MA', 1, 1, '-', '-', '6285', 5, 2, 5, 'roziqin', '12345678', '$2y$10$MQ6PJK7bJtrUR8hGqQFAwOFRLk9HBHLyOgm8Mc735y.xkto52X3NC', '', ''),
(35, 3, 'Aminu Bil Huda', 1, 1, '-', '-', '6285707357080', 5, 2, 5, 'aminu', '12345678', '$2y$10$kLawr7MKSiQnzQxIlr6ltO6xWhW11uTZm2UeskEfYM1DomYA1QOYi', '', ''),
(36, 3, 'Nur Akbar Ash Shomad', 1, 1, '-', '-', '6285', 5, 2, 5, 'akbar', '12345678', '$2y$10$gJi.8d4vi1PavO5lmwHob.VB5RqFPgm2ZMgUATCSwitF9KEBBGbOG', '', ''),
(37, 3, 'Yulistiadi Firman, S.Kom', 1, 1, '-', '-', '6285', 5, 2, 5, 'adi', '12345678', '$2y$10$Qo30ywIvRYeUVC7X.PFixOXrCiyul5XZmmHdD0FhYyaTri42ZeNAG', '', ''),
(38, 3, 'M. Sahal Mahfudz', 1, 1, '-', '-', '6285', 5, 2, 5, 'sahal', '12345678', '$2y$10$c9hOSrtO/CuPBJ4xVAF/i.NXNx11Fj1DMlDZ.kJfb71jTtzDQlcQe', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `bulanan`
--
ALTER TABLE `bulanan`
  ADD PRIMARY KEY (`id_bulanan`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `catatan_wali`
--
ALTER TABLE `catatan_wali`
  ADD PRIMARY KEY (`id_catatan`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `dimensi`
--
ALTER TABLE `dimensi`
  ADD PRIMARY KEY (`id_dimensi`);

--
-- Indeks untuk tabel `elemen`
--
ALTER TABLE `elemen`
  ADD PRIMARY KEY (`id_elemen`),
  ADD KEY `id_dimensi` (`id_dimensi`);

--
-- Indeks untuk tabel `eskul`
--
ALTER TABLE `eskul`
  ADD PRIMARY KEY (`id_eskul`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indeks untuk tabel `harian`
--
ALTER TABLE `harian`
  ADD PRIMARY KEY (`id_harian`);

--
-- Indeks untuk tabel `hubungan_keluarga`
--
ALTER TABLE `hubungan_keluarga`
  ADD PRIMARY KEY (`id_hubungan_keluarga`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indeks untuk tabel `jenis_keluar`
--
ALTER TABLE `jenis_keluar`
  ADD PRIMARY KEY (`id_jenis_keluar`);

--
-- Indeks untuk tabel `jenis_siswa`
--
ALTER TABLE `jenis_siswa`
  ADD PRIMARY KEY (`id_jenis_siswa`);

--
-- Indeks untuk tabel `jenis_surat_keluar`
--
ALTER TABLE `jenis_surat_keluar`
  ADD PRIMARY KEY (`id_jenis_surat_keluar`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_kompetensi_keahlian` (`id_kompetensi_keahlian`);

--
-- Indeks untuk tabel `kelas_wali`
--
ALTER TABLE `kelas_wali`
  ADD PRIMARY KEY (`id_kelas_wali`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `kelompok_mapel`
--
ALTER TABLE `kelompok_mapel`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indeks untuk tabel `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  ADD PRIMARY KEY (`id_kepala_sekolah`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `kepegawaian`
--
ALTER TABLE `kepegawaian`
  ADD PRIMARY KEY (`id_kepegawaian`);

--
-- Indeks untuk tabel `kompetensi_keahlian`
--
ALTER TABLE `kompetensi_keahlian`
  ADD PRIMARY KEY (`id_kompetensi_keahlian`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indeks untuk tabel `lager_nilai_mapel`
--
ALTER TABLE `lager_nilai_mapel`
  ADD PRIMARY KEY (`id_lager_nilai_mapel`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `lager_nilai_mid`
--
ALTER TABLE `lager_nilai_mid`
  ADD PRIMARY KEY (`id_lager_nilai_mapel`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `laporan_wa`
--
ALTER TABLE `laporan_wa`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `lulusan`
--
ALTER TABLE `lulusan`
  ADD PRIMARY KEY (`id_lulusan`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD PRIMARY KEY (`id_mapel_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `mapel_proyek`
--
ALTER TABLE `mapel_proyek`
  ADD PRIMARY KEY (`id_mapel_proyek`);

--
-- Indeks untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id_mapel_siswa`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `mutasi_keluar`
--
ALTER TABLE `mutasi_keluar`
  ADD PRIMARY KEY (`id_mutasi_keluar`);

--
-- Indeks untuk tabel `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  ADD PRIMARY KEY (`id_mutasi_masuk`);

--
-- Indeks untuk tabel `nilai_assesmen_subelemen`
--
ALTER TABLE `nilai_assesmen_subelemen`
  ADD PRIMARY KEY (`id_nilai_assesmen_subelemen`);

--
-- Indeks untuk tabel `nilai_formatif`
--
ALTER TABLE `nilai_formatif`
  ADD PRIMARY KEY (`id_nilai_formatif`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_tujuan` (`id_tujuan`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_kelas`
--
ALTER TABLE `nilai_kelas`
  ADD PRIMARY KEY (`id_nilai_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_kelas_mid`
--
ALTER TABLE `nilai_kelas_mid`
  ADD PRIMARY KEY (`id_nilai_kelas_mid`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  ADD PRIMARY KEY (`id_nilai_mapel`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_mapel_mid`
--
ALTER TABLE `nilai_mapel_mid`
  ADD PRIMARY KEY (`id_mapel_mid`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_mata_pelajaran`
--
ALTER TABLE `nilai_mata_pelajaran`
  ADD PRIMARY KEY (`id_nilai_mata_pelajaran`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_proyek`
--
ALTER TABLE `nilai_proyek`
  ADD PRIMARY KEY (`id_nilai_proyek`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `proyek` (`proyek`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_dimensi` (`id_dimensi`),
  ADD KEY `id_sub_elemen` (`id_sub_elemen`),
  ADD KEY `id_elemen` (`id_elemen`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_sumatif_as`
--
ALTER TABLE `nilai_sumatif_as`
  ADD PRIMARY KEY (`id_nilai_sumatif_as`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_sumatif_ph`
--
ALTER TABLE `nilai_sumatif_ph`
  ADD PRIMARY KEY (`id_nilai_sumatif_ph`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_tujuan` (`id_tujuan`);

--
-- Indeks untuk tabel `nilai_sumatif_ts`
--
ALTER TABLE `nilai_sumatif_ts`
  ADD PRIMARY KEY (`id_nilai_sumatif_ts`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `nilai_ujian`
--
ALTER TABLE `nilai_ujian`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pembagian_raport`
--
ALTER TABLE `pembagian_raport`
  ADD PRIMARY KEY (`id_pembagian`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `pembina_eskul`
--
ALTER TABLE `pembina_eskul`
  ADD PRIMARY KEY (`id_pembina_eskul`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_eskul` (`id_eskul`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `pengingat`
--
ALTER TABLE `pengingat`
  ADD PRIMARY KEY (`id_pengingat`);

--
-- Indeks untuk tabel `piket_harian`
--
ALTER TABLE `piket_harian`
  ADD PRIMARY KEY (`id_piket_harian`),
  ADD KEY `id_harian` (`id_harian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `prakerin`
--
ALTER TABLE `prakerin`
  ADD PRIMARY KEY (`id_prakerin`),
  ADD KEY `semester` (`semester`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_absen` (`id_absen`),
  ADD KEY `tahun_2` (`tahun`),
  ADD KEY `semester_2` (`semester`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indeks untuk tabel `proyek_kelas`
--
ALTER TABLE `proyek_kelas`
  ADD PRIMARY KEY (`id_proyek_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_tema` (`id_tema`);

--
-- Indeks untuk tabel `proyek_subelemen`
--
ALTER TABLE `proyek_subelemen`
  ADD PRIMARY KEY (`id_proyek_subelemen`);

--
-- Indeks untuk tabel `proyek_tema`
--
ALTER TABLE `proyek_tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indeks untuk tabel `rekrutmen`
--
ALTER TABLE `rekrutmen`
  ADD PRIMARY KEY (`id_rekrutmen`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `agama` (`agama`),
  ADD KEY `hub_keluarga` (`hub_keluarga`),
  ADD KEY `kelamin` (`kelamin`),
  ADD KEY `jenis_siswa` (`jenis_siswa`),
  ADD KEY `terima_kelas` (`terima_kelas`);

--
-- Indeks untuk tabel `siswa_eskul`
--
ALTER TABLE `siswa_eskul`
  ADD PRIMARY KEY (`id_siswa_eskul`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_eskul` (`id_eskul`),
  ADD KEY `semester` (`semester`),
  ADD KEY `tahun` (`tahun`);

--
-- Indeks untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  ADD PRIMARY KEY (`id_siswa_kelas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `siswa_prakerin`
--
ALTER TABLE `siswa_prakerin`
  ADD PRIMARY KEY (`id_siswa_prakerin`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_prakerin` (`id_prakerin`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `sub_elemen`
--
ALTER TABLE `sub_elemen`
  ADD PRIMARY KEY (`id_sub_elemen`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`);

--
-- Indeks untuk tabel `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  ADD PRIMARY KEY (`id_tahun_pelajaran`);

--
-- Indeks untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- Indeks untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  ADD PRIMARY KEY (`id_tugas_tambahan`);

--
-- Indeks untuk tabel `tujuan_pembelajaran`
--
ALTER TABLE `tujuan_pembelajaran`
  ADD PRIMARY KEY (`id_tujuan`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `kelamin` (`kelamin`),
  ADD KEY `agama` (`agama`),
  ADD KEY `id_tugas_tambahan` (`id_tugas_tambahan`),
  ADD KEY `id_kepegawaian` (`id_kepegawaian`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id_agama` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `bulanan`
--
ALTER TABLE `bulanan`
  MODIFY `id_bulanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `catatan_wali`
--
ALTER TABLE `catatan_wali`
  MODIFY `id_catatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `dimensi`
--
ALTER TABLE `dimensi`
  MODIFY `id_dimensi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `elemen`
--
ALTER TABLE `elemen`
  MODIFY `id_elemen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `eskul`
--
ALTER TABLE `eskul`
  MODIFY `id_eskul` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `harian`
--
ALTER TABLE `harian`
  MODIFY `id_harian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hubungan_keluarga`
--
ALTER TABLE `hubungan_keluarga`
  MODIFY `id_hubungan_keluarga` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis_keluar`
--
ALTER TABLE `jenis_keluar`
  MODIFY `id_jenis_keluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis_siswa`
--
ALTER TABLE `jenis_siswa`
  MODIFY `id_jenis_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jenis_surat_keluar`
--
ALTER TABLE `jenis_surat_keluar`
  MODIFY `id_jenis_surat_keluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kelas_wali`
--
ALTER TABLE `kelas_wali`
  MODIFY `id_kelas_wali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kelompok_mapel`
--
ALTER TABLE `kelompok_mapel`
  MODIFY `id_kelompok` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  MODIFY `id_kepala_sekolah` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kepegawaian`
--
ALTER TABLE `kepegawaian`
  MODIFY `id_kepegawaian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kompetensi_keahlian`
--
ALTER TABLE `kompetensi_keahlian`
  MODIFY `id_kompetensi_keahlian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lager_nilai_mapel`
--
ALTER TABLE `lager_nilai_mapel`
  MODIFY `id_lager_nilai_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT untuk tabel `lager_nilai_mid`
--
ALTER TABLE `lager_nilai_mid`
  MODIFY `id_lager_nilai_mapel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_wa`
--
ALTER TABLE `laporan_wa`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lulusan`
--
ALTER TABLE `lulusan`
  MODIFY `id_lulusan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  MODIFY `id_mapel_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `mapel_proyek`
--
ALTER TABLE `mapel_proyek`
  MODIFY `id_mapel_proyek` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id_mapel_siswa` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mutasi_keluar`
--
ALTER TABLE `mutasi_keluar`
  MODIFY `id_mutasi_keluar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  MODIFY `id_mutasi_masuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_assesmen_subelemen`
--
ALTER TABLE `nilai_assesmen_subelemen`
  MODIFY `id_nilai_assesmen_subelemen` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_formatif`
--
ALTER TABLE `nilai_formatif`
  MODIFY `id_nilai_formatif` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `nilai_kelas`
--
ALTER TABLE `nilai_kelas`
  MODIFY `id_nilai_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `nilai_kelas_mid`
--
ALTER TABLE `nilai_kelas_mid`
  MODIFY `id_nilai_kelas_mid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  MODIFY `id_nilai_mapel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_mapel_mid`
--
ALTER TABLE `nilai_mapel_mid`
  MODIFY `id_mapel_mid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_mata_pelajaran`
--
ALTER TABLE `nilai_mata_pelajaran`
  MODIFY `id_nilai_mata_pelajaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT untuk tabel `nilai_proyek`
--
ALTER TABLE `nilai_proyek`
  MODIFY `id_nilai_proyek` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_as`
--
ALTER TABLE `nilai_sumatif_as`
  MODIFY `id_nilai_sumatif_as` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_ph`
--
ALTER TABLE `nilai_sumatif_ph`
  MODIFY `id_nilai_sumatif_ph` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_ts`
--
ALTER TABLE `nilai_sumatif_ts`
  MODIFY `id_nilai_sumatif_ts` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `nilai_ujian`
--
ALTER TABLE `nilai_ujian`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembagian_raport`
--
ALTER TABLE `pembagian_raport`
  MODIFY `id_pembagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembina_eskul`
--
ALTER TABLE `pembina_eskul`
  MODIFY `id_pembina_eskul` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengingat`
--
ALTER TABLE `pengingat`
  MODIFY `id_pengingat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `piket_harian`
--
ALTER TABLE `piket_harian`
  MODIFY `id_piket_harian` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prakerin`
--
ALTER TABLE `prakerin`
  MODIFY `id_prakerin` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `proyek_kelas`
--
ALTER TABLE `proyek_kelas`
  MODIFY `id_proyek_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `proyek_subelemen`
--
ALTER TABLE `proyek_subelemen`
  MODIFY `id_proyek_subelemen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `proyek_tema`
--
ALTER TABLE `proyek_tema`
  MODIFY `id_tema` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rekrutmen`
--
ALTER TABLE `rekrutmen`
  MODIFY `id_rekrutmen` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id_semester` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT untuk tabel `siswa_eskul`
--
ALTER TABLE `siswa_eskul`
  MODIFY `id_siswa_eskul` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  MODIFY `id_siswa_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT untuk tabel `siswa_prakerin`
--
ALTER TABLE `siswa_prakerin`
  MODIFY `id_siswa_prakerin` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sub_elemen`
--
ALTER TABLE `sub_elemen`
  MODIFY `id_sub_elemen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  MODIFY `id_tahun_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id_tingkat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  MODIFY `id_tugas_tambahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tujuan_pembelajaran`
--
ALTER TABLE `tujuan_pembelajaran`
  MODIFY `id_tujuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
