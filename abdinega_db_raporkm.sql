-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Okt 2024 pada 16.37
-- Versi server: 10.6.18-MariaDB-cll-lve
-- Versi PHP: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abdinega_db_raporkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(10) NOT NULL,
  `absen` text NOT NULL,
  `sort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `deskripsi_rapor`
--

CREATE TABLE `deskripsi_rapor` (
  `id_deskripsi` int(11) NOT NULL,
  `kriteria` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `contoh` text NOT NULL,
  `nilai` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `deskripsi_rapor`
--

INSERT INTO `deskripsi_rapor` (`id_deskripsi`, `kriteria`, `keterangan`, `contoh`, `nilai`) VALUES
(1, 'Kurang', 'Perlu pendampingan dalam ', 'pemahaman terhadap Pancasila dan amampu menerapkan dalam kehidupan sehari-hari', 0),
(2, 'Cukup', 'Menunjukkan penguasaan dalam ', 'pemahaman terhadap Pancasila dan amampu menerapkan dalam kehidupan sehari-hari', 70),
(3, 'Baik', 'Menunjukkan penguasaan yang baik dalam ', 'pemahaman terhadap Pancasila dan amampu menerapkan dalam kehidupan sehari-hari', 80),
(4, 'Sangat Baik', 'Menunjukkan penguasaan yang sangat baik dalam ', 'pemahaman terhadap Pancasila dan amampu menerapkan dalam kehidupan sehari-hari', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensi`
--

CREATE TABLE `dimensi` (
  `id_dimensi` int(10) NOT NULL,
  `dimensi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `eskul`
--

INSERT INTO `eskul` (`id_eskul`, `kode`, `id_sekolah`, `nama_eskul`) VALUES
(1, 'EX6NRW', 1, 'Pramuka'),
(2, 'JE5NP7', 1, 'Bola Voly'),
(3, '34B1YE', 1, 'Bola Basket'),
(4, 'HYPRLX', 1, 'Futsal'),
(5, 'LDJKG9', 1, 'Tari'),
(6, '8GDS71', 1, 'Pasukan Pengibar Bendera'),
(7, '4Y4P47', 1, 'Kick Boxing'),
(8, '8EDAC3', 1, 'Musik'),
(9, 'D8VV91', 1, 'Conten Creativ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harian`
--

CREATE TABLE `harian` (
  `id_harian` int(10) NOT NULL,
  `harian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas_wali`
--

INSERT INTO `kelas_wali` (`id_kelas_wali`, `tahun`, `semester`, `id_kelas`, `id_user`) VALUES
(1, 1, 1, 1, 16),
(2, 1, 1, 2, 22),
(3, 1, 1, 3, 7),
(4, 1, 1, 4, 30),
(5, 1, 1, 5, 17),
(6, 1, 1, 6, 5),
(7, 1, 1, 7, 12),
(8, 1, 1, 8, 19),
(9, 1, 1, 9, 11),
(10, 1, 1, 10, 24),
(11, 1, 1, 11, 27),
(12, 1, 1, 12, 25),
(13, 1, 1, 13, 4),
(14, 1, 1, 14, 31),
(15, 1, 1, 15, 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_mapel`
--

CREATE TABLE `kelompok_mapel` (
  `id_kelompok` int(10) NOT NULL,
  `huruf` text NOT NULL,
  `kelompok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepegawaian`
--

CREATE TABLE `kepegawaian` (
  `id_kepegawaian` int(10) NOT NULL,
  `kepegawaian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kompetensi_keahlian`
--

INSERT INTO `kompetensi_keahlian` (`id_kompetensi_keahlian`, `kompetensi_keahlian`, `deskripsi`, `banner`) VALUES
(1, 'Akuntansi', 'Akuntansi Keuangan Lembaga', '1.jpg'),
(2, 'Bisnis Digital', 'Bisnis Daring Dan Pemasaran', '1.jpg'),
(3, 'Perhotelan', 'Akomodasi Perhotelan', '1.jpg'),
(4, 'Rekayasa Perangkat Lunak', 'Informatika/Rekayasa Perangkat Lunak', '1.jpg'),
(5, 'Layanan Penunjang Kefarmasian Klinis dan Komunitas', 'Farmasi Klinis dan Komunitas Kesehatan', '1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(10) NOT NULL,
  `kurikulum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_wa`
--

CREATE TABLE `laporan_wa` (
  `id_laporan` int(11) NOT NULL,
  `kontak` varchar(13) NOT NULL,
  `status_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `agama` int(1) DEFAULT NULL,
  `urut` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_sekolah`, `id_kelompok`, `nama_mapel`, `s_mapel`, `agama`, `urut`) VALUES
(1, 1, 1, 'Pendidikan Agama Islam dan Budi Pekerti', 'PAIBP', NULL, 1),
(2, 1, 1, 'Pendidikan Agama Kristen dan Budi Pekerti', 'PAKBP', NULL, 1),
(3, 1, 1, 'Pendidikan Pancasila', 'PP', NULL, 2),
(4, 1, 1, 'Bahasa Indonesia', 'BI', NULL, 3),
(5, 1, 1, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'PJOK', NULL, 4),
(6, 1, 1, 'Sejarah', 'SEJ', NULL, 5),
(7, 1, 1, 'Seni Musik', 'SM', NULL, 6),
(8, 1, 1, 'Muatan Lokal Bahasa Daerah', 'MLBD', NULL, 7),
(9, 1, 2, 'Matematika', 'MTK', NULL, 8),
(10, 1, 2, 'Bahasa Inggris', 'BHSING', NULL, 9),
(11, 1, 2, 'Informatika', 'INF', NULL, 10),
(12, 1, 2, 'Dasar Dasar Akuntansi dan Keuangan Lembaga', 'DDAKL', NULL, 12),
(13, 1, 2, 'Dasar Dasar Bisnis Digital', 'DDBD', NULL, 12),
(14, 1, 2, 'Dasar Dasar Perhotelan', 'DDPH', NULL, 12),
(15, 1, 2, 'Dasar Dasar Pengembangan Perangkat Lunak dan Gim', 'DDPPLG', NULL, 12),
(16, 1, 2, 'Dasar Dasar Teknologi Farmasi', 'DDTF', NULL, 12),
(17, 1, 2, 'Projek IPAS', 'IPAS', NULL, 11),
(18, 1, 2, 'Akuntansi', 'AK', NULL, 10),
(19, 1, 2, 'Bisnis Digital', 'BD', NULL, 10),
(20, 1, 2, 'Rekayasa Perangkat Lunak', 'RPL', NULL, 10),
(21, 1, 2, 'Perhotelan', 'PH', NULL, 10),
(22, 1, 2, 'Layanan Penunjang Kefarmasian Klinis dan Komunitas', 'LPKKK', NULL, 10),
(23, 1, 2, 'Projek Kreatif dan  Kewirausahaa', 'PKK', NULL, 11),
(24, 1, 2, 'Akuntansi Koperasi dan  UMKM', 'AKUMKM', NULL, 11),
(25, 1, 2, 'Produktifitas Aplikasi Digital', 'PRODIG', NULL, 11),
(26, 1, 2, 'Administrasi Digital dan  Sinonim, Bahasa Latin', 'ADSBL', NULL, 11),
(27, 1, 2, 'English For Hotel', 'EFH', NULL, 11),
(28, 1, 2, 'Desain Visual UI/UX', 'UIUX', NULL, 11),
(29, 1, 2, 'Internet Of Things', 'IOT', NULL, 11);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapel_kelas`
--

INSERT INTO `mapel_kelas` (`id_mapel_kelas`, `tahun`, `semester`, `id_kelas`, `id_mapel`, `id_user`) VALUES
(1, 1, 1, 1, 1, 17),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 25),
(4, 1, 1, 1, 4, 15),
(5, 1, 1, 1, 5, 7),
(6, 1, 1, 1, 6, 11),
(7, 1, 1, 1, 7, 36),
(8, 1, 1, 1, 8, 7),
(9, 1, 1, 1, 9, 37),
(10, 1, 1, 1, 10, 16),
(11, 1, 1, 1, 11, 30),
(12, 1, 1, 1, 17, 5),
(13, 1, 1, 1, 12, 21),
(14, 1, 1, 2, 1, 17),
(15, 1, 1, 2, 2, 0),
(16, 1, 1, 2, 3, 25),
(17, 1, 1, 2, 4, 15),
(18, 1, 1, 2, 5, 7),
(19, 1, 1, 2, 6, 11),
(20, 1, 1, 2, 7, 36),
(21, 1, 1, 2, 8, 7),
(22, 1, 1, 2, 9, 37),
(23, 1, 1, 2, 10, 16),
(24, 1, 1, 2, 11, 30),
(25, 1, 1, 2, 17, 5),
(26, 1, 1, 2, 13, 22),
(27, 1, 1, 3, 1, 17),
(28, 1, 1, 3, 2, 13),
(29, 1, 1, 3, 3, 25),
(30, 1, 1, 3, 4, 18),
(31, 1, 1, 3, 5, 7),
(32, 1, 1, 3, 6, 11),
(33, 1, 1, 3, 7, 36),
(34, 1, 1, 3, 8, 7),
(35, 1, 1, 3, 9, 37),
(36, 1, 1, 3, 10, 14),
(37, 1, 1, 3, 11, 30),
(38, 1, 1, 3, 17, 14),
(39, 1, 1, 3, 14, 9),
(40, 1, 1, 4, 1, 17),
(41, 1, 1, 4, 2, 13),
(42, 1, 1, 4, 3, 25),
(43, 1, 1, 4, 4, 18),
(44, 1, 1, 4, 5, 12),
(45, 1, 1, 4, 6, 11),
(46, 1, 1, 4, 7, 36),
(47, 1, 1, 4, 8, 7),
(48, 1, 1, 4, 9, 19),
(49, 1, 1, 4, 10, 14),
(50, 1, 1, 4, 11, 30),
(51, 1, 1, 4, 17, 15),
(52, 1, 1, 4, 15, 29),
(53, 1, 1, 5, 1, 17),
(54, 1, 1, 5, 2, 13),
(55, 1, 1, 5, 3, 25),
(56, 1, 1, 5, 4, 18),
(57, 1, 1, 5, 5, 12),
(58, 1, 1, 5, 6, 11),
(59, 1, 1, 5, 7, 36),
(60, 1, 1, 5, 8, 7),
(61, 1, 1, 5, 9, 19),
(62, 1, 1, 5, 10, 14),
(63, 1, 1, 5, 11, 30),
(64, 1, 1, 5, 17, 15),
(65, 1, 1, 5, 16, 26),
(66, 1, 1, 6, 1, 8),
(67, 1, 1, 6, 2, 0),
(68, 1, 1, 6, 3, 25),
(69, 1, 1, 6, 4, 24),
(70, 1, 1, 6, 5, 12),
(71, 1, 1, 6, 6, 11),
(72, 1, 1, 6, 8, 10),
(73, 1, 1, 6, 9, 37),
(74, 1, 1, 6, 10, 14),
(75, 1, 1, 6, 18, 27),
(76, 1, 1, 6, 23, 5),
(77, 1, 1, 6, 24, 0),
(78, 1, 1, 7, 1, 8),
(79, 1, 1, 7, 2, 0),
(80, 1, 1, 7, 3, 25),
(81, 1, 1, 7, 4, 24),
(82, 1, 1, 7, 5, 12),
(83, 1, 1, 7, 6, 11),
(84, 1, 1, 7, 8, 10),
(85, 1, 1, 7, 9, 37),
(86, 1, 1, 7, 10, 14),
(87, 1, 1, 7, 19, 20),
(88, 1, 1, 7, 23, 5),
(89, 1, 1, 7, 25, 20),
(90, 1, 1, 8, 1, 32),
(91, 1, 1, 8, 2, 13),
(92, 1, 1, 8, 3, 25),
(93, 1, 1, 8, 4, 24),
(94, 1, 1, 8, 5, 12),
(95, 1, 1, 8, 6, 11),
(96, 1, 1, 8, 8, 10),
(97, 1, 1, 8, 9, 19),
(98, 1, 1, 8, 10, 16),
(99, 1, 1, 8, 21, 35),
(100, 1, 1, 8, 23, 4),
(101, 1, 1, 8, 27, 3),
(102, 1, 1, 9, 1, 32),
(103, 1, 1, 9, 2, 13),
(104, 1, 1, 9, 3, 25),
(105, 1, 1, 9, 4, 24),
(106, 1, 1, 9, 5, 12),
(107, 1, 1, 9, 6, 11),
(108, 1, 1, 9, 8, 10),
(109, 1, 1, 9, 9, 37),
(110, 1, 1, 9, 10, 16),
(111, 1, 1, 9, 20, 31),
(112, 1, 1, 9, 23, 12),
(113, 1, 1, 9, 28, 31),
(114, 1, 1, 10, 1, 32),
(115, 1, 1, 10, 2, 0),
(116, 1, 1, 10, 3, 25),
(117, 1, 1, 10, 4, 24),
(118, 1, 1, 10, 5, 12),
(119, 1, 1, 10, 6, 11),
(120, 1, 1, 10, 8, 10),
(121, 1, 1, 10, 9, 37),
(122, 1, 1, 10, 10, 16),
(123, 1, 1, 10, 22, 23),
(124, 1, 1, 10, 23, 12),
(125, 1, 1, 10, 26, 26),
(126, 1, 1, 11, 1, 28),
(127, 1, 1, 11, 2, 13),
(128, 1, 1, 11, 3, 25),
(129, 1, 1, 11, 4, 18),
(130, 1, 1, 11, 8, 7),
(131, 1, 1, 11, 9, 19),
(132, 1, 1, 11, 10, 3),
(133, 1, 1, 11, 18, 21),
(134, 1, 1, 11, 23, 11),
(135, 1, 1, 11, 24, 21),
(136, 1, 1, 12, 1, 28),
(137, 1, 1, 12, 2, 13),
(138, 1, 1, 12, 3, 25),
(139, 1, 1, 12, 4, 18),
(140, 1, 1, 12, 8, 7),
(141, 1, 1, 12, 9, 19),
(142, 1, 1, 12, 10, 3),
(143, 1, 1, 12, 19, 20),
(144, 1, 1, 12, 23, 22),
(145, 1, 1, 12, 25, 20),
(146, 1, 1, 13, 1, 32),
(147, 1, 1, 13, 2, 0),
(148, 1, 1, 13, 3, 25),
(149, 1, 1, 13, 4, 18),
(150, 1, 1, 13, 8, 7),
(151, 1, 1, 13, 9, 19),
(152, 1, 1, 13, 10, 3),
(153, 1, 1, 13, 21, 4),
(154, 1, 1, 13, 23, 4),
(155, 1, 1, 13, 27, 3),
(156, 1, 1, 14, 1, 32),
(157, 1, 1, 14, 2, 13),
(158, 1, 1, 14, 3, 25),
(159, 1, 1, 14, 4, 18),
(160, 1, 1, 14, 8, 5),
(161, 1, 1, 14, 9, 19),
(162, 1, 1, 14, 10, 3),
(163, 1, 1, 14, 20, 29),
(164, 1, 1, 14, 23, 6),
(165, 1, 1, 14, 29, 31),
(166, 1, 1, 15, 1, 32),
(167, 1, 1, 15, 2, 13),
(168, 1, 1, 15, 3, 25),
(169, 1, 1, 15, 4, 18),
(170, 1, 1, 15, 8, 5),
(171, 1, 1, 15, 9, 19),
(172, 1, 1, 15, 10, 3),
(173, 1, 1, 15, 22, 23),
(174, 1, 1, 15, 23, 15),
(175, 1, 1, 15, 26, 26);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `id_siswa` int(10) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id_mapel_siswa`, `tahun`, `semester`, `id_tingkat`, `id_kelas`, `id_mapel`, `id_siswa`, `aktif`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 2, 1, 0),
(3, 1, 1, 1, 1, 3, 1, 1),
(4, 1, 1, 1, 1, 4, 1, 1),
(5, 1, 1, 1, 1, 5, 1, 1),
(6, 1, 1, 1, 1, 6, 1, 1),
(7, 1, 1, 1, 1, 7, 1, 1),
(8, 1, 1, 1, 1, 8, 1, 1),
(9, 1, 1, 1, 1, 9, 1, 1),
(10, 1, 1, 1, 1, 10, 1, 1),
(11, 1, 1, 1, 1, 11, 1, 1),
(12, 1, 1, 1, 1, 17, 1, 1),
(13, 1, 1, 1, 1, 12, 1, 1),
(14, 1, 1, 1, 1, 1, 2, 1),
(15, 1, 1, 1, 1, 2, 2, 0),
(16, 1, 1, 1, 1, 3, 2, 1),
(17, 1, 1, 1, 1, 4, 2, 1),
(18, 1, 1, 1, 1, 5, 2, 1),
(19, 1, 1, 1, 1, 6, 2, 1),
(20, 1, 1, 1, 1, 7, 2, 1),
(21, 1, 1, 1, 1, 8, 2, 1),
(22, 1, 1, 1, 1, 9, 2, 1),
(23, 1, 1, 1, 1, 10, 2, 1),
(24, 1, 1, 1, 1, 11, 2, 1),
(25, 1, 1, 1, 1, 17, 2, 1),
(26, 1, 1, 1, 1, 12, 2, 1),
(27, 1, 1, 1, 1, 1, 3, 1),
(28, 1, 1, 1, 1, 2, 3, 0),
(29, 1, 1, 1, 1, 3, 3, 1),
(30, 1, 1, 1, 1, 4, 3, 1),
(31, 1, 1, 1, 1, 5, 3, 1),
(32, 1, 1, 1, 1, 6, 3, 1),
(33, 1, 1, 1, 1, 7, 3, 1),
(34, 1, 1, 1, 1, 8, 3, 1),
(35, 1, 1, 1, 1, 9, 3, 1),
(36, 1, 1, 1, 1, 10, 3, 1),
(37, 1, 1, 1, 1, 11, 3, 1),
(38, 1, 1, 1, 1, 17, 3, 1),
(39, 1, 1, 1, 1, 12, 3, 1),
(40, 1, 1, 1, 1, 1, 4, 1),
(41, 1, 1, 1, 1, 2, 4, 0),
(42, 1, 1, 1, 1, 3, 4, 1),
(43, 1, 1, 1, 1, 4, 4, 1),
(44, 1, 1, 1, 1, 5, 4, 1),
(45, 1, 1, 1, 1, 6, 4, 1),
(46, 1, 1, 1, 1, 7, 4, 1),
(47, 1, 1, 1, 1, 8, 4, 1),
(48, 1, 1, 1, 1, 9, 4, 1),
(49, 1, 1, 1, 1, 10, 4, 1),
(50, 1, 1, 1, 1, 11, 4, 1),
(51, 1, 1, 1, 1, 17, 4, 1),
(52, 1, 1, 1, 1, 12, 4, 1),
(53, 1, 1, 1, 1, 1, 5, 1),
(54, 1, 1, 1, 1, 2, 5, 0),
(55, 1, 1, 1, 1, 3, 5, 1),
(56, 1, 1, 1, 1, 4, 5, 1),
(57, 1, 1, 1, 1, 5, 5, 1),
(58, 1, 1, 1, 1, 6, 5, 1),
(59, 1, 1, 1, 1, 7, 5, 1),
(60, 1, 1, 1, 1, 8, 5, 1),
(61, 1, 1, 1, 1, 9, 5, 1),
(62, 1, 1, 1, 1, 10, 5, 1),
(63, 1, 1, 1, 1, 11, 5, 1),
(64, 1, 1, 1, 1, 17, 5, 1),
(65, 1, 1, 1, 1, 12, 5, 1),
(66, 1, 1, 1, 1, 1, 6, 1),
(67, 1, 1, 1, 1, 2, 6, 0),
(68, 1, 1, 1, 1, 3, 6, 1),
(69, 1, 1, 1, 1, 4, 6, 1),
(70, 1, 1, 1, 1, 5, 6, 1),
(71, 1, 1, 1, 1, 6, 6, 1),
(72, 1, 1, 1, 1, 7, 6, 1),
(73, 1, 1, 1, 1, 8, 6, 1),
(74, 1, 1, 1, 1, 9, 6, 1),
(75, 1, 1, 1, 1, 10, 6, 1),
(76, 1, 1, 1, 1, 11, 6, 1),
(77, 1, 1, 1, 1, 17, 6, 1),
(78, 1, 1, 1, 1, 12, 6, 1),
(79, 1, 1, 1, 1, 1, 7, 1),
(80, 1, 1, 1, 1, 2, 7, 0),
(81, 1, 1, 1, 1, 3, 7, 1),
(82, 1, 1, 1, 1, 4, 7, 1),
(83, 1, 1, 1, 1, 5, 7, 1),
(84, 1, 1, 1, 1, 6, 7, 1),
(85, 1, 1, 1, 1, 7, 7, 1),
(86, 1, 1, 1, 1, 8, 7, 1),
(87, 1, 1, 1, 1, 9, 7, 1),
(88, 1, 1, 1, 1, 10, 7, 1),
(89, 1, 1, 1, 1, 11, 7, 1),
(90, 1, 1, 1, 1, 17, 7, 1),
(91, 1, 1, 1, 1, 12, 7, 1),
(92, 1, 1, 1, 1, 1, 8, 1),
(93, 1, 1, 1, 1, 2, 8, 0),
(94, 1, 1, 1, 1, 3, 8, 1),
(95, 1, 1, 1, 1, 4, 8, 1),
(96, 1, 1, 1, 1, 5, 8, 1),
(97, 1, 1, 1, 1, 6, 8, 1),
(98, 1, 1, 1, 1, 7, 8, 1),
(99, 1, 1, 1, 1, 8, 8, 1),
(100, 1, 1, 1, 1, 9, 8, 1),
(101, 1, 1, 1, 1, 10, 8, 1),
(102, 1, 1, 1, 1, 11, 8, 1),
(103, 1, 1, 1, 1, 17, 8, 1),
(104, 1, 1, 1, 1, 12, 8, 1),
(105, 1, 1, 1, 1, 1, 9, 1),
(106, 1, 1, 1, 1, 2, 9, 0),
(107, 1, 1, 1, 1, 3, 9, 1),
(108, 1, 1, 1, 1, 4, 9, 1),
(109, 1, 1, 1, 1, 5, 9, 1),
(110, 1, 1, 1, 1, 6, 9, 1),
(111, 1, 1, 1, 1, 7, 9, 1),
(112, 1, 1, 1, 1, 8, 9, 1),
(113, 1, 1, 1, 1, 9, 9, 1),
(114, 1, 1, 1, 1, 10, 9, 1),
(115, 1, 1, 1, 1, 11, 9, 1),
(116, 1, 1, 1, 1, 17, 9, 1),
(117, 1, 1, 1, 1, 12, 9, 1),
(118, 1, 1, 1, 1, 1, 10, 1),
(119, 1, 1, 1, 1, 2, 10, 0),
(120, 1, 1, 1, 1, 3, 10, 1),
(121, 1, 1, 1, 1, 4, 10, 1),
(122, 1, 1, 1, 1, 5, 10, 1),
(123, 1, 1, 1, 1, 6, 10, 1),
(124, 1, 1, 1, 1, 7, 10, 1),
(125, 1, 1, 1, 1, 8, 10, 1),
(126, 1, 1, 1, 1, 9, 10, 1),
(127, 1, 1, 1, 1, 10, 10, 1),
(128, 1, 1, 1, 1, 11, 10, 1),
(129, 1, 1, 1, 1, 17, 10, 1),
(130, 1, 1, 1, 1, 12, 10, 1),
(131, 1, 1, 1, 1, 1, 11, 1),
(132, 1, 1, 1, 1, 2, 11, 0),
(133, 1, 1, 1, 1, 3, 11, 1),
(134, 1, 1, 1, 1, 4, 11, 1),
(135, 1, 1, 1, 1, 5, 11, 1),
(136, 1, 1, 1, 1, 6, 11, 1),
(137, 1, 1, 1, 1, 7, 11, 1),
(138, 1, 1, 1, 1, 8, 11, 1),
(139, 1, 1, 1, 1, 9, 11, 1),
(140, 1, 1, 1, 1, 10, 11, 1),
(141, 1, 1, 1, 1, 11, 11, 1),
(142, 1, 1, 1, 1, 17, 11, 1),
(143, 1, 1, 1, 1, 12, 11, 1),
(144, 1, 1, 1, 2, 1, 12, 1),
(145, 1, 1, 1, 2, 2, 12, 0),
(146, 1, 1, 1, 2, 3, 12, 1),
(147, 1, 1, 1, 2, 4, 12, 1),
(148, 1, 1, 1, 2, 5, 12, 1),
(149, 1, 1, 1, 2, 6, 12, 1),
(150, 1, 1, 1, 2, 7, 12, 1),
(151, 1, 1, 1, 2, 8, 12, 1),
(152, 1, 1, 1, 2, 9, 12, 1),
(153, 1, 1, 1, 2, 10, 12, 1),
(154, 1, 1, 1, 2, 11, 12, 1),
(155, 1, 1, 1, 2, 17, 12, 1),
(156, 1, 1, 1, 2, 13, 12, 1),
(157, 1, 1, 1, 2, 1, 13, 1),
(158, 1, 1, 1, 2, 2, 13, 0),
(159, 1, 1, 1, 2, 3, 13, 1),
(160, 1, 1, 1, 2, 4, 13, 1),
(161, 1, 1, 1, 2, 5, 13, 1),
(162, 1, 1, 1, 2, 6, 13, 1),
(163, 1, 1, 1, 2, 7, 13, 1),
(164, 1, 1, 1, 2, 8, 13, 1),
(165, 1, 1, 1, 2, 9, 13, 1),
(166, 1, 1, 1, 2, 10, 13, 1),
(167, 1, 1, 1, 2, 11, 13, 1),
(168, 1, 1, 1, 2, 17, 13, 1),
(169, 1, 1, 1, 2, 13, 13, 1),
(170, 1, 1, 1, 2, 1, 14, 1),
(171, 1, 1, 1, 2, 2, 14, 0),
(172, 1, 1, 1, 2, 3, 14, 1),
(173, 1, 1, 1, 2, 4, 14, 1),
(174, 1, 1, 1, 2, 5, 14, 1),
(175, 1, 1, 1, 2, 6, 14, 1),
(176, 1, 1, 1, 2, 7, 14, 1),
(177, 1, 1, 1, 2, 8, 14, 1),
(178, 1, 1, 1, 2, 9, 14, 1),
(179, 1, 1, 1, 2, 10, 14, 1),
(180, 1, 1, 1, 2, 11, 14, 1),
(181, 1, 1, 1, 2, 17, 14, 1),
(182, 1, 1, 1, 2, 13, 14, 1),
(183, 1, 1, 1, 2, 1, 15, 1),
(184, 1, 1, 1, 2, 2, 15, 0),
(185, 1, 1, 1, 2, 3, 15, 1),
(186, 1, 1, 1, 2, 4, 15, 1),
(187, 1, 1, 1, 2, 5, 15, 1),
(188, 1, 1, 1, 2, 6, 15, 1),
(189, 1, 1, 1, 2, 7, 15, 1),
(190, 1, 1, 1, 2, 8, 15, 1),
(191, 1, 1, 1, 2, 9, 15, 1),
(192, 1, 1, 1, 2, 10, 15, 1),
(193, 1, 1, 1, 2, 11, 15, 1),
(194, 1, 1, 1, 2, 17, 15, 1),
(195, 1, 1, 1, 2, 13, 15, 1),
(196, 1, 1, 1, 2, 1, 16, 1),
(197, 1, 1, 1, 2, 2, 16, 0),
(198, 1, 1, 1, 2, 3, 16, 1),
(199, 1, 1, 1, 2, 4, 16, 1),
(200, 1, 1, 1, 2, 5, 16, 1),
(201, 1, 1, 1, 2, 6, 16, 1),
(202, 1, 1, 1, 2, 7, 16, 1),
(203, 1, 1, 1, 2, 8, 16, 1),
(204, 1, 1, 1, 2, 9, 16, 1),
(205, 1, 1, 1, 2, 10, 16, 1),
(206, 1, 1, 1, 2, 11, 16, 1),
(207, 1, 1, 1, 2, 17, 16, 1),
(208, 1, 1, 1, 2, 13, 16, 1),
(209, 1, 1, 1, 2, 1, 17, 1),
(210, 1, 1, 1, 2, 2, 17, 0),
(211, 1, 1, 1, 2, 3, 17, 1),
(212, 1, 1, 1, 2, 4, 17, 1),
(213, 1, 1, 1, 2, 5, 17, 1),
(214, 1, 1, 1, 2, 6, 17, 1),
(215, 1, 1, 1, 2, 7, 17, 1),
(216, 1, 1, 1, 2, 8, 17, 1),
(217, 1, 1, 1, 2, 9, 17, 1),
(218, 1, 1, 1, 2, 10, 17, 1),
(219, 1, 1, 1, 2, 11, 17, 1),
(220, 1, 1, 1, 2, 17, 17, 1),
(221, 1, 1, 1, 2, 13, 17, 1),
(222, 1, 1, 1, 2, 1, 18, 1),
(223, 1, 1, 1, 2, 2, 18, 0),
(224, 1, 1, 1, 2, 3, 18, 1),
(225, 1, 1, 1, 2, 4, 18, 1),
(226, 1, 1, 1, 2, 5, 18, 1),
(227, 1, 1, 1, 2, 6, 18, 1),
(228, 1, 1, 1, 2, 7, 18, 1),
(229, 1, 1, 1, 2, 8, 18, 1),
(230, 1, 1, 1, 2, 9, 18, 1),
(231, 1, 1, 1, 2, 10, 18, 1),
(232, 1, 1, 1, 2, 11, 18, 1),
(233, 1, 1, 1, 2, 17, 18, 1),
(234, 1, 1, 1, 2, 13, 18, 1),
(235, 1, 1, 1, 2, 1, 19, 1),
(236, 1, 1, 1, 2, 2, 19, 0),
(237, 1, 1, 1, 2, 3, 19, 1),
(238, 1, 1, 1, 2, 4, 19, 1),
(239, 1, 1, 1, 2, 5, 19, 1),
(240, 1, 1, 1, 2, 6, 19, 1),
(241, 1, 1, 1, 2, 7, 19, 1),
(242, 1, 1, 1, 2, 8, 19, 1),
(243, 1, 1, 1, 2, 9, 19, 1),
(244, 1, 1, 1, 2, 10, 19, 1),
(245, 1, 1, 1, 2, 11, 19, 1),
(246, 1, 1, 1, 2, 17, 19, 1),
(247, 1, 1, 1, 2, 13, 19, 1),
(248, 1, 1, 1, 2, 1, 20, 1),
(249, 1, 1, 1, 2, 2, 20, 0),
(250, 1, 1, 1, 2, 3, 20, 1),
(251, 1, 1, 1, 2, 4, 20, 1),
(252, 1, 1, 1, 2, 5, 20, 1),
(253, 1, 1, 1, 2, 6, 20, 1),
(254, 1, 1, 1, 2, 7, 20, 1),
(255, 1, 1, 1, 2, 8, 20, 1),
(256, 1, 1, 1, 2, 9, 20, 1),
(257, 1, 1, 1, 2, 10, 20, 1),
(258, 1, 1, 1, 2, 11, 20, 1),
(259, 1, 1, 1, 2, 17, 20, 1),
(260, 1, 1, 1, 2, 13, 20, 1),
(261, 1, 1, 1, 2, 1, 21, 1),
(262, 1, 1, 1, 2, 2, 21, 0),
(263, 1, 1, 1, 2, 3, 21, 1),
(264, 1, 1, 1, 2, 4, 21, 1),
(265, 1, 1, 1, 2, 5, 21, 1),
(266, 1, 1, 1, 2, 6, 21, 1),
(267, 1, 1, 1, 2, 7, 21, 1),
(268, 1, 1, 1, 2, 8, 21, 1),
(269, 1, 1, 1, 2, 9, 21, 1),
(270, 1, 1, 1, 2, 10, 21, 1),
(271, 1, 1, 1, 2, 11, 21, 1),
(272, 1, 1, 1, 2, 17, 21, 1),
(273, 1, 1, 1, 2, 13, 21, 1),
(274, 1, 1, 1, 2, 1, 22, 1),
(275, 1, 1, 1, 2, 2, 22, 0),
(276, 1, 1, 1, 2, 3, 22, 1),
(277, 1, 1, 1, 2, 4, 22, 1),
(278, 1, 1, 1, 2, 5, 22, 1),
(279, 1, 1, 1, 2, 6, 22, 1),
(280, 1, 1, 1, 2, 7, 22, 1),
(281, 1, 1, 1, 2, 8, 22, 1),
(282, 1, 1, 1, 2, 9, 22, 1),
(283, 1, 1, 1, 2, 10, 22, 1),
(284, 1, 1, 1, 2, 11, 22, 1),
(285, 1, 1, 1, 2, 17, 22, 1),
(286, 1, 1, 1, 2, 13, 22, 1),
(287, 1, 1, 1, 2, 1, 23, 1),
(288, 1, 1, 1, 2, 2, 23, 0),
(289, 1, 1, 1, 2, 3, 23, 1),
(290, 1, 1, 1, 2, 4, 23, 1),
(291, 1, 1, 1, 2, 5, 23, 1),
(292, 1, 1, 1, 2, 6, 23, 1),
(293, 1, 1, 1, 2, 7, 23, 1),
(294, 1, 1, 1, 2, 8, 23, 1),
(295, 1, 1, 1, 2, 9, 23, 1),
(296, 1, 1, 1, 2, 10, 23, 1),
(297, 1, 1, 1, 2, 11, 23, 1),
(298, 1, 1, 1, 2, 17, 23, 1),
(299, 1, 1, 1, 2, 13, 23, 1),
(300, 1, 1, 1, 2, 1, 24, 1),
(301, 1, 1, 1, 2, 2, 24, 0),
(302, 1, 1, 1, 2, 3, 24, 1),
(303, 1, 1, 1, 2, 4, 24, 1),
(304, 1, 1, 1, 2, 5, 24, 1),
(305, 1, 1, 1, 2, 6, 24, 1),
(306, 1, 1, 1, 2, 7, 24, 1),
(307, 1, 1, 1, 2, 8, 24, 1),
(308, 1, 1, 1, 2, 9, 24, 1),
(309, 1, 1, 1, 2, 10, 24, 1),
(310, 1, 1, 1, 2, 11, 24, 1),
(311, 1, 1, 1, 2, 17, 24, 1),
(312, 1, 1, 1, 2, 13, 24, 1),
(313, 1, 1, 1, 2, 1, 25, 1),
(314, 1, 1, 1, 2, 2, 25, 0),
(315, 1, 1, 1, 2, 3, 25, 1),
(316, 1, 1, 1, 2, 4, 25, 1),
(317, 1, 1, 1, 2, 5, 25, 1),
(318, 1, 1, 1, 2, 6, 25, 1),
(319, 1, 1, 1, 2, 7, 25, 1),
(320, 1, 1, 1, 2, 8, 25, 1),
(321, 1, 1, 1, 2, 9, 25, 1),
(322, 1, 1, 1, 2, 10, 25, 1),
(323, 1, 1, 1, 2, 11, 25, 1),
(324, 1, 1, 1, 2, 17, 25, 1),
(325, 1, 1, 1, 2, 13, 25, 1),
(326, 1, 1, 1, 2, 1, 26, 1),
(327, 1, 1, 1, 2, 2, 26, 0),
(328, 1, 1, 1, 2, 3, 26, 1),
(329, 1, 1, 1, 2, 4, 26, 1),
(330, 1, 1, 1, 2, 5, 26, 1),
(331, 1, 1, 1, 2, 6, 26, 1),
(332, 1, 1, 1, 2, 7, 26, 1),
(333, 1, 1, 1, 2, 8, 26, 1),
(334, 1, 1, 1, 2, 9, 26, 1),
(335, 1, 1, 1, 2, 10, 26, 1),
(336, 1, 1, 1, 2, 11, 26, 1),
(337, 1, 1, 1, 2, 17, 26, 1),
(338, 1, 1, 1, 2, 13, 26, 1),
(339, 1, 1, 1, 2, 1, 27, 1),
(340, 1, 1, 1, 2, 2, 27, 0),
(341, 1, 1, 1, 2, 3, 27, 1),
(342, 1, 1, 1, 2, 4, 27, 1),
(343, 1, 1, 1, 2, 5, 27, 1),
(344, 1, 1, 1, 2, 6, 27, 1),
(345, 1, 1, 1, 2, 7, 27, 1),
(346, 1, 1, 1, 2, 8, 27, 1),
(347, 1, 1, 1, 2, 9, 27, 1),
(348, 1, 1, 1, 2, 10, 27, 1),
(349, 1, 1, 1, 2, 11, 27, 1),
(350, 1, 1, 1, 2, 17, 27, 1),
(351, 1, 1, 1, 2, 13, 27, 1),
(352, 1, 1, 1, 2, 1, 28, 1),
(353, 1, 1, 1, 2, 2, 28, 0),
(354, 1, 1, 1, 2, 3, 28, 1),
(355, 1, 1, 1, 2, 4, 28, 1),
(356, 1, 1, 1, 2, 5, 28, 1),
(357, 1, 1, 1, 2, 6, 28, 1),
(358, 1, 1, 1, 2, 7, 28, 1),
(359, 1, 1, 1, 2, 8, 28, 1),
(360, 1, 1, 1, 2, 9, 28, 1),
(361, 1, 1, 1, 2, 10, 28, 1),
(362, 1, 1, 1, 2, 11, 28, 1),
(363, 1, 1, 1, 2, 17, 28, 1),
(364, 1, 1, 1, 2, 13, 28, 1),
(365, 1, 1, 1, 3, 1, 60, 1),
(366, 1, 1, 1, 3, 2, 60, 0),
(367, 1, 1, 1, 3, 3, 60, 1),
(368, 1, 1, 1, 3, 4, 60, 1),
(369, 1, 1, 1, 3, 5, 60, 1),
(370, 1, 1, 1, 3, 6, 60, 1),
(371, 1, 1, 1, 3, 7, 60, 1),
(372, 1, 1, 1, 3, 8, 60, 1),
(373, 1, 1, 1, 3, 9, 60, 1),
(374, 1, 1, 1, 3, 10, 60, 1),
(375, 1, 1, 1, 3, 11, 60, 1),
(376, 1, 1, 1, 3, 17, 60, 1),
(377, 1, 1, 1, 3, 14, 60, 1),
(378, 1, 1, 1, 3, 1, 61, 1),
(379, 1, 1, 1, 3, 2, 61, 0),
(380, 1, 1, 1, 3, 3, 61, 1),
(381, 1, 1, 1, 3, 4, 61, 1),
(382, 1, 1, 1, 3, 5, 61, 1),
(383, 1, 1, 1, 3, 6, 61, 1),
(384, 1, 1, 1, 3, 7, 61, 1),
(385, 1, 1, 1, 3, 8, 61, 1),
(386, 1, 1, 1, 3, 9, 61, 1),
(387, 1, 1, 1, 3, 10, 61, 1),
(388, 1, 1, 1, 3, 11, 61, 1),
(389, 1, 1, 1, 3, 17, 61, 1),
(390, 1, 1, 1, 3, 14, 61, 1),
(391, 1, 1, 1, 3, 1, 62, 1),
(392, 1, 1, 1, 3, 2, 62, 0),
(393, 1, 1, 1, 3, 3, 62, 1),
(394, 1, 1, 1, 3, 4, 62, 1),
(395, 1, 1, 1, 3, 5, 62, 1),
(396, 1, 1, 1, 3, 6, 62, 1),
(397, 1, 1, 1, 3, 7, 62, 1),
(398, 1, 1, 1, 3, 8, 62, 1),
(399, 1, 1, 1, 3, 9, 62, 1),
(400, 1, 1, 1, 3, 10, 62, 1),
(401, 1, 1, 1, 3, 11, 62, 1),
(402, 1, 1, 1, 3, 17, 62, 1),
(403, 1, 1, 1, 3, 14, 62, 1),
(404, 1, 1, 1, 3, 1, 63, 1),
(405, 1, 1, 1, 3, 2, 63, 0),
(406, 1, 1, 1, 3, 3, 63, 1),
(407, 1, 1, 1, 3, 4, 63, 1),
(408, 1, 1, 1, 3, 5, 63, 1),
(409, 1, 1, 1, 3, 6, 63, 1),
(410, 1, 1, 1, 3, 7, 63, 1),
(411, 1, 1, 1, 3, 8, 63, 1),
(412, 1, 1, 1, 3, 9, 63, 1),
(413, 1, 1, 1, 3, 10, 63, 1),
(414, 1, 1, 1, 3, 11, 63, 1),
(415, 1, 1, 1, 3, 17, 63, 1),
(416, 1, 1, 1, 3, 14, 63, 1),
(417, 1, 1, 1, 3, 1, 64, 1),
(418, 1, 1, 1, 3, 2, 64, 0),
(419, 1, 1, 1, 3, 3, 64, 1),
(420, 1, 1, 1, 3, 4, 64, 1),
(421, 1, 1, 1, 3, 5, 64, 1),
(422, 1, 1, 1, 3, 6, 64, 1),
(423, 1, 1, 1, 3, 7, 64, 1),
(424, 1, 1, 1, 3, 8, 64, 1),
(425, 1, 1, 1, 3, 9, 64, 1),
(426, 1, 1, 1, 3, 10, 64, 1),
(427, 1, 1, 1, 3, 11, 64, 1),
(428, 1, 1, 1, 3, 17, 64, 1),
(429, 1, 1, 1, 3, 14, 64, 1),
(430, 1, 1, 1, 3, 1, 65, 1),
(431, 1, 1, 1, 3, 2, 65, 0),
(432, 1, 1, 1, 3, 3, 65, 1),
(433, 1, 1, 1, 3, 4, 65, 1),
(434, 1, 1, 1, 3, 5, 65, 1),
(435, 1, 1, 1, 3, 6, 65, 1),
(436, 1, 1, 1, 3, 7, 65, 1),
(437, 1, 1, 1, 3, 8, 65, 1),
(438, 1, 1, 1, 3, 9, 65, 1),
(439, 1, 1, 1, 3, 10, 65, 1),
(440, 1, 1, 1, 3, 11, 65, 1),
(441, 1, 1, 1, 3, 17, 65, 1),
(442, 1, 1, 1, 3, 14, 65, 1),
(443, 1, 1, 1, 3, 1, 66, 1),
(444, 1, 1, 1, 3, 2, 66, 0),
(445, 1, 1, 1, 3, 3, 66, 1),
(446, 1, 1, 1, 3, 4, 66, 1),
(447, 1, 1, 1, 3, 5, 66, 1),
(448, 1, 1, 1, 3, 6, 66, 1),
(449, 1, 1, 1, 3, 7, 66, 1),
(450, 1, 1, 1, 3, 8, 66, 1),
(451, 1, 1, 1, 3, 9, 66, 1),
(452, 1, 1, 1, 3, 10, 66, 1),
(453, 1, 1, 1, 3, 11, 66, 1),
(454, 1, 1, 1, 3, 17, 66, 1),
(455, 1, 1, 1, 3, 14, 66, 1),
(456, 1, 1, 1, 3, 1, 67, 1),
(457, 1, 1, 1, 3, 2, 67, 0),
(458, 1, 1, 1, 3, 3, 67, 1),
(459, 1, 1, 1, 3, 4, 67, 1),
(460, 1, 1, 1, 3, 5, 67, 1),
(461, 1, 1, 1, 3, 6, 67, 1),
(462, 1, 1, 1, 3, 7, 67, 1),
(463, 1, 1, 1, 3, 8, 67, 1),
(464, 1, 1, 1, 3, 9, 67, 1),
(465, 1, 1, 1, 3, 10, 67, 1),
(466, 1, 1, 1, 3, 11, 67, 1),
(467, 1, 1, 1, 3, 17, 67, 1),
(468, 1, 1, 1, 3, 14, 67, 1),
(469, 1, 1, 1, 3, 1, 68, 1),
(470, 1, 1, 1, 3, 2, 68, 0),
(471, 1, 1, 1, 3, 3, 68, 1),
(472, 1, 1, 1, 3, 4, 68, 1),
(473, 1, 1, 1, 3, 5, 68, 1),
(474, 1, 1, 1, 3, 6, 68, 1),
(475, 1, 1, 1, 3, 7, 68, 1),
(476, 1, 1, 1, 3, 8, 68, 1),
(477, 1, 1, 1, 3, 9, 68, 1),
(478, 1, 1, 1, 3, 10, 68, 1),
(479, 1, 1, 1, 3, 11, 68, 1),
(480, 1, 1, 1, 3, 17, 68, 1),
(481, 1, 1, 1, 3, 14, 68, 1),
(482, 1, 1, 1, 3, 1, 69, 1),
(483, 1, 1, 1, 3, 2, 69, 0),
(484, 1, 1, 1, 3, 3, 69, 1),
(485, 1, 1, 1, 3, 4, 69, 1),
(486, 1, 1, 1, 3, 5, 69, 1),
(487, 1, 1, 1, 3, 6, 69, 1),
(488, 1, 1, 1, 3, 7, 69, 1),
(489, 1, 1, 1, 3, 8, 69, 1),
(490, 1, 1, 1, 3, 9, 69, 1),
(491, 1, 1, 1, 3, 10, 69, 1),
(492, 1, 1, 1, 3, 11, 69, 1),
(493, 1, 1, 1, 3, 17, 69, 1),
(494, 1, 1, 1, 3, 14, 69, 1),
(495, 1, 1, 1, 3, 1, 70, 1),
(496, 1, 1, 1, 3, 2, 70, 0),
(497, 1, 1, 1, 3, 3, 70, 1),
(498, 1, 1, 1, 3, 4, 70, 1),
(499, 1, 1, 1, 3, 5, 70, 1),
(500, 1, 1, 1, 3, 6, 70, 1),
(501, 1, 1, 1, 3, 7, 70, 1),
(502, 1, 1, 1, 3, 8, 70, 1),
(503, 1, 1, 1, 3, 9, 70, 1),
(504, 1, 1, 1, 3, 10, 70, 1),
(505, 1, 1, 1, 3, 11, 70, 1),
(506, 1, 1, 1, 3, 17, 70, 1),
(507, 1, 1, 1, 3, 14, 70, 1),
(508, 1, 1, 1, 3, 1, 71, 0),
(509, 1, 1, 1, 3, 2, 71, 1),
(510, 1, 1, 1, 3, 3, 71, 1),
(511, 1, 1, 1, 3, 4, 71, 1),
(512, 1, 1, 1, 3, 5, 71, 1),
(513, 1, 1, 1, 3, 6, 71, 1),
(514, 1, 1, 1, 3, 7, 71, 1),
(515, 1, 1, 1, 3, 8, 71, 1),
(516, 1, 1, 1, 3, 9, 71, 1),
(517, 1, 1, 1, 3, 10, 71, 1),
(518, 1, 1, 1, 3, 11, 71, 1),
(519, 1, 1, 1, 3, 17, 71, 1),
(520, 1, 1, 1, 3, 14, 71, 1),
(521, 1, 1, 1, 3, 1, 72, 1),
(522, 1, 1, 1, 3, 2, 72, 0),
(523, 1, 1, 1, 3, 3, 72, 1),
(524, 1, 1, 1, 3, 4, 72, 1),
(525, 1, 1, 1, 3, 5, 72, 1),
(526, 1, 1, 1, 3, 6, 72, 1),
(527, 1, 1, 1, 3, 7, 72, 1),
(528, 1, 1, 1, 3, 8, 72, 1),
(529, 1, 1, 1, 3, 9, 72, 1),
(530, 1, 1, 1, 3, 10, 72, 1),
(531, 1, 1, 1, 3, 11, 72, 1),
(532, 1, 1, 1, 3, 17, 72, 1),
(533, 1, 1, 1, 3, 14, 72, 1),
(534, 1, 1, 1, 3, 1, 73, 1),
(535, 1, 1, 1, 3, 2, 73, 0),
(536, 1, 1, 1, 3, 3, 73, 1),
(537, 1, 1, 1, 3, 4, 73, 1),
(538, 1, 1, 1, 3, 5, 73, 1),
(539, 1, 1, 1, 3, 6, 73, 1),
(540, 1, 1, 1, 3, 7, 73, 1),
(541, 1, 1, 1, 3, 8, 73, 1),
(542, 1, 1, 1, 3, 9, 73, 1),
(543, 1, 1, 1, 3, 10, 73, 1),
(544, 1, 1, 1, 3, 11, 73, 1),
(545, 1, 1, 1, 3, 17, 73, 1),
(546, 1, 1, 1, 3, 14, 73, 1),
(547, 1, 1, 1, 3, 1, 74, 1),
(548, 1, 1, 1, 3, 2, 74, 0),
(549, 1, 1, 1, 3, 3, 74, 1),
(550, 1, 1, 1, 3, 4, 74, 1),
(551, 1, 1, 1, 3, 5, 74, 1),
(552, 1, 1, 1, 3, 6, 74, 1),
(553, 1, 1, 1, 3, 7, 74, 1),
(554, 1, 1, 1, 3, 8, 74, 1),
(555, 1, 1, 1, 3, 9, 74, 1),
(556, 1, 1, 1, 3, 10, 74, 1),
(557, 1, 1, 1, 3, 11, 74, 1),
(558, 1, 1, 1, 3, 17, 74, 1),
(559, 1, 1, 1, 3, 14, 74, 1),
(560, 1, 1, 1, 3, 1, 75, 1),
(561, 1, 1, 1, 3, 2, 75, 0),
(562, 1, 1, 1, 3, 3, 75, 1),
(563, 1, 1, 1, 3, 4, 75, 1),
(564, 1, 1, 1, 3, 5, 75, 1),
(565, 1, 1, 1, 3, 6, 75, 1),
(566, 1, 1, 1, 3, 7, 75, 1),
(567, 1, 1, 1, 3, 8, 75, 1),
(568, 1, 1, 1, 3, 9, 75, 1),
(569, 1, 1, 1, 3, 10, 75, 1),
(570, 1, 1, 1, 3, 11, 75, 1),
(571, 1, 1, 1, 3, 17, 75, 1),
(572, 1, 1, 1, 3, 14, 75, 1),
(573, 1, 1, 1, 3, 1, 76, 1),
(574, 1, 1, 1, 3, 2, 76, 0),
(575, 1, 1, 1, 3, 3, 76, 1),
(576, 1, 1, 1, 3, 4, 76, 1),
(577, 1, 1, 1, 3, 5, 76, 1),
(578, 1, 1, 1, 3, 6, 76, 1),
(579, 1, 1, 1, 3, 7, 76, 1),
(580, 1, 1, 1, 3, 8, 76, 1),
(581, 1, 1, 1, 3, 9, 76, 1),
(582, 1, 1, 1, 3, 10, 76, 1),
(583, 1, 1, 1, 3, 11, 76, 1),
(584, 1, 1, 1, 3, 17, 76, 1),
(585, 1, 1, 1, 3, 14, 76, 1),
(586, 1, 1, 1, 3, 1, 77, 1),
(587, 1, 1, 1, 3, 2, 77, 0),
(588, 1, 1, 1, 3, 3, 77, 1),
(589, 1, 1, 1, 3, 4, 77, 1),
(590, 1, 1, 1, 3, 5, 77, 1),
(591, 1, 1, 1, 3, 6, 77, 1),
(592, 1, 1, 1, 3, 7, 77, 1),
(593, 1, 1, 1, 3, 8, 77, 1),
(594, 1, 1, 1, 3, 9, 77, 1),
(595, 1, 1, 1, 3, 10, 77, 1),
(596, 1, 1, 1, 3, 11, 77, 1),
(597, 1, 1, 1, 3, 17, 77, 1),
(598, 1, 1, 1, 3, 14, 77, 1),
(599, 1, 1, 1, 3, 1, 78, 1),
(600, 1, 1, 1, 3, 2, 78, 0),
(601, 1, 1, 1, 3, 3, 78, 1),
(602, 1, 1, 1, 3, 4, 78, 1),
(603, 1, 1, 1, 3, 5, 78, 1),
(604, 1, 1, 1, 3, 6, 78, 1),
(605, 1, 1, 1, 3, 7, 78, 1),
(606, 1, 1, 1, 3, 8, 78, 1),
(607, 1, 1, 1, 3, 9, 78, 1),
(608, 1, 1, 1, 3, 10, 78, 1),
(609, 1, 1, 1, 3, 11, 78, 1),
(610, 1, 1, 1, 3, 17, 78, 1),
(611, 1, 1, 1, 3, 14, 78, 1),
(612, 1, 1, 1, 3, 1, 79, 1),
(613, 1, 1, 1, 3, 2, 79, 0),
(614, 1, 1, 1, 3, 3, 79, 1),
(615, 1, 1, 1, 3, 4, 79, 1),
(616, 1, 1, 1, 3, 5, 79, 1),
(617, 1, 1, 1, 3, 6, 79, 1),
(618, 1, 1, 1, 3, 7, 79, 1),
(619, 1, 1, 1, 3, 8, 79, 1),
(620, 1, 1, 1, 3, 9, 79, 1),
(621, 1, 1, 1, 3, 10, 79, 1),
(622, 1, 1, 1, 3, 11, 79, 1),
(623, 1, 1, 1, 3, 17, 79, 1),
(624, 1, 1, 1, 3, 14, 79, 1),
(625, 1, 1, 1, 4, 1, 80, 0),
(626, 1, 1, 1, 4, 2, 80, 1),
(627, 1, 1, 1, 4, 3, 80, 1),
(628, 1, 1, 1, 4, 4, 80, 1),
(629, 1, 1, 1, 4, 5, 80, 1),
(630, 1, 1, 1, 4, 6, 80, 1),
(631, 1, 1, 1, 4, 7, 80, 1),
(632, 1, 1, 1, 4, 8, 80, 1),
(633, 1, 1, 1, 4, 9, 80, 1),
(634, 1, 1, 1, 4, 10, 80, 1),
(635, 1, 1, 1, 4, 11, 80, 1),
(636, 1, 1, 1, 4, 17, 80, 1),
(637, 1, 1, 1, 4, 15, 80, 1),
(638, 1, 1, 1, 4, 1, 81, 1),
(639, 1, 1, 1, 4, 2, 81, 0),
(640, 1, 1, 1, 4, 3, 81, 1),
(641, 1, 1, 1, 4, 4, 81, 1),
(642, 1, 1, 1, 4, 5, 81, 1),
(643, 1, 1, 1, 4, 6, 81, 1),
(644, 1, 1, 1, 4, 7, 81, 1),
(645, 1, 1, 1, 4, 8, 81, 1),
(646, 1, 1, 1, 4, 9, 81, 1),
(647, 1, 1, 1, 4, 10, 81, 1),
(648, 1, 1, 1, 4, 11, 81, 1),
(649, 1, 1, 1, 4, 17, 81, 1),
(650, 1, 1, 1, 4, 15, 81, 1),
(651, 1, 1, 1, 4, 1, 82, 0),
(652, 1, 1, 1, 4, 2, 82, 1),
(653, 1, 1, 1, 4, 3, 82, 1),
(654, 1, 1, 1, 4, 4, 82, 1),
(655, 1, 1, 1, 4, 5, 82, 1),
(656, 1, 1, 1, 4, 6, 82, 1),
(657, 1, 1, 1, 4, 7, 82, 1),
(658, 1, 1, 1, 4, 8, 82, 1),
(659, 1, 1, 1, 4, 9, 82, 1),
(660, 1, 1, 1, 4, 10, 82, 1),
(661, 1, 1, 1, 4, 11, 82, 1),
(662, 1, 1, 1, 4, 17, 82, 1),
(663, 1, 1, 1, 4, 15, 82, 1),
(664, 1, 1, 1, 4, 1, 83, 1),
(665, 1, 1, 1, 4, 2, 83, 0),
(666, 1, 1, 1, 4, 3, 83, 1),
(667, 1, 1, 1, 4, 4, 83, 1),
(668, 1, 1, 1, 4, 5, 83, 1),
(669, 1, 1, 1, 4, 6, 83, 1),
(670, 1, 1, 1, 4, 7, 83, 1),
(671, 1, 1, 1, 4, 8, 83, 1),
(672, 1, 1, 1, 4, 9, 83, 1),
(673, 1, 1, 1, 4, 10, 83, 1),
(674, 1, 1, 1, 4, 11, 83, 1),
(675, 1, 1, 1, 4, 17, 83, 1),
(676, 1, 1, 1, 4, 15, 83, 1),
(677, 1, 1, 1, 4, 1, 84, 1),
(678, 1, 1, 1, 4, 2, 84, 0),
(679, 1, 1, 1, 4, 3, 84, 1),
(680, 1, 1, 1, 4, 4, 84, 1),
(681, 1, 1, 1, 4, 5, 84, 1),
(682, 1, 1, 1, 4, 6, 84, 1),
(683, 1, 1, 1, 4, 7, 84, 1),
(684, 1, 1, 1, 4, 8, 84, 1),
(685, 1, 1, 1, 4, 9, 84, 1),
(686, 1, 1, 1, 4, 10, 84, 1),
(687, 1, 1, 1, 4, 11, 84, 1),
(688, 1, 1, 1, 4, 17, 84, 1),
(689, 1, 1, 1, 4, 15, 84, 1),
(690, 1, 1, 1, 4, 1, 85, 1),
(691, 1, 1, 1, 4, 2, 85, 0),
(692, 1, 1, 1, 4, 3, 85, 1),
(693, 1, 1, 1, 4, 4, 85, 1),
(694, 1, 1, 1, 4, 5, 85, 1),
(695, 1, 1, 1, 4, 6, 85, 1),
(696, 1, 1, 1, 4, 7, 85, 1),
(697, 1, 1, 1, 4, 8, 85, 1),
(698, 1, 1, 1, 4, 9, 85, 1),
(699, 1, 1, 1, 4, 10, 85, 1),
(700, 1, 1, 1, 4, 11, 85, 1),
(701, 1, 1, 1, 4, 17, 85, 1),
(702, 1, 1, 1, 4, 15, 85, 1),
(703, 1, 1, 1, 4, 1, 86, 1),
(704, 1, 1, 1, 4, 2, 86, 0),
(705, 1, 1, 1, 4, 3, 86, 1),
(706, 1, 1, 1, 4, 4, 86, 1),
(707, 1, 1, 1, 4, 5, 86, 1),
(708, 1, 1, 1, 4, 6, 86, 1),
(709, 1, 1, 1, 4, 7, 86, 1),
(710, 1, 1, 1, 4, 8, 86, 1),
(711, 1, 1, 1, 4, 9, 86, 1),
(712, 1, 1, 1, 4, 10, 86, 1),
(713, 1, 1, 1, 4, 11, 86, 1),
(714, 1, 1, 1, 4, 17, 86, 1),
(715, 1, 1, 1, 4, 15, 86, 1),
(716, 1, 1, 1, 5, 1, 29, 1),
(717, 1, 1, 1, 5, 2, 29, 0),
(718, 1, 1, 1, 5, 3, 29, 1),
(719, 1, 1, 1, 5, 4, 29, 1),
(720, 1, 1, 1, 5, 5, 29, 1),
(721, 1, 1, 1, 5, 6, 29, 1),
(722, 1, 1, 1, 5, 7, 29, 1),
(723, 1, 1, 1, 5, 8, 29, 1),
(724, 1, 1, 1, 5, 9, 29, 1),
(725, 1, 1, 1, 5, 10, 29, 1),
(726, 1, 1, 1, 5, 11, 29, 1),
(727, 1, 1, 1, 5, 17, 29, 1),
(728, 1, 1, 1, 5, 16, 29, 1),
(729, 1, 1, 1, 5, 1, 30, 1),
(730, 1, 1, 1, 5, 2, 30, 0),
(731, 1, 1, 1, 5, 3, 30, 1),
(732, 1, 1, 1, 5, 4, 30, 1),
(733, 1, 1, 1, 5, 5, 30, 1),
(734, 1, 1, 1, 5, 6, 30, 1),
(735, 1, 1, 1, 5, 7, 30, 1),
(736, 1, 1, 1, 5, 8, 30, 1),
(737, 1, 1, 1, 5, 9, 30, 1),
(738, 1, 1, 1, 5, 10, 30, 1),
(739, 1, 1, 1, 5, 11, 30, 1),
(740, 1, 1, 1, 5, 17, 30, 1),
(741, 1, 1, 1, 5, 16, 30, 1),
(742, 1, 1, 1, 5, 1, 31, 1),
(743, 1, 1, 1, 5, 2, 31, 0),
(744, 1, 1, 1, 5, 3, 31, 1),
(745, 1, 1, 1, 5, 4, 31, 1),
(746, 1, 1, 1, 5, 5, 31, 1),
(747, 1, 1, 1, 5, 6, 31, 1),
(748, 1, 1, 1, 5, 7, 31, 1),
(749, 1, 1, 1, 5, 8, 31, 1),
(750, 1, 1, 1, 5, 9, 31, 1),
(751, 1, 1, 1, 5, 10, 31, 1),
(752, 1, 1, 1, 5, 11, 31, 1),
(753, 1, 1, 1, 5, 17, 31, 1),
(754, 1, 1, 1, 5, 16, 31, 1),
(755, 1, 1, 1, 5, 1, 32, 1),
(756, 1, 1, 1, 5, 2, 32, 0),
(757, 1, 1, 1, 5, 3, 32, 1),
(758, 1, 1, 1, 5, 4, 32, 1),
(759, 1, 1, 1, 5, 5, 32, 1),
(760, 1, 1, 1, 5, 6, 32, 1),
(761, 1, 1, 1, 5, 7, 32, 1),
(762, 1, 1, 1, 5, 8, 32, 1),
(763, 1, 1, 1, 5, 9, 32, 1),
(764, 1, 1, 1, 5, 10, 32, 1),
(765, 1, 1, 1, 5, 11, 32, 1),
(766, 1, 1, 1, 5, 17, 32, 1),
(767, 1, 1, 1, 5, 16, 32, 1),
(768, 1, 1, 1, 5, 1, 33, 1),
(769, 1, 1, 1, 5, 2, 33, 0),
(770, 1, 1, 1, 5, 3, 33, 1),
(771, 1, 1, 1, 5, 4, 33, 1),
(772, 1, 1, 1, 5, 5, 33, 1),
(773, 1, 1, 1, 5, 6, 33, 1),
(774, 1, 1, 1, 5, 7, 33, 1),
(775, 1, 1, 1, 5, 8, 33, 1),
(776, 1, 1, 1, 5, 9, 33, 1),
(777, 1, 1, 1, 5, 10, 33, 1),
(778, 1, 1, 1, 5, 11, 33, 1),
(779, 1, 1, 1, 5, 17, 33, 1),
(780, 1, 1, 1, 5, 16, 33, 1),
(781, 1, 1, 1, 5, 1, 34, 1),
(782, 1, 1, 1, 5, 2, 34, 0),
(783, 1, 1, 1, 5, 3, 34, 1),
(784, 1, 1, 1, 5, 4, 34, 1),
(785, 1, 1, 1, 5, 5, 34, 1),
(786, 1, 1, 1, 5, 6, 34, 1),
(787, 1, 1, 1, 5, 7, 34, 1),
(788, 1, 1, 1, 5, 8, 34, 1),
(789, 1, 1, 1, 5, 9, 34, 1),
(790, 1, 1, 1, 5, 10, 34, 1),
(791, 1, 1, 1, 5, 11, 34, 1),
(792, 1, 1, 1, 5, 17, 34, 1),
(793, 1, 1, 1, 5, 16, 34, 1),
(794, 1, 1, 1, 5, 1, 35, 1),
(795, 1, 1, 1, 5, 2, 35, 0),
(796, 1, 1, 1, 5, 3, 35, 1),
(797, 1, 1, 1, 5, 4, 35, 1),
(798, 1, 1, 1, 5, 5, 35, 1),
(799, 1, 1, 1, 5, 6, 35, 1),
(800, 1, 1, 1, 5, 7, 35, 1),
(801, 1, 1, 1, 5, 8, 35, 1),
(802, 1, 1, 1, 5, 9, 35, 1),
(803, 1, 1, 1, 5, 10, 35, 1),
(804, 1, 1, 1, 5, 11, 35, 1),
(805, 1, 1, 1, 5, 17, 35, 1),
(806, 1, 1, 1, 5, 16, 35, 1),
(807, 1, 1, 1, 5, 1, 36, 0),
(808, 1, 1, 1, 5, 2, 36, 1),
(809, 1, 1, 1, 5, 3, 36, 1),
(810, 1, 1, 1, 5, 4, 36, 1),
(811, 1, 1, 1, 5, 5, 36, 1),
(812, 1, 1, 1, 5, 6, 36, 1),
(813, 1, 1, 1, 5, 7, 36, 1),
(814, 1, 1, 1, 5, 8, 36, 1),
(815, 1, 1, 1, 5, 9, 36, 1),
(816, 1, 1, 1, 5, 10, 36, 1),
(817, 1, 1, 1, 5, 11, 36, 1),
(818, 1, 1, 1, 5, 17, 36, 1),
(819, 1, 1, 1, 5, 16, 36, 1),
(820, 1, 1, 1, 5, 1, 37, 1),
(821, 1, 1, 1, 5, 2, 37, 0),
(822, 1, 1, 1, 5, 3, 37, 1),
(823, 1, 1, 1, 5, 4, 37, 1),
(824, 1, 1, 1, 5, 5, 37, 1),
(825, 1, 1, 1, 5, 6, 37, 1),
(826, 1, 1, 1, 5, 7, 37, 1),
(827, 1, 1, 1, 5, 8, 37, 1),
(828, 1, 1, 1, 5, 9, 37, 1),
(829, 1, 1, 1, 5, 10, 37, 1),
(830, 1, 1, 1, 5, 11, 37, 1),
(831, 1, 1, 1, 5, 17, 37, 1),
(832, 1, 1, 1, 5, 16, 37, 1),
(833, 1, 1, 1, 5, 1, 38, 1),
(834, 1, 1, 1, 5, 2, 38, 0),
(835, 1, 1, 1, 5, 3, 38, 1),
(836, 1, 1, 1, 5, 4, 38, 1),
(837, 1, 1, 1, 5, 5, 38, 1),
(838, 1, 1, 1, 5, 6, 38, 1),
(839, 1, 1, 1, 5, 7, 38, 1),
(840, 1, 1, 1, 5, 8, 38, 1),
(841, 1, 1, 1, 5, 9, 38, 1),
(842, 1, 1, 1, 5, 10, 38, 1),
(843, 1, 1, 1, 5, 11, 38, 1),
(844, 1, 1, 1, 5, 17, 38, 1),
(845, 1, 1, 1, 5, 16, 38, 1),
(846, 1, 1, 1, 5, 1, 39, 1),
(847, 1, 1, 1, 5, 2, 39, 0),
(848, 1, 1, 1, 5, 3, 39, 1),
(849, 1, 1, 1, 5, 4, 39, 1),
(850, 1, 1, 1, 5, 5, 39, 1),
(851, 1, 1, 1, 5, 6, 39, 1),
(852, 1, 1, 1, 5, 7, 39, 1),
(853, 1, 1, 1, 5, 8, 39, 1),
(854, 1, 1, 1, 5, 9, 39, 1),
(855, 1, 1, 1, 5, 10, 39, 1),
(856, 1, 1, 1, 5, 11, 39, 1),
(857, 1, 1, 1, 5, 17, 39, 1),
(858, 1, 1, 1, 5, 16, 39, 1),
(859, 1, 1, 1, 5, 1, 40, 0),
(860, 1, 1, 1, 5, 2, 40, 1),
(861, 1, 1, 1, 5, 3, 40, 1),
(862, 1, 1, 1, 5, 4, 40, 1),
(863, 1, 1, 1, 5, 5, 40, 1),
(864, 1, 1, 1, 5, 6, 40, 1),
(865, 1, 1, 1, 5, 7, 40, 1),
(866, 1, 1, 1, 5, 8, 40, 1),
(867, 1, 1, 1, 5, 9, 40, 1),
(868, 1, 1, 1, 5, 10, 40, 1),
(869, 1, 1, 1, 5, 11, 40, 1),
(870, 1, 1, 1, 5, 17, 40, 1),
(871, 1, 1, 1, 5, 16, 40, 1),
(872, 1, 1, 1, 5, 1, 41, 1),
(873, 1, 1, 1, 5, 2, 41, 0),
(874, 1, 1, 1, 5, 3, 41, 1),
(875, 1, 1, 1, 5, 4, 41, 1),
(876, 1, 1, 1, 5, 5, 41, 1),
(877, 1, 1, 1, 5, 6, 41, 1),
(878, 1, 1, 1, 5, 7, 41, 1),
(879, 1, 1, 1, 5, 8, 41, 1),
(880, 1, 1, 1, 5, 9, 41, 1),
(881, 1, 1, 1, 5, 10, 41, 1),
(882, 1, 1, 1, 5, 11, 41, 1),
(883, 1, 1, 1, 5, 17, 41, 1),
(884, 1, 1, 1, 5, 16, 41, 1),
(885, 1, 1, 1, 5, 1, 42, 1),
(886, 1, 1, 1, 5, 2, 42, 0),
(887, 1, 1, 1, 5, 3, 42, 1),
(888, 1, 1, 1, 5, 4, 42, 1),
(889, 1, 1, 1, 5, 5, 42, 1),
(890, 1, 1, 1, 5, 6, 42, 1),
(891, 1, 1, 1, 5, 7, 42, 1),
(892, 1, 1, 1, 5, 8, 42, 1),
(893, 1, 1, 1, 5, 9, 42, 1),
(894, 1, 1, 1, 5, 10, 42, 1),
(895, 1, 1, 1, 5, 11, 42, 1),
(896, 1, 1, 1, 5, 17, 42, 1),
(897, 1, 1, 1, 5, 16, 42, 1),
(898, 1, 1, 1, 5, 1, 43, 1),
(899, 1, 1, 1, 5, 2, 43, 0),
(900, 1, 1, 1, 5, 3, 43, 1),
(901, 1, 1, 1, 5, 4, 43, 1),
(902, 1, 1, 1, 5, 5, 43, 1),
(903, 1, 1, 1, 5, 6, 43, 1),
(904, 1, 1, 1, 5, 7, 43, 1),
(905, 1, 1, 1, 5, 8, 43, 1),
(906, 1, 1, 1, 5, 9, 43, 1),
(907, 1, 1, 1, 5, 10, 43, 1),
(908, 1, 1, 1, 5, 11, 43, 1),
(909, 1, 1, 1, 5, 17, 43, 1),
(910, 1, 1, 1, 5, 16, 43, 1),
(911, 1, 1, 1, 5, 1, 44, 1),
(912, 1, 1, 1, 5, 2, 44, 0),
(913, 1, 1, 1, 5, 3, 44, 1),
(914, 1, 1, 1, 5, 4, 44, 1),
(915, 1, 1, 1, 5, 5, 44, 1),
(916, 1, 1, 1, 5, 6, 44, 1),
(917, 1, 1, 1, 5, 7, 44, 1),
(918, 1, 1, 1, 5, 8, 44, 1),
(919, 1, 1, 1, 5, 9, 44, 1),
(920, 1, 1, 1, 5, 10, 44, 1),
(921, 1, 1, 1, 5, 11, 44, 1),
(922, 1, 1, 1, 5, 17, 44, 1),
(923, 1, 1, 1, 5, 16, 44, 1),
(924, 1, 1, 1, 5, 1, 45, 1),
(925, 1, 1, 1, 5, 2, 45, 0),
(926, 1, 1, 1, 5, 3, 45, 1),
(927, 1, 1, 1, 5, 4, 45, 1),
(928, 1, 1, 1, 5, 5, 45, 1),
(929, 1, 1, 1, 5, 6, 45, 1),
(930, 1, 1, 1, 5, 7, 45, 1),
(931, 1, 1, 1, 5, 8, 45, 1),
(932, 1, 1, 1, 5, 9, 45, 1),
(933, 1, 1, 1, 5, 10, 45, 1),
(934, 1, 1, 1, 5, 11, 45, 1),
(935, 1, 1, 1, 5, 17, 45, 1),
(936, 1, 1, 1, 5, 16, 45, 1),
(937, 1, 1, 1, 5, 1, 46, 0),
(938, 1, 1, 1, 5, 2, 46, 1),
(939, 1, 1, 1, 5, 3, 46, 1),
(940, 1, 1, 1, 5, 4, 46, 1),
(941, 1, 1, 1, 5, 5, 46, 1),
(942, 1, 1, 1, 5, 6, 46, 1),
(943, 1, 1, 1, 5, 7, 46, 1),
(944, 1, 1, 1, 5, 8, 46, 1),
(945, 1, 1, 1, 5, 9, 46, 1),
(946, 1, 1, 1, 5, 10, 46, 1),
(947, 1, 1, 1, 5, 11, 46, 1),
(948, 1, 1, 1, 5, 17, 46, 1),
(949, 1, 1, 1, 5, 16, 46, 1),
(950, 1, 1, 1, 5, 1, 47, 1),
(951, 1, 1, 1, 5, 2, 47, 0),
(952, 1, 1, 1, 5, 3, 47, 1),
(953, 1, 1, 1, 5, 4, 47, 1),
(954, 1, 1, 1, 5, 5, 47, 1),
(955, 1, 1, 1, 5, 6, 47, 1),
(956, 1, 1, 1, 5, 7, 47, 1),
(957, 1, 1, 1, 5, 8, 47, 1),
(958, 1, 1, 1, 5, 9, 47, 1),
(959, 1, 1, 1, 5, 10, 47, 1),
(960, 1, 1, 1, 5, 11, 47, 1),
(961, 1, 1, 1, 5, 17, 47, 1),
(962, 1, 1, 1, 5, 16, 47, 1),
(963, 1, 1, 1, 5, 1, 48, 1),
(964, 1, 1, 1, 5, 2, 48, 0),
(965, 1, 1, 1, 5, 3, 48, 1),
(966, 1, 1, 1, 5, 4, 48, 1),
(967, 1, 1, 1, 5, 5, 48, 1),
(968, 1, 1, 1, 5, 6, 48, 1),
(969, 1, 1, 1, 5, 7, 48, 1),
(970, 1, 1, 1, 5, 8, 48, 1),
(971, 1, 1, 1, 5, 9, 48, 1),
(972, 1, 1, 1, 5, 10, 48, 1),
(973, 1, 1, 1, 5, 11, 48, 1),
(974, 1, 1, 1, 5, 17, 48, 1),
(975, 1, 1, 1, 5, 16, 48, 1),
(976, 1, 1, 1, 5, 1, 49, 1),
(977, 1, 1, 1, 5, 2, 49, 0),
(978, 1, 1, 1, 5, 3, 49, 1),
(979, 1, 1, 1, 5, 4, 49, 1),
(980, 1, 1, 1, 5, 5, 49, 1),
(981, 1, 1, 1, 5, 6, 49, 1),
(982, 1, 1, 1, 5, 7, 49, 1),
(983, 1, 1, 1, 5, 8, 49, 1),
(984, 1, 1, 1, 5, 9, 49, 1),
(985, 1, 1, 1, 5, 10, 49, 1),
(986, 1, 1, 1, 5, 11, 49, 1),
(987, 1, 1, 1, 5, 17, 49, 1),
(988, 1, 1, 1, 5, 16, 49, 1),
(989, 1, 1, 1, 5, 1, 50, 1),
(990, 1, 1, 1, 5, 2, 50, 0),
(991, 1, 1, 1, 5, 3, 50, 1),
(992, 1, 1, 1, 5, 4, 50, 1),
(993, 1, 1, 1, 5, 5, 50, 1),
(994, 1, 1, 1, 5, 6, 50, 1),
(995, 1, 1, 1, 5, 7, 50, 1),
(996, 1, 1, 1, 5, 8, 50, 1),
(997, 1, 1, 1, 5, 9, 50, 1),
(998, 1, 1, 1, 5, 10, 50, 1),
(999, 1, 1, 1, 5, 11, 50, 1),
(1000, 1, 1, 1, 5, 17, 50, 1),
(1001, 1, 1, 1, 5, 16, 50, 1),
(1002, 1, 1, 1, 5, 1, 51, 1),
(1003, 1, 1, 1, 5, 2, 51, 0),
(1004, 1, 1, 1, 5, 3, 51, 1),
(1005, 1, 1, 1, 5, 4, 51, 1),
(1006, 1, 1, 1, 5, 5, 51, 1),
(1007, 1, 1, 1, 5, 6, 51, 1),
(1008, 1, 1, 1, 5, 7, 51, 1),
(1009, 1, 1, 1, 5, 8, 51, 1),
(1010, 1, 1, 1, 5, 9, 51, 1),
(1011, 1, 1, 1, 5, 10, 51, 1),
(1012, 1, 1, 1, 5, 11, 51, 1),
(1013, 1, 1, 1, 5, 17, 51, 1),
(1014, 1, 1, 1, 5, 16, 51, 1),
(1015, 1, 1, 1, 5, 1, 52, 1),
(1016, 1, 1, 1, 5, 2, 52, 0),
(1017, 1, 1, 1, 5, 3, 52, 1),
(1018, 1, 1, 1, 5, 4, 52, 1),
(1019, 1, 1, 1, 5, 5, 52, 1),
(1020, 1, 1, 1, 5, 6, 52, 1),
(1021, 1, 1, 1, 5, 7, 52, 1),
(1022, 1, 1, 1, 5, 8, 52, 1),
(1023, 1, 1, 1, 5, 9, 52, 1),
(1024, 1, 1, 1, 5, 10, 52, 1),
(1025, 1, 1, 1, 5, 11, 52, 1),
(1026, 1, 1, 1, 5, 17, 52, 1),
(1027, 1, 1, 1, 5, 16, 52, 1),
(1028, 1, 1, 1, 5, 1, 53, 1),
(1029, 1, 1, 1, 5, 2, 53, 0),
(1030, 1, 1, 1, 5, 3, 53, 1),
(1031, 1, 1, 1, 5, 4, 53, 1),
(1032, 1, 1, 1, 5, 5, 53, 1),
(1033, 1, 1, 1, 5, 6, 53, 1),
(1034, 1, 1, 1, 5, 7, 53, 1),
(1035, 1, 1, 1, 5, 8, 53, 1),
(1036, 1, 1, 1, 5, 9, 53, 1),
(1037, 1, 1, 1, 5, 10, 53, 1),
(1038, 1, 1, 1, 5, 11, 53, 1),
(1039, 1, 1, 1, 5, 17, 53, 1),
(1040, 1, 1, 1, 5, 16, 53, 1),
(1041, 1, 1, 1, 5, 1, 54, 1),
(1042, 1, 1, 1, 5, 2, 54, 0),
(1043, 1, 1, 1, 5, 3, 54, 1),
(1044, 1, 1, 1, 5, 4, 54, 1),
(1045, 1, 1, 1, 5, 5, 54, 1),
(1046, 1, 1, 1, 5, 6, 54, 1),
(1047, 1, 1, 1, 5, 7, 54, 1),
(1048, 1, 1, 1, 5, 8, 54, 1),
(1049, 1, 1, 1, 5, 9, 54, 1),
(1050, 1, 1, 1, 5, 10, 54, 1),
(1051, 1, 1, 1, 5, 11, 54, 1),
(1052, 1, 1, 1, 5, 17, 54, 1),
(1053, 1, 1, 1, 5, 16, 54, 1),
(1054, 1, 1, 1, 5, 1, 55, 1),
(1055, 1, 1, 1, 5, 2, 55, 0),
(1056, 1, 1, 1, 5, 3, 55, 1),
(1057, 1, 1, 1, 5, 4, 55, 1),
(1058, 1, 1, 1, 5, 5, 55, 1),
(1059, 1, 1, 1, 5, 6, 55, 1),
(1060, 1, 1, 1, 5, 7, 55, 1),
(1061, 1, 1, 1, 5, 8, 55, 1),
(1062, 1, 1, 1, 5, 9, 55, 1),
(1063, 1, 1, 1, 5, 10, 55, 1),
(1064, 1, 1, 1, 5, 11, 55, 1),
(1065, 1, 1, 1, 5, 17, 55, 1),
(1066, 1, 1, 1, 5, 16, 55, 1),
(1067, 1, 1, 1, 5, 1, 56, 1),
(1068, 1, 1, 1, 5, 2, 56, 0),
(1069, 1, 1, 1, 5, 3, 56, 1),
(1070, 1, 1, 1, 5, 4, 56, 1),
(1071, 1, 1, 1, 5, 5, 56, 1),
(1072, 1, 1, 1, 5, 6, 56, 1),
(1073, 1, 1, 1, 5, 7, 56, 1),
(1074, 1, 1, 1, 5, 8, 56, 1),
(1075, 1, 1, 1, 5, 9, 56, 1),
(1076, 1, 1, 1, 5, 10, 56, 1),
(1077, 1, 1, 1, 5, 11, 56, 1),
(1078, 1, 1, 1, 5, 17, 56, 1),
(1079, 1, 1, 1, 5, 16, 56, 1),
(1080, 1, 1, 1, 5, 1, 57, 1),
(1081, 1, 1, 1, 5, 2, 57, 0),
(1082, 1, 1, 1, 5, 3, 57, 1),
(1083, 1, 1, 1, 5, 4, 57, 1),
(1084, 1, 1, 1, 5, 5, 57, 1),
(1085, 1, 1, 1, 5, 6, 57, 1),
(1086, 1, 1, 1, 5, 7, 57, 1),
(1087, 1, 1, 1, 5, 8, 57, 1),
(1088, 1, 1, 1, 5, 9, 57, 1),
(1089, 1, 1, 1, 5, 10, 57, 1),
(1090, 1, 1, 1, 5, 11, 57, 1),
(1091, 1, 1, 1, 5, 17, 57, 1),
(1092, 1, 1, 1, 5, 16, 57, 1),
(1093, 1, 1, 1, 5, 1, 58, 1),
(1094, 1, 1, 1, 5, 2, 58, 0),
(1095, 1, 1, 1, 5, 3, 58, 1),
(1096, 1, 1, 1, 5, 4, 58, 1),
(1097, 1, 1, 1, 5, 5, 58, 1),
(1098, 1, 1, 1, 5, 6, 58, 1),
(1099, 1, 1, 1, 5, 7, 58, 1),
(1100, 1, 1, 1, 5, 8, 58, 1),
(1101, 1, 1, 1, 5, 9, 58, 1),
(1102, 1, 1, 1, 5, 10, 58, 1),
(1103, 1, 1, 1, 5, 11, 58, 1),
(1104, 1, 1, 1, 5, 17, 58, 1),
(1105, 1, 1, 1, 5, 16, 58, 1),
(1106, 1, 1, 1, 5, 1, 59, 1),
(1107, 1, 1, 1, 5, 2, 59, 0),
(1108, 1, 1, 1, 5, 3, 59, 1),
(1109, 1, 1, 1, 5, 4, 59, 1),
(1110, 1, 1, 1, 5, 5, 59, 1),
(1111, 1, 1, 1, 5, 6, 59, 1),
(1112, 1, 1, 1, 5, 7, 59, 1),
(1113, 1, 1, 1, 5, 8, 59, 1),
(1114, 1, 1, 1, 5, 9, 59, 1),
(1115, 1, 1, 1, 5, 10, 59, 1),
(1116, 1, 1, 1, 5, 11, 59, 1),
(1117, 1, 1, 1, 5, 17, 59, 1),
(1118, 1, 1, 1, 5, 16, 59, 1),
(1119, 1, 1, 2, 6, 1, 87, 1),
(1120, 1, 1, 2, 6, 2, 87, 0),
(1121, 1, 1, 2, 6, 3, 87, 1),
(1122, 1, 1, 2, 6, 4, 87, 1),
(1123, 1, 1, 2, 6, 5, 87, 1),
(1124, 1, 1, 2, 6, 6, 87, 1),
(1125, 1, 1, 2, 6, 8, 87, 1),
(1126, 1, 1, 2, 6, 9, 87, 1),
(1127, 1, 1, 2, 6, 10, 87, 1),
(1128, 1, 1, 2, 6, 18, 87, 1),
(1129, 1, 1, 2, 6, 23, 87, 1),
(1130, 1, 1, 2, 6, 24, 87, 1),
(1131, 1, 1, 2, 6, 1, 88, 1),
(1132, 1, 1, 2, 6, 2, 88, 0),
(1133, 1, 1, 2, 6, 3, 88, 1),
(1134, 1, 1, 2, 6, 4, 88, 1),
(1135, 1, 1, 2, 6, 5, 88, 1),
(1136, 1, 1, 2, 6, 6, 88, 1),
(1137, 1, 1, 2, 6, 8, 88, 1),
(1138, 1, 1, 2, 6, 9, 88, 1),
(1139, 1, 1, 2, 6, 10, 88, 1),
(1140, 1, 1, 2, 6, 18, 88, 1),
(1141, 1, 1, 2, 6, 23, 88, 1),
(1142, 1, 1, 2, 6, 24, 88, 1),
(1143, 1, 1, 2, 6, 1, 89, 1),
(1144, 1, 1, 2, 6, 2, 89, 0),
(1145, 1, 1, 2, 6, 3, 89, 1),
(1146, 1, 1, 2, 6, 4, 89, 1),
(1147, 1, 1, 2, 6, 5, 89, 1),
(1148, 1, 1, 2, 6, 6, 89, 1),
(1149, 1, 1, 2, 6, 8, 89, 1),
(1150, 1, 1, 2, 6, 9, 89, 1),
(1151, 1, 1, 2, 6, 10, 89, 1),
(1152, 1, 1, 2, 6, 18, 89, 1),
(1153, 1, 1, 2, 6, 23, 89, 1),
(1154, 1, 1, 2, 6, 24, 89, 1),
(1155, 1, 1, 2, 6, 1, 90, 1),
(1156, 1, 1, 2, 6, 2, 90, 0),
(1157, 1, 1, 2, 6, 3, 90, 1),
(1158, 1, 1, 2, 6, 4, 90, 1),
(1159, 1, 1, 2, 6, 5, 90, 1),
(1160, 1, 1, 2, 6, 6, 90, 1),
(1161, 1, 1, 2, 6, 8, 90, 1),
(1162, 1, 1, 2, 6, 9, 90, 1),
(1163, 1, 1, 2, 6, 10, 90, 1),
(1164, 1, 1, 2, 6, 18, 90, 1),
(1165, 1, 1, 2, 6, 23, 90, 1),
(1166, 1, 1, 2, 6, 24, 90, 1),
(1167, 1, 1, 2, 6, 1, 91, 1),
(1168, 1, 1, 2, 6, 2, 91, 0),
(1169, 1, 1, 2, 6, 3, 91, 1),
(1170, 1, 1, 2, 6, 4, 91, 1),
(1171, 1, 1, 2, 6, 5, 91, 1),
(1172, 1, 1, 2, 6, 6, 91, 1),
(1173, 1, 1, 2, 6, 8, 91, 1),
(1174, 1, 1, 2, 6, 9, 91, 1),
(1175, 1, 1, 2, 6, 10, 91, 1),
(1176, 1, 1, 2, 6, 18, 91, 1),
(1177, 1, 1, 2, 6, 23, 91, 1),
(1178, 1, 1, 2, 6, 24, 91, 1),
(1179, 1, 1, 2, 6, 1, 92, 1),
(1180, 1, 1, 2, 6, 2, 92, 0),
(1181, 1, 1, 2, 6, 3, 92, 1),
(1182, 1, 1, 2, 6, 4, 92, 1),
(1183, 1, 1, 2, 6, 5, 92, 1),
(1184, 1, 1, 2, 6, 6, 92, 1),
(1185, 1, 1, 2, 6, 8, 92, 1),
(1186, 1, 1, 2, 6, 9, 92, 1),
(1187, 1, 1, 2, 6, 10, 92, 1),
(1188, 1, 1, 2, 6, 18, 92, 1),
(1189, 1, 1, 2, 6, 23, 92, 1),
(1190, 1, 1, 2, 6, 24, 92, 1),
(1191, 1, 1, 2, 6, 1, 93, 1),
(1192, 1, 1, 2, 6, 2, 93, 0),
(1193, 1, 1, 2, 6, 3, 93, 1),
(1194, 1, 1, 2, 6, 4, 93, 1),
(1195, 1, 1, 2, 6, 5, 93, 1),
(1196, 1, 1, 2, 6, 6, 93, 1),
(1197, 1, 1, 2, 6, 8, 93, 1),
(1198, 1, 1, 2, 6, 9, 93, 1),
(1199, 1, 1, 2, 6, 10, 93, 1),
(1200, 1, 1, 2, 6, 18, 93, 1),
(1201, 1, 1, 2, 6, 23, 93, 1),
(1202, 1, 1, 2, 6, 24, 93, 1),
(1203, 1, 1, 2, 6, 1, 94, 1),
(1204, 1, 1, 2, 6, 2, 94, 0),
(1205, 1, 1, 2, 6, 3, 94, 1),
(1206, 1, 1, 2, 6, 4, 94, 1),
(1207, 1, 1, 2, 6, 5, 94, 1),
(1208, 1, 1, 2, 6, 6, 94, 1),
(1209, 1, 1, 2, 6, 8, 94, 1),
(1210, 1, 1, 2, 6, 9, 94, 1),
(1211, 1, 1, 2, 6, 10, 94, 1),
(1212, 1, 1, 2, 6, 18, 94, 1),
(1213, 1, 1, 2, 6, 23, 94, 1),
(1214, 1, 1, 2, 6, 24, 94, 1),
(1215, 1, 1, 2, 6, 1, 95, 1),
(1216, 1, 1, 2, 6, 2, 95, 0),
(1217, 1, 1, 2, 6, 3, 95, 1),
(1218, 1, 1, 2, 6, 4, 95, 1),
(1219, 1, 1, 2, 6, 5, 95, 1),
(1220, 1, 1, 2, 6, 6, 95, 1),
(1221, 1, 1, 2, 6, 8, 95, 1),
(1222, 1, 1, 2, 6, 9, 95, 1),
(1223, 1, 1, 2, 6, 10, 95, 1),
(1224, 1, 1, 2, 6, 18, 95, 1),
(1225, 1, 1, 2, 6, 23, 95, 1),
(1226, 1, 1, 2, 6, 24, 95, 1),
(1227, 1, 1, 2, 6, 1, 96, 1),
(1228, 1, 1, 2, 6, 2, 96, 0),
(1229, 1, 1, 2, 6, 3, 96, 1),
(1230, 1, 1, 2, 6, 4, 96, 1),
(1231, 1, 1, 2, 6, 5, 96, 1),
(1232, 1, 1, 2, 6, 6, 96, 1),
(1233, 1, 1, 2, 6, 8, 96, 1),
(1234, 1, 1, 2, 6, 9, 96, 1),
(1235, 1, 1, 2, 6, 10, 96, 1),
(1236, 1, 1, 2, 6, 18, 96, 1),
(1237, 1, 1, 2, 6, 23, 96, 1),
(1238, 1, 1, 2, 6, 24, 96, 1),
(1239, 1, 1, 2, 6, 1, 97, 1),
(1240, 1, 1, 2, 6, 2, 97, 0),
(1241, 1, 1, 2, 6, 3, 97, 1),
(1242, 1, 1, 2, 6, 4, 97, 1),
(1243, 1, 1, 2, 6, 5, 97, 1),
(1244, 1, 1, 2, 6, 6, 97, 1),
(1245, 1, 1, 2, 6, 8, 97, 1),
(1246, 1, 1, 2, 6, 9, 97, 1),
(1247, 1, 1, 2, 6, 10, 97, 1),
(1248, 1, 1, 2, 6, 18, 97, 1),
(1249, 1, 1, 2, 6, 23, 97, 1),
(1250, 1, 1, 2, 6, 24, 97, 1),
(1251, 1, 1, 2, 6, 1, 98, 1),
(1252, 1, 1, 2, 6, 2, 98, 0),
(1253, 1, 1, 2, 6, 3, 98, 1),
(1254, 1, 1, 2, 6, 4, 98, 1),
(1255, 1, 1, 2, 6, 5, 98, 1),
(1256, 1, 1, 2, 6, 6, 98, 1),
(1257, 1, 1, 2, 6, 8, 98, 1),
(1258, 1, 1, 2, 6, 9, 98, 1),
(1259, 1, 1, 2, 6, 10, 98, 1),
(1260, 1, 1, 2, 6, 18, 98, 1),
(1261, 1, 1, 2, 6, 23, 98, 1),
(1262, 1, 1, 2, 6, 24, 98, 1),
(1263, 1, 1, 2, 6, 1, 99, 1),
(1264, 1, 1, 2, 6, 2, 99, 0),
(1265, 1, 1, 2, 6, 3, 99, 1),
(1266, 1, 1, 2, 6, 4, 99, 1),
(1267, 1, 1, 2, 6, 5, 99, 1),
(1268, 1, 1, 2, 6, 6, 99, 1),
(1269, 1, 1, 2, 6, 8, 99, 1),
(1270, 1, 1, 2, 6, 9, 99, 1),
(1271, 1, 1, 2, 6, 10, 99, 1),
(1272, 1, 1, 2, 6, 18, 99, 1),
(1273, 1, 1, 2, 6, 23, 99, 1),
(1274, 1, 1, 2, 6, 24, 99, 1),
(1275, 1, 1, 2, 6, 1, 100, 1),
(1276, 1, 1, 2, 6, 2, 100, 0),
(1277, 1, 1, 2, 6, 3, 100, 1),
(1278, 1, 1, 2, 6, 4, 100, 1),
(1279, 1, 1, 2, 6, 5, 100, 1),
(1280, 1, 1, 2, 6, 6, 100, 1),
(1281, 1, 1, 2, 6, 8, 100, 1),
(1282, 1, 1, 2, 6, 9, 100, 1),
(1283, 1, 1, 2, 6, 10, 100, 1),
(1284, 1, 1, 2, 6, 18, 100, 1),
(1285, 1, 1, 2, 6, 23, 100, 1),
(1286, 1, 1, 2, 6, 24, 100, 1),
(1287, 1, 1, 2, 6, 1, 101, 1),
(1288, 1, 1, 2, 6, 2, 101, 0),
(1289, 1, 1, 2, 6, 3, 101, 1),
(1290, 1, 1, 2, 6, 4, 101, 1),
(1291, 1, 1, 2, 6, 5, 101, 1),
(1292, 1, 1, 2, 6, 6, 101, 1),
(1293, 1, 1, 2, 6, 8, 101, 1),
(1294, 1, 1, 2, 6, 9, 101, 1),
(1295, 1, 1, 2, 6, 10, 101, 1),
(1296, 1, 1, 2, 6, 18, 101, 1),
(1297, 1, 1, 2, 6, 23, 101, 1),
(1298, 1, 1, 2, 6, 24, 101, 1),
(1299, 1, 1, 2, 7, 1, 102, 1),
(1300, 1, 1, 2, 7, 2, 102, 0),
(1301, 1, 1, 2, 7, 3, 102, 1),
(1302, 1, 1, 2, 7, 4, 102, 1),
(1303, 1, 1, 2, 7, 5, 102, 1),
(1304, 1, 1, 2, 7, 6, 102, 1),
(1305, 1, 1, 2, 7, 8, 102, 1),
(1306, 1, 1, 2, 7, 9, 102, 1),
(1307, 1, 1, 2, 7, 10, 102, 1),
(1308, 1, 1, 2, 7, 19, 102, 1),
(1309, 1, 1, 2, 7, 23, 102, 1),
(1310, 1, 1, 2, 7, 25, 102, 1),
(1311, 1, 1, 2, 7, 1, 103, 1),
(1312, 1, 1, 2, 7, 2, 103, 0),
(1313, 1, 1, 2, 7, 3, 103, 1),
(1314, 1, 1, 2, 7, 4, 103, 1),
(1315, 1, 1, 2, 7, 5, 103, 1),
(1316, 1, 1, 2, 7, 6, 103, 1),
(1317, 1, 1, 2, 7, 8, 103, 1),
(1318, 1, 1, 2, 7, 9, 103, 1),
(1319, 1, 1, 2, 7, 10, 103, 1),
(1320, 1, 1, 2, 7, 19, 103, 1),
(1321, 1, 1, 2, 7, 23, 103, 1),
(1322, 1, 1, 2, 7, 25, 103, 1),
(1323, 1, 1, 2, 7, 1, 104, 1),
(1324, 1, 1, 2, 7, 2, 104, 0),
(1325, 1, 1, 2, 7, 3, 104, 1),
(1326, 1, 1, 2, 7, 4, 104, 1),
(1327, 1, 1, 2, 7, 5, 104, 1),
(1328, 1, 1, 2, 7, 6, 104, 1),
(1329, 1, 1, 2, 7, 8, 104, 1),
(1330, 1, 1, 2, 7, 9, 104, 1),
(1331, 1, 1, 2, 7, 10, 104, 1),
(1332, 1, 1, 2, 7, 19, 104, 1),
(1333, 1, 1, 2, 7, 23, 104, 1),
(1334, 1, 1, 2, 7, 25, 104, 1),
(1335, 1, 1, 2, 7, 1, 105, 1),
(1336, 1, 1, 2, 7, 2, 105, 0),
(1337, 1, 1, 2, 7, 3, 105, 1),
(1338, 1, 1, 2, 7, 4, 105, 1),
(1339, 1, 1, 2, 7, 5, 105, 1),
(1340, 1, 1, 2, 7, 6, 105, 1),
(1341, 1, 1, 2, 7, 8, 105, 1),
(1342, 1, 1, 2, 7, 9, 105, 1),
(1343, 1, 1, 2, 7, 10, 105, 1),
(1344, 1, 1, 2, 7, 19, 105, 1),
(1345, 1, 1, 2, 7, 23, 105, 1),
(1346, 1, 1, 2, 7, 25, 105, 1),
(1347, 1, 1, 2, 7, 1, 106, 1),
(1348, 1, 1, 2, 7, 2, 106, 0),
(1349, 1, 1, 2, 7, 3, 106, 1),
(1350, 1, 1, 2, 7, 4, 106, 1),
(1351, 1, 1, 2, 7, 5, 106, 1),
(1352, 1, 1, 2, 7, 6, 106, 1),
(1353, 1, 1, 2, 7, 8, 106, 1),
(1354, 1, 1, 2, 7, 9, 106, 1),
(1355, 1, 1, 2, 7, 10, 106, 1),
(1356, 1, 1, 2, 7, 19, 106, 1),
(1357, 1, 1, 2, 7, 23, 106, 1),
(1358, 1, 1, 2, 7, 25, 106, 1),
(1359, 1, 1, 2, 7, 1, 107, 1),
(1360, 1, 1, 2, 7, 2, 107, 0),
(1361, 1, 1, 2, 7, 3, 107, 1),
(1362, 1, 1, 2, 7, 4, 107, 1),
(1363, 1, 1, 2, 7, 5, 107, 1),
(1364, 1, 1, 2, 7, 6, 107, 1),
(1365, 1, 1, 2, 7, 8, 107, 1),
(1366, 1, 1, 2, 7, 9, 107, 1),
(1367, 1, 1, 2, 7, 10, 107, 1),
(1368, 1, 1, 2, 7, 19, 107, 1),
(1369, 1, 1, 2, 7, 23, 107, 1),
(1370, 1, 1, 2, 7, 25, 107, 1),
(1371, 1, 1, 2, 7, 1, 108, 1),
(1372, 1, 1, 2, 7, 2, 108, 0),
(1373, 1, 1, 2, 7, 3, 108, 1),
(1374, 1, 1, 2, 7, 4, 108, 1),
(1375, 1, 1, 2, 7, 5, 108, 1),
(1376, 1, 1, 2, 7, 6, 108, 1),
(1377, 1, 1, 2, 7, 8, 108, 1),
(1378, 1, 1, 2, 7, 9, 108, 1),
(1379, 1, 1, 2, 7, 10, 108, 1),
(1380, 1, 1, 2, 7, 19, 108, 1),
(1381, 1, 1, 2, 7, 23, 108, 1),
(1382, 1, 1, 2, 7, 25, 108, 1),
(1383, 1, 1, 2, 7, 1, 109, 1),
(1384, 1, 1, 2, 7, 2, 109, 0),
(1385, 1, 1, 2, 7, 3, 109, 1),
(1386, 1, 1, 2, 7, 4, 109, 1),
(1387, 1, 1, 2, 7, 5, 109, 1),
(1388, 1, 1, 2, 7, 6, 109, 1),
(1389, 1, 1, 2, 7, 8, 109, 1),
(1390, 1, 1, 2, 7, 9, 109, 1),
(1391, 1, 1, 2, 7, 10, 109, 1),
(1392, 1, 1, 2, 7, 19, 109, 1),
(1393, 1, 1, 2, 7, 23, 109, 1),
(1394, 1, 1, 2, 7, 25, 109, 1),
(1395, 1, 1, 2, 7, 1, 110, 1),
(1396, 1, 1, 2, 7, 2, 110, 0),
(1397, 1, 1, 2, 7, 3, 110, 1),
(1398, 1, 1, 2, 7, 4, 110, 1),
(1399, 1, 1, 2, 7, 5, 110, 1),
(1400, 1, 1, 2, 7, 6, 110, 1),
(1401, 1, 1, 2, 7, 8, 110, 1),
(1402, 1, 1, 2, 7, 9, 110, 1),
(1403, 1, 1, 2, 7, 10, 110, 1),
(1404, 1, 1, 2, 7, 19, 110, 1),
(1405, 1, 1, 2, 7, 23, 110, 1),
(1406, 1, 1, 2, 7, 25, 110, 1),
(1407, 1, 1, 2, 7, 1, 111, 1),
(1408, 1, 1, 2, 7, 2, 111, 0),
(1409, 1, 1, 2, 7, 3, 111, 1),
(1410, 1, 1, 2, 7, 4, 111, 1),
(1411, 1, 1, 2, 7, 5, 111, 1),
(1412, 1, 1, 2, 7, 6, 111, 1),
(1413, 1, 1, 2, 7, 8, 111, 1),
(1414, 1, 1, 2, 7, 9, 111, 1),
(1415, 1, 1, 2, 7, 10, 111, 1),
(1416, 1, 1, 2, 7, 19, 111, 1),
(1417, 1, 1, 2, 7, 23, 111, 1),
(1418, 1, 1, 2, 7, 25, 111, 1),
(1419, 1, 1, 2, 7, 1, 112, 1),
(1420, 1, 1, 2, 7, 2, 112, 0),
(1421, 1, 1, 2, 7, 3, 112, 1),
(1422, 1, 1, 2, 7, 4, 112, 1),
(1423, 1, 1, 2, 7, 5, 112, 1),
(1424, 1, 1, 2, 7, 6, 112, 1),
(1425, 1, 1, 2, 7, 8, 112, 1),
(1426, 1, 1, 2, 7, 9, 112, 1),
(1427, 1, 1, 2, 7, 10, 112, 1),
(1428, 1, 1, 2, 7, 19, 112, 1),
(1429, 1, 1, 2, 7, 23, 112, 1),
(1430, 1, 1, 2, 7, 25, 112, 1),
(1431, 1, 1, 2, 7, 1, 113, 1),
(1432, 1, 1, 2, 7, 2, 113, 0),
(1433, 1, 1, 2, 7, 3, 113, 1),
(1434, 1, 1, 2, 7, 4, 113, 1),
(1435, 1, 1, 2, 7, 5, 113, 1),
(1436, 1, 1, 2, 7, 6, 113, 1),
(1437, 1, 1, 2, 7, 8, 113, 1),
(1438, 1, 1, 2, 7, 9, 113, 1),
(1439, 1, 1, 2, 7, 10, 113, 1),
(1440, 1, 1, 2, 7, 19, 113, 1),
(1441, 1, 1, 2, 7, 23, 113, 1),
(1442, 1, 1, 2, 7, 25, 113, 1),
(1443, 1, 1, 2, 7, 1, 114, 1),
(1444, 1, 1, 2, 7, 2, 114, 0),
(1445, 1, 1, 2, 7, 3, 114, 1),
(1446, 1, 1, 2, 7, 4, 114, 1),
(1447, 1, 1, 2, 7, 5, 114, 1),
(1448, 1, 1, 2, 7, 6, 114, 1),
(1449, 1, 1, 2, 7, 8, 114, 1),
(1450, 1, 1, 2, 7, 9, 114, 1),
(1451, 1, 1, 2, 7, 10, 114, 1),
(1452, 1, 1, 2, 7, 19, 114, 1),
(1453, 1, 1, 2, 7, 23, 114, 1),
(1454, 1, 1, 2, 7, 25, 114, 1),
(1455, 1, 1, 2, 7, 1, 115, 1),
(1456, 1, 1, 2, 7, 2, 115, 0),
(1457, 1, 1, 2, 7, 3, 115, 1),
(1458, 1, 1, 2, 7, 4, 115, 1),
(1459, 1, 1, 2, 7, 5, 115, 1),
(1460, 1, 1, 2, 7, 6, 115, 1),
(1461, 1, 1, 2, 7, 8, 115, 1),
(1462, 1, 1, 2, 7, 9, 115, 1),
(1463, 1, 1, 2, 7, 10, 115, 1),
(1464, 1, 1, 2, 7, 19, 115, 1),
(1465, 1, 1, 2, 7, 23, 115, 1),
(1466, 1, 1, 2, 7, 25, 115, 1),
(1467, 1, 1, 2, 7, 1, 116, 1),
(1468, 1, 1, 2, 7, 2, 116, 0),
(1469, 1, 1, 2, 7, 3, 116, 1),
(1470, 1, 1, 2, 7, 4, 116, 1),
(1471, 1, 1, 2, 7, 5, 116, 1),
(1472, 1, 1, 2, 7, 6, 116, 1),
(1473, 1, 1, 2, 7, 8, 116, 1),
(1474, 1, 1, 2, 7, 9, 116, 1),
(1475, 1, 1, 2, 7, 10, 116, 1),
(1476, 1, 1, 2, 7, 19, 116, 1),
(1477, 1, 1, 2, 7, 23, 116, 1),
(1478, 1, 1, 2, 7, 25, 116, 1),
(1479, 1, 1, 2, 7, 1, 117, 1),
(1480, 1, 1, 2, 7, 2, 117, 0),
(1481, 1, 1, 2, 7, 3, 117, 1),
(1482, 1, 1, 2, 7, 4, 117, 1),
(1483, 1, 1, 2, 7, 5, 117, 1),
(1484, 1, 1, 2, 7, 6, 117, 1),
(1485, 1, 1, 2, 7, 8, 117, 1),
(1486, 1, 1, 2, 7, 9, 117, 1),
(1487, 1, 1, 2, 7, 10, 117, 1),
(1488, 1, 1, 2, 7, 19, 117, 1),
(1489, 1, 1, 2, 7, 23, 117, 1),
(1490, 1, 1, 2, 7, 25, 117, 1),
(1491, 1, 1, 2, 7, 1, 118, 1),
(1492, 1, 1, 2, 7, 2, 118, 0),
(1493, 1, 1, 2, 7, 3, 118, 1),
(1494, 1, 1, 2, 7, 4, 118, 1),
(1495, 1, 1, 2, 7, 5, 118, 1),
(1496, 1, 1, 2, 7, 6, 118, 1),
(1497, 1, 1, 2, 7, 8, 118, 1),
(1498, 1, 1, 2, 7, 9, 118, 1),
(1499, 1, 1, 2, 7, 10, 118, 1),
(1500, 1, 1, 2, 7, 19, 118, 1),
(1501, 1, 1, 2, 7, 23, 118, 1),
(1502, 1, 1, 2, 7, 25, 118, 1),
(1503, 1, 1, 2, 7, 1, 119, 1),
(1504, 1, 1, 2, 7, 2, 119, 0),
(1505, 1, 1, 2, 7, 3, 119, 1),
(1506, 1, 1, 2, 7, 4, 119, 1),
(1507, 1, 1, 2, 7, 5, 119, 1),
(1508, 1, 1, 2, 7, 6, 119, 1),
(1509, 1, 1, 2, 7, 8, 119, 1),
(1510, 1, 1, 2, 7, 9, 119, 1),
(1511, 1, 1, 2, 7, 10, 119, 1),
(1512, 1, 1, 2, 7, 19, 119, 1),
(1513, 1, 1, 2, 7, 23, 119, 1),
(1514, 1, 1, 2, 7, 25, 119, 1),
(1515, 1, 1, 2, 7, 1, 177, 1),
(1516, 1, 1, 2, 7, 2, 177, 0),
(1517, 1, 1, 2, 7, 3, 177, 1),
(1518, 1, 1, 2, 7, 4, 177, 1),
(1519, 1, 1, 2, 7, 5, 177, 1),
(1520, 1, 1, 2, 7, 6, 177, 1),
(1521, 1, 1, 2, 7, 8, 177, 1),
(1522, 1, 1, 2, 7, 9, 177, 1),
(1523, 1, 1, 2, 7, 10, 177, 1),
(1524, 1, 1, 2, 7, 19, 177, 1),
(1525, 1, 1, 2, 7, 23, 177, 1),
(1526, 1, 1, 2, 7, 25, 177, 1),
(1527, 1, 1, 2, 8, 1, 139, 1),
(1528, 1, 1, 2, 8, 2, 139, 0),
(1529, 1, 1, 2, 8, 3, 139, 1),
(1530, 1, 1, 2, 8, 4, 139, 1),
(1531, 1, 1, 2, 8, 5, 139, 1),
(1532, 1, 1, 2, 8, 6, 139, 1),
(1533, 1, 1, 2, 8, 8, 139, 1),
(1534, 1, 1, 2, 8, 9, 139, 1),
(1535, 1, 1, 2, 8, 10, 139, 1),
(1536, 1, 1, 2, 8, 21, 139, 1),
(1537, 1, 1, 2, 8, 23, 139, 1),
(1538, 1, 1, 2, 8, 27, 139, 1),
(1539, 1, 1, 2, 8, 1, 140, 1),
(1540, 1, 1, 2, 8, 2, 140, 0),
(1541, 1, 1, 2, 8, 3, 140, 1),
(1542, 1, 1, 2, 8, 4, 140, 1),
(1543, 1, 1, 2, 8, 5, 140, 1),
(1544, 1, 1, 2, 8, 6, 140, 1),
(1545, 1, 1, 2, 8, 8, 140, 1),
(1546, 1, 1, 2, 8, 9, 140, 1),
(1547, 1, 1, 2, 8, 10, 140, 1),
(1548, 1, 1, 2, 8, 21, 140, 1),
(1549, 1, 1, 2, 8, 23, 140, 1),
(1550, 1, 1, 2, 8, 27, 140, 1),
(1551, 1, 1, 2, 8, 1, 141, 1),
(1552, 1, 1, 2, 8, 2, 141, 0),
(1553, 1, 1, 2, 8, 3, 141, 1),
(1554, 1, 1, 2, 8, 4, 141, 1),
(1555, 1, 1, 2, 8, 5, 141, 1),
(1556, 1, 1, 2, 8, 6, 141, 1),
(1557, 1, 1, 2, 8, 8, 141, 1),
(1558, 1, 1, 2, 8, 9, 141, 1),
(1559, 1, 1, 2, 8, 10, 141, 1),
(1560, 1, 1, 2, 8, 21, 141, 1),
(1561, 1, 1, 2, 8, 23, 141, 1),
(1562, 1, 1, 2, 8, 27, 141, 1),
(1563, 1, 1, 2, 8, 1, 142, 0),
(1564, 1, 1, 2, 8, 2, 142, 1),
(1565, 1, 1, 2, 8, 3, 142, 1),
(1566, 1, 1, 2, 8, 4, 142, 1),
(1567, 1, 1, 2, 8, 5, 142, 1),
(1568, 1, 1, 2, 8, 6, 142, 1),
(1569, 1, 1, 2, 8, 8, 142, 1),
(1570, 1, 1, 2, 8, 9, 142, 1),
(1571, 1, 1, 2, 8, 10, 142, 1),
(1572, 1, 1, 2, 8, 21, 142, 1),
(1573, 1, 1, 2, 8, 23, 142, 1),
(1574, 1, 1, 2, 8, 27, 142, 1),
(1575, 1, 1, 2, 8, 1, 143, 1),
(1576, 1, 1, 2, 8, 2, 143, 0),
(1577, 1, 1, 2, 8, 3, 143, 1),
(1578, 1, 1, 2, 8, 4, 143, 1),
(1579, 1, 1, 2, 8, 5, 143, 1),
(1580, 1, 1, 2, 8, 6, 143, 1),
(1581, 1, 1, 2, 8, 8, 143, 1),
(1582, 1, 1, 2, 8, 9, 143, 1),
(1583, 1, 1, 2, 8, 10, 143, 1),
(1584, 1, 1, 2, 8, 21, 143, 1),
(1585, 1, 1, 2, 8, 23, 143, 1),
(1586, 1, 1, 2, 8, 27, 143, 1),
(1587, 1, 1, 2, 8, 1, 144, 1),
(1588, 1, 1, 2, 8, 2, 144, 0),
(1589, 1, 1, 2, 8, 3, 144, 1),
(1590, 1, 1, 2, 8, 4, 144, 1),
(1591, 1, 1, 2, 8, 5, 144, 1),
(1592, 1, 1, 2, 8, 6, 144, 1),
(1593, 1, 1, 2, 8, 8, 144, 1),
(1594, 1, 1, 2, 8, 9, 144, 1),
(1595, 1, 1, 2, 8, 10, 144, 1),
(1596, 1, 1, 2, 8, 21, 144, 1),
(1597, 1, 1, 2, 8, 23, 144, 1),
(1598, 1, 1, 2, 8, 27, 144, 1),
(1599, 1, 1, 2, 8, 1, 145, 1),
(1600, 1, 1, 2, 8, 2, 145, 0),
(1601, 1, 1, 2, 8, 3, 145, 1),
(1602, 1, 1, 2, 8, 4, 145, 1),
(1603, 1, 1, 2, 8, 5, 145, 1),
(1604, 1, 1, 2, 8, 6, 145, 1),
(1605, 1, 1, 2, 8, 8, 145, 1),
(1606, 1, 1, 2, 8, 9, 145, 1),
(1607, 1, 1, 2, 8, 10, 145, 1),
(1608, 1, 1, 2, 8, 21, 145, 1),
(1609, 1, 1, 2, 8, 23, 145, 1),
(1610, 1, 1, 2, 8, 27, 145, 1),
(1611, 1, 1, 2, 8, 1, 146, 1),
(1612, 1, 1, 2, 8, 2, 146, 0),
(1613, 1, 1, 2, 8, 3, 146, 1),
(1614, 1, 1, 2, 8, 4, 146, 1),
(1615, 1, 1, 2, 8, 5, 146, 1),
(1616, 1, 1, 2, 8, 6, 146, 1),
(1617, 1, 1, 2, 8, 8, 146, 1),
(1618, 1, 1, 2, 8, 9, 146, 1),
(1619, 1, 1, 2, 8, 10, 146, 1),
(1620, 1, 1, 2, 8, 21, 146, 1),
(1621, 1, 1, 2, 8, 23, 146, 1),
(1622, 1, 1, 2, 8, 27, 146, 1),
(1623, 1, 1, 2, 8, 1, 147, 1),
(1624, 1, 1, 2, 8, 2, 147, 0),
(1625, 1, 1, 2, 8, 3, 147, 1),
(1626, 1, 1, 2, 8, 4, 147, 1),
(1627, 1, 1, 2, 8, 5, 147, 1),
(1628, 1, 1, 2, 8, 6, 147, 1),
(1629, 1, 1, 2, 8, 8, 147, 1),
(1630, 1, 1, 2, 8, 9, 147, 1),
(1631, 1, 1, 2, 8, 10, 147, 1),
(1632, 1, 1, 2, 8, 21, 147, 1),
(1633, 1, 1, 2, 8, 23, 147, 1),
(1634, 1, 1, 2, 8, 27, 147, 1),
(1635, 1, 1, 2, 8, 1, 148, 1),
(1636, 1, 1, 2, 8, 2, 148, 0),
(1637, 1, 1, 2, 8, 3, 148, 1),
(1638, 1, 1, 2, 8, 4, 148, 1),
(1639, 1, 1, 2, 8, 5, 148, 1),
(1640, 1, 1, 2, 8, 6, 148, 1),
(1641, 1, 1, 2, 8, 8, 148, 1),
(1642, 1, 1, 2, 8, 9, 148, 1),
(1643, 1, 1, 2, 8, 10, 148, 1),
(1644, 1, 1, 2, 8, 21, 148, 1),
(1645, 1, 1, 2, 8, 23, 148, 1),
(1646, 1, 1, 2, 8, 27, 148, 1),
(1647, 1, 1, 2, 8, 1, 149, 1),
(1648, 1, 1, 2, 8, 2, 149, 0),
(1649, 1, 1, 2, 8, 3, 149, 1),
(1650, 1, 1, 2, 8, 4, 149, 1),
(1651, 1, 1, 2, 8, 5, 149, 1),
(1652, 1, 1, 2, 8, 6, 149, 1),
(1653, 1, 1, 2, 8, 8, 149, 1),
(1654, 1, 1, 2, 8, 9, 149, 1),
(1655, 1, 1, 2, 8, 10, 149, 1),
(1656, 1, 1, 2, 8, 21, 149, 1),
(1657, 1, 1, 2, 8, 23, 149, 1),
(1658, 1, 1, 2, 8, 27, 149, 1),
(1659, 1, 1, 2, 8, 1, 150, 1),
(1660, 1, 1, 2, 8, 2, 150, 0),
(1661, 1, 1, 2, 8, 3, 150, 1),
(1662, 1, 1, 2, 8, 4, 150, 1),
(1663, 1, 1, 2, 8, 5, 150, 1),
(1664, 1, 1, 2, 8, 6, 150, 1),
(1665, 1, 1, 2, 8, 8, 150, 1),
(1666, 1, 1, 2, 8, 9, 150, 1),
(1667, 1, 1, 2, 8, 10, 150, 1),
(1668, 1, 1, 2, 8, 21, 150, 1),
(1669, 1, 1, 2, 8, 23, 150, 1),
(1670, 1, 1, 2, 8, 27, 150, 1),
(1671, 1, 1, 2, 8, 1, 151, 1),
(1672, 1, 1, 2, 8, 2, 151, 0),
(1673, 1, 1, 2, 8, 3, 151, 1),
(1674, 1, 1, 2, 8, 4, 151, 1),
(1675, 1, 1, 2, 8, 5, 151, 1),
(1676, 1, 1, 2, 8, 6, 151, 1),
(1677, 1, 1, 2, 8, 8, 151, 1),
(1678, 1, 1, 2, 8, 9, 151, 1),
(1679, 1, 1, 2, 8, 10, 151, 1),
(1680, 1, 1, 2, 8, 21, 151, 1),
(1681, 1, 1, 2, 8, 23, 151, 1),
(1682, 1, 1, 2, 8, 27, 151, 1),
(1683, 1, 1, 2, 8, 1, 152, 1),
(1684, 1, 1, 2, 8, 2, 152, 0),
(1685, 1, 1, 2, 8, 3, 152, 1),
(1686, 1, 1, 2, 8, 4, 152, 1),
(1687, 1, 1, 2, 8, 5, 152, 1),
(1688, 1, 1, 2, 8, 6, 152, 1),
(1689, 1, 1, 2, 8, 8, 152, 1),
(1690, 1, 1, 2, 8, 9, 152, 1),
(1691, 1, 1, 2, 8, 10, 152, 1),
(1692, 1, 1, 2, 8, 21, 152, 1),
(1693, 1, 1, 2, 8, 23, 152, 1),
(1694, 1, 1, 2, 8, 27, 152, 1),
(1695, 1, 1, 2, 8, 1, 153, 1),
(1696, 1, 1, 2, 8, 2, 153, 0),
(1697, 1, 1, 2, 8, 3, 153, 1),
(1698, 1, 1, 2, 8, 4, 153, 1),
(1699, 1, 1, 2, 8, 5, 153, 1),
(1700, 1, 1, 2, 8, 6, 153, 1),
(1701, 1, 1, 2, 8, 8, 153, 1),
(1702, 1, 1, 2, 8, 9, 153, 1),
(1703, 1, 1, 2, 8, 10, 153, 1),
(1704, 1, 1, 2, 8, 21, 153, 1),
(1705, 1, 1, 2, 8, 23, 153, 1),
(1706, 1, 1, 2, 8, 27, 153, 1),
(1707, 1, 1, 2, 8, 1, 154, 1),
(1708, 1, 1, 2, 8, 2, 154, 0),
(1709, 1, 1, 2, 8, 3, 154, 1),
(1710, 1, 1, 2, 8, 4, 154, 1),
(1711, 1, 1, 2, 8, 5, 154, 1),
(1712, 1, 1, 2, 8, 6, 154, 1),
(1713, 1, 1, 2, 8, 8, 154, 1),
(1714, 1, 1, 2, 8, 9, 154, 1),
(1715, 1, 1, 2, 8, 10, 154, 1),
(1716, 1, 1, 2, 8, 21, 154, 1),
(1717, 1, 1, 2, 8, 23, 154, 1),
(1718, 1, 1, 2, 8, 27, 154, 1),
(1719, 1, 1, 2, 8, 1, 155, 1),
(1720, 1, 1, 2, 8, 2, 155, 0),
(1721, 1, 1, 2, 8, 3, 155, 1),
(1722, 1, 1, 2, 8, 4, 155, 1),
(1723, 1, 1, 2, 8, 5, 155, 1),
(1724, 1, 1, 2, 8, 6, 155, 1),
(1725, 1, 1, 2, 8, 8, 155, 1),
(1726, 1, 1, 2, 8, 9, 155, 1),
(1727, 1, 1, 2, 8, 10, 155, 1),
(1728, 1, 1, 2, 8, 21, 155, 1),
(1729, 1, 1, 2, 8, 23, 155, 1),
(1730, 1, 1, 2, 8, 27, 155, 1),
(1731, 1, 1, 2, 8, 1, 156, 1),
(1732, 1, 1, 2, 8, 2, 156, 0),
(1733, 1, 1, 2, 8, 3, 156, 1),
(1734, 1, 1, 2, 8, 4, 156, 1),
(1735, 1, 1, 2, 8, 5, 156, 1),
(1736, 1, 1, 2, 8, 6, 156, 1),
(1737, 1, 1, 2, 8, 8, 156, 1),
(1738, 1, 1, 2, 8, 9, 156, 1),
(1739, 1, 1, 2, 8, 10, 156, 1),
(1740, 1, 1, 2, 8, 21, 156, 1),
(1741, 1, 1, 2, 8, 23, 156, 1),
(1742, 1, 1, 2, 8, 27, 156, 1),
(1743, 1, 1, 2, 8, 1, 157, 1),
(1744, 1, 1, 2, 8, 2, 157, 0),
(1745, 1, 1, 2, 8, 3, 157, 1),
(1746, 1, 1, 2, 8, 4, 157, 1),
(1747, 1, 1, 2, 8, 5, 157, 1),
(1748, 1, 1, 2, 8, 6, 157, 1),
(1749, 1, 1, 2, 8, 8, 157, 1),
(1750, 1, 1, 2, 8, 9, 157, 1),
(1751, 1, 1, 2, 8, 10, 157, 1),
(1752, 1, 1, 2, 8, 21, 157, 1),
(1753, 1, 1, 2, 8, 23, 157, 1),
(1754, 1, 1, 2, 8, 27, 157, 1),
(1755, 1, 1, 2, 8, 1, 158, 1),
(1756, 1, 1, 2, 8, 2, 158, 0),
(1757, 1, 1, 2, 8, 3, 158, 1),
(1758, 1, 1, 2, 8, 4, 158, 1),
(1759, 1, 1, 2, 8, 5, 158, 1),
(1760, 1, 1, 2, 8, 6, 158, 1),
(1761, 1, 1, 2, 8, 8, 158, 1),
(1762, 1, 1, 2, 8, 9, 158, 1),
(1763, 1, 1, 2, 8, 10, 158, 1),
(1764, 1, 1, 2, 8, 21, 158, 1),
(1765, 1, 1, 2, 8, 23, 158, 1),
(1766, 1, 1, 2, 8, 27, 158, 1),
(1767, 1, 1, 2, 8, 1, 159, 1),
(1768, 1, 1, 2, 8, 2, 159, 0),
(1769, 1, 1, 2, 8, 3, 159, 1),
(1770, 1, 1, 2, 8, 4, 159, 1),
(1771, 1, 1, 2, 8, 5, 159, 1),
(1772, 1, 1, 2, 8, 6, 159, 1),
(1773, 1, 1, 2, 8, 8, 159, 1),
(1774, 1, 1, 2, 8, 9, 159, 1),
(1775, 1, 1, 2, 8, 10, 159, 1),
(1776, 1, 1, 2, 8, 21, 159, 1),
(1777, 1, 1, 2, 8, 23, 159, 1),
(1778, 1, 1, 2, 8, 27, 159, 1),
(1779, 1, 1, 2, 8, 1, 160, 1),
(1780, 1, 1, 2, 8, 2, 160, 0),
(1781, 1, 1, 2, 8, 3, 160, 1),
(1782, 1, 1, 2, 8, 4, 160, 1),
(1783, 1, 1, 2, 8, 5, 160, 1),
(1784, 1, 1, 2, 8, 6, 160, 1),
(1785, 1, 1, 2, 8, 8, 160, 1),
(1786, 1, 1, 2, 8, 9, 160, 1);
INSERT INTO `mapel_siswa` (`id_mapel_siswa`, `tahun`, `semester`, `id_tingkat`, `id_kelas`, `id_mapel`, `id_siswa`, `aktif`) VALUES
(1787, 1, 1, 2, 8, 10, 160, 1),
(1788, 1, 1, 2, 8, 21, 160, 1),
(1789, 1, 1, 2, 8, 23, 160, 1),
(1790, 1, 1, 2, 8, 27, 160, 1),
(1791, 1, 1, 2, 8, 1, 161, 1),
(1792, 1, 1, 2, 8, 2, 161, 0),
(1793, 1, 1, 2, 8, 3, 161, 1),
(1794, 1, 1, 2, 8, 4, 161, 1),
(1795, 1, 1, 2, 8, 5, 161, 1),
(1796, 1, 1, 2, 8, 6, 161, 1),
(1797, 1, 1, 2, 8, 8, 161, 1),
(1798, 1, 1, 2, 8, 9, 161, 1),
(1799, 1, 1, 2, 8, 10, 161, 1),
(1800, 1, 1, 2, 8, 21, 161, 1),
(1801, 1, 1, 2, 8, 23, 161, 1),
(1802, 1, 1, 2, 8, 27, 161, 1),
(1803, 1, 1, 2, 8, 1, 162, 1),
(1804, 1, 1, 2, 8, 2, 162, 0),
(1805, 1, 1, 2, 8, 3, 162, 1),
(1806, 1, 1, 2, 8, 4, 162, 1),
(1807, 1, 1, 2, 8, 5, 162, 1),
(1808, 1, 1, 2, 8, 6, 162, 1),
(1809, 1, 1, 2, 8, 8, 162, 1),
(1810, 1, 1, 2, 8, 9, 162, 1),
(1811, 1, 1, 2, 8, 10, 162, 1),
(1812, 1, 1, 2, 8, 21, 162, 1),
(1813, 1, 1, 2, 8, 23, 162, 1),
(1814, 1, 1, 2, 8, 27, 162, 1),
(1815, 1, 1, 2, 8, 1, 163, 1),
(1816, 1, 1, 2, 8, 2, 163, 0),
(1817, 1, 1, 2, 8, 3, 163, 1),
(1818, 1, 1, 2, 8, 4, 163, 1),
(1819, 1, 1, 2, 8, 5, 163, 1),
(1820, 1, 1, 2, 8, 6, 163, 1),
(1821, 1, 1, 2, 8, 8, 163, 1),
(1822, 1, 1, 2, 8, 9, 163, 1),
(1823, 1, 1, 2, 8, 10, 163, 1),
(1824, 1, 1, 2, 8, 21, 163, 1),
(1825, 1, 1, 2, 8, 23, 163, 1),
(1826, 1, 1, 2, 8, 27, 163, 1),
(1827, 1, 1, 2, 8, 1, 164, 1),
(1828, 1, 1, 2, 8, 2, 164, 0),
(1829, 1, 1, 2, 8, 3, 164, 1),
(1830, 1, 1, 2, 8, 4, 164, 1),
(1831, 1, 1, 2, 8, 5, 164, 1),
(1832, 1, 1, 2, 8, 6, 164, 1),
(1833, 1, 1, 2, 8, 8, 164, 1),
(1834, 1, 1, 2, 8, 9, 164, 1),
(1835, 1, 1, 2, 8, 10, 164, 1),
(1836, 1, 1, 2, 8, 21, 164, 1),
(1837, 1, 1, 2, 8, 23, 164, 1),
(1838, 1, 1, 2, 8, 27, 164, 1),
(1839, 1, 1, 2, 8, 1, 165, 1),
(1840, 1, 1, 2, 8, 2, 165, 0),
(1841, 1, 1, 2, 8, 3, 165, 1),
(1842, 1, 1, 2, 8, 4, 165, 1),
(1843, 1, 1, 2, 8, 5, 165, 1),
(1844, 1, 1, 2, 8, 6, 165, 1),
(1845, 1, 1, 2, 8, 8, 165, 1),
(1846, 1, 1, 2, 8, 9, 165, 1),
(1847, 1, 1, 2, 8, 10, 165, 1),
(1848, 1, 1, 2, 8, 21, 165, 1),
(1849, 1, 1, 2, 8, 23, 165, 1),
(1850, 1, 1, 2, 8, 27, 165, 1),
(1851, 1, 1, 2, 8, 1, 166, 1),
(1852, 1, 1, 2, 8, 2, 166, 0),
(1853, 1, 1, 2, 8, 3, 166, 1),
(1854, 1, 1, 2, 8, 4, 166, 1),
(1855, 1, 1, 2, 8, 5, 166, 1),
(1856, 1, 1, 2, 8, 6, 166, 1),
(1857, 1, 1, 2, 8, 8, 166, 1),
(1858, 1, 1, 2, 8, 9, 166, 1),
(1859, 1, 1, 2, 8, 10, 166, 1),
(1860, 1, 1, 2, 8, 21, 166, 1),
(1861, 1, 1, 2, 8, 23, 166, 1),
(1862, 1, 1, 2, 8, 27, 166, 1),
(1863, 1, 1, 2, 9, 1, 167, 1),
(1864, 1, 1, 2, 9, 2, 167, 0),
(1865, 1, 1, 2, 9, 3, 167, 1),
(1866, 1, 1, 2, 9, 4, 167, 1),
(1867, 1, 1, 2, 9, 5, 167, 1),
(1868, 1, 1, 2, 9, 6, 167, 1),
(1869, 1, 1, 2, 9, 8, 167, 1),
(1870, 1, 1, 2, 9, 9, 167, 1),
(1871, 1, 1, 2, 9, 10, 167, 1),
(1872, 1, 1, 2, 9, 20, 167, 1),
(1873, 1, 1, 2, 9, 23, 167, 1),
(1874, 1, 1, 2, 9, 28, 167, 1),
(1875, 1, 1, 2, 9, 1, 168, 1),
(1876, 1, 1, 2, 9, 2, 168, 0),
(1877, 1, 1, 2, 9, 3, 168, 1),
(1878, 1, 1, 2, 9, 4, 168, 1),
(1879, 1, 1, 2, 9, 5, 168, 1),
(1880, 1, 1, 2, 9, 6, 168, 1),
(1881, 1, 1, 2, 9, 8, 168, 1),
(1882, 1, 1, 2, 9, 9, 168, 1),
(1883, 1, 1, 2, 9, 10, 168, 1),
(1884, 1, 1, 2, 9, 20, 168, 1),
(1885, 1, 1, 2, 9, 23, 168, 1),
(1886, 1, 1, 2, 9, 28, 168, 1),
(1887, 1, 1, 2, 9, 1, 169, 1),
(1888, 1, 1, 2, 9, 2, 169, 0),
(1889, 1, 1, 2, 9, 3, 169, 1),
(1890, 1, 1, 2, 9, 4, 169, 1),
(1891, 1, 1, 2, 9, 5, 169, 1),
(1892, 1, 1, 2, 9, 6, 169, 1),
(1893, 1, 1, 2, 9, 8, 169, 1),
(1894, 1, 1, 2, 9, 9, 169, 1),
(1895, 1, 1, 2, 9, 10, 169, 1),
(1896, 1, 1, 2, 9, 20, 169, 1),
(1897, 1, 1, 2, 9, 23, 169, 1),
(1898, 1, 1, 2, 9, 28, 169, 1),
(1899, 1, 1, 2, 9, 1, 170, 0),
(1900, 1, 1, 2, 9, 2, 170, 1),
(1901, 1, 1, 2, 9, 3, 170, 1),
(1902, 1, 1, 2, 9, 4, 170, 1),
(1903, 1, 1, 2, 9, 5, 170, 1),
(1904, 1, 1, 2, 9, 6, 170, 1),
(1905, 1, 1, 2, 9, 8, 170, 1),
(1906, 1, 1, 2, 9, 9, 170, 1),
(1907, 1, 1, 2, 9, 10, 170, 1),
(1908, 1, 1, 2, 9, 20, 170, 1),
(1909, 1, 1, 2, 9, 23, 170, 1),
(1910, 1, 1, 2, 9, 28, 170, 1),
(1911, 1, 1, 2, 9, 1, 171, 0),
(1912, 1, 1, 2, 9, 2, 171, 1),
(1913, 1, 1, 2, 9, 3, 171, 1),
(1914, 1, 1, 2, 9, 4, 171, 1),
(1915, 1, 1, 2, 9, 5, 171, 1),
(1916, 1, 1, 2, 9, 6, 171, 1),
(1917, 1, 1, 2, 9, 8, 171, 1),
(1918, 1, 1, 2, 9, 9, 171, 1),
(1919, 1, 1, 2, 9, 10, 171, 1),
(1920, 1, 1, 2, 9, 20, 171, 1),
(1921, 1, 1, 2, 9, 23, 171, 1),
(1922, 1, 1, 2, 9, 28, 171, 1),
(1923, 1, 1, 2, 9, 1, 172, 1),
(1924, 1, 1, 2, 9, 2, 172, 0),
(1925, 1, 1, 2, 9, 3, 172, 1),
(1926, 1, 1, 2, 9, 4, 172, 1),
(1927, 1, 1, 2, 9, 5, 172, 1),
(1928, 1, 1, 2, 9, 6, 172, 1),
(1929, 1, 1, 2, 9, 8, 172, 1),
(1930, 1, 1, 2, 9, 9, 172, 1),
(1931, 1, 1, 2, 9, 10, 172, 1),
(1932, 1, 1, 2, 9, 20, 172, 1),
(1933, 1, 1, 2, 9, 23, 172, 1),
(1934, 1, 1, 2, 9, 28, 172, 1),
(1935, 1, 1, 2, 9, 1, 173, 1),
(1936, 1, 1, 2, 9, 2, 173, 0),
(1937, 1, 1, 2, 9, 3, 173, 1),
(1938, 1, 1, 2, 9, 4, 173, 1),
(1939, 1, 1, 2, 9, 5, 173, 1),
(1940, 1, 1, 2, 9, 6, 173, 1),
(1941, 1, 1, 2, 9, 8, 173, 1),
(1942, 1, 1, 2, 9, 9, 173, 1),
(1943, 1, 1, 2, 9, 10, 173, 1),
(1944, 1, 1, 2, 9, 20, 173, 1),
(1945, 1, 1, 2, 9, 23, 173, 1),
(1946, 1, 1, 2, 9, 28, 173, 1),
(1947, 1, 1, 2, 9, 1, 174, 1),
(1948, 1, 1, 2, 9, 2, 174, 0),
(1949, 1, 1, 2, 9, 3, 174, 1),
(1950, 1, 1, 2, 9, 4, 174, 1),
(1951, 1, 1, 2, 9, 5, 174, 1),
(1952, 1, 1, 2, 9, 6, 174, 1),
(1953, 1, 1, 2, 9, 8, 174, 1),
(1954, 1, 1, 2, 9, 9, 174, 1),
(1955, 1, 1, 2, 9, 10, 174, 1),
(1956, 1, 1, 2, 9, 20, 174, 1),
(1957, 1, 1, 2, 9, 23, 174, 1),
(1958, 1, 1, 2, 9, 28, 174, 1),
(1959, 1, 1, 2, 9, 1, 175, 1),
(1960, 1, 1, 2, 9, 2, 175, 0),
(1961, 1, 1, 2, 9, 3, 175, 1),
(1962, 1, 1, 2, 9, 4, 175, 1),
(1963, 1, 1, 2, 9, 5, 175, 1),
(1964, 1, 1, 2, 9, 6, 175, 1),
(1965, 1, 1, 2, 9, 8, 175, 1),
(1966, 1, 1, 2, 9, 9, 175, 1),
(1967, 1, 1, 2, 9, 10, 175, 1),
(1968, 1, 1, 2, 9, 20, 175, 1),
(1969, 1, 1, 2, 9, 23, 175, 1),
(1970, 1, 1, 2, 9, 28, 175, 1),
(1971, 1, 1, 2, 9, 1, 176, 1),
(1972, 1, 1, 2, 9, 2, 176, 0),
(1973, 1, 1, 2, 9, 3, 176, 1),
(1974, 1, 1, 2, 9, 4, 176, 1),
(1975, 1, 1, 2, 9, 5, 176, 1),
(1976, 1, 1, 2, 9, 6, 176, 1),
(1977, 1, 1, 2, 9, 8, 176, 1),
(1978, 1, 1, 2, 9, 9, 176, 1),
(1979, 1, 1, 2, 9, 10, 176, 1),
(1980, 1, 1, 2, 9, 20, 176, 1),
(1981, 1, 1, 2, 9, 23, 176, 1),
(1982, 1, 1, 2, 9, 28, 176, 1),
(1983, 1, 1, 2, 9, 1, 178, 1),
(1984, 1, 1, 2, 9, 2, 178, 0),
(1985, 1, 1, 2, 9, 3, 178, 1),
(1986, 1, 1, 2, 9, 4, 178, 1),
(1987, 1, 1, 2, 9, 5, 178, 1),
(1988, 1, 1, 2, 9, 6, 178, 1),
(1989, 1, 1, 2, 9, 8, 178, 1),
(1990, 1, 1, 2, 9, 9, 178, 1),
(1991, 1, 1, 2, 9, 10, 178, 1),
(1992, 1, 1, 2, 9, 20, 178, 1),
(1993, 1, 1, 2, 9, 23, 178, 1),
(1994, 1, 1, 2, 9, 28, 178, 1),
(1995, 1, 1, 2, 9, 1, 179, 1),
(1996, 1, 1, 2, 9, 2, 179, 0),
(1997, 1, 1, 2, 9, 3, 179, 1),
(1998, 1, 1, 2, 9, 4, 179, 1),
(1999, 1, 1, 2, 9, 5, 179, 1),
(2000, 1, 1, 2, 9, 6, 179, 1),
(2001, 1, 1, 2, 9, 8, 179, 1),
(2002, 1, 1, 2, 9, 9, 179, 1),
(2003, 1, 1, 2, 9, 10, 179, 1),
(2004, 1, 1, 2, 9, 20, 179, 1),
(2005, 1, 1, 2, 9, 23, 179, 1),
(2006, 1, 1, 2, 9, 28, 179, 1),
(2007, 1, 1, 2, 10, 1, 120, 1),
(2008, 1, 1, 2, 10, 2, 120, 0),
(2009, 1, 1, 2, 10, 3, 120, 1),
(2010, 1, 1, 2, 10, 4, 120, 1),
(2011, 1, 1, 2, 10, 5, 120, 1),
(2012, 1, 1, 2, 10, 6, 120, 1),
(2013, 1, 1, 2, 10, 8, 120, 1),
(2014, 1, 1, 2, 10, 9, 120, 1),
(2015, 1, 1, 2, 10, 10, 120, 1),
(2016, 1, 1, 2, 10, 22, 120, 1),
(2017, 1, 1, 2, 10, 23, 120, 1),
(2018, 1, 1, 2, 10, 26, 120, 1),
(2019, 1, 1, 2, 10, 1, 121, 1),
(2020, 1, 1, 2, 10, 2, 121, 0),
(2021, 1, 1, 2, 10, 3, 121, 1),
(2022, 1, 1, 2, 10, 4, 121, 1),
(2023, 1, 1, 2, 10, 5, 121, 1),
(2024, 1, 1, 2, 10, 6, 121, 1),
(2025, 1, 1, 2, 10, 8, 121, 1),
(2026, 1, 1, 2, 10, 9, 121, 1),
(2027, 1, 1, 2, 10, 10, 121, 1),
(2028, 1, 1, 2, 10, 22, 121, 1),
(2029, 1, 1, 2, 10, 23, 121, 1),
(2030, 1, 1, 2, 10, 26, 121, 1),
(2031, 1, 1, 2, 10, 1, 122, 1),
(2032, 1, 1, 2, 10, 2, 122, 0),
(2033, 1, 1, 2, 10, 3, 122, 1),
(2034, 1, 1, 2, 10, 4, 122, 1),
(2035, 1, 1, 2, 10, 5, 122, 1),
(2036, 1, 1, 2, 10, 6, 122, 1),
(2037, 1, 1, 2, 10, 8, 122, 1),
(2038, 1, 1, 2, 10, 9, 122, 1),
(2039, 1, 1, 2, 10, 10, 122, 1),
(2040, 1, 1, 2, 10, 22, 122, 1),
(2041, 1, 1, 2, 10, 23, 122, 1),
(2042, 1, 1, 2, 10, 26, 122, 1),
(2043, 1, 1, 2, 10, 1, 123, 1),
(2044, 1, 1, 2, 10, 2, 123, 0),
(2045, 1, 1, 2, 10, 3, 123, 1),
(2046, 1, 1, 2, 10, 4, 123, 1),
(2047, 1, 1, 2, 10, 5, 123, 1),
(2048, 1, 1, 2, 10, 6, 123, 1),
(2049, 1, 1, 2, 10, 8, 123, 1),
(2050, 1, 1, 2, 10, 9, 123, 1),
(2051, 1, 1, 2, 10, 10, 123, 1),
(2052, 1, 1, 2, 10, 22, 123, 1),
(2053, 1, 1, 2, 10, 23, 123, 1),
(2054, 1, 1, 2, 10, 26, 123, 1),
(2055, 1, 1, 2, 10, 1, 124, 1),
(2056, 1, 1, 2, 10, 2, 124, 0),
(2057, 1, 1, 2, 10, 3, 124, 1),
(2058, 1, 1, 2, 10, 4, 124, 1),
(2059, 1, 1, 2, 10, 5, 124, 1),
(2060, 1, 1, 2, 10, 6, 124, 1),
(2061, 1, 1, 2, 10, 8, 124, 1),
(2062, 1, 1, 2, 10, 9, 124, 1),
(2063, 1, 1, 2, 10, 10, 124, 1),
(2064, 1, 1, 2, 10, 22, 124, 1),
(2065, 1, 1, 2, 10, 23, 124, 1),
(2066, 1, 1, 2, 10, 26, 124, 1),
(2067, 1, 1, 2, 10, 1, 125, 1),
(2068, 1, 1, 2, 10, 2, 125, 0),
(2069, 1, 1, 2, 10, 3, 125, 1),
(2070, 1, 1, 2, 10, 4, 125, 1),
(2071, 1, 1, 2, 10, 5, 125, 1),
(2072, 1, 1, 2, 10, 6, 125, 1),
(2073, 1, 1, 2, 10, 8, 125, 1),
(2074, 1, 1, 2, 10, 9, 125, 1),
(2075, 1, 1, 2, 10, 10, 125, 1),
(2076, 1, 1, 2, 10, 22, 125, 1),
(2077, 1, 1, 2, 10, 23, 125, 1),
(2078, 1, 1, 2, 10, 26, 125, 1),
(2079, 1, 1, 2, 10, 1, 126, 1),
(2080, 1, 1, 2, 10, 2, 126, 0),
(2081, 1, 1, 2, 10, 3, 126, 1),
(2082, 1, 1, 2, 10, 4, 126, 1),
(2083, 1, 1, 2, 10, 5, 126, 1),
(2084, 1, 1, 2, 10, 6, 126, 1),
(2085, 1, 1, 2, 10, 8, 126, 1),
(2086, 1, 1, 2, 10, 9, 126, 1),
(2087, 1, 1, 2, 10, 10, 126, 1),
(2088, 1, 1, 2, 10, 22, 126, 1),
(2089, 1, 1, 2, 10, 23, 126, 1),
(2090, 1, 1, 2, 10, 26, 126, 1),
(2091, 1, 1, 2, 10, 1, 127, 1),
(2092, 1, 1, 2, 10, 2, 127, 0),
(2093, 1, 1, 2, 10, 3, 127, 1),
(2094, 1, 1, 2, 10, 4, 127, 1),
(2095, 1, 1, 2, 10, 5, 127, 1),
(2096, 1, 1, 2, 10, 6, 127, 1),
(2097, 1, 1, 2, 10, 8, 127, 1),
(2098, 1, 1, 2, 10, 9, 127, 1),
(2099, 1, 1, 2, 10, 10, 127, 1),
(2100, 1, 1, 2, 10, 22, 127, 1),
(2101, 1, 1, 2, 10, 23, 127, 1),
(2102, 1, 1, 2, 10, 26, 127, 1),
(2103, 1, 1, 2, 10, 1, 128, 1),
(2104, 1, 1, 2, 10, 2, 128, 0),
(2105, 1, 1, 2, 10, 3, 128, 1),
(2106, 1, 1, 2, 10, 4, 128, 1),
(2107, 1, 1, 2, 10, 5, 128, 1),
(2108, 1, 1, 2, 10, 6, 128, 1),
(2109, 1, 1, 2, 10, 8, 128, 1),
(2110, 1, 1, 2, 10, 9, 128, 1),
(2111, 1, 1, 2, 10, 10, 128, 1),
(2112, 1, 1, 2, 10, 22, 128, 1),
(2113, 1, 1, 2, 10, 23, 128, 1),
(2114, 1, 1, 2, 10, 26, 128, 1),
(2115, 1, 1, 2, 10, 1, 129, 1),
(2116, 1, 1, 2, 10, 2, 129, 0),
(2117, 1, 1, 2, 10, 3, 129, 1),
(2118, 1, 1, 2, 10, 4, 129, 1),
(2119, 1, 1, 2, 10, 5, 129, 1),
(2120, 1, 1, 2, 10, 6, 129, 1),
(2121, 1, 1, 2, 10, 8, 129, 1),
(2122, 1, 1, 2, 10, 9, 129, 1),
(2123, 1, 1, 2, 10, 10, 129, 1),
(2124, 1, 1, 2, 10, 22, 129, 1),
(2125, 1, 1, 2, 10, 23, 129, 1),
(2126, 1, 1, 2, 10, 26, 129, 1),
(2127, 1, 1, 2, 10, 1, 130, 1),
(2128, 1, 1, 2, 10, 2, 130, 0),
(2129, 1, 1, 2, 10, 3, 130, 1),
(2130, 1, 1, 2, 10, 4, 130, 1),
(2131, 1, 1, 2, 10, 5, 130, 1),
(2132, 1, 1, 2, 10, 6, 130, 1),
(2133, 1, 1, 2, 10, 8, 130, 1),
(2134, 1, 1, 2, 10, 9, 130, 1),
(2135, 1, 1, 2, 10, 10, 130, 1),
(2136, 1, 1, 2, 10, 22, 130, 1),
(2137, 1, 1, 2, 10, 23, 130, 1),
(2138, 1, 1, 2, 10, 26, 130, 1),
(2139, 1, 1, 2, 10, 1, 131, 1),
(2140, 1, 1, 2, 10, 2, 131, 0),
(2141, 1, 1, 2, 10, 3, 131, 1),
(2142, 1, 1, 2, 10, 4, 131, 1),
(2143, 1, 1, 2, 10, 5, 131, 1),
(2144, 1, 1, 2, 10, 6, 131, 1),
(2145, 1, 1, 2, 10, 8, 131, 1),
(2146, 1, 1, 2, 10, 9, 131, 1),
(2147, 1, 1, 2, 10, 10, 131, 1),
(2148, 1, 1, 2, 10, 22, 131, 1),
(2149, 1, 1, 2, 10, 23, 131, 1),
(2150, 1, 1, 2, 10, 26, 131, 1),
(2151, 1, 1, 2, 10, 1, 132, 1),
(2152, 1, 1, 2, 10, 2, 132, 0),
(2153, 1, 1, 2, 10, 3, 132, 1),
(2154, 1, 1, 2, 10, 4, 132, 1),
(2155, 1, 1, 2, 10, 5, 132, 1),
(2156, 1, 1, 2, 10, 6, 132, 1),
(2157, 1, 1, 2, 10, 8, 132, 1),
(2158, 1, 1, 2, 10, 9, 132, 1),
(2159, 1, 1, 2, 10, 10, 132, 1),
(2160, 1, 1, 2, 10, 22, 132, 1),
(2161, 1, 1, 2, 10, 23, 132, 1),
(2162, 1, 1, 2, 10, 26, 132, 1),
(2163, 1, 1, 2, 10, 1, 133, 1),
(2164, 1, 1, 2, 10, 2, 133, 0),
(2165, 1, 1, 2, 10, 3, 133, 1),
(2166, 1, 1, 2, 10, 4, 133, 1),
(2167, 1, 1, 2, 10, 5, 133, 1),
(2168, 1, 1, 2, 10, 6, 133, 1),
(2169, 1, 1, 2, 10, 8, 133, 1),
(2170, 1, 1, 2, 10, 9, 133, 1),
(2171, 1, 1, 2, 10, 10, 133, 1),
(2172, 1, 1, 2, 10, 22, 133, 1),
(2173, 1, 1, 2, 10, 23, 133, 1),
(2174, 1, 1, 2, 10, 26, 133, 1),
(2175, 1, 1, 2, 10, 1, 134, 1),
(2176, 1, 1, 2, 10, 2, 134, 0),
(2177, 1, 1, 2, 10, 3, 134, 1),
(2178, 1, 1, 2, 10, 4, 134, 1),
(2179, 1, 1, 2, 10, 5, 134, 1),
(2180, 1, 1, 2, 10, 6, 134, 1),
(2181, 1, 1, 2, 10, 8, 134, 1),
(2182, 1, 1, 2, 10, 9, 134, 1),
(2183, 1, 1, 2, 10, 10, 134, 1),
(2184, 1, 1, 2, 10, 22, 134, 1),
(2185, 1, 1, 2, 10, 23, 134, 1),
(2186, 1, 1, 2, 10, 26, 134, 1),
(2187, 1, 1, 2, 10, 1, 135, 1),
(2188, 1, 1, 2, 10, 2, 135, 0),
(2189, 1, 1, 2, 10, 3, 135, 1),
(2190, 1, 1, 2, 10, 4, 135, 1),
(2191, 1, 1, 2, 10, 5, 135, 1),
(2192, 1, 1, 2, 10, 6, 135, 1),
(2193, 1, 1, 2, 10, 8, 135, 1),
(2194, 1, 1, 2, 10, 9, 135, 1),
(2195, 1, 1, 2, 10, 10, 135, 1),
(2196, 1, 1, 2, 10, 22, 135, 1),
(2197, 1, 1, 2, 10, 23, 135, 1),
(2198, 1, 1, 2, 10, 26, 135, 1),
(2199, 1, 1, 2, 10, 1, 136, 1),
(2200, 1, 1, 2, 10, 2, 136, 0),
(2201, 1, 1, 2, 10, 3, 136, 1),
(2202, 1, 1, 2, 10, 4, 136, 1),
(2203, 1, 1, 2, 10, 5, 136, 1),
(2204, 1, 1, 2, 10, 6, 136, 1),
(2205, 1, 1, 2, 10, 8, 136, 1),
(2206, 1, 1, 2, 10, 9, 136, 1),
(2207, 1, 1, 2, 10, 10, 136, 1),
(2208, 1, 1, 2, 10, 22, 136, 1),
(2209, 1, 1, 2, 10, 23, 136, 1),
(2210, 1, 1, 2, 10, 26, 136, 1),
(2211, 1, 1, 2, 10, 1, 137, 1),
(2212, 1, 1, 2, 10, 2, 137, 0),
(2213, 1, 1, 2, 10, 3, 137, 1),
(2214, 1, 1, 2, 10, 4, 137, 1),
(2215, 1, 1, 2, 10, 5, 137, 1),
(2216, 1, 1, 2, 10, 6, 137, 1),
(2217, 1, 1, 2, 10, 8, 137, 1),
(2218, 1, 1, 2, 10, 9, 137, 1),
(2219, 1, 1, 2, 10, 10, 137, 1),
(2220, 1, 1, 2, 10, 22, 137, 1),
(2221, 1, 1, 2, 10, 23, 137, 1),
(2222, 1, 1, 2, 10, 26, 137, 1),
(2223, 1, 1, 2, 10, 1, 138, 1),
(2224, 1, 1, 2, 10, 2, 138, 0),
(2225, 1, 1, 2, 10, 3, 138, 1),
(2226, 1, 1, 2, 10, 4, 138, 1),
(2227, 1, 1, 2, 10, 5, 138, 1),
(2228, 1, 1, 2, 10, 6, 138, 1),
(2229, 1, 1, 2, 10, 8, 138, 1),
(2230, 1, 1, 2, 10, 9, 138, 1),
(2231, 1, 1, 2, 10, 10, 138, 1),
(2232, 1, 1, 2, 10, 22, 138, 1),
(2233, 1, 1, 2, 10, 23, 138, 1),
(2234, 1, 1, 2, 10, 26, 138, 1),
(2235, 1, 1, 3, 11, 1, 180, 1),
(2236, 1, 1, 3, 11, 2, 180, 0),
(2237, 1, 1, 3, 11, 3, 180, 1),
(2238, 1, 1, 3, 11, 4, 180, 1),
(2239, 1, 1, 3, 11, 8, 180, 1),
(2240, 1, 1, 3, 11, 9, 180, 1),
(2241, 1, 1, 3, 11, 10, 180, 1),
(2242, 1, 1, 3, 11, 18, 180, 1),
(2243, 1, 1, 3, 11, 23, 180, 1),
(2244, 1, 1, 3, 11, 24, 180, 1),
(2245, 1, 1, 3, 11, 1, 181, 1),
(2246, 1, 1, 3, 11, 2, 181, 0),
(2247, 1, 1, 3, 11, 3, 181, 1),
(2248, 1, 1, 3, 11, 4, 181, 1),
(2249, 1, 1, 3, 11, 8, 181, 1),
(2250, 1, 1, 3, 11, 9, 181, 1),
(2251, 1, 1, 3, 11, 10, 181, 1),
(2252, 1, 1, 3, 11, 18, 181, 1),
(2253, 1, 1, 3, 11, 23, 181, 1),
(2254, 1, 1, 3, 11, 24, 181, 1),
(2255, 1, 1, 3, 11, 1, 182, 1),
(2256, 1, 1, 3, 11, 2, 182, 0),
(2257, 1, 1, 3, 11, 3, 182, 1),
(2258, 1, 1, 3, 11, 4, 182, 1),
(2259, 1, 1, 3, 11, 8, 182, 1),
(2260, 1, 1, 3, 11, 9, 182, 1),
(2261, 1, 1, 3, 11, 10, 182, 1),
(2262, 1, 1, 3, 11, 18, 182, 1),
(2263, 1, 1, 3, 11, 23, 182, 1),
(2264, 1, 1, 3, 11, 24, 182, 1),
(2265, 1, 1, 3, 11, 1, 183, 1),
(2266, 1, 1, 3, 11, 2, 183, 0),
(2267, 1, 1, 3, 11, 3, 183, 1),
(2268, 1, 1, 3, 11, 4, 183, 1),
(2269, 1, 1, 3, 11, 8, 183, 1),
(2270, 1, 1, 3, 11, 9, 183, 1),
(2271, 1, 1, 3, 11, 10, 183, 1),
(2272, 1, 1, 3, 11, 18, 183, 1),
(2273, 1, 1, 3, 11, 23, 183, 1),
(2274, 1, 1, 3, 11, 24, 183, 1),
(2275, 1, 1, 3, 11, 1, 184, 1),
(2276, 1, 1, 3, 11, 2, 184, 0),
(2277, 1, 1, 3, 11, 3, 184, 1),
(2278, 1, 1, 3, 11, 4, 184, 1),
(2279, 1, 1, 3, 11, 8, 184, 1),
(2280, 1, 1, 3, 11, 9, 184, 1),
(2281, 1, 1, 3, 11, 10, 184, 1),
(2282, 1, 1, 3, 11, 18, 184, 1),
(2283, 1, 1, 3, 11, 23, 184, 1),
(2284, 1, 1, 3, 11, 24, 184, 1),
(2285, 1, 1, 3, 11, 1, 185, 1),
(2286, 1, 1, 3, 11, 2, 185, 0),
(2287, 1, 1, 3, 11, 3, 185, 1),
(2288, 1, 1, 3, 11, 4, 185, 1),
(2289, 1, 1, 3, 11, 8, 185, 1),
(2290, 1, 1, 3, 11, 9, 185, 1),
(2291, 1, 1, 3, 11, 10, 185, 1),
(2292, 1, 1, 3, 11, 18, 185, 1),
(2293, 1, 1, 3, 11, 23, 185, 1),
(2294, 1, 1, 3, 11, 24, 185, 1),
(2295, 1, 1, 3, 11, 1, 186, 1),
(2296, 1, 1, 3, 11, 2, 186, 0),
(2297, 1, 1, 3, 11, 3, 186, 1),
(2298, 1, 1, 3, 11, 4, 186, 1),
(2299, 1, 1, 3, 11, 8, 186, 1),
(2300, 1, 1, 3, 11, 9, 186, 1),
(2301, 1, 1, 3, 11, 10, 186, 1),
(2302, 1, 1, 3, 11, 18, 186, 1),
(2303, 1, 1, 3, 11, 23, 186, 1),
(2304, 1, 1, 3, 11, 24, 186, 1),
(2305, 1, 1, 3, 11, 1, 187, 1),
(2306, 1, 1, 3, 11, 2, 187, 0),
(2307, 1, 1, 3, 11, 3, 187, 1),
(2308, 1, 1, 3, 11, 4, 187, 1),
(2309, 1, 1, 3, 11, 8, 187, 1),
(2310, 1, 1, 3, 11, 9, 187, 1),
(2311, 1, 1, 3, 11, 10, 187, 1),
(2312, 1, 1, 3, 11, 18, 187, 1),
(2313, 1, 1, 3, 11, 23, 187, 1),
(2314, 1, 1, 3, 11, 24, 187, 1),
(2315, 1, 1, 3, 11, 1, 188, 1),
(2316, 1, 1, 3, 11, 2, 188, 0),
(2317, 1, 1, 3, 11, 3, 188, 1),
(2318, 1, 1, 3, 11, 4, 188, 1),
(2319, 1, 1, 3, 11, 8, 188, 1),
(2320, 1, 1, 3, 11, 9, 188, 1),
(2321, 1, 1, 3, 11, 10, 188, 1),
(2322, 1, 1, 3, 11, 18, 188, 1),
(2323, 1, 1, 3, 11, 23, 188, 1),
(2324, 1, 1, 3, 11, 24, 188, 1),
(2325, 1, 1, 3, 11, 1, 189, 0),
(2326, 1, 1, 3, 11, 2, 189, 1),
(2327, 1, 1, 3, 11, 3, 189, 1),
(2328, 1, 1, 3, 11, 4, 189, 1),
(2329, 1, 1, 3, 11, 8, 189, 1),
(2330, 1, 1, 3, 11, 9, 189, 1),
(2331, 1, 1, 3, 11, 10, 189, 1),
(2332, 1, 1, 3, 11, 18, 189, 1),
(2333, 1, 1, 3, 11, 23, 189, 1),
(2334, 1, 1, 3, 11, 24, 189, 1),
(2335, 1, 1, 3, 11, 1, 190, 1),
(2336, 1, 1, 3, 11, 2, 190, 0),
(2337, 1, 1, 3, 11, 3, 190, 1),
(2338, 1, 1, 3, 11, 4, 190, 1),
(2339, 1, 1, 3, 11, 8, 190, 1),
(2340, 1, 1, 3, 11, 9, 190, 1),
(2341, 1, 1, 3, 11, 10, 190, 1),
(2342, 1, 1, 3, 11, 18, 190, 1),
(2343, 1, 1, 3, 11, 23, 190, 1),
(2344, 1, 1, 3, 11, 24, 190, 1),
(2345, 1, 1, 3, 11, 1, 191, 1),
(2346, 1, 1, 3, 11, 2, 191, 0),
(2347, 1, 1, 3, 11, 3, 191, 1),
(2348, 1, 1, 3, 11, 4, 191, 1),
(2349, 1, 1, 3, 11, 8, 191, 1),
(2350, 1, 1, 3, 11, 9, 191, 1),
(2351, 1, 1, 3, 11, 10, 191, 1),
(2352, 1, 1, 3, 11, 18, 191, 1),
(2353, 1, 1, 3, 11, 23, 191, 1),
(2354, 1, 1, 3, 11, 24, 191, 1),
(2355, 1, 1, 3, 11, 1, 192, 1),
(2356, 1, 1, 3, 11, 2, 192, 0),
(2357, 1, 1, 3, 11, 3, 192, 1),
(2358, 1, 1, 3, 11, 4, 192, 1),
(2359, 1, 1, 3, 11, 8, 192, 1),
(2360, 1, 1, 3, 11, 9, 192, 1),
(2361, 1, 1, 3, 11, 10, 192, 1),
(2362, 1, 1, 3, 11, 18, 192, 1),
(2363, 1, 1, 3, 11, 23, 192, 1),
(2364, 1, 1, 3, 11, 24, 192, 1),
(2365, 1, 1, 3, 11, 1, 193, 1),
(2366, 1, 1, 3, 11, 2, 193, 0),
(2367, 1, 1, 3, 11, 3, 193, 1),
(2368, 1, 1, 3, 11, 4, 193, 1),
(2369, 1, 1, 3, 11, 8, 193, 1),
(2370, 1, 1, 3, 11, 9, 193, 1),
(2371, 1, 1, 3, 11, 10, 193, 1),
(2372, 1, 1, 3, 11, 18, 193, 1),
(2373, 1, 1, 3, 11, 23, 193, 1),
(2374, 1, 1, 3, 11, 24, 193, 1),
(2375, 1, 1, 3, 12, 1, 194, 1),
(2376, 1, 1, 3, 12, 2, 194, 0),
(2377, 1, 1, 3, 12, 3, 194, 1),
(2378, 1, 1, 3, 12, 4, 194, 1),
(2379, 1, 1, 3, 12, 8, 194, 1),
(2380, 1, 1, 3, 12, 9, 194, 1),
(2381, 1, 1, 3, 12, 10, 194, 1),
(2382, 1, 1, 3, 12, 19, 194, 1),
(2383, 1, 1, 3, 12, 23, 194, 1),
(2384, 1, 1, 3, 12, 25, 194, 1),
(2385, 1, 1, 3, 12, 1, 195, 1),
(2386, 1, 1, 3, 12, 2, 195, 0),
(2387, 1, 1, 3, 12, 3, 195, 1),
(2388, 1, 1, 3, 12, 4, 195, 1),
(2389, 1, 1, 3, 12, 8, 195, 1),
(2390, 1, 1, 3, 12, 9, 195, 1),
(2391, 1, 1, 3, 12, 10, 195, 1),
(2392, 1, 1, 3, 12, 19, 195, 1),
(2393, 1, 1, 3, 12, 23, 195, 1),
(2394, 1, 1, 3, 12, 25, 195, 1),
(2395, 1, 1, 3, 12, 1, 196, 1),
(2396, 1, 1, 3, 12, 2, 196, 0),
(2397, 1, 1, 3, 12, 3, 196, 1),
(2398, 1, 1, 3, 12, 4, 196, 1),
(2399, 1, 1, 3, 12, 8, 196, 1),
(2400, 1, 1, 3, 12, 9, 196, 1),
(2401, 1, 1, 3, 12, 10, 196, 1),
(2402, 1, 1, 3, 12, 19, 196, 1),
(2403, 1, 1, 3, 12, 23, 196, 1),
(2404, 1, 1, 3, 12, 25, 196, 1),
(2405, 1, 1, 3, 12, 1, 197, 1),
(2406, 1, 1, 3, 12, 2, 197, 0),
(2407, 1, 1, 3, 12, 3, 197, 1),
(2408, 1, 1, 3, 12, 4, 197, 1),
(2409, 1, 1, 3, 12, 8, 197, 1),
(2410, 1, 1, 3, 12, 9, 197, 1),
(2411, 1, 1, 3, 12, 10, 197, 1),
(2412, 1, 1, 3, 12, 19, 197, 1),
(2413, 1, 1, 3, 12, 23, 197, 1),
(2414, 1, 1, 3, 12, 25, 197, 1),
(2415, 1, 1, 3, 12, 1, 198, 0),
(2416, 1, 1, 3, 12, 2, 198, 1),
(2417, 1, 1, 3, 12, 3, 198, 1),
(2418, 1, 1, 3, 12, 4, 198, 1),
(2419, 1, 1, 3, 12, 8, 198, 1),
(2420, 1, 1, 3, 12, 9, 198, 1),
(2421, 1, 1, 3, 12, 10, 198, 1),
(2422, 1, 1, 3, 12, 19, 198, 1),
(2423, 1, 1, 3, 12, 23, 198, 1),
(2424, 1, 1, 3, 12, 25, 198, 1),
(2425, 1, 1, 3, 12, 1, 199, 1),
(2426, 1, 1, 3, 12, 2, 199, 0),
(2427, 1, 1, 3, 12, 3, 199, 1),
(2428, 1, 1, 3, 12, 4, 199, 1),
(2429, 1, 1, 3, 12, 8, 199, 1),
(2430, 1, 1, 3, 12, 9, 199, 1),
(2431, 1, 1, 3, 12, 10, 199, 1),
(2432, 1, 1, 3, 12, 19, 199, 1),
(2433, 1, 1, 3, 12, 23, 199, 1),
(2434, 1, 1, 3, 12, 25, 199, 1),
(2435, 1, 1, 3, 12, 1, 200, 1),
(2436, 1, 1, 3, 12, 2, 200, 0),
(2437, 1, 1, 3, 12, 3, 200, 1),
(2438, 1, 1, 3, 12, 4, 200, 1),
(2439, 1, 1, 3, 12, 8, 200, 1),
(2440, 1, 1, 3, 12, 9, 200, 1),
(2441, 1, 1, 3, 12, 10, 200, 1),
(2442, 1, 1, 3, 12, 19, 200, 1),
(2443, 1, 1, 3, 12, 23, 200, 1),
(2444, 1, 1, 3, 12, 25, 200, 1),
(2445, 1, 1, 3, 12, 1, 201, 1),
(2446, 1, 1, 3, 12, 2, 201, 0),
(2447, 1, 1, 3, 12, 3, 201, 1),
(2448, 1, 1, 3, 12, 4, 201, 1),
(2449, 1, 1, 3, 12, 8, 201, 1),
(2450, 1, 1, 3, 12, 9, 201, 1),
(2451, 1, 1, 3, 12, 10, 201, 1),
(2452, 1, 1, 3, 12, 19, 201, 1),
(2453, 1, 1, 3, 12, 23, 201, 1),
(2454, 1, 1, 3, 12, 25, 201, 1),
(2455, 1, 1, 3, 12, 1, 202, 1),
(2456, 1, 1, 3, 12, 2, 202, 0),
(2457, 1, 1, 3, 12, 3, 202, 1),
(2458, 1, 1, 3, 12, 4, 202, 1),
(2459, 1, 1, 3, 12, 8, 202, 1),
(2460, 1, 1, 3, 12, 9, 202, 1),
(2461, 1, 1, 3, 12, 10, 202, 1),
(2462, 1, 1, 3, 12, 19, 202, 1),
(2463, 1, 1, 3, 12, 23, 202, 1),
(2464, 1, 1, 3, 12, 25, 202, 1),
(2465, 1, 1, 3, 12, 1, 203, 1),
(2466, 1, 1, 3, 12, 2, 203, 0),
(2467, 1, 1, 3, 12, 3, 203, 1),
(2468, 1, 1, 3, 12, 4, 203, 1),
(2469, 1, 1, 3, 12, 8, 203, 1),
(2470, 1, 1, 3, 12, 9, 203, 1),
(2471, 1, 1, 3, 12, 10, 203, 1),
(2472, 1, 1, 3, 12, 19, 203, 1),
(2473, 1, 1, 3, 12, 23, 203, 1),
(2474, 1, 1, 3, 12, 25, 203, 1),
(2475, 1, 1, 3, 12, 1, 204, 1),
(2476, 1, 1, 3, 12, 2, 204, 0),
(2477, 1, 1, 3, 12, 3, 204, 1),
(2478, 1, 1, 3, 12, 4, 204, 1),
(2479, 1, 1, 3, 12, 8, 204, 1),
(2480, 1, 1, 3, 12, 9, 204, 1),
(2481, 1, 1, 3, 12, 10, 204, 1),
(2482, 1, 1, 3, 12, 19, 204, 1),
(2483, 1, 1, 3, 12, 23, 204, 1),
(2484, 1, 1, 3, 12, 25, 204, 1),
(2485, 1, 1, 3, 12, 1, 205, 1),
(2486, 1, 1, 3, 12, 2, 205, 0),
(2487, 1, 1, 3, 12, 3, 205, 1),
(2488, 1, 1, 3, 12, 4, 205, 1),
(2489, 1, 1, 3, 12, 8, 205, 1),
(2490, 1, 1, 3, 12, 9, 205, 1),
(2491, 1, 1, 3, 12, 10, 205, 1),
(2492, 1, 1, 3, 12, 19, 205, 1),
(2493, 1, 1, 3, 12, 23, 205, 1),
(2494, 1, 1, 3, 12, 25, 205, 1),
(2495, 1, 1, 3, 12, 1, 206, 1),
(2496, 1, 1, 3, 12, 2, 206, 0),
(2497, 1, 1, 3, 12, 3, 206, 1),
(2498, 1, 1, 3, 12, 4, 206, 1),
(2499, 1, 1, 3, 12, 8, 206, 1),
(2500, 1, 1, 3, 12, 9, 206, 1),
(2501, 1, 1, 3, 12, 10, 206, 1),
(2502, 1, 1, 3, 12, 19, 206, 1),
(2503, 1, 1, 3, 12, 23, 206, 1),
(2504, 1, 1, 3, 12, 25, 206, 1),
(2505, 1, 1, 3, 12, 1, 207, 1),
(2506, 1, 1, 3, 12, 2, 207, 0),
(2507, 1, 1, 3, 12, 3, 207, 1),
(2508, 1, 1, 3, 12, 4, 207, 1),
(2509, 1, 1, 3, 12, 8, 207, 1),
(2510, 1, 1, 3, 12, 9, 207, 1),
(2511, 1, 1, 3, 12, 10, 207, 1),
(2512, 1, 1, 3, 12, 19, 207, 1),
(2513, 1, 1, 3, 12, 23, 207, 1),
(2514, 1, 1, 3, 12, 25, 207, 1),
(2515, 1, 1, 3, 12, 1, 208, 1),
(2516, 1, 1, 3, 12, 2, 208, 0),
(2517, 1, 1, 3, 12, 3, 208, 1),
(2518, 1, 1, 3, 12, 4, 208, 1),
(2519, 1, 1, 3, 12, 8, 208, 1),
(2520, 1, 1, 3, 12, 9, 208, 1),
(2521, 1, 1, 3, 12, 10, 208, 1),
(2522, 1, 1, 3, 12, 19, 208, 1),
(2523, 1, 1, 3, 12, 23, 208, 1),
(2524, 1, 1, 3, 12, 25, 208, 1),
(2525, 1, 1, 3, 12, 1, 209, 1),
(2526, 1, 1, 3, 12, 2, 209, 0),
(2527, 1, 1, 3, 12, 3, 209, 1),
(2528, 1, 1, 3, 12, 4, 209, 1),
(2529, 1, 1, 3, 12, 8, 209, 1),
(2530, 1, 1, 3, 12, 9, 209, 1),
(2531, 1, 1, 3, 12, 10, 209, 1),
(2532, 1, 1, 3, 12, 19, 209, 1),
(2533, 1, 1, 3, 12, 23, 209, 1),
(2534, 1, 1, 3, 12, 25, 209, 1),
(2535, 1, 1, 3, 12, 1, 210, 1),
(2536, 1, 1, 3, 12, 2, 210, 0),
(2537, 1, 1, 3, 12, 3, 210, 1),
(2538, 1, 1, 3, 12, 4, 210, 1),
(2539, 1, 1, 3, 12, 8, 210, 1),
(2540, 1, 1, 3, 12, 9, 210, 1),
(2541, 1, 1, 3, 12, 10, 210, 1),
(2542, 1, 1, 3, 12, 19, 210, 1),
(2543, 1, 1, 3, 12, 23, 210, 1),
(2544, 1, 1, 3, 12, 25, 210, 1),
(2545, 1, 1, 3, 12, 1, 211, 1),
(2546, 1, 1, 3, 12, 2, 211, 0),
(2547, 1, 1, 3, 12, 3, 211, 1),
(2548, 1, 1, 3, 12, 4, 211, 1),
(2549, 1, 1, 3, 12, 8, 211, 1),
(2550, 1, 1, 3, 12, 9, 211, 1),
(2551, 1, 1, 3, 12, 10, 211, 1),
(2552, 1, 1, 3, 12, 19, 211, 1),
(2553, 1, 1, 3, 12, 23, 211, 1),
(2554, 1, 1, 3, 12, 25, 211, 1),
(2555, 1, 1, 3, 13, 1, 230, 1),
(2556, 1, 1, 3, 13, 2, 230, 0),
(2557, 1, 1, 3, 13, 3, 230, 1),
(2558, 1, 1, 3, 13, 4, 230, 1),
(2559, 1, 1, 3, 13, 8, 230, 1),
(2560, 1, 1, 3, 13, 9, 230, 1),
(2561, 1, 1, 3, 13, 10, 230, 1),
(2562, 1, 1, 3, 13, 21, 230, 1),
(2563, 1, 1, 3, 13, 23, 230, 1),
(2564, 1, 1, 3, 13, 27, 230, 1),
(2565, 1, 1, 3, 13, 1, 231, 1),
(2566, 1, 1, 3, 13, 2, 231, 0),
(2567, 1, 1, 3, 13, 3, 231, 1),
(2568, 1, 1, 3, 13, 4, 231, 1),
(2569, 1, 1, 3, 13, 8, 231, 1),
(2570, 1, 1, 3, 13, 9, 231, 1),
(2571, 1, 1, 3, 13, 10, 231, 1),
(2572, 1, 1, 3, 13, 21, 231, 1),
(2573, 1, 1, 3, 13, 23, 231, 1),
(2574, 1, 1, 3, 13, 27, 231, 1),
(2575, 1, 1, 3, 13, 1, 232, 1),
(2576, 1, 1, 3, 13, 2, 232, 0),
(2577, 1, 1, 3, 13, 3, 232, 1),
(2578, 1, 1, 3, 13, 4, 232, 1),
(2579, 1, 1, 3, 13, 8, 232, 1),
(2580, 1, 1, 3, 13, 9, 232, 1),
(2581, 1, 1, 3, 13, 10, 232, 1),
(2582, 1, 1, 3, 13, 21, 232, 1),
(2583, 1, 1, 3, 13, 23, 232, 1),
(2584, 1, 1, 3, 13, 27, 232, 1),
(2585, 1, 1, 3, 13, 1, 233, 1),
(2586, 1, 1, 3, 13, 2, 233, 0),
(2587, 1, 1, 3, 13, 3, 233, 1),
(2588, 1, 1, 3, 13, 4, 233, 1),
(2589, 1, 1, 3, 13, 8, 233, 1),
(2590, 1, 1, 3, 13, 9, 233, 1),
(2591, 1, 1, 3, 13, 10, 233, 1),
(2592, 1, 1, 3, 13, 21, 233, 1),
(2593, 1, 1, 3, 13, 23, 233, 1),
(2594, 1, 1, 3, 13, 27, 233, 1),
(2595, 1, 1, 3, 13, 1, 234, 1),
(2596, 1, 1, 3, 13, 2, 234, 0),
(2597, 1, 1, 3, 13, 3, 234, 1),
(2598, 1, 1, 3, 13, 4, 234, 1),
(2599, 1, 1, 3, 13, 8, 234, 1),
(2600, 1, 1, 3, 13, 9, 234, 1),
(2601, 1, 1, 3, 13, 10, 234, 1),
(2602, 1, 1, 3, 13, 21, 234, 1),
(2603, 1, 1, 3, 13, 23, 234, 1),
(2604, 1, 1, 3, 13, 27, 234, 1),
(2605, 1, 1, 3, 13, 1, 235, 1),
(2606, 1, 1, 3, 13, 2, 235, 0),
(2607, 1, 1, 3, 13, 3, 235, 1),
(2608, 1, 1, 3, 13, 4, 235, 1),
(2609, 1, 1, 3, 13, 8, 235, 1),
(2610, 1, 1, 3, 13, 9, 235, 1),
(2611, 1, 1, 3, 13, 10, 235, 1),
(2612, 1, 1, 3, 13, 21, 235, 1),
(2613, 1, 1, 3, 13, 23, 235, 1),
(2614, 1, 1, 3, 13, 27, 235, 1),
(2615, 1, 1, 3, 13, 1, 236, 1),
(2616, 1, 1, 3, 13, 2, 236, 0),
(2617, 1, 1, 3, 13, 3, 236, 1),
(2618, 1, 1, 3, 13, 4, 236, 1),
(2619, 1, 1, 3, 13, 8, 236, 1),
(2620, 1, 1, 3, 13, 9, 236, 1),
(2621, 1, 1, 3, 13, 10, 236, 1),
(2622, 1, 1, 3, 13, 21, 236, 1),
(2623, 1, 1, 3, 13, 23, 236, 1),
(2624, 1, 1, 3, 13, 27, 236, 1),
(2625, 1, 1, 3, 13, 1, 237, 1),
(2626, 1, 1, 3, 13, 2, 237, 0),
(2627, 1, 1, 3, 13, 3, 237, 1),
(2628, 1, 1, 3, 13, 4, 237, 1),
(2629, 1, 1, 3, 13, 8, 237, 1),
(2630, 1, 1, 3, 13, 9, 237, 1),
(2631, 1, 1, 3, 13, 10, 237, 1),
(2632, 1, 1, 3, 13, 21, 237, 1),
(2633, 1, 1, 3, 13, 23, 237, 1),
(2634, 1, 1, 3, 13, 27, 237, 1),
(2635, 1, 1, 3, 13, 1, 238, 1),
(2636, 1, 1, 3, 13, 2, 238, 0),
(2637, 1, 1, 3, 13, 3, 238, 1),
(2638, 1, 1, 3, 13, 4, 238, 1),
(2639, 1, 1, 3, 13, 8, 238, 1),
(2640, 1, 1, 3, 13, 9, 238, 1),
(2641, 1, 1, 3, 13, 10, 238, 1),
(2642, 1, 1, 3, 13, 21, 238, 1),
(2643, 1, 1, 3, 13, 23, 238, 1),
(2644, 1, 1, 3, 13, 27, 238, 1),
(2645, 1, 1, 3, 14, 1, 239, 1),
(2646, 1, 1, 3, 14, 2, 239, 0),
(2647, 1, 1, 3, 14, 3, 239, 1),
(2648, 1, 1, 3, 14, 4, 239, 1),
(2649, 1, 1, 3, 14, 8, 239, 1),
(2650, 1, 1, 3, 14, 9, 239, 1),
(2651, 1, 1, 3, 14, 10, 239, 1),
(2652, 1, 1, 3, 14, 20, 239, 1),
(2653, 1, 1, 3, 14, 23, 239, 1),
(2654, 1, 1, 3, 14, 29, 239, 1),
(2655, 1, 1, 3, 14, 1, 240, 1),
(2656, 1, 1, 3, 14, 2, 240, 0),
(2657, 1, 1, 3, 14, 3, 240, 1),
(2658, 1, 1, 3, 14, 4, 240, 1),
(2659, 1, 1, 3, 14, 8, 240, 1),
(2660, 1, 1, 3, 14, 9, 240, 1),
(2661, 1, 1, 3, 14, 10, 240, 1),
(2662, 1, 1, 3, 14, 20, 240, 1),
(2663, 1, 1, 3, 14, 23, 240, 1),
(2664, 1, 1, 3, 14, 29, 240, 1),
(2665, 1, 1, 3, 14, 1, 241, 1),
(2666, 1, 1, 3, 14, 2, 241, 0),
(2667, 1, 1, 3, 14, 3, 241, 1),
(2668, 1, 1, 3, 14, 4, 241, 1),
(2669, 1, 1, 3, 14, 8, 241, 1),
(2670, 1, 1, 3, 14, 9, 241, 1),
(2671, 1, 1, 3, 14, 10, 241, 1),
(2672, 1, 1, 3, 14, 20, 241, 1),
(2673, 1, 1, 3, 14, 23, 241, 1),
(2674, 1, 1, 3, 14, 29, 241, 1),
(2675, 1, 1, 3, 14, 1, 242, 1),
(2676, 1, 1, 3, 14, 2, 242, 0),
(2677, 1, 1, 3, 14, 3, 242, 1),
(2678, 1, 1, 3, 14, 4, 242, 1),
(2679, 1, 1, 3, 14, 8, 242, 1),
(2680, 1, 1, 3, 14, 9, 242, 1),
(2681, 1, 1, 3, 14, 10, 242, 1),
(2682, 1, 1, 3, 14, 20, 242, 1),
(2683, 1, 1, 3, 14, 23, 242, 1),
(2684, 1, 1, 3, 14, 29, 242, 1),
(2685, 1, 1, 3, 14, 1, 243, 1),
(2686, 1, 1, 3, 14, 2, 243, 0),
(2687, 1, 1, 3, 14, 3, 243, 1),
(2688, 1, 1, 3, 14, 4, 243, 1),
(2689, 1, 1, 3, 14, 8, 243, 1),
(2690, 1, 1, 3, 14, 9, 243, 1),
(2691, 1, 1, 3, 14, 10, 243, 1),
(2692, 1, 1, 3, 14, 20, 243, 1),
(2693, 1, 1, 3, 14, 23, 243, 1),
(2694, 1, 1, 3, 14, 29, 243, 1),
(2695, 1, 1, 3, 14, 1, 244, 1),
(2696, 1, 1, 3, 14, 2, 244, 0),
(2697, 1, 1, 3, 14, 3, 244, 1),
(2698, 1, 1, 3, 14, 4, 244, 1),
(2699, 1, 1, 3, 14, 8, 244, 1),
(2700, 1, 1, 3, 14, 9, 244, 1),
(2701, 1, 1, 3, 14, 10, 244, 1),
(2702, 1, 1, 3, 14, 20, 244, 1),
(2703, 1, 1, 3, 14, 23, 244, 1),
(2704, 1, 1, 3, 14, 29, 244, 1),
(2705, 1, 1, 3, 14, 1, 245, 0),
(2706, 1, 1, 3, 14, 2, 245, 1),
(2707, 1, 1, 3, 14, 3, 245, 1),
(2708, 1, 1, 3, 14, 4, 245, 1),
(2709, 1, 1, 3, 14, 8, 245, 1),
(2710, 1, 1, 3, 14, 9, 245, 1),
(2711, 1, 1, 3, 14, 10, 245, 1),
(2712, 1, 1, 3, 14, 20, 245, 1),
(2713, 1, 1, 3, 14, 23, 245, 1),
(2714, 1, 1, 3, 14, 29, 245, 1),
(2715, 1, 1, 3, 14, 1, 246, 1),
(2716, 1, 1, 3, 14, 2, 246, 0),
(2717, 1, 1, 3, 14, 3, 246, 1),
(2718, 1, 1, 3, 14, 4, 246, 1),
(2719, 1, 1, 3, 14, 8, 246, 1),
(2720, 1, 1, 3, 14, 9, 246, 1),
(2721, 1, 1, 3, 14, 10, 246, 1),
(2722, 1, 1, 3, 14, 20, 246, 1),
(2723, 1, 1, 3, 14, 23, 246, 1),
(2724, 1, 1, 3, 14, 29, 246, 1),
(2725, 1, 1, 3, 14, 1, 247, 1),
(2726, 1, 1, 3, 14, 2, 247, 0),
(2727, 1, 1, 3, 14, 3, 247, 1),
(2728, 1, 1, 3, 14, 4, 247, 1),
(2729, 1, 1, 3, 14, 8, 247, 1),
(2730, 1, 1, 3, 14, 9, 247, 1),
(2731, 1, 1, 3, 14, 10, 247, 1),
(2732, 1, 1, 3, 14, 20, 247, 1),
(2733, 1, 1, 3, 14, 23, 247, 1),
(2734, 1, 1, 3, 14, 29, 247, 1),
(2735, 1, 1, 3, 14, 1, 248, 1),
(2736, 1, 1, 3, 14, 2, 248, 0),
(2737, 1, 1, 3, 14, 3, 248, 1),
(2738, 1, 1, 3, 14, 4, 248, 1),
(2739, 1, 1, 3, 14, 8, 248, 1),
(2740, 1, 1, 3, 14, 9, 248, 1),
(2741, 1, 1, 3, 14, 10, 248, 1),
(2742, 1, 1, 3, 14, 20, 248, 1),
(2743, 1, 1, 3, 14, 23, 248, 1),
(2744, 1, 1, 3, 14, 29, 248, 1),
(2745, 1, 1, 3, 14, 1, 249, 1),
(2746, 1, 1, 3, 14, 2, 249, 0),
(2747, 1, 1, 3, 14, 3, 249, 1),
(2748, 1, 1, 3, 14, 4, 249, 1),
(2749, 1, 1, 3, 14, 8, 249, 1),
(2750, 1, 1, 3, 14, 9, 249, 1),
(2751, 1, 1, 3, 14, 10, 249, 1),
(2752, 1, 1, 3, 14, 20, 249, 1),
(2753, 1, 1, 3, 14, 23, 249, 1),
(2754, 1, 1, 3, 14, 29, 249, 1),
(2755, 1, 1, 3, 14, 1, 250, 1),
(2756, 1, 1, 3, 14, 2, 250, 0),
(2757, 1, 1, 3, 14, 3, 250, 1),
(2758, 1, 1, 3, 14, 4, 250, 1),
(2759, 1, 1, 3, 14, 8, 250, 1),
(2760, 1, 1, 3, 14, 9, 250, 1),
(2761, 1, 1, 3, 14, 10, 250, 1),
(2762, 1, 1, 3, 14, 20, 250, 1),
(2763, 1, 1, 3, 14, 23, 250, 1),
(2764, 1, 1, 3, 14, 29, 250, 1),
(2765, 1, 1, 3, 14, 1, 251, 1),
(2766, 1, 1, 3, 14, 2, 251, 0),
(2767, 1, 1, 3, 14, 3, 251, 1),
(2768, 1, 1, 3, 14, 4, 251, 1),
(2769, 1, 1, 3, 14, 8, 251, 1),
(2770, 1, 1, 3, 14, 9, 251, 1),
(2771, 1, 1, 3, 14, 10, 251, 1),
(2772, 1, 1, 3, 14, 20, 251, 1),
(2773, 1, 1, 3, 14, 23, 251, 1),
(2774, 1, 1, 3, 14, 29, 251, 1),
(2775, 1, 1, 3, 14, 1, 252, 1),
(2776, 1, 1, 3, 14, 2, 252, 0),
(2777, 1, 1, 3, 14, 3, 252, 1),
(2778, 1, 1, 3, 14, 4, 252, 1),
(2779, 1, 1, 3, 14, 8, 252, 1),
(2780, 1, 1, 3, 14, 9, 252, 1),
(2781, 1, 1, 3, 14, 10, 252, 1),
(2782, 1, 1, 3, 14, 20, 252, 1),
(2783, 1, 1, 3, 14, 23, 252, 1),
(2784, 1, 1, 3, 14, 29, 252, 1),
(2785, 1, 1, 3, 14, 1, 253, 1),
(2786, 1, 1, 3, 14, 2, 253, 0),
(2787, 1, 1, 3, 14, 3, 253, 1),
(2788, 1, 1, 3, 14, 4, 253, 1),
(2789, 1, 1, 3, 14, 8, 253, 1),
(2790, 1, 1, 3, 14, 9, 253, 1),
(2791, 1, 1, 3, 14, 10, 253, 1),
(2792, 1, 1, 3, 14, 20, 253, 1),
(2793, 1, 1, 3, 14, 23, 253, 1),
(2794, 1, 1, 3, 14, 29, 253, 1),
(2795, 1, 1, 3, 14, 1, 254, 1),
(2796, 1, 1, 3, 14, 2, 254, 0),
(2797, 1, 1, 3, 14, 3, 254, 1),
(2798, 1, 1, 3, 14, 4, 254, 1),
(2799, 1, 1, 3, 14, 8, 254, 1),
(2800, 1, 1, 3, 14, 9, 254, 1),
(2801, 1, 1, 3, 14, 10, 254, 1),
(2802, 1, 1, 3, 14, 20, 254, 1),
(2803, 1, 1, 3, 14, 23, 254, 1),
(2804, 1, 1, 3, 14, 29, 254, 1),
(2805, 1, 1, 3, 14, 1, 255, 1),
(2806, 1, 1, 3, 14, 2, 255, 0),
(2807, 1, 1, 3, 14, 3, 255, 1),
(2808, 1, 1, 3, 14, 4, 255, 1),
(2809, 1, 1, 3, 14, 8, 255, 1),
(2810, 1, 1, 3, 14, 9, 255, 1),
(2811, 1, 1, 3, 14, 10, 255, 1),
(2812, 1, 1, 3, 14, 20, 255, 1),
(2813, 1, 1, 3, 14, 23, 255, 1),
(2814, 1, 1, 3, 14, 29, 255, 1),
(2815, 1, 1, 3, 15, 1, 212, 1),
(2816, 1, 1, 3, 15, 2, 212, 0),
(2817, 1, 1, 3, 15, 3, 212, 1),
(2818, 1, 1, 3, 15, 4, 212, 1),
(2819, 1, 1, 3, 15, 8, 212, 1),
(2820, 1, 1, 3, 15, 9, 212, 1),
(2821, 1, 1, 3, 15, 10, 212, 1),
(2822, 1, 1, 3, 15, 22, 212, 1),
(2823, 1, 1, 3, 15, 23, 212, 1),
(2824, 1, 1, 3, 15, 26, 212, 1),
(2825, 1, 1, 3, 15, 1, 213, 1),
(2826, 1, 1, 3, 15, 2, 213, 0),
(2827, 1, 1, 3, 15, 3, 213, 1),
(2828, 1, 1, 3, 15, 4, 213, 1),
(2829, 1, 1, 3, 15, 8, 213, 1),
(2830, 1, 1, 3, 15, 9, 213, 1),
(2831, 1, 1, 3, 15, 10, 213, 1),
(2832, 1, 1, 3, 15, 22, 213, 1),
(2833, 1, 1, 3, 15, 23, 213, 1),
(2834, 1, 1, 3, 15, 26, 213, 1),
(2835, 1, 1, 3, 15, 1, 214, 1),
(2836, 1, 1, 3, 15, 2, 214, 0),
(2837, 1, 1, 3, 15, 3, 214, 1),
(2838, 1, 1, 3, 15, 4, 214, 1),
(2839, 1, 1, 3, 15, 8, 214, 1),
(2840, 1, 1, 3, 15, 9, 214, 1),
(2841, 1, 1, 3, 15, 10, 214, 1),
(2842, 1, 1, 3, 15, 22, 214, 1),
(2843, 1, 1, 3, 15, 23, 214, 1),
(2844, 1, 1, 3, 15, 26, 214, 1),
(2845, 1, 1, 3, 15, 1, 215, 1),
(2846, 1, 1, 3, 15, 2, 215, 0),
(2847, 1, 1, 3, 15, 3, 215, 1),
(2848, 1, 1, 3, 15, 4, 215, 1),
(2849, 1, 1, 3, 15, 8, 215, 1),
(2850, 1, 1, 3, 15, 9, 215, 1),
(2851, 1, 1, 3, 15, 10, 215, 1),
(2852, 1, 1, 3, 15, 22, 215, 1),
(2853, 1, 1, 3, 15, 23, 215, 1),
(2854, 1, 1, 3, 15, 26, 215, 1),
(2855, 1, 1, 3, 15, 1, 216, 1),
(2856, 1, 1, 3, 15, 2, 216, 0),
(2857, 1, 1, 3, 15, 3, 216, 1),
(2858, 1, 1, 3, 15, 4, 216, 1),
(2859, 1, 1, 3, 15, 8, 216, 1),
(2860, 1, 1, 3, 15, 9, 216, 1),
(2861, 1, 1, 3, 15, 10, 216, 1),
(2862, 1, 1, 3, 15, 22, 216, 1),
(2863, 1, 1, 3, 15, 23, 216, 1),
(2864, 1, 1, 3, 15, 26, 216, 1),
(2865, 1, 1, 3, 15, 1, 217, 1),
(2866, 1, 1, 3, 15, 2, 217, 0),
(2867, 1, 1, 3, 15, 3, 217, 1),
(2868, 1, 1, 3, 15, 4, 217, 1),
(2869, 1, 1, 3, 15, 8, 217, 1),
(2870, 1, 1, 3, 15, 9, 217, 1),
(2871, 1, 1, 3, 15, 10, 217, 1),
(2872, 1, 1, 3, 15, 22, 217, 1),
(2873, 1, 1, 3, 15, 23, 217, 1),
(2874, 1, 1, 3, 15, 26, 217, 1),
(2875, 1, 1, 3, 15, 1, 218, 1),
(2876, 1, 1, 3, 15, 2, 218, 0),
(2877, 1, 1, 3, 15, 3, 218, 1),
(2878, 1, 1, 3, 15, 4, 218, 1),
(2879, 1, 1, 3, 15, 8, 218, 1),
(2880, 1, 1, 3, 15, 9, 218, 1),
(2881, 1, 1, 3, 15, 10, 218, 1),
(2882, 1, 1, 3, 15, 22, 218, 1),
(2883, 1, 1, 3, 15, 23, 218, 1),
(2884, 1, 1, 3, 15, 26, 218, 1),
(2885, 1, 1, 3, 15, 1, 219, 1),
(2886, 1, 1, 3, 15, 2, 219, 0),
(2887, 1, 1, 3, 15, 3, 219, 1),
(2888, 1, 1, 3, 15, 4, 219, 1),
(2889, 1, 1, 3, 15, 8, 219, 1),
(2890, 1, 1, 3, 15, 9, 219, 1),
(2891, 1, 1, 3, 15, 10, 219, 1),
(2892, 1, 1, 3, 15, 22, 219, 1),
(2893, 1, 1, 3, 15, 23, 219, 1),
(2894, 1, 1, 3, 15, 26, 219, 1),
(2895, 1, 1, 3, 15, 1, 220, 1),
(2896, 1, 1, 3, 15, 2, 220, 0),
(2897, 1, 1, 3, 15, 3, 220, 1),
(2898, 1, 1, 3, 15, 4, 220, 1),
(2899, 1, 1, 3, 15, 8, 220, 1),
(2900, 1, 1, 3, 15, 9, 220, 1),
(2901, 1, 1, 3, 15, 10, 220, 1),
(2902, 1, 1, 3, 15, 22, 220, 1),
(2903, 1, 1, 3, 15, 23, 220, 1),
(2904, 1, 1, 3, 15, 26, 220, 1),
(2905, 1, 1, 3, 15, 1, 221, 0),
(2906, 1, 1, 3, 15, 2, 221, 1),
(2907, 1, 1, 3, 15, 3, 221, 1),
(2908, 1, 1, 3, 15, 4, 221, 1),
(2909, 1, 1, 3, 15, 8, 221, 1),
(2910, 1, 1, 3, 15, 9, 221, 1),
(2911, 1, 1, 3, 15, 10, 221, 1),
(2912, 1, 1, 3, 15, 22, 221, 1),
(2913, 1, 1, 3, 15, 23, 221, 1),
(2914, 1, 1, 3, 15, 26, 221, 1),
(2915, 1, 1, 3, 15, 1, 222, 1),
(2916, 1, 1, 3, 15, 2, 222, 0),
(2917, 1, 1, 3, 15, 3, 222, 1),
(2918, 1, 1, 3, 15, 4, 222, 1),
(2919, 1, 1, 3, 15, 8, 222, 1),
(2920, 1, 1, 3, 15, 9, 222, 1),
(2921, 1, 1, 3, 15, 10, 222, 1),
(2922, 1, 1, 3, 15, 22, 222, 1),
(2923, 1, 1, 3, 15, 23, 222, 1),
(2924, 1, 1, 3, 15, 26, 222, 1),
(2925, 1, 1, 3, 15, 1, 223, 1),
(2926, 1, 1, 3, 15, 2, 223, 0),
(2927, 1, 1, 3, 15, 3, 223, 1),
(2928, 1, 1, 3, 15, 4, 223, 1),
(2929, 1, 1, 3, 15, 8, 223, 1),
(2930, 1, 1, 3, 15, 9, 223, 1),
(2931, 1, 1, 3, 15, 10, 223, 1),
(2932, 1, 1, 3, 15, 22, 223, 1),
(2933, 1, 1, 3, 15, 23, 223, 1),
(2934, 1, 1, 3, 15, 26, 223, 1),
(2935, 1, 1, 3, 15, 1, 224, 0),
(2936, 1, 1, 3, 15, 2, 224, 1),
(2937, 1, 1, 3, 15, 3, 224, 1),
(2938, 1, 1, 3, 15, 4, 224, 1),
(2939, 1, 1, 3, 15, 8, 224, 1),
(2940, 1, 1, 3, 15, 9, 224, 1),
(2941, 1, 1, 3, 15, 10, 224, 1),
(2942, 1, 1, 3, 15, 22, 224, 1),
(2943, 1, 1, 3, 15, 23, 224, 1),
(2944, 1, 1, 3, 15, 26, 224, 1),
(2945, 1, 1, 3, 15, 1, 225, 1),
(2946, 1, 1, 3, 15, 2, 225, 0),
(2947, 1, 1, 3, 15, 3, 225, 1),
(2948, 1, 1, 3, 15, 4, 225, 1),
(2949, 1, 1, 3, 15, 8, 225, 1),
(2950, 1, 1, 3, 15, 9, 225, 1),
(2951, 1, 1, 3, 15, 10, 225, 1),
(2952, 1, 1, 3, 15, 22, 225, 1),
(2953, 1, 1, 3, 15, 23, 225, 1),
(2954, 1, 1, 3, 15, 26, 225, 1),
(2955, 1, 1, 3, 15, 1, 226, 1),
(2956, 1, 1, 3, 15, 2, 226, 0),
(2957, 1, 1, 3, 15, 3, 226, 1),
(2958, 1, 1, 3, 15, 4, 226, 1),
(2959, 1, 1, 3, 15, 8, 226, 1),
(2960, 1, 1, 3, 15, 9, 226, 1),
(2961, 1, 1, 3, 15, 10, 226, 1),
(2962, 1, 1, 3, 15, 22, 226, 1),
(2963, 1, 1, 3, 15, 23, 226, 1),
(2964, 1, 1, 3, 15, 26, 226, 1),
(2965, 1, 1, 3, 15, 1, 227, 1),
(2966, 1, 1, 3, 15, 2, 227, 0),
(2967, 1, 1, 3, 15, 3, 227, 1),
(2968, 1, 1, 3, 15, 4, 227, 1),
(2969, 1, 1, 3, 15, 8, 227, 1),
(2970, 1, 1, 3, 15, 9, 227, 1),
(2971, 1, 1, 3, 15, 10, 227, 1),
(2972, 1, 1, 3, 15, 22, 227, 1),
(2973, 1, 1, 3, 15, 23, 227, 1),
(2974, 1, 1, 3, 15, 26, 227, 1),
(2975, 1, 1, 3, 15, 1, 228, 0),
(2976, 1, 1, 3, 15, 2, 228, 1),
(2977, 1, 1, 3, 15, 3, 228, 1),
(2978, 1, 1, 3, 15, 4, 228, 1),
(2979, 1, 1, 3, 15, 8, 228, 1),
(2980, 1, 1, 3, 15, 9, 228, 1),
(2981, 1, 1, 3, 15, 10, 228, 1),
(2982, 1, 1, 3, 15, 22, 228, 1),
(2983, 1, 1, 3, 15, 23, 228, 1),
(2984, 1, 1, 3, 15, 26, 228, 1),
(2985, 1, 1, 3, 15, 1, 229, 0),
(2986, 1, 1, 3, 15, 2, 229, 1),
(2987, 1, 1, 3, 15, 3, 229, 1),
(2988, 1, 1, 3, 15, 4, 229, 1),
(2989, 1, 1, 3, 15, 8, 229, 1),
(2990, 1, 1, 3, 15, 9, 229, 1),
(2991, 1, 1, 3, 15, 10, 229, 1),
(2992, 1, 1, 3, 15, 22, 229, 1),
(2993, 1, 1, 3, 15, 23, 229, 1),
(2994, 1, 1, 3, 15, 26, 229, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai_kelas`
--

INSERT INTO `nilai_kelas` (`id_nilai_kelas`, `tahun`, `semester`, `id_kelas`, `id_siswa`, `jumlah`, `nilai`) VALUES
(1, 1, 1, 14, 239, '', ''),
(2, 1, 1, 14, 240, '', ''),
(3, 1, 1, 14, 241, '', ''),
(4, 1, 1, 14, 242, '', ''),
(5, 1, 1, 14, 243, '', ''),
(6, 1, 1, 14, 244, '', ''),
(7, 1, 1, 14, 245, '', ''),
(8, 1, 1, 14, 246, '', ''),
(9, 1, 1, 14, 247, '', ''),
(10, 1, 1, 14, 248, '', ''),
(11, 1, 1, 14, 249, '', ''),
(12, 1, 1, 14, 250, '', ''),
(13, 1, 1, 14, 251, '', ''),
(14, 1, 1, 14, 252, '', ''),
(15, 1, 1, 14, 253, '', ''),
(16, 1, 1, 14, 254, '', ''),
(17, 1, 1, 14, 255, '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembagian_raport`
--

INSERT INTO `pembagian_raport` (`id_pembagian`, `tahun`, `semester`, `tanggal_mid`, `tanggal_rapor`) VALUES
(1, 1, 1, '2024-10-30', '2024-10-20');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(10) NOT NULL,
  `pendidikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `piket_harian`
--

CREATE TABLE `piket_harian` (
  `id_piket_harian` int(10) NOT NULL,
  `id_harian` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek_tema`
--

CREATE TABLE `proyek_tema` (
  `id_tema` int(10) NOT NULL,
  `tema` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `npsn`, `nama_sekolah`, `id_jenjang`, `bentuk_sekolah`, `yayasan`, `website`, `alamat`, `email`, `kontak`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `logo_prov`, `tahun`, `semester`, `logo`, `gambar1`, `lokasi`, `visi`, `misi`, `frame_peta`) VALUES
(1, '20505005', 'SMK ABDI NEGARA TUBAN', 1, 1, 'ABDI NEGARA', 'web.smkabdinegara.sch.id', 'JL. DR. Wahidin Sudirohusodo NO.798 Sidorejo Tuban', 'smkabdinegara798@gmail.com', '085707357080', 'Sidorejo', 'Tuban', 'Tuban', 'Jawa Timur', '20505005-220px-Coat_of_arms_of_East_Java.svg.png', 1, 1, '20505005-SMK ABDI LOGO_1.png', 'contohgambar1.jpg', 1, 'Terwujudnya insan yang berkarakter, unggul dalam prestasi, berwawasan global, dan peduli lingkungan', 'sadjlkasdlsa asdlsamdlsa mdasldalsd sajdlsamkldnsa dsadiiwqeoqwoisad sadkaslkdals msadlkksamdlsa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1817.3598243287408!2d123.10916123639596!3d-8.270567482943843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dab81937a537f3d%3A0x5a7cbcdd72391dc2!2sRumah%20AL%20FARIBI!5e1!3m2!1sid!2sid!4v1699366304253!5m2!1sid!2sid\" style=\"width:100%; height:100%;\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(10) NOT NULL,
  `semester` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `nik_pd` varchar(20) DEFAULT NULL,
  `nkk` varchar(20) DEFAULT NULL,
  `nisn` text NOT NULL,
  `nis` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelamin` int(10) DEFAULT NULL,
  `agama` int(10) DEFAULT NULL,
  `kontak_siswa` text NOT NULL,
  `hub_keluarga` int(10) DEFAULT NULL,
  `jumlah_saudara` int(10) NOT NULL,
  `anak_ke` int(10) NOT NULL,
  `nama_ayah` text NOT NULL,
  `nik_ayah` varchar(20) DEFAULT NULL,
  `tahun_ayah` int(11) NOT NULL,
  `pendidikan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `kontak_ayah` varchar(14) NOT NULL,
  `nama_ibu` text NOT NULL,
  `nik_ibu` varchar(20) DEFAULT NULL,
  `tahun_ibu` int(11) NOT NULL,
  `pendidikan_ibu` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `kontak_ibu` varchar(14) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_orang_tua` text NOT NULL,
  `nama_wali` text NOT NULL,
  `alamat_wali` text NOT NULL,
  `pekerjaan_wali` text NOT NULL,
  `kontak_wali` text NOT NULL,
  `terima_tingkat` int(10) DEFAULT NULL,
  `jurusan` int(5) NOT NULL,
  `sekolah_asal` text NOT NULL,
  `terima_tanggal` date DEFAULT NULL,
  `terima_kelas` varchar(10) NOT NULL,
  `username` text NOT NULL,
  `pass` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `foto` text NOT NULL,
  `jenis_siswa` int(10) NOT NULL,
  `aktif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nik_pd`, `nkk`, `nisn`, `nis`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `agama`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nik_ayah`, `tahun_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `kontak_ayah`, `nama_ibu`, `nik_ibu`, `tahun_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `kontak_ibu`, `alamat`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `terima_tingkat`, `jurusan`, `sekolah_asal`, `terima_tanggal`, `terima_kelas`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(1, 'AFWINDA AFRIYANTI', '3523156712080002', '3523151709190008', '0083923417', '3507/913/8.3.3', 'TUBAN', '2008-12-27', 2, 1, '083830142867', 1, 2, 1, 'WANGKIT PURWANTO', '3523153006800011', 1980, 'SD', 'PETANI', '0', 'DESI ALPI YUNITA', '3523153006800011', 1989, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X AK', '0083923417', '2008-12-27', '$2y$10$Kg5S0QVWmuMuIGmTpuYcqOxh6yYYiaOAPV0NZOfmW7ZkcY2jUpL/i', '', 1, 1),
(2, 'AURELLYA NAUFARA MEYLA PUTRI', '3523124405080001', '3523121603066514', '0088321882', '3508/914/8.3.3', 'TUBAN', '2008-05-04', 2, 1, '088245285752', 1, 1, 2, 'SAWITO', '3523121908720001', 1972, 'SLTP', 'PETANI', '0', 'LILIK NURYANI', '3523125203800006', 1980, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DK MLANGWE RT/RW 002/004 DESA MENTOSO KECAMATAN JENU KABUPATEN TUBAN KODE POS 62352', 'DK MLANGWE RT/RW 002/004 DESA MENTOSO KECAMATAN JENU KABUPATEN TUBAN KODE POS 62352', '0', '0', '0', '0', 1, 1, 'MTS MANBAIL FUTUH', '2024-07-15', 'X AK', '0088321882', '0088321882', '$2y$10$J9PZ0fHK9rDRTcBjhWDFXeruggXfrYSXjwxVEDNuB6GGM92ZI4cnG', '', 1, 1),
(3, 'CINTA MAULIDYA', '3523156303090001', '3523151303062466', '0095381824', '3592/923/8.3.3', 'TUBAN', '2009-03-23', 2, 1, '082257141099', 1, 0, 1, 'SUMINDAR', '3523151009700001', 1970, 'SLTP', 'PETANI', '0', 'SUWARNING', '3523155403730001', 1973, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DUSUN GEMPOL RT/RW 02/10 DESA GENAHARJO KECAMATAN SEMANDING', 'DUSUN GEMPOL RT/RW 02/10 DESA GENAHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, '-', '2024-07-15', 'X AK', '0095381824', '0095381824', '$2y$10$KKzoOLsgJxjBFvSTVStLluwLgTKAqSfNhl.AMLE6XZSwVSxvq6W..', '', 1, 1),
(4, 'FITRI OKTAVIA', '3523156710080002', '3523152606200008', '0086492067', '3509/915/8.3.3', 'TUBAN', '2008-10-27', 2, 1, '081228459893', 1, 2, 1, 'KISWANTO', '3522060301810001', 1981, 'SLTA', 'WIRASWASTA', '0', 'NAR\'UM', '3523156711850003', 1985, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT 002 RW 010 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', 'DSN BOGOR RT 002 RW 010 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '0', '0', '0', '0', 1, 1, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X AK', '0086492067', '0086492067', '$2y$10$QnSlsyA/vKQQr81Ji1ahwuKefUE/VXvzwecY.e7W.qglnoxzS1o.y', '', 1, 1),
(5, 'INTAN NUR QOMARIAH YUNITA', '3523156606090002', '3523152606140003', '0097334140', '3510/916/8.3.3', 'TUBAN', '2009-06-26', 2, 1, '085707496693', 1, 2, 1, 'Suprapto', '3523150211860006', 1986, 'SLTA', 'WIRASWASTA', '0', 'IKA AYU NUR VERRY', '3523156502910001', 1991, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 003/010 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X AK', '0097334140', '0097334140', '$2y$10$I8HqDTKWmCJsBCE4ICygp.uV6e2k7im7mv8P8JsusltBzF/sjBvse', '', 1, 1),
(6, 'JUNIA RIZKY AMELLIA', '3524194106090001', '3524192003120002', '3093035334', '3511/917/8.3.3', 'LAMONGAN', '2009-06-01', 2, 1, '08563210082', 1, 0, 1, 'MUJID', '3524192502860002', 1986, 'SLTP', 'WIRASWASTA', '0', 'JUNARTIK', '3524195210860001', 1986, 'SLTP', 'PETANI', '0', 'PLOSOKUNING RT/RW 001/002 DESA GINTUNGAN KECAMATAN KEMBANGBAHU', 'PLOSOKUNING RT/RW 001/002 DESA GINTUNGAN KECAMATAN KEMBANGBAHU', '0', '0', '0', '0', 1, 1, 'SMP ISLAM SIDOARJO', '2024-07-15', 'X AK', '3093035334', '3093035334', '$2y$10$mABVFEZYFYCLPKmdWTT93e5256JW66ZVihmQUZ/rH8T06NTqfCBIy', '', 1, 1),
(7, 'KIKI OKTAVIANA PUTRI ', '3523155210090001', '3523152308090060', '0091419099', '3512/918/8.3.3', 'TUBAN', '2009-10-12', 2, 1, '081357567213', 1, 1, 2, 'Juki', '3523153009750002', 1975, 'SD', 'WIRASWASTA', '0', 'MARTI\'AH', '3523154709780004', 1978, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN SELANG RT/RW 003/004 DESA JADI KECAMATAN SEMANDING', 'DSN SELANG RT/RW 003/004 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'SMP NURUL HUDA MERAKURAK', '2024-07-15', 'X AK', '0091419099', '0091419099', '$2y$10$xz5sTib0mZvdn4UvYmQl8e2KYwfG6z/xfkExmYo/8NbGsLmVC8p0e', '', 1, 1),
(8, 'ROBIATUL CHULFIA', '3523156304080002', '3523151403061699', '0087796692', '3513/919/8.3.3', 'TUBAN', '2008-04-23', 2, 1, '085720097367', 1, 0, 1, 'WARNO', '3523151507700001', 1970, 'TIDAK/BELOM SEKOLAH', 'TRANSPORTASI', '0', 'CARCIM', '3523154905700001', 1969, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X AK', '0087796692', '0087796692', '$2y$10$W6Q.ntqkNU.J8OjU7hAd0.xhAKIiXyNEwH/H/rV1XTS8jAF891c0W', '', 1, 1),
(9, 'SAFIRA NUR AULIA ', '3523134902090001', '3523131603065620', '0094814471', '3514/920/8.3.3', 'TUBAN', '2009-06-20', 2, 1, '-', 1, 0, 1, 'NGALI', '3523132907570001', 1957, 'SD', 'PETANI', '0', 'RUMI', '3523136709660001', 1966, 'SD', 'PETANI', '0', 'DSN BANGKALAN RT/RW 004/004 DESA TEGALREJO KECAMATAN MERAKURAK', 'DSN BANGKALAN RT/RW 004/004 DESA TEGALREJO KECAMATAN MERAKURAK', '0', '0', '0', '0', 1, 1, '-', '2024-07-15', 'X AK', '0094814471', '0094814471', '$2y$10$800bBzn8MdYycqWe6oYBj.xiNuoK66hMUvmFxNkzuc2ALdj7cbH1W', '', 1, 1),
(10, 'SINDI VIKA AULIA', '3523156006090001', '3523152308090076', '0098172557', '3515/921/8.3.3', 'TUBAN', '2009-02-09', 2, 1, '082332104276', 1, 0, 1, 'Lastum', '3523151006800009', 1980, 'SD', 'WIRASWASTA', '0', 'HARWATI', '3523155705860004', 1986, 'SD', 'PETANI', '0', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'SMP NURUL HUDA MERAKURAK', '2024-07-15', 'X AK', '0098172557', '0098172557', '$2y$10$zqjr.WfYKkXVQJZA45TB7u8p428Rgp8JGa7RntRhp6L1OQ7y17OXO', '', 1, 1),
(11, 'YASMIN ARA ISABEL', '3523156811080003', '3523150208110003', '0081512484', '3516/922/8.3.3', 'TUBAN', '2008-11-28', 2, 1, '081356315669', 1, 0, 1, 'ARI BUDIONO', '-', 1980, 'SD', 'BURUH', '0', 'PUJIATI', '3523155102810005', 1981, 'SD', 'MENGURUS RUMAH TANGG', '0', 'JERUK GULUNG RT/RW 004/005  DESA SAMBONGREJO KECAMATAN SEMANDING', 'JERUK GULUNG RT/RW 004/005  DESA SAMBONGREJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 1, 'UPT SMP NEGERI 2 SEMANDING', '2024-07-15', 'X AK', '0081512484', '0081512484', '$2y$10$k4SGAKzjROW.b5Ozcf4SK.zL3yyYn4Ornkg2YU9WszoR1JMPHbxkO', '', 1, 1),
(12, 'AHMAD FEBY PURWANTO', '3523152601090002', '3523151807170007', '0091927818', '3517/491/8.1.1', 'TUBAN', '2009-01-26', 1, 1, '082142237935', 1, 0, 1, 'AGUS PURWANTO', '3578040309730006', 1973, 'SD', 'WIRASWASTA', '0', 'ASTIK', '3523154307820004', 1982, 'SD', 'PEMBANTU RUMAH TANGG', '0', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 001/014 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X BD', '0091927818', '0091927818', '$2y$10$N9A77PVE7b9YV35O3EsIcud3Ldu.A8Wsz9Ms4g5J/F7fVspl7YxZO', '', 1, 1),
(13, 'AMANDA SISKA OLIVIA', '3523156512080002', '3523151503062484', '0088984120', '3518/492/8.1.1', 'TUBAN', '2008-12-25', 2, 1, '085859283761', 1, 1, 2, 'Sulajer', '3523152511720001', 1972, 'SD', 'PETANI', '0', 'SULASTIN', '3523156210760001', 1976, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X BD', '0088984120', '0088984120', '$2y$10$n.vrmS66tXxDbLuo01CIbe/TDe5RARIQzjc6cxBR6i1HcnXob22dS', '', 1, 1),
(14, 'DENDRA', '3523152703090001', '3523151403061697', '0095510294', '3519/493/8.1.1', 'TUBAN', '2009-03-27', 1, 1, '081327521589', 1, 0, 1, 'CARIATUN', '3523152006780001', 1978, 'SD', 'PETANI', '0', 'MIJAH', '3523155506810011', 1981, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 002/013 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 002/013 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'SMP PLUS MATHOLIUL ANWAR RENGEL', '2024-07-15', 'X BD', '0095510294', '0095510294', '$2y$10$SBOWG66TsHcyk71UAYDaCu/EYaem4e/072if3EEgg9ClnKAs9seP.', '', 1, 1),
(15, 'DEWI LESTARI', '3523155705090001', '3523151505120002', '0098359426', '3520/494/8.1.1', 'TUBAN', '2009-05-17', 2, 1, '0859171667732', 1, 0, 1, 'KARDIN', '3523151710860001', 1986, 'SD', 'WIRASWASTA', '0', 'HENI ISWATI', '-', 0, '-', 'MENINGGAL DUNIA', '0', 'DSN TLOGOPULE RT/RW 001/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 001/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X BD', '0098359426', '0098359426', '$2y$10$IKcQnxfbd37Ru6pE3aJnyuz0tnoWJ11Q42KsxEq5mmKwLub.24/EG', '', 1, 1),
(16, 'MAYA AL MAIROH', '3523155302090002', '352315230890016', '0092898410', '3521/495/8.1.1', 'TUBAN', '2009-02-13', 2, 1, '082230777990', 1, 0, 1, 'Kasmuji', '3523150409780004', 1978, 'TIDAK/BELOM SEKOLAH', 'PETANI', '0', 'SAMSI', '3523154107800181', 1980, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI RT/RW 004/007 DESA JADI KECAMATAN SEMANDING', 'DSN JADI RT/RW 004/007 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X BD', '0092898410', '0092898410', '$2y$10$LKLlxh3zHyU8ZHCM8H3AD.4cSj8NihPmX3av60WE7uiqFTngVOtRq', '', 1, 1),
(17, 'NITALIYA', '3523155204080007', '3523152308110003', '0085607370', '3522/496/8.1.1', 'TUBAN', '2008-04-12', 2, 1, '085606909232', 1, 2, 1, 'Sarto', '3523151106860004', 1986, 'SD', 'WIRASWASTA', '0', 'KASPI', '3523156904910005', 1991, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN TLOGO RT/RW 001/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGO RT/RW 001/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X BD', '0085607370', '0085607370', '$2y$10$Bvthx8XEMilDVuzCm/8/Wen2FPdckmEVR5TP1LEd6Zv6GkyS9OsHK', '', 1, 1),
(18, 'NURVINA ELIVTIANA', '3523154802080002', '3523150303160004', '0081784318', '3523/497/8.1.1', 'TUBAN', '2009-06-28', 2, 1, '081217495542', 1, 0, 1, 'Narlip', '3523151506850003', 1985, 'SD', 'KARYAWAN SWASTA', '0', 'YULIANA', '3523154102940003', 1989, 'TIDAK/BELOM SEKOLAH', 'WIRASWASTA', '0', 'DSN TLOGOPULE RT/RW 003/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 003/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X BD', '0081784318', '0081784318', '$2y$10$rPF0lFgYB.rQKP5zxuFXX.CP3swSyvBxEnhhNieHpSuQq.BDoWC0C', '', 1, 1),
(19, 'QURIYATI KHASANAH MA\'ARIF', '3523152009080004', '3523152906210003', '0089699355', '3524/498/8.1.1', 'TUBAN', '2008-09-20', 2, 1, '082232440479', 1, 1, 2, 'BACHRUL ULUM TONI', '-', 0, '-', 'SUDAH MENINGGAL', '0', 'FATMAWATI MA\'ARIF', '3523156302800002', 1980, 'SLTA', 'KARYAWAN SWASTA', '0', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X BD', '0089699355', '0089699355', '$2y$10$87tbhlc6smas36zeMcTLH.CoRxc0SzpQ2kfL8CDGrR0fF3GFIIUv.', '', 1, 1),
(20, 'RINI NUR AULIA', '3523138108090005', '3525092201140004', '0093343110', '3525/499/8.1.1', 'TUBAN', '2009-08-21', 2, 1, '-', 1, 0, 1, 'NURHASAN', '3523131009860002', 1986, 'SLTP', 'WIRASWASTA', '0', 'SUMIJAH', '3523135211860001', 1986, 'SD', 'MENGURUS RUMAH TANGG', '0', 'GOLOKAN RT/RW 003/002 DESA GOLOKAN KECAMATAN SEDAYU', 'GOLOKAN RT/RW 003/002 DESA GOLOKAN KECAMATAN SEDAYU', '0', '0', '0', '0', 1, 2, '-', '2024-07-15', 'X BD', '0093343110', '0093343110', '$2y$10$pV44OGeyZR8ykdOPqV8dqeI5sIMbRLqELnQg/5.QKQAgiFriXZk.C', '', 1, 1),
(21, 'SAIFUL NURDIM', '3523150101080001', '3523152408090014', '0086249441', '3526/500/8.1.1', 'TUBAN', '2008-01-01', 1, 1, '082334405795', 1, 2, 3, 'Raslan', '3523150305650006', 1965, 'SD', 'PETANI', '0', 'DARTI', '3523155512700004', 1970, 'SD', 'PETANI', '0', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', 'DSN JARUM RT/RW 002/014 DESA JADI KEC. SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X BD', '0086249441', '0086249441', '$2y$10$bl.6PPmASdJX0IA9uN.WDeWlxQjIFBhOgTxTsKDT91Yol7JnbbYuW', '', 1, 1),
(22, 'SAL SABIL JULI BETHA SAFIRA', '3523156507080001', '3523151303062332', '0087772992', '3527/501/8.1.1', 'TUBAN', '2008-07-25', 2, 1, '083856786126', 1, 0, 1, 'JAIS', '3523150107700060', 1970, 'SD', 'PEDAGANG', '0', 'TRIMURTI', '3623154107700063', 1970, 'SD', 'PETANI', '0', 'DSN KRAJAN RT/RW 003/007 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 003/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X BD', '0087772992', '0087772992', '$2y$10$jbnisi1wsGqo3YuEmBhPtOJ8u6s3T1lb5frKk/ITSFngPfgSIurrC', '', 1, 1),
(23, 'SITI NUR\'AISYAH', '3523156009080003', '3523153012090290', '0082884404', '3528/502/8.1.1', 'TUBAN', '2008-09-20', 2, 1, '085606240347', 1, 1, 2, 'SADRIM', '3523150204610001', 1961, 'SD', 'PETANI', '0', 'PARSIYEM', '3523154107640070', 1964, 'SD', 'PETANI', '0', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X BD', '0082884404', '0082884404', '$2y$10$IEFZNM1YPI.1weDAki.ujeCTWccVtfDDoOa3e3vvTiMTNlIxTwXHW', '', 1, 1),
(24, 'SITI YUNIA FAROATUN ', '3523154606090004', '3523151303060470', '3096569562', '3529/503/8.1.1', 'TUBAN', '2009-06-06', 2, 1, '085604610985', 1, 1, 2, 'Keman', '3523150607660001', 1966, 'SD', 'PETANI', '0', 'DARSILAH', '3523154411760001', 1976, 'SD', 'PETANI', '0', 'DSN KOWANG SELATAN RT/RW 005/004 DESA KOWANG KECAMATAN SEMANDING', 'DSN KOWANG SELATAN RT/RW 005/004 DESA KOWANG KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'Mts sumber sari', '2024-07-15', 'X BD', '3096569562', '3096569562', '$2y$10$eEXba/vEH4Wl5dQUw.P9XuTV/U4M3jV6T1dhp/1qUwfnwr8SCciYe', '', 1, 1),
(25, 'SRI RAHAYU TRIATMOJO', '3523186703080002', '3523181303067038', '0085453517', '3530/504/8.1.1', 'TUBAN', '2008-03-27', 2, 1, '089530479007', 1, 0, 1, 'KARTONO', '3523182112670003', 1967, 'SD', 'PEDAGANG', '0', 'RUSMI', '3523185103720005', 1972, 'SD', 'PEDAGANG', '0', 'DS LERANWETAN RT/RW 002/001 DESA LERAN WETAN KECAMATAN PALANG', 'DS LERANWETAN RT/RW 002/001 DESA LERAN WETAN KECAMATAN PALANG', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 PALANG', '2024-07-15', 'X BD', '0085453517', '0085453517', '$2y$10$GtnNfNpLmV17G5qnaDIl8Oa8y1ePdNadS2lqqcBK1r.5RvcD88LKm', '', 1, 1),
(26, 'SULISTIANA', '3523154212080002', '3523151511210008', '0085336136', '3531/505/8.1.1', 'TUBAN', '2008-12-02', 2, 1, '083852624261', 1, 0, 1, 'TOTOK SUPRIYANTO', '3623161503810003', 1981, 'SLTP', 'WIRASWASTA', '0', 'CINARCIP', '3523166607800009', 1980, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT/RW 001/007 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 001/007 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X BD', '0085336136', '0085336136', '$2y$10$07hWGD1pSiqaU9ubCw8Rje7xHZTSGcS/OFcQztquGwB50KIA9h/wK', '', 1, 1),
(27, 'VIONALITA AFRIANTI', '3523156901090004', '3523152506210006', '0096935017', '3532/506/8.1.1', 'TUBAN', '2009-01-29', 2, 1, '083831005070', 1, 1, 2, 'DIDIK SAMPURNO', '3523150308850001', 1985, 'SD', 'PETANI', '0', 'USWATUL KHASANAH', '3523156608870002', 1989, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN MOJOKOPEK RT/RW 002/031 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN MOJOKOPEK RT/RW 002/031 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, '', '2024-09-03', 'X BD', '0096935017', '0096935017', '$2y$10$Df0ZRXCXXgTRaiJOu6MjCOf.lh7gIog03YjaRUe16xduhU1gLSfBi', '', 1, 1),
(28, 'YULFAIDA RAMADANI PUTRI AGUSTIN', '3523157108080003', '3523150709090212', '0086936967', '3533/507/8.1.1', 'TUBAN', '2008-08-31', 2, 1, '083152445735', 1, 0, 1, 'UDI YADI', '3523151710750005', 1975, 'SD', 'BURUH', '0', 'YULI ASTUTIK', '3523154612860002', 1986, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN CUNGKUP RT/RW 011/003 DESA PENAMBANGAN KECAMATAN SEMANDING', 'DSN CUNGKUP RT/RW 011/003 DESA PENAMBANGAN KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 2, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X BD', '0086936967', '0086936967', '$2y$10$MzOvVaMuyJ9BMXqGAzENvO.Mn86gNf5XC0y/G3jSnYo1.LOnvOiea', '', 1, 1),
(29, 'AGUSTINA ZAYYAN NABILA', '3524075208080003', '3524071608101774', '0081829471', '3561/246/5.3.1', 'LAMONGAN', '2008-06-22', 2, 1, '0881026972659', 1, 1, 2, 'Eko Sucahyono', '3524071011790006', 1979, 'SD', 'NELAYAN', '0', 'SITI INDAH WATI', '3524075312820001', 1986, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'SAWO KECIK RT/RW 005/004 DESA BRONDONG KECAMATAN BRONDONG', 'SAWO KECIK RT/RW 005/004 DESA BRONDONG KECAMATAN BRONDONG', '0', '0', '0', '0', 1, 5, 'SMP NEGERI 1 PACIRAN', '2024-07-15', 'X LPKKK', '0081829471', '0081829471', '$2y$10$BuN5BOMJsaOLWVuVc8sijeOK/rxjh.Nuzkmit9fYWL4Oo4X/m/GCy', '', 1, 1),
(30, 'AISYA SEPTIA PUTRI', '3524077011090002', '3524071708106925', '3098143153', '3562/247/5.3.1', 'TUBAN', '2009-11-30', 2, 1, '-', 1, 1, 2, 'MUSLICHIN', '3524071806590003', 1959, 'SD', 'WIRASWASTA', '0', 'DARWATI', '3524074506630002', 1963, 'SD', 'PETANI', '0', 'NGESONG RT/RW 002/008 DESA SEDAYULAWAS KECAMATAN BRONDONG', 'NGESONG RT/RW 002/008 DESA SEDAYULAWAS KECAMATAN BRONDONG', '0', '0', '0', '0', 1, 5, 'SMPS MAMBAUL MAARIF BRONDONG', '2024-09-15', 'X LPKKK', '3098143153', '3098143153', '$2y$10$TT1iD9fP.rmZbjZrFCZAEevJGADhiWALn3Yu2z9IIW1ecc3TAX.gW', '', 1, 1),
(31, 'AISYAH SHALSA NUR IZAROH', '3523164312080002', '3523161403060512', '0082713422', '3563/248/5.3.1', 'TUBAN', '2008-12-03', 2, 1, '081238387717', 1, 0, 1, 'SUSANTO', '3523161809470001', 1950, 'SD', 'WIRASWASTA', '0', 'KASMUNTIK', '3523164705550001', 1956, 'SD', 'WIRASWASTA', '0', 'JL.MERIK GG SADIG IV RT/RW 001/003 KELURAHAN SIDOREJO KECAMATAN TUBAN', 'JL.MERIK GG SADIG IV RT/RW 001/003 KELURAHAN SIDOREJO KECAMATAN TUBAN', '0', '0', '0', '0', 1, 5, 'SMP MU ALLIMIN', '2024-09-16', 'X LPKKK', '0082713422', '0082713422', '$2y$10$x/Jgkcz8b7u3NFSEPQ58leP/3KKQIGhBHkJIj3NUUZbH4RzDWTuCe', '', 1, 1),
(32, 'ALYA RIZKEYLA SAFITRI', '3578104310080008', '3523152305180006', '0088095402', '3564/249/5.3.1', 'SURABAYA', '2008-10-03', 2, 1, '083872859010', 1, 2, 3, 'JARI', '3523150101720010', 1972, 'SD', 'WIRASWASTA', '0', 'TINA', '3578105804770004', 1977, 'SLTP', 'KARYAWAN SWASTA', '0', 'DSN KOWANG SELATAN RT/RW 006/004 DESA KOWANG KECAMATAN SEMANDING', 'DSN KOWANG SELATAN RT/RW 006/004 DESA KOWANG KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 2 SEMANDING', '2024-07-15', 'X LPKKK', '0088095402', '0088095402', '$2y$10$T/8CI8HV8GPGJbhez24LT..PWUad9c0wshrZNwLIjX9YDGY9s094C', '', 1, 1),
(33, 'ANGGI FAJAR MULYANI', '3523208306080001', '3523201112090215', '0087170788', '3565/250/5.3.1', 'TUBAN', '2008-06-23', 2, 1, '085730069759', 1, 1, 2, 'BAMBANG SHOLIKIN', '3523200209800001', 1980, 'SD', 'PETANI', '0', 'WATI', '3523205911820002', 1982, 'SD', 'PETANI', '0', 'DUSUN GENENG RT/RW 001/005 DESA GRABAGAN KECAMATAN GRABAGAN', 'DUSUN GENENG RT/RW 001/005 DESA GRABAGAN KECAMATAN GRABAGAN', '0', '0', '0', '0', 1, 5, 'SMP MAQOM TAHRIR PLUS', '2024-07-15', 'X LPKKK', '0087170788', '0087170788', '$2y$10$qg.YaIOBo4rOvnnZg/LI8.VGJFyyLrY7VQheJydbSjEpa9uEOwPfG', '', 1, 1),
(34, 'AZARINA ROSNAIDA', '3523135212080001', '3523131907240004', '0087183497', '3566/251/5.3.1', 'TUBAN', '2008-12-12', 2, 1, '089530387725', 1, 0, 1, 'AGUS ROHMANI', '', 0, '', '', '0', 'RUSMIATUN', '3523136702740001', 1974, 'SD', 'WIRASWASTA', '0', 'DSN PANGKALAN RT.RW 003/005 DESA MANDIREJO KECAMATAN MERAKURAK', 'DSN PANGKALAN RT.RW 003/005 DESA MANDIREJO KECAMATAN MERAKURAK', '0', '0', '0', '0', 1, 5, '', '2024-07-15', 'X LPKKK', '0087183497', '0087183497', '$2y$10$3oHML4vESNU47JdIlpED7udJhjpp95UDQ2GkrOx9hyFczwp6y.bVa', '', 1, 1),
(35, 'BINTANG IMAM SAFI\'I', '3523151507080002', '3523150209140001', '0087333210', '3567/252/5.3.1', 'TUBAN', '2008-07-15', 1, 1, '082142599549', 1, 1, 2, 'WAWAN DWI AGUS', '3523160608800006', 1980, 'SLTP', 'WIRASWASTA', '0', 'MUNTINI', '3523156207830002', 1983, 'SLTP', 'PETANI', '0', 'DSN JADI KRAJAN RT/RW 001/009 DESA JADI KECAMATAN SEMANDING', 'DSN JADI KRAJAN RT/RW 001/009 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X LPKKK', '0087333210', '0087333210', '$2y$10$TAewqQOVp7i1nHQ1WhvIjeDhItanc6KKGcjSXSD2DlMh.4XlmFi2.', '', 1, 1),
(36, 'BUNGA BARBALINO WANIMBO', '9124064904080002', '9124061802190001', '0081670305', '3568/253/5.3.1', 'JAYAPURA', '2008-04-09', 2, 3, '-', 1, 5, 3, 'GUNDIUS WANIMBO', '9124062403780002', 1978, 'S1', 'GURU', '0', 'YULIANA HALIMA RONSUMBRE', '9103097107740001', 1980, 'SD', 'WIRASWASTA', '0', 'MUGI DUSUN MUGI DESA MUGI KECAMATAN MUGI', 'MUGI DUSUN MUGI DESA MUGI KECAMATAN MUGI', '0', '0', '0', '0', 1, 5, 'SMP Negeri 1 Kenyam', '2024-07-15', 'X LPKKK', '0081670305', '0081670305', '$2y$10$GrWHrpuJlE0eVIrzu4kqMumPsXkOLpA3qZKE4bsHAG4UE1psQhESO', '', 1, 1),
(37, 'CHERY KHANIARANI PERMANA', '3525146005090001', '3523150707200003', '0093682801', '3569/254/5.3.1', 'GRESIK', '2009-05-20', 2, 1, '081332651169', 1, 1, 1, 'INSAN BAYU PERMANA', '3525142406830002', 1983, 'S1', 'KARYAWAN SWASTA', '0', 'DIANA YULIYANTI', '3523154211830003', 1983, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'DSN DRUDI LOR RT/RW 001/003 DESA SAMBONGREJO KECAMATAN SEMANDING', 'DSN DRUDI LOR RT/RW 001/003 DESA SAMBONGREJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 2 SEMANDING', '2024-07-15', 'X LPKKK', '0093682801', '0093682801', '$2y$10$z8h93ltBpyjgoXA.VQ9PA.NDtqaAiP4ILXlrvatWLGz.gyp3ghHla', '', 1, 1),
(38, 'DINDA AYU YULIANTI', '3523200206090001', '3523201003060593', '0095716664', '3570/255/5.3.1', 'TUBAN', '2009-06-02', 2, 1, '081249863513', 1, 1, 2, 'KASMARI', '3523200212730001', 1973, 'SD', 'PETANI', '0', 'LINA ASTUTIK', '3523206404770001', 1977, 'SD', 'PETANI', '0', 'DSN GESIKAN RT/RW 004/004 DESA GESIKAN KECAMATAN GRABAGAN ', 'DSN GESIKAN RT/RW 004/004 DESA GESIKAN KECAMATAN GRABAGAN ', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 GRABAGAN', '2024-07-15', 'X LPKKK', '0095716664', '0095716664', '$2y$10$gn4UESqhy400Nz2z1TE2K.y9o5eXgce92rcGM3WgrPlTQHEeacSmW', '', 1, 1),
(39, 'EVA ANJARSARI', '3523155307090005', '3523152509150003', '0094004442', '3571/256/5.3.1', 'TUBAN', '2009-07-13', 2, 1, '081330228740', 1, 1, 1, 'YADI', '3523150904770002', 1977, 'SLTP', 'SOPIR', '0', 'MUGTINI', '-', 0, '-', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'MTs NEGERI 3 TUBAN', '2024-07-15', 'X LPKKK', '0094004442', '0094004442', '$2y$10$X3rLYzSJW7xvLt0XyCZ09O7XUjpR3g50Fs7zrv8F1ZmaXo59YiWW.', '', 1, 1),
(40, 'FERONIKA WAMINOP', '9116037003060001', '9116030603120007', '3085415312', '3572/257/5.3.1', 'NINATI', '2008-03-20', 2, 2, '-', 1, 5, 2, 'THEODOSIUS AMBOMO', '-', 0, '-', '-', '0', 'KLEMASIA KUTKET', '9116036802770002', 1977, 'TIDAK/BELOM SEKOLAH', 'MENGURUS RUMAH TANGG', '0', 'NINATI DUSUN NINATI RT/RW 002/- DESA NINATI KECAMATAN NINATI', 'NINATI DUSUN NINATI RT/RW 002/- DESA NINATI KECAMATAN NINATI', '0', '0', '0', '0', 1, 5, 'SMP Negeri 2 Krounjendit Mindiptana', '2024-07-15', 'X LPKKK', '3085415312', '3085415312', '$2y$10$qhOAx1X2cgylfjf1UusITepFTCZqh5OUZ7zm6Ql9FlR5uQwlz.RTm', '', 1, 1),
(41, 'FIRDA NUR APIPAH', '3523156910080003', '3523150909090046', '0086561931', '3573/258/5.3.1', 'TUBAN', '2008-10-29', 2, 1, '083874437198', 1, 0, 1, 'TAJAM', '3523150903700005', 1970, 'SD', 'WIRASWASTA', '0', 'SRI REJEKI ', '3523155003740004', 1974, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT/RW 001/032 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 001/032 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X LPKKK', '0086561931', '0086561931', '$2y$10$AQCxCFeRI15oBNQeGga8.uZZZl.1RRihI.Et0ExgS5sYmELTssd9a', '', 1, 1),
(42, 'INDAH SEPTYA RAMADHANI', '3523155409080001', '3523152012090001', '0082462210', '3574/259/5.3.1', 'TUBAN', '2008-09-14', 2, 1, '085606533770', 1, 0, 1, 'KANANG', '3523152006820001', 1983, 'SD', 'WIRASWASTA', '0', 'NURWATI', '3523154704900005', 1990, 'SLTP', 'WIRASWASTA', '0', 'DSN KOWANG SELATAN RT/RW 002/006 DESA KOWANG KECAMATAN SEMANDING', 'DSN KOWANG SELATAN RT/RW 002/006 DESA KOWANG KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X LPKKK', '0082462210', '0082462210', '$2y$10$50fRmQnyPBuVRxtQ.cPhb.vb1oF97LNsZ3JJtKPtbIkCzTEMayWK2', '', 1, 1),
(43, 'ISNA FITRIYAH', '3523155110090002', '3523151807110004', '0095245735', '3575/260/5.3.1', 'TUBAN', '2009-10-11', 2, 1, '082143465324', 1, 1, 1, 'Mukti', '3523150707850001', 1985, 'SLTP', 'PETANI', '0', 'SITI ASIYAH', '3523154307900001', 1990, 'SLTP', 'PETANI', '0', 'DSN SELANG RT/RW 002/004 DESA JADI KECAMATAN SEMANDING', 'DSN SELANG RT/RW 002/004 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, '', '2024-07-15', 'X LPKKK', '0095245735', '0095245735', '$2y$10$s59yZxBAYuZjGPFfdx/cOePpUHrlqXuo9.690gGgMKRxMAXPrE3tu', '', 1, 1),
(44, 'JESSICA MALVA NYSA', '3523124412080001', '3523162401200001', '0088586496', '3576/261/5.3.1', 'TUBAN', '2008-12-04', 2, 1, '081332250693', 1, 1, 2, 'SUYANTO', '3523121805760001', 1976, 'SLTA', 'WIRASWASTA', '0', 'NINA ITA PURWATI', '3523127008770001', 1977, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'JL.GAJAH MADA GG MERDEKA RT/RW 005/005 KELURAHAN SIDOREJO KECAMATAN TUBAN', 'JL.GAJAH MADA GG MERDEKA RT/RW 005/005 KELURAHAN SIDOREJO KECAMATAN TUBAN', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 JENU', '2024-07-15', 'X LPKKK', '0088586496', '0088586496', '$2y$10$D8PowoWw0lpN2D94IO1nCOIso3nGuCrHYnyJ4Ftr4GJrW9UwTBqJe', '', 1, 1),
(45, 'KAYLA FINDA ARZETA', '3523154302080004', '3523151303066335', '0092258995', '3577/262/5.3.1', 'TUBAN', '2009-02-03', 2, 1, '085859146191', 1, 0, 1, 'ERWIN SARWONO', '3523150204780008', 1978, 'SLTP', 'BURUH', '0', 'LAMSINAH', '3523154404910003', 1991, 'SLTP', 'TIDAK BEKERJA', '0', 'DUSUN KOWANG UTARA RT/RW 002/001 DESA KOWANG KECAMATAN SEMANDING', 'DUSUN KOWANG UTARA RT/RW 002/001 DESA KOWANG KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'Mts sumbersari kowang', '2024-07-15', 'X LPKKK', '0092258995', '0092258995', '$2y$10$nBXWXH4iRfHe9Mt23dc3Teik3IXHsfWYwfA7AL7VfWq3zksZgk106', '', 1, 1),
(46, 'KERIN SILALAHI', '1211025406080001', '3523152006240010', '0085892694', '3578/263/5.3.1', 'PANGGURUAN', '2008-06-14', 2, 3, '082277893175', 1, 1, 2, 'Sahat Martogi Silalahi', '1211020512680001', 1968, 'SLTA', 'PETANI', '0', 'TUMIUR SINAGA', '1211024404690003', 1969, 'SD', 'MENGURUS RUMAH TANGG', '0', 'PERUMAHAN GEDONGOMBO BLOK J-13 RT/RW 006/007 KELURAHAN GEDONGOMBO KECAMATAN SEMANDING', 'PERUMAHAN GEDONGOMBO BLOK J-13 RT/RW 006/007 KELURAHAN GEDONGOMBO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'SMP SW. PARULIAN 6 BALNA', '2024-07-15', 'X LPKKK', '0085892694', '0085892694', '$2y$10$J59wIqj2cLZb73s/rcwdCOHHqILAgmhc94B6IVEx09X2LjMSeachW', '', 1, 1),
(47, 'LU LU NUR ISMAH', '3523167004080001', '3523162303090152', '0089785434', '3579/264/5.3.1', 'TUBAN', '2008-04-30', 2, 1, '08165468343', 1, 1, 2, 'SETYO WAHONO RS', '3523161801710004', 1971, 'SLTA', 'WIRASWASTA', '0', 'ENY LESTARI', '3523164705820006', 1982, 'SLTA', 'WIRASWASTA', '0', 'GG MANGGIS NO.3 RT/RW 001/002 KELURAHAN KINGKING KECAMATAN TUBAN', 'GG MANGGIS NO.3 RT/RW 001/002 KELURAHAN KINGKING KECAMATAN TUBAN', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 6 TUBAN', '2024-07-15', 'X LPKKK', '0089785434', '0089785434', '$2y$10$Sfs/CKXah/P861TkApYyPu58msmZ6rDTztV6FTJkqIXQ7kyC1eYzy', '', 1, 1),
(48, 'NILNA ROHMATAL MAULA', '3523185005090001', '3523180603100004', '3098867550', '3591/276/5.3.1', 'TUBAN', '2009-05-10', 2, 1, '-', 1, 1, 2, 'JANURI', '3523180112800001', 1980, 'SLTP', 'NELAYAN', '0', 'SULIKAH', '3523184505840014', 1984, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'PALANG SELATAN RT/RW 003/007 DESA PALANG KECAMATAN PALANG', 'PALANG SELATAN RT/RW 003/007 DESA PALANG KECAMATAN PALANG', '0', '0', '0', '0', 1, 5, '', '2024-09-26', 'X LPKKK', '3098867550', '3098867550', '$2y$10$7S84UblleuhmstG4GUHKmO5y2YeZ/pF1M5mS/rR/Bp04jWaxOYlCy', '', 1, 1),
(49, 'REVITA MEISYA RINDANI', '3523156905090002', '3523150112090036', '0093092464', '3580/265/5.3.1', 'TUBAN', '2009-05-29', 2, 1, '085732624419', 1, 1, 1, 'MUGIONO', '3523152101810001', 1981, 'SD', 'WIRASWASTA', '0', 'SUNDARI', '3523155306880002', 1988, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN KOWANG UTARA RT/RW 005/001 DESA KOWANG KECAMATAN SEMANDING', 'DSN KOWANG UTARA RT/RW 005/001 DESA KOWANG KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X LPKKK', '0093092464', '0093092464', '$2y$10$aNEydE/gi1O.4M2GN4II1esCdWH/95Kqid1srdWr4ZYd7nuzENjaC', '', 1, 1),
(50, 'SALSA BELA RAQIBATUN NAJA', '3523134101090001', '3523131603065207', '0091172193', '3581/266/5.3.1', 'TUBAN', '2009-01-01', 2, 1, '085855705827', 1, 1, 2, 'SUPARMAN', '3523130506680002', 1968, 'SD', 'PETANI', '0', 'SUNTIRAH', '3523134107720071', 1972, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KEDUNGSARI RT/RW 003/005 DESA TUWIRI WETAN KECAMATAN MERAKURAK ', 'DSN KEDUNGSARI RT/RW 003/005 DESA TUWIRI WETAN KECAMATAN MERAKURAK ', '0', '0', '0', '0', 1, 5, 'Mts kyai kelopo telu', '2024-07-15', 'X LPKKK', '0091172193', '0091172193', '$2y$10$83Wh8SEGrlre65xsuZWvSeHti04aIttyOXihUf.a6RkTK1bUHOoOm', '', 1, 1),
(51, 'SELFI NUR AINI', '3523154206080002', '3523150311110003', '0086100441', '3582/267/5.3.1', 'TUBAN', '2008-06-02', 2, 1, '087863888984', 1, 1, 2, 'MINTO', '3523152705840003', 1984, 'SD', 'PETANI', '0', 'TUTIK', '3523155503850006', 1985, 'SD', 'PETANI', '0', 'DSN BOGOR RT/RW 003/013 DS. BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 003/013 DS. BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X LPKKK', '0086100441', '0086100441', '$2y$10$6rR1927uTiUGeErsGAj5q.3XgpFpgJU/3laYaAlv5vj3jUXX5YJhC', '', 1, 1),
(52, 'SIFA UL MUNAWAROH', '3523154603090001', '3523151503060677', '0092242063', '3583/268/5.3.1', 'TUBAN', '2009-03-06', 2, 1, '081233850569', 1, 0, 1, 'Rawan', '3523150509850002', 1985, 'SD', 'PETANI', '0', 'SULIKAH', '3523154701890005', 1989, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT/RW 002/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 002/036 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'MTs hidayatush shibyan', '2024-07-15', 'X LPKKK', '0092242063', '0092242063', '$2y$10$HEmnuHXHPEXb4tGqyOW3Te6fnPF8y6w6Q0XmoznO4mOrZq7w.cp4u', '', 1, 1),
(53, 'TAQIYATUL ANIQOH', '3523155308080002', '3523151303065901', '0085064949', '3584/269/5.3.1', 'TUBAN', '2008-08-13', 2, 1, '082132478163', 1, 0, 1, 'TARJI', '3523151604700001', 1970, 'SD', 'PETANI', '0', 'MARSINI', '3523154501820001', 1982, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MEDOKAN RT/RW 004/016 DESA BEKTIHARJO KECAMATAN SEMANDING ', 'DSN MEDOKAN RT/RW 004/016 DESA BEKTIHARJO KECAMATAN SEMANDING ', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X LPKKK', '0085064949', '0085064949', '$2y$10$b/ggazp2lf6rt8Oc3TA7Hu.uiXBobCA0LlEVOwyugGkKwwgMwQE3q', '', 1, 1),
(54, 'TIARA AYU AZZAHRA', '3523186406090002', '3523182512090198', '0092930844', '3585/270/5.3.1', 'TUBAN', '2009-06-24', 2, 1, '085854624674', 1, 0, 1, 'NOVIAN DENNY SETYAWAN', '3523181411820001', 1982, 'SLTA', 'KARYAWAN SWASTA', '0', 'SRIWIJI SETYANINGSIH ', '3523185001840010', 1984, 'SLTA', 'WIRASWASTA', '0', 'DUSUN KRAJAN INDAH RT/RW 001/005 DESA TEGALBANG KECAMATAN PALANG', 'DUSUN KRAJAN INDAH RT/RW 001/005 DESA TEGALBANG KECAMATAN PALANG', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 2 PALANG', '2024-07-15', 'X LPKKK', '0092930844', '0092930844', '$2y$10$vycApqcvGTlwssv4LHWsBuJjQllQAmMUov4UkKRLYj9JswFkrX.ai', '', 1, 1),
(55, 'TIKA WAHYUNI ', '3523136810080003', '3523132001100096', '0084788525', '3586/271/5.3.1', 'TUBAN', '2008-10-28', 2, 1, '085762477953', 1, 0, 1, 'SUYADI', '3523132112860001', 1986, 'SLTP', 'PETANI', '0', 'GENDUK SITI SUMARLIK', '3523135505870003', 1987, 'SD', 'PETANI', '0', 'DSN KRAJAN RT/RW 002/001 DESA SUMBER KECAMATAN MERAKURAK', 'DSN KRAJAN RT/RW 002/001 DESA SUMBER KECAMATAN MERAKURAK', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 MERAKURAK', '2024-07-15', 'X LPKKK', '0084788525', '0084788525', '$2y$10$V5NYS2sOoAZRSr8km3dX8ewrvbzb4yHPORzNfzUeom.jbea0PM4Qq', '', 1, 1),
(56, 'TRESYA DWI MARTHA', '3523176603080005', '3523171312090250', '0089065992', '3587/272/5.3.1', 'TUBAN', '2008-03-26', 2, 1, '085853179040', 1, 1, 1, 'RUDI', '3523172008750006', 1975, 'SLTA', 'WIRASWASTA', '0', 'SULIANIK', '3523174812780002', 1978, 'SLTP', 'WIRASWASTA', '0', 'DSN NGRAYUNG RT/RW 009/001 DESA NGRAYUNG KECAMATAN PLUMPANG', 'DSN NGRAYUNG RT/RW 009/001 DESA NGRAYUNG KECAMATAN PLUMPANG', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 PLUMPANG', '2024-07-15', 'X LPKKK', '0089065992', '0089065992', '$2y$10$KxFfpYBWaujNp5HB/JAY7.WjTuY2PKvy1KU5paZI/o4UIkayjVVVm', '', 1, 1),
(57, 'VALENCIA NUR LAILA', '3523154701080001', '3523152104150003', '0086514582', '3588/273/5.3.1', 'TUBAN', '2008-01-07', 2, 1, '08385534358', 1, 1, 1, 'CARMIN', '3523150703850002', 1985, 'SD', 'BURUH', '0', 'HOLILAH', '3523154708850007', 1985, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 001/015 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 001/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X LPKKK', '0086514582', '0086514582', '$2y$10$/hrRqntztv2EJ6nRemhFROZELewzMkRKl.0mlhwd0f1SvLi/mQca6', '', 1, 1),
(58, 'WIDYA WULAN APRILIA', '3523155704090002', '3523150710110002', '0099784935', '3589/274/5.3.1', 'TUBAN', '2009-04-17', 2, 1, '087857648222', 1, 1, 2, 'SLAMET WIDODO', '3523152406730006', 1973, 'SLTA', 'SOPIR', '0', 'DIDIK', '3523155412750003', 1975, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'DUSUN SENDANG PANCUR RT/RW 002/005 DESA GENAHARJO KECAMATAN SEMANDING', 'DUSUN SENDANG PANCUR RT/RW 002/005 DESA GENAHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X LPKKK', '0099784935', '0099784935', '$2y$10$01clqFAUITXiTgeBAEH08ectIO.Pyq.IRACXQ43pLUPawrD83W75i', '', 1, 1),
(59, 'WINDA ESTURINA', '3523156811070003', '3523150906100007', '0076889226', '3590/275/5.3.1', 'TUBAN', '2007-11-28', 2, 1, '082264282430', 1, 1, 1, 'DARSILAN', '3523151209740004', 1974, 'SLTP', 'WIRASWASTA', '0', 'SRI ASTUTIK', '3523155007990006', 1989, 'SLTP', 'PEKERJAAN LAINNYA', '0', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 001/002 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 5, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X LPKKK', '0076889226', '0076889226', '$2y$10$EQVQ8lHxNRg59t65qYpO8uI1gK2rbfRXC.cMnxNpoMvmTHWFzmfsC', '', 1, 1),
(60, 'AHMAD AGUS SETYA ABADI', '3523151505080005', '3523152812090089', '0088042575', '3534/611/9.2.1', 'TUBAN', '2008-05-15', 1, 1, '082334490642', 1, 0, 1, 'WARSIAN', '3523150305850001', 1985, 'SD', 'PETANI', '0', 'LILIK SURTINI', '3523155811850001', 1985, 'SD', 'PETANI', '0', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0088042575', '0088042575', '$2y$10$cLt.vHn3dlgE60hPnUf4Mec4x6alk6ZGsvsccKEEx.w7psRv.xKGa', '', 1, 1),
(61, 'AHMAD JALIL', '3523040504080002', '3523042707090087', '0084433174', '3535/612/9.2.1', 'TUBAN', '2008-04-05', 1, 1, '-', 1, 1, 2, 'MUSTAKIM', '3523040101790001', 1979, 'SLTP', 'WIRASWASTA', '0', 'FITRIYAH', '3523044907860001', 1986, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DS BANJARJO RT/RW 018/005 DESA BANJARJO KECAMATAN BANCAR', 'DS BANJARJO RT/RW 018/005 DESA BANJARJO KECAMATAN BANCAR', '0', '0', '0', '0', 1, 3, 'SMP NU BANCAR', '2024-07-15', 'X PH', '0084433174', '0084433174', '$2y$10$diJ5uL0WxcvFi47K4RIqCOdcJcK15ppLlnjd3l8jyCN.c7kHnvoju', '', 1, 1),
(62, 'AHMAD ROBI', '3523150104080002', '3523151303060141', '0085987867', '3536/613/9.2.1', 'TUBAN', '2008-04-01', 1, 1, '083849370238', 1, 0, 1, 'SATUR', '3523150502680001', 1968, 'SD', 'PETANI', '0', 'SUKARSIH', '', 0, '', 'PETANI', '0', 'DSN BOGOR RT/RW 001/011 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 001/011 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0085987867', '0085987867', '$2y$10$zFFCp0b9p0R2Np/2cWknIObjwPgzL4ztGlJbLNBc3y2YEWqfAw2u2', '', 1, 1),
(63, 'ANGGA HANDAYANA SAPUTRA', '3523180911080002', '3523182412090043', '0094524380', '3537/614/9.2.1', 'TUBAN', '2008-11-09', 1, 1, '-', 1, 0, 1, 'HARI', '3523180107840103', 1982, 'SD', 'PETANI', '0', 'INDAH WAHYUNI', '3523185804860010', 1986, 'SD', 'KARYAWAN SWASTA', '0', 'NGIMBANG RT/RW 004/006 DESA NGIMBANG KECAMATAN PALANG', 'NGIMBANG RT/RW 004/006 DESA NGIMBANG KECAMATAN PALANG', '0', '0', '0', '0', 1, 3, '', '2024-07-15', 'X PH', '0094524380', '0094524380', '$2y$10$D.hwQLu1hZ4FyBp.rIH9G.mA4.EDKH8WpNUQ8N4Xw2HNP4xQEv1nq', '', 1, 1),
(64, 'ANITA  TABITA', '3523156504080004', '3523151503061471', '0046661092', '3538/615/9.2.1', 'TUBAN', '2008-04-25', 2, 1, '083834225197', 1, 1, 1, 'SANTIK', '3523152301730001', 1973, 'SD', 'PETANI', '0', 'SANTINIK', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 002/015 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 002/015 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0046661092', '0046661092', '$2y$10$Hvo9X4wfqp4vRb0hWrPOuODYEz1SQ9ZAQMxA5.jb4IrYjw/9H8YDe', '', 1, 1),
(65, 'ARMAS DION SAPUTRA', '3523151406070003', '3523152305170004', '0074831450', '3539/616/9.2.1', 'TUBAN', '2007-06-14', 1, 1, '085785226538', 1, 1, 1, 'WASIS', '', 0, '', '', '0', 'TARMINAH', '3523156404850002', 1985, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'MTs NEGERI 3 TUBAN', '2024-07-15', 'X PH', '0074831450', '0074831450', '$2y$10$WZLc8XoF32DnV4bDeaPiG.AShZoYgOmlV0EiBNMwUeCsDLGHTjdqG', '', 1, 1),
(66, 'CIKA AGUSTINA', '3506194808080003', '3506192402210001', '0084022362', '3540/617/9.2.1', 'KEDIRI', '2008-08-08', 2, 1, '085816311578', 1, 0, 1, 'ASTARI', '3506190702700001', 1970, 'BELOM TAMAT SD', 'PEDAGANG', '0', 'MESIJAH', '3506194811720001', 1972, 'SD', 'MENINGGAL DUNIA', '0', 'DSN BANGKOK II RT/RW 002/002 DESA KLAMPISAN KECAMATAN KANDANGAN', 'DSN BANGKOK II RT/RW 002/002 DESA KLAMPISAN KECAMATAN KANDANGAN', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 3 SEMANDING', '2024-07-15', 'X PH', '0084022362', '0084022362', '$2y$10$7nkx3BWRpDR6kL1iisbKYOdNQGg9khtl19MKC9GWl4EnqrSwVFBla', '', 1, 1),
(67, 'CIKA AMELIA', '3523157003090005', '3523150810190004', '0092199978', '3541/618/9.2.1', 'TUBAN', '2009-03-30', 2, 1, '083112052643', 1, 1, 1, 'SULISTIONO', '', 0, '', '', '0', 'S.EKA NUTHAYATI', '3523154808900005', 1989, 'SD', 'KARYAWAN SWASTA', '0', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'MTS HIDAYATUSH SHIBYAN PALANG', '2024-07-15', 'X PH', '0092199978', '0092199978', '$2y$10$W5bW/ZtTMttTof4oPhhKKOyfJV1Vh/Q496KYuBts4OjoEgBvJFX4G', '', 1, 1),
(68, 'DURAKIM', '3523151212080006', '3523150308210002', '0082006355', '3542/619/9.2.1', 'TUBAN', '2008-12-12', 1, 1, '085604302217 ', 1, 0, 1, 'Sarmadi', '3523150304830012', 1983, 'SD', 'PETANI', '0', 'YULAIKAH', '3523155505860006', 1986, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', 'DSN JADI RT/RW 002/007 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'MTS NEGERI 3 TUBAN', '2024-07-15', 'X PH', '0082006355', '0082006355', '$2y$10$tbg.HESBYPFIrfwHmfNn9OQkpewHgBUjJIv3l/.ybFgqHjnHQXkVG', '', 1, 1),
(69, 'EKA WALUYO PUTRO', '3523151404070001', '3523152208090087', '0072511826', '3543/620/9.2.1', 'TUBAN', '2007-04-14', 1, 1, '081235630193', 1, 1, 1, 'sajad', '3523151907800002', 1980, 'SD', 'PETANI', '0', 'SITI DARWATI', '3523155111880004', 1988, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN TLOGONONGKO RT/RW 006/002 DESA JADI KECAMATAN SEMANDING', 'DSN TLOGONONGKO RT/RW 006/002 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0072511826', '0072511826', '$2y$10$P2zWQ3Byfavk4idgAJ4IKO/ThPdbhS1UovBzjgyVGMMTHA4vlTPq2', '', 1, 1),
(70, 'FELENT HEFANDO', '3523150308080001', '3523150609090072', '0083250556', '3544/621/9.2.1', 'TUBAN', '2008-08-03', 1, 1, '087778359590', 1, 0, 1, 'HEMPI', '3523150309830004', 1983, 'SLTP', 'SOPIR', '0', 'RUSTIANAWATI', '3523165010890006', 1989, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 003/014 DESA BEKTIHARJO DAN BELIKAN SPDH ', 'DSN BOGOR RT/RW 003/014 DESA BEKTIHARJO DAN BELIKAN SPDH ', '0', '0', '0', '0', 1, 3, 'SMP UNGGULAN KARANGSAWO', '2024-07-15', 'X PH', '0083250556', '0083250556', '$2y$10$pYu5uGaa/PXDhv5vAfqx3uZbJqUWeykyrnJFLPpFhmu.Fq34KqAzi', '', 1, 1),
(71, 'KEREN SANGEROKI', '7172046004090002', '7172040608080007', '0097868726', '3545/622/9.2.1', 'BITUNG', '2009-04-20', 2, 3, '-', 1, 2, 3, 'Nolvy Sangeroki', '7172022911692001', 1969, 'SLTP', 'PENDETA', '0', 'MANDRICE GETA', '7172024506762001', 1976, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'LINGKUNGAN II RT/RW 001/002 DESA PINANGUNIAN KECAMATAN AEREMBAGA', 'LINGKUNGAN II RT/RW 001/002 DESA PINANGUNIAN KECAMATAN AEREMBAGA', '0', '0', '0', '0', 1, 3, 'SMP NEGERI 14 SATU ATAP BITUNG', '2024-07-15', 'X PH', '0097868726', '0097868726', '$2y$10$613yWL8AU7RjFjo6H2d62emMVyTR9vBhN6Rt5dlm1C6Qn0pgGg9TW', '', 1, 1),
(72, 'MOHAMMAD ZUBAERI AKBAR', '3523150111090003', '3523152308090089', '0094853593', '3546/623/9.2.1', 'TUBAN', '2009-11-01', 1, 1, '082140327387', 1, 0, 1, 'Warsilan', '3523150810790004', 1979, 'SD', 'PETANI', '0', 'NANIK KASARI', '3523156102850004', 1984, 'SD', 'PETANI', '0', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', 'DSN GEMBUL RT/RW 001/006 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'SMP NURUL HUDA MERAKURAK', '2024-07-15', 'X PH', '0094853593', '0094853593', '$2y$10$Ll1C.jnoev3pbFpJS/DoHO5xWVccMZOPr3X0odUFvwY8XScu796eG', '', 1, 1),
(73, 'MONICA SILFIANA', '3523165901080002', '3523161503061964', '0082670430', '3547/624/9.2.1', 'TUBAN', '2008-01-19', 2, 1, '085232316286', 1, 0, 1, 'laskun', '3523161705810003', 1981, 'SLTP', 'WIRASWASTA', '0', 'JUARTININGSIH', '3523167012850001', 1985, 'SLTP', 'WIRASWASTA', '0', 'BONGKOL 1 RT/RW 002/02 DESA SUMURGUNG KECAMATAN TUBAN', 'BONGKOL 1 RT/RW 002/02 DESA SUMURGUNG KECAMATAN TUBAN', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 TUBAN', '2024-07-15', 'X PH', '0082670430', '0082670430', '$2y$10$AM.sfj683m0EhQoPiszS3.x1t/FVSMg0zjHIzffVUYzcBPO2EODPK', '', 1, 1),
(74, 'NANDA ANDIKA', '3523152305080001', '3523152208090091', '0085128954', '3548/625/9.2.1', 'TUBAN', '2008-05-23', 1, 1, '082335478382', 1, 1, 1, 'TARSIMIN', '3523151309800004', 1980, 'SD', 'PETANI', '0', 'SUPATMI', '3523155708860005', 1986, 'SD', 'PETANI', '0', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', 'DSN TLOGONONGKO RT/RW 003/002 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0085128954', '0085128954', '$2y$10$Ya/28LZtZVL6PzuzJq60Du5jacR5r5.j9/Qh.u7Rz6dI0wGsRNtte', '', 1, 1),
(75, 'OCYROSE ', '3523046104090001', '3523042901100017', '0097443987', '3549/626/9.2.1', 'TUBAN', '2008-04-21', 2, 1, '082335432492', 1, 2, 2, 'ROKHIM', '3523042106790004', 1979, 'SD', 'WIRASWASTA', '0', 'ADE FERSIPIANTI', '3523044302860003', 1986, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANG GAYAM RT/RW 008/002 DESA BANJARJO KECAMATAN BANCAR', 'DSN KARANG GAYAM RT/RW 008/002 DESA BANJARJO KECAMATAN BANCAR', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 1 BANCAR', '2024-07-15', 'X PH', '0097443987', '0097443987', '$2y$10$rI.xhvMTE3N8FYgQzHFs7u1Z6rUtvfIGVRxbLhAUyCXGyzoWQc9c2', '', 1, 1),
(76, 'RINA RENATA', '3523155405080001', '3523151403068938', '0085581657', '3550/627/9.2.1', 'TUBAN', '2008-05-14', 2, 1, '083833323564', 1, 0, 1, 'TASMIDJAN', '3523150107680164', 1968, 'SD', 'PETANI', '0', 'RASMINTEN', '3523154107740075', 1974, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT/RW 001/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 001/035 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-20', 'X PH', '0085581657', '0085581657', '$2y$10$noxfjjtqDGFgz6p0XdFVEOwNp52baieW0AQFwojttOTWSWu7jZ.OW', '', 1, 1),
(77, 'SA IN DAVA OFANSA', '3523152510080001', '3523152108090057', '0087112414', '3551/628/9.2.1', 'TUBAN', '2008-10-25', 1, 1, '085810359818', 1, 0, 1, 'KASMIJAN', '3523150706810001', 1981, 'SD', 'PETANI', '0', 'WATINI', '3523154704830002', 1983, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI KRAJAN RT/RW 003/008 DESA JADI KECAMATAN SEMANDING', 'DSN JADI KRAJAN RT/RW 003/008 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'MTsN 3 Tuban', '2024-07-15', 'X PH', '0087112414', '0087112414', '$2y$10$4ithxuAE0bzY80akP7zFF.4HLiuzLjrMFqL9IQNJHSzUHlqnFV2LS', '', 1, 1),
(78, 'WIDIYANA PUTRI ANISYAH', '3523155306080001', '3523150309200004', '0087410172', '3552/629/9.2.1', 'TUBAN', '2008-06-13', 2, 1, '087737531494', 1, 0, 1, 'WARTIM', '3523150804840006', 1984, 'SD', 'WIRASWASTA', '0', 'ANI RINAWATI', '3523156611890001', 1989, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGOPULE RT/RW 002/035DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X PH', '0087410172', '0087410172', '$2y$10$vcBmkS2UBmtY4EvcgbifCub3vT9xmXdnmVuRd60551bpIg/HG5qYu', '', 1, 1),
(79, 'ZIDAN NIAM NUR ROHMAN', '3523151906090002', '3523152812090042', '0092212153', '3553/630/9.2.1', 'TUBAN', '2009-06-19', 1, 1, '-', 1, 2, 2, 'SARMAN', '3523151009750002', 1975, 'SD', 'PETANI', '0', 'SISWATI', '3523155107800002', 1980, 'SD', 'PETANI', '0', 'DSN TLOGONONGKO RT/RW 002/002 DESA JADI KECAMATAN SEMANDING', 'DSN TLOGONONGKO RT/RW 002/002 DESA JADI KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 3, '', '2024-07-15', 'X PH', '0092212153', '0092212153', '$2y$10$RzuO1zLaJ5id9g2wDl76cuXBiTAS.uVqg5OFN.gRuwa3Kcv2ZzoaS', '', 1, 1),
(80, 'AGUSTINUS SELEGANI', '9407022004130001', '9127022602200003', '3084817806', '3554/782/4.1.1', 'KENDETAPA', '2008-04-20', 1, 3, '-', 1, 2, 1, 'Asel Selegani', '', 0, '', '', '0', 'DOLINA SELEGANI', '9127024107690001', 1969, 'TIDAK/BELOM SEKOLAH', 'TIDAK BEKERJA', '0', 'KENDETAPA DESA KENDETAPA KECAMATAN HOMEYO', 'KENDETAPA DESA KENDETAPA KECAMATAN HOMEYO', '0', '0', '0', '0', 1, 4, 'SMP YPPK BILAI', '2024-07-15', 'X RPL', '3084817806', '3084817806', '$2y$10$d0Vn0ZuMQcWb/gX7uEYHl.qQzMwddHVodVe5TkCZ52wZGIpmFzqM2', '', 1, 1),
(81, 'BAYU SAMUDRA', '3523150904080004', '3523151401110008', '0089385625', '3555/783/4.1.1', 'TUBAN', '2008-04-09', 1, 1, '083135041768', 1, 4, 2, 'WARTOLIK', '3523150912740003', 1974, 'SD', 'PETANI', '0', 'CARIYATI', '3523154107790046', 1979, 'TIDAK/BELOM SEKOLAH', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 00/008 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 00/008 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 4, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X RPL', '0089385625', '0089385625', '$2y$10$WegKdGHMvLkDyIjD/ubOEeeGNAiW3sgfNiLylLptJc6V93E2duWk2', '', 1, 1),
(82, 'FRANSISKUS FERY KEGOU', '9104010202070006', '9104011405190007', '0092637522', '3556/784/4.1.1', 'NABIRE', '2009-02-09', 1, 2, '085244270008', 1, 6, 2, 'JHON KEGOU', '9104010606780006', 1978, 'BELOM TAMAT SD', 'BURUH', '0', 'ANDRIANA DEGEKOTO', '9104016504840001', 1991, 'S1', 'MENGURUS RUMAH TANGG', '0', 'JL POROS RT/RW 001/002 DESA BOMOPAI', 'JL POROS RT/RW 001/002 DESA BOMOPAI', '0', '0', '0', '0', 1, 4, 'SMP Negeri 5 Nabire', '2024-07-15', 'X RPL', '0092637522', '0092637522', '$2y$10$knjXw/evU/SJY8LAnB3TKuNy17gSgEgpQAPASp3VZW7CY7PWLgJ92', '', 1, 1),
(83, 'GIOVANNI ELYSIA DEWI', '3523156502090002', '3523151611120002', '0095118059', '3557/785/4.1.1', 'TUBAN', '2009-02-25', 2, 1, '085731143589', 1, 0, 1, 'AGIN', '3523151212810007', 1981, 'SLTA', 'KARYAWAN SWASTA', '0', 'SUHARTIN', '3523154208870003', 1987, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', 'DSN KRAJAN RT/RW 002/005 DESA BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 4, 'UPT SMP NEGERI 1 SEMANDING', '2024-07-15', 'X RPL', '0095118059', '0095118059', '$2y$10$s1oULmmZGowEVMAG5avEt.fXoQMlddmWLZ81j3ZzH2jiTXDZzExfy', '', 1, 1),
(84, 'KRISTIAN WAHYUDI ARDIASYAH', '3523151712080003', '3523152501120005', '0085892636', '3558/786/4.1.1', 'TUBAN', '2008-12-17', 1, 1, '085101246257', 1, 1, 2, 'Yohanes Ertanto Tri Wahyudi', '3523150304810008', 1981, 'SLTA', 'WIRASWASTA', '0', 'DARWATI', '3523154606800008', 1980, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MOJOKOPEK RT/RW 002/029 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN MOJOKOPEK RT/RW 002/029 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 4, 'UPT SMP NEGERI 4 SEMANDING', '2024-07-15', 'X RPL', '0085892636', '0085892636', '$2y$10$aPTcl18PNIvHPjrGovVv4eWBnwqmVOdsdF2mBauROA3NScdU4D9IG', '', 1, 1);
INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nik_pd`, `nkk`, `nisn`, `nis`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `agama`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nik_ayah`, `tahun_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `kontak_ayah`, `nama_ibu`, `nik_ibu`, `tahun_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `kontak_ibu`, `alamat`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `terima_tingkat`, `jurusan`, `sekolah_asal`, `terima_tanggal`, `terima_kelas`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(85, 'MUHAMAD WAFIYUL AHDI', '3523152902080003', '3523151503061813', '0095147265', '3559/787/4.1.1', 'TUBAN', '2009-08-23', 1, 1, '083135209475', 1, 1, 1, 'Sakimin', '3523151208750001', 1975, 'SD', 'PNS', '0', 'MUNASIH', '3523154911770002', 1977, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN TLOGO RT/RW 002/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', 'DSN TLOGO RT/RW 002/015 DESA PERUNGGAHAN KULON KECAMATAN SEMANDING', '0', '0', '0', '0', 1, 4, 'SMP ISLAM SUNAN BEJAGUNG', '2024-07-15', 'X RPL', '0095147265', '0095147265', '$2y$10$ytGhQXBYaiLBJNpUt1A/le8WfxGHsb4gD1vvoKkncJK/acKUH9I0i', '', 1, 1),
(86, 'MUHAMMAD NUR ALIF', '3523082308090003', '3523082701100161', '0083092770', '3560/788/4.1.1', 'TUBAN', '2008-02-29', 1, 1, '088231746827 ', 1, 1, 2, 'Darsono', '3523082004680003', 1968, 'SD', 'PEDAGANG', '0', 'KUSIKAH', '3523085504820008', 1982, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MEKARSARI RT/RW 004/001 DESA WOLUTENGAH KECAMATAN KEREK', 'DSN MEKARSARI RT/RW 004/001 DESA WOLUTENGAH KECAMATAN KEREK', '0', '0', '0', '0', 1, 4, 'UPT SMP NEGERI 2 KEREK', '2024-07-15', 'X RPL', '0083092770', '0083092770', '$2y$10$QFrzXVtn3EN3Q2TOwbnAKe/FgX/DOoTRSNYbW1VKQdtlyTD/D6Kb2', '', 1, 1),
(87, 'ADINDA NOVERA KRISTIANINGSIH', '3523155911080002', '3523151009090055', '0085097934', '3406/898.102', 'TUBAN', '2008-11-19', 2, 1, '', 1, 0, 1, 'WARNADI', '3523150110630000', 1963, 'SD', 'Wiraswasta', '0', 'SUMPI', '3523156007730002', 1973, 'TIDAK/BELOM SEKOLAH', 'PETANI', '0', 'DSN JARUM RT 002 RW 018 PRUNGGAHAN KULON KEC. SEMANDING KAB TUBAN 62381', 'DSN JARUM RT 002 RW 018 PRUNGGAHAN KULON KEC. SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0085097934', '0085097934', '$2y$10$pVQhU65BYjzo4gdi/xNK3ewlmBeL76u0HXR0NKbU/pMtm9VMpf7PO', '', 1, 1),
(88, 'ALIYA PUTRI VERNANDA', '3523155307070003', '3523151612220007', '0076054715', '3407/899.102', 'TUBAN', '2007-07-13', 2, 1, '', 1, 3, 2, 'SUGIONO', '3514010311760002', 1976, 'SD', 'KARYAWAN SWASTA', '0', 'SUPRI', '3523154606820011', 1982, 'SD', 'PETANI', '0', 'DSN BOGOR RT/RW 02/015 DS BEKTIHARJO KECAMATAN SEMANDING', 'DSN BOGOR RT/RW 02/015 DS BEKTIHARJO KECAMATAN SEMANDING', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0076054715', '0076054715', '$2y$10$1ERpBpqPbNtoQBzFzuPSiefdvL8d1Fvc0MC1pOyCbW/ScQgStTTr2', '', 1, 1),
(89, 'BARBIE GLADIS EXELZA', '3311055903070001', '3311051005052142', '0079120258', '3408/900.102', 'SUKOHARJO', '2007-03-19', 2, 1, '', 1, 0, 1, 'SUKADI', '3311052809630003', 1963, 'SD', 'Wiraswasta', '0', 'PARNI', '3311056007650005', 1965, 'SD', 'WIRASWASTA', '0', 'DSN JUMOK RT 001 / RW 008 SERUT KEC. NGUTER KAB SUKOHARJO JAWA TENGAH 57571', 'DSN JUMOK RT 001 / RW 008 SERUT KEC. NGUTER KAB SUKOHARJO JAWA TENGAH 57571', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0079120258', '0079120258', '$2y$10$lXoNuzw4p768bitJXBDCHeR1GQ8jghwRZaBDe7ZUSn5/6tF5SUjI2', '', 1, 1),
(90, 'CINTYA DWI FEBRIANTI', '3523164702070002', '3523160401100112', '0071808582', '3409/901.102', 'TUBAN', '2007-02-07', 2, 1, '', 1, 0, 1, 'SUGRENDO', '3523162612800002', 1980, 'SLTP', 'Wiraswasta', '0', 'YUNI SETYANINGSIH', '3523166405850001', 1985, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'DOROMUKTI GG SEDAP MALAM NO 420 RT 003 RW 003 KEL. DOROMUKTI KEC. TUBAN  KAB TUBAN', 'DOROMUKTI GG SEDAP MALAM NO 420 RT 003 RW 003 KEL. DOROMUKTI KEC. TUBAN  KAB TUBAN', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0071808582', '0071808582', '$2y$10$oGHdUDiw.JfOWau.nFxDD.Kt269J.Ja0Bl/OQLi9YHGHlDdRrpgv2', '', 1, 1),
(91, 'DECHA MULYASARI', '3523165412070002', '3523160205090131', '0079226254', '3410/902.102', 'TUBAN', '2007-12-14', 2, 1, '', 1, 0, 1, 'KASMUL', '3523161006750003', 1975, 'SD', 'Wiraswasta', '0', 'SANTIYAH', '3523164506790003', 1979, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN WINONG RT 001 RW 008 SUGIHARJO  KEC. TUBAN KAB TUBAN 62351', 'DSN WINONG RT 001 RW 008 SUGIHARJO  KEC. TUBAN KAB TUBAN 62351', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0079226254', '0079226254', '$2y$10$r7xDNNphad9b/yw9cXPTaOE46MeIe/VTawq8Q7BIihBgGO.NUiOoK', '', 1, 1),
(92, 'DICHA AGRILYA ANGELITA', '3523154411070002', '3523151503062058', '0073876870', '3411/903.102', 'TUBAN', '2007-11-04', 2, 1, '', 1, 0, 1, 'PANCE JUMANGGARA', '', 0, '', '', '0', 'PUTRI NOVITASARI', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'LINGK WIRE RT 004 RW 007 KEL GEDONGOMBO KEC SEMANDING KAB TUBAN 62381', 'LINGK WIRE RT 004 RW 007 KEL GEDONGOMBO KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0073876870', '0073876870', '$2y$10$oBvLq.CpZ.whU40IQ/vDMuOGK.Mi65/ILkSWw7PqevIaXJeL4Bqqi', '', 1, 1),
(93, 'EKA NUR AINI', '3523154505070003', '3523153012100011', '0076394387', '3412/904.102', 'TUBAN', '2007-05-05', 2, 1, '', 1, 0, 1, 'TRISNO EDI SISWANTO', '3523150903830006', 1983, 'SD', 'KARYAWAN SWASTA', '0', 'KASWIN', '3523156211860001', 1986, 'SD', 'KARYAWAN SWASTA', '0', 'DSN TLOGOPULE RT 001  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 001  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0076394387', '0076394387', '$2y$10$Cm.GULyLCfvoHD8L6ug5Re14Lw1JcQPaV5dyfjeX7MX/4XCQx5F6S', '', 1, 1),
(94, 'KHOIRIYA CINTA LESTARI', '3523154306070001', '3523151409160003', '0078219451', '3413/905.102', 'TUBAN', '2007-06-03', 2, 1, '', 1, 0, 1, 'TASWIT', '3523151102860001', 1986, 'SD', 'Wiraswasta', '0', 'HARIS ROHMAWATI', '3523154505880002', 1988, 'SD', 'MENGURUS RUMAH TANGG', '0', 'BOGOR RT 002 RW 015 BEKTIHARJO KEC SEMANDING TUBAN 62381', 'BOGOR RT 002 RW 015 BEKTIHARJO KEC SEMANDING TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0078219451', '0078219451', '$2y$10$ZrFil/N9lNCDLGGJPOmrJeDpmhdEABlhhAZiFaOsAWTtbkzw9wEBS', '', 1, 1),
(95, 'KHOIRUR ROCHMAN AGUS FERDYANSYAH', '3523150508070002', '3523150609090193', '0076864575', '3414/906.102', 'TUBAN', '2007-08-05', 1, 1, '', 1, 2, 2, 'SISWO', '3523151102720004', 1972, 'SLTA', 'PETANI', '0', 'LAMITIN', '3523156601830005', 1983, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MEDOKAN RT 004 RW 016 BEKTIHARJO KEC SEMANDING KAB. TUBAN 62381', 'DSN MEDOKAN RT 004 RW 016 BEKTIHARJO KEC SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0076864575', '0076864575', '$2y$10$jHO2a7OqeVoa9LVWslEUkeFMH.Bmk0RzeAx.J5xuf6F/G.JZw/zw2', '', 1, 1),
(96, 'NIMATUL IZAA', '3523156811070001', '3523150809090116', '0072567640', '3415/907.102', 'TUBAN', '2007-11-28', 2, 1, '', 1, 0, 1, 'SUMALIK ARIFIN', '3523151206840009', 1984, 'SLTP', 'PETANI', '0', 'EVIANA', '3523154603890002', 1989, 'SLTP', 'PETANI', '0', 'DSN TLOGOPULE RT 002  RW 036 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 002  RW 036 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0072567640', '0072567640', '$2y$10$DtjZoanKuvmVBjbolsEXsu8f6cv8wsE4Cy1pq.AWiKDEBMNuBS8IG', '', 1, 1),
(97, 'QOYYUM NAYMA PROVIDI', '3522064206070002', '3522062005130003', '0072283326', '3416/908.102', 'BOJONEGORO', '2007-06-02', 2, 1, '', 1, 3, 3, 'WINONA DENNY PROVIDI', '3522151212740011', 1973, 'DIPLOMA IV', 'Wiraswasta', '0', 'ERLINAWATI', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'JL. APOKAT GG ABC NO.15 KEL PERBON KEC. TUBAN KAB TUBAN 62351', 'JL. APOKAT GG ABC NO.15 KEL PERBON KEC. TUBAN KAB TUBAN 62351', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0072283326', '0072283326', '$2y$10$5Vro8oAiRwhk30kxnewj.e7JxRv87L4PNavY3f.QU1o/OfNLrUy9W', '', 1, 1),
(98, 'RATNA AMELIA', '3523204911070001', '3523200809090006', '0073086368', '3417/909.102', 'TUBAN', '2007-11-09', 2, 1, '', 1, 0, 1, 'WAHYUDI', '3523200605850001', 1985, 'SLTP', 'PETANI', '0', 'LASMIRAH', '3523204112860003', 1986, 'SD', 'PETANI', '0', 'DSN SUMBERAGUNG RT 006 / RW 001  DAHOR KEC. GRABAGAN KAB. TUBAN 62373', 'DSN SUMBERAGUNG RT 006 / RW 001  DAHOR KEC. GRABAGAN KAB. TUBAN 62373', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0073086368', '0073086368', '$2y$10$AN35BRmyKhFun9hWSZDgoeMHlhW09FdODT0YZelvjO8m9G9qE2oVu', '', 1, 1),
(99, 'SELVI AYU ANJANI', '3523134202080001', '3523131603063496', '0082614169', '3418/910.102', 'TUBAN', '2008-02-20', 2, 1, '', 1, 0, 1, 'JAIS', '3523130606810003', 1981, 'SD', 'PETANI', '0', 'KUSRIAH', '3523136607880001', 1988, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BECOK RT 004 RW 007  TEGALREJO KEC MERAKURAK TUBAN 62355', 'DSN BECOK RT 004 RW 007  TEGALREJO KEC MERAKURAK TUBAN 62355', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0082614169', '0082614169', '$2y$10$XbtjcvNsD6LrP3evKwPw..sKKsmOa5wt9SE3GCegNOs48rWfIqI0u', '', 1, 1),
(100, 'TASYA NUR FAIDA', '3523164912070005', '3523160812200001', '0073107529', '3419/911.102', 'TUBAN', '2007-12-09', 2, 1, '', 1, 5, 3, 'M. SUWANTO', '3523162105930002', 1993, 'SD', 'NEYALAN', '0', 'AINUL ROCIP TANTI FARANDANI', '3523165007830007', 1983, 'SD', 'MENGURUS RUMAH TANGG', '0', 'JL. PANGLIMA SUDIRMAN GG. PRAHU RT 002 / RW 001 KEL. KARANGSARI KEC.TUBAN KAB TUBAN 62314', 'JL. PANGLIMA SUDIRMAN GG. PRAHU RT 002 / RW 001 KEL. KARANGSARI KEC.TUBAN KAB TUBAN 62314', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0073107529', '0073107529', '$2y$10$m4AvN4P8r20YytheeHxA5umVHgk5hsezt/1w8B7UT44/KJ9aK6Hz6', '', 1, 1),
(101, 'YUSFIKA AURALIA', '3578114502060001', '3523121512200002', '0066088767', '3504/912.102', 'SURABAYA', '2006-02-05', 2, 1, '', 1, 2, 1, 'ARISTA KURNIAWAN', '', 0, '', '', '0', 'SYAROH', '3578115908860001', 1986, 'SLTP', 'WIRASWASTA', '0', 'DSN KARANGANYAR RT 006/RW 002 PURWOREJO KEC. JENU KAB TUBAN 62352', 'DSN KARANGANYAR RT 006/RW 002 PURWOREJO KEC. JENU KAB TUBAN 62352', '0', '0', '0', '0', 2, 1, '', '2023-07-17', 'XI AK', '0066088767', '0066088767', '$2y$10$q9Qc1pmBOt9fx9BxqeHPCeJDN9FyWYF5rFky1YAXWW5YKGcU15cbC', '', 1, 1),
(102, 'ANDRIYAN SAPUTRA', '3523151005080003', '3523151303061817', '0088230311', '3420/471.096', 'TUBAN', '2008-05-09', 1, 1, '', 1, 3, 2, 'SANTIP', '352315202740002', 1977, 'SD', 'PETANI', '0', 'MUNTIANI', '3523155906790002', 1979, 'SD', 'PETANI', '0', 'DSN KRAJAN RT 003 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', 'DSN KRAJAN RT 003 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0088230311', '0088230311', '$2y$10$jtmClwLi/LzS5rpOQRXesegNlVUp5RmdEDz9nTLVBP4BeXDOUPeQG', '', 1, 1),
(103, 'DHIMAS ANDHIKA PRATAMA', '3523152304080001', '3523151303061873', '0082973867', '3423/474.096', 'TUBAN', '2008-04-23', 1, 1, '', 1, 2, 1, 'RUJITO', '3523151108810010', 1981, 'SD', 'Wiraswasta', '0', 'MUNTI\'AH', '3523155407850001', 1985, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT 001 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', 'DSN KRAJAN RT 001 RW 003 GESING KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0082973867', '0082973867', '$2y$10$P8Nx//hFuc2b.UjnCxFEoeRjHvMRlWXdqZA8FLSLBVld2H0qbscE6', '', 1, 1),
(104, 'FANIA RAHMA TASA FEBRIANA', '3523124802070002', '3523121809140002', '0073046887', '3424/475.096', 'TUBAN', '2007-02-08', 2, 1, '', 1, 2, 1, 'SAWUNG ADI FANTRY YUDA ARTI KH', '3523121612850001', 1985, 'SLTA', 'KARYAWAN SWASTA', '0', 'WARTATIK', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN JABUNG RT 003 RW 004 SUGIHWARAS KEC JENU KAB TUBAN 62352', 'DSN JABUNG RT 003 RW 004 SUGIHWARAS KEC JENU KAB TUBAN 62352', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0073046887', '0073046887', '$2y$10$KNGPAbWECJC5QRmPWsBwkeMmRxy4w67d8zFZTSpprS9nXhCVR7dWa', '', 1, 1),
(105, 'LENA OKTAFIA', '3523204206080001', '3523210140306240', '0082352473', '3425/476.096', 'TUBAN', '2008-06-02', 2, 1, '', 1, 0, 1, 'TAHAR', '3523200107770019', 1977, 'SD', 'PETANI', '0', 'SULIK', '3523205408800001', 1980, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN TELO RT 001 RW 002 PAKIS KEC. GRABAGAN KAB TUBAN 62371', 'DSN TELO RT 001 RW 002 PAKIS KEC. GRABAGAN KAB TUBAN 62371', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0082352473', '0082352473', '$2y$10$8Dkm5wB2scy1I08bG31g7uxhrf3RyZ8OVqKX4ceITfnHKE0Sn7BkW', '', 1, 1),
(106, 'M. ALIF MAHMUD AL MUBAROQ', '3523152610070002', '3523150601100040', '0074242153', '3506/490.096', 'TUBAN', '2007-10-26', 1, 1, '', 1, 2, 2, 'SUMALI ANTO', '3523150105720007', 1972, 'SLTP', 'KARYAWAN SWASTA', '0', 'NUR HANIFAH', '3523154312780002', 1978, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DUSUN KEPET RT/RW 001/005 DESA TUNAH KECAMATAN SEMANDING', 'DUSUN KEPET RT/RW 001/005 DESA TUNAH KECAMATAN SEMANDING', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0074242153', '0074242153', '$2y$10$t53PCsrIkr8cvZCZOWIc7Og8bYrqD2APZeOcj6HP0AkMD3tr8U5Di', '', 1, 1),
(107, 'MEISAROH DEWI WIDIANINGRUM', '3523154107000128', '3523151303062535', '0082340039', '3426/477.096', 'TUBAN', '2008-05-24', 2, 1, '', 1, 2, 2, 'KASTO MULYO', '3523151405660001', 1965, 'SD', 'PETANI', '0', 'TUMIRAH', '3523156001750001', 1980, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT 002 RW 002 GESING KEC. SEMANDING KAB. TUBAN 62381', 'DSN KRAJAN RT 002 RW 002 GESING KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0082340039', '0082340039', '$2y$10$6tJRbRVrNG7gJZgOTRvfauas3s61dXlLFqzgg97/RumiCMK1dFqNe', '', 1, 1),
(108, 'MOCHAMAD RISAL ALFA RISQI', '3523153012050001', '3523150605090043', '0055980792', '3427/478.096', 'TUBAN', '2005-12-30', 1, 1, '', 1, 2, 2, 'MUSTAKIM', '3523150107740123', 1974, 'SD', 'BURUH HARIAN LEPAS', '0', 'SUBAIDAH', '', 0, '', 'MENINGGAL DUNIA', '0', 'DSN KRAJAN RT 001 RW 004 GESING KEC. SEMANDING KAB. TUBAN 62381', 'DSN KRAJAN RT 001 RW 004 GESING KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0055980792', '0055980792', '$2y$10$HAYUPDfuHgQI5pWZ.WozLO4.toTCRrd4SmMq2rO8qhbNBoc1JAh2S', '', 1, 1),
(109, 'MOHAMAD REZA ADITIYA', '3523151803080003', '3523151503061786', '0081649079', '3428/479.096', 'TUBAN', '2008-03-18', 1, 1, '', 1, 2, 2, 'DUL PATAH', '3523151605660002', 1966, 'SD', 'PETANI', '0', 'SARMI', '3523154804720009', 1972, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0081649079', '0081649079', '$2y$10$5tkJ5BgU5IiVPmr.H7SAcubh2FEoAFs.6Z6sWarsCmaqYlvwOlcDG', '', 1, 1),
(110, 'MUHAMMAD DWI ANGGA SAPUTRA', '3523132707070004', '3523131603062134', '0077001102', '3429/480.096', 'TUBAN', '2007-07-27', 1, 1, '', 1, 0, 1, 'SUROTO', '3523131507700002', 1970, 'SD', 'PERDAGANGAN', '0', 'DARSIH', '3523136511790001', 1979, 'SD', 'PETANI', '0', 'DSN BECOK RT 002 RW 008 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', 'DSN BECOK RT 002 RW 008 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0077001102', '0077001102', '$2y$10$irgF1vBOeEGWA7bu9VDQlOBfHAQFnZ1yjCOlaqgQArh8lNlzG5HYq', '', 1, 1),
(111, 'MUHAMMAD IDO FIKY', '3523152410060002', '3523153012090298', '0061895385', '3430/481.096', 'TUBAN', '2006-10-24', 1, 1, '', 1, 2, 2, 'SURYANTO', '3523152510710004', 1971, 'SD', 'PETANI', '0', 'KASMINAH', '3523157006710009', 1970, 'SD', 'PETANI', '0', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB. TUBAN 62381', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0061895385', '0061895385', '$2y$10$8yZrjWKCDW15xsL7F/VnuO8fSuPYFqJKLuvaST3vFASLD3RM/J5xW', '', 1, 1),
(112, 'NAYLA ANDINI AGIS RAMADHANI', '3523175910060004', '3215260510170003', '0069084549', '3431/482.096', 'TUBAN', '2006-10-19', 2, 1, '', 1, 3, 2, 'AGUS SUPRIYANTO', '3523170708800014', 1980, 'SLTA', 'BURUH HARIAN LEPAS', '0', 'WAHYU NUR ISNAINI ASTUTI', '3523175201810003', 1981, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'RAWABAGUS UTARA RT 005 RW 001 MAGERSARI KEC. KARAWANG TIMUR KAB KARAWANG 41371 / DSN JEDUNG RT 001  RW 005 BOGOREJO KEC MERAKURAK  KAB TUBAN 62355', 'RAWABAGUS UTARA RT 005 RW 001 MAGERSARI KEC. KARAWANG TIMUR KAB KARAWANG 41371 / DSN JEDUNG RT 001  RW 005 BOGOREJO KEC MERAKURAK  KAB TUBAN 62355', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0069084549', '0069084549', '$2y$10$N5NXSgp1MAm7oUUFP3EH3ODibVRHXGVnE5YAmmpC/9RSgopyYuS9q', '', 1, 1),
(113, 'NENI VIDIYANA', '3523155306070001', '3523150711120004', '0078832047', '3432/483.096', 'TUBAN', '2007-08-13', 2, 1, '', 1, 0, 1, 'NARTO SOPAN', '3523151003790008', 1979, 'SD', 'Wiraswasta', '0', 'LESTARI', '3523152804870005', 1987, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0078832047', '0078832047', '$2y$10$6ikl..7Ivqvz0IaIfQGR8OfMMNOq0QuZX91fUvSMY0.D/uc2MmV1W', '', 1, 1),
(114, 'NINA LINDA ASTUTIK', '3523205806070001', '3523200912090249', '0078487506', '3433/484.096', 'TUBAN', '2007-06-18', 2, 1, '', 1, 0, 1, 'NUR MUHAMAD', '3523200504700002', 1970, 'SD', 'PETANI', '0', 'SRIAH', '3523204104730005', 1973, 'SD', 'PETANI', '0', 'DSN GESIKAN RT 003 RW 004 GESIKAN KEC.GRABAGAN KAB TUBAN  62371', 'DSN GESIKAN RT 003 RW 004 GESIKAN KEC.GRABAGAN KAB TUBAN  62371', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0078487506', '0078487506', '$2y$10$8TlbTDg1s9KJAX02NsHSLOEeQwdS49Nj5F1qfEIzfFX.a021tt4LS', '', 1, 1),
(115, 'NURVITA', '3523166902080001', '3523161101100118', '0084680967', '3434/485.096', 'TUBAN', '2008-02-29', 2, 1, '', 1, 3, 3, 'PURWADI', '3523160103750003', 1975, 'SD', 'TRANSPORTASI', '0', 'NGANTI', '3523164111790002', 1979, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BONGKOL 2 RT 002 RW 006 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', 'DSN BONGKOL 2 RT 002 RW 006 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0084680967', '0084680967', '$2y$10$5eiZOUop5ADwEGQaxkQt6O3MxcOhnDmDfGe6aGTO0CxBiE0vjUsom', '', 1, 1),
(116, 'RIA INDAWATI', '3523157101060002', '3523151503060323', '0068160185', '3435/486.096', 'TUBAN', '2008-01-31', 2, 1, '', 1, 0, 1, 'RODO', '3523152406570005', 1957, 'SD', 'Wiraswasta', '0', 'JASMANI', '3523155308540001', 1954, 'SD', 'WIRASWASTA', '0', 'LINGK KIRING RT 001  RW 014 GEDONGOMBO  KEC SEMANDING KAB. TUBAN 62381', 'LINGK KIRING RT 001  RW 014 GEDONGOMBO  KEC SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0068160185', '0068160185', '$2y$10$gbB1DL8bGmAGjY/PSrnkduv0hBzRhdxHEy.mzvJnBVehPC/H7wDdS', '', 1, 1),
(117, 'SAYJITSU HIROSA', '3523156808070001', '3523151503062480', '0074389079', '3436/487.096', 'TUBAN', '2007-08-28', 2, 1, '', 1, 0, 1, 'HANI PRIBADI', '3523150906800005', 1980, 'SD', 'KARYAWAN SWASTA', '0', 'CAMI HARTI', '3523154306870001', 1987, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', 'DSN JARUM RT 002 RW 014 JADI KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0074389079', '0074389079', '$2y$10$qAGA3xUH9uWPGyeNiJAO9uoNI.Q/4Zt3aW4yweuzlVDapp9Svt56K', '', 1, 1),
(118, 'THEO RIZKI DIMAS KALENDRA', '3523202202080001', '3523200408140004', '0084958876', '3437/488.096', 'TUBAN', '2008-02-22', 1, 1, '', 1, 2, 1, 'GUNARYO', '3523201504820002', 1983, 'SD', 'Wiraswasta', '0', 'MUNTOLIAH', '3523304503840002', 1984, 'SLTP', 'WIRASWASTA', '0', 'DSN GENDRUK RT 001  RW 001 GRABAGAN KEC GRABAGAN KAB. TUBAN 62371', 'DSN GENDRUK RT 001  RW 001 GRABAGAN KEC GRABAGAN KAB. TUBAN 62371', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0084958876', '0084958876', '$2y$10$MI4omUihegv3hIf5ARyq1OfjGng4XPoXMPo4Lx/SRABp2KYzEZJry', '', 1, 1),
(119, 'UMI MA\'ARIFATUS TSANI\'AH', '3523166601070002', '3523161503063995', '0079421752', '3438/489.096', 'TUBAN', '2007-01-26', 2, 1, '', 1, 2, 2, 'ALWI', '3523161510650001', 1965, 'SD', 'PETANI', '0', 'TASMI', '3523165108740001', 1974, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN WINONG RT 001  RW 009 SUGIHARJO KEC TUBAN KAB. TUBAN 62319', 'DSN WINONG RT 001  RW 009 SUGIHARJO KEC TUBAN KAB. TUBAN 62319', '0', '0', '0', '0', 2, 2, '', '2023-07-17', 'XI BD', '0079421752', '0079421752', '$2y$10$VHyCcsJ./xRoi15tkCVC9OnOzGdDzycjg7vDtE1IiGpmLShfH7SQm', '', 1, 1),
(120, 'ANI NUR JANNAH', '3523154705070001', '3523151403065521', '0079252539', ' 3484/226.072', 'TUBAN', '2007-05-07', 2, 1, '', 1, 2, 1, 'SUPRI', '3523151301820003', 1983, 'SD', 'PETANI', '0', 'RINI NUR HIDAYAH', '3523154510890003', 1989, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MOJOKOPEK RT 001 RW 027 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN MOJOKOPEK RT 001 RW 027 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0079252539', '0079252539', '$2y$10$p9xx.fz5SX5zh1tPAnnmD.N6Kgx/7Lf5U7p3izljYro6ZUNqHTb4.', '', 1, 1),
(121, 'CINTA FANISA', '6404035507080001', '6404032406080001', '0084500392', '3485/227.072', 'PIMPING', '2008-07-15', 2, 1, '', 1, 2, 2, 'TIKNOTO', '', 0, '', '', '0', 'ISA SARITA IKUN', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN GEMANTING RT 001 RW 008 GENAHARJO KEC. SEMANDING KAB. TUBAN 62381', 'DSN GEMANTING RT 001 RW 008 GENAHARJO KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0084500392', '0084500392', '$2y$10$0m5Z8h2S/EQGnt8QnP/JaeSLBdff2x5b9hW4RZGqFObTVYtPU5O9.', '', 1, 1),
(122, 'CINTA TRIWIJAYA', '3523152603070005', '3523152806190002', '0074355309', '3486/228.072', 'TUBAN', '2007-03-26', 2, 1, '', 1, 6, 3, 'WASIMAN', '3523150107700120', 1970, 'SD', 'PETANI', '0', 'RITA WATI', '', 0, '', 'MENINGGAL DUNIA', '0', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0074355309', '0074355309', '$2y$10$Do.lhSt64LF2DuDP58f34u/a4b0oEIWj0TSagtxMj6OfJjkJnb0Dq', '', 1, 1),
(123, 'DEVIE FANEZA ALFAZIRA', '3523154202070001', '3523151503065493', '0078136736', '3487/229.072', 'TUBAN', '2007-02-02', 2, 1, '', 1, 0, 1, 'LASTIP', '3523150107830180', 1981, 'SD', 'Wiraswasta', '0', 'WARTIK', '3523155710790002', 1979, 'SD', 'PETANI', '0', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN JARUM RT 002 RW 022 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0078136736', '0078136736', '$2y$10$YVXZ4TGojFrE.Sf0ee6mOu/vKQZ8xLME7LFxmVLm5tp8ikFNn7zbO', '', 1, 1),
(124, 'DINDA NURUL QOMARIYAH', '3523136103080002', '3523131712100003', '3080024442', '3488/230.072', 'TUBAN', '2008-03-21', 2, 1, '', 1, 0, 1, 'WARSIDI', '352313156700010', 1970, 'SD', 'PETANI', '0', 'SRI PURWATI', '3523135506750012', 1975, 'SD', 'PETANI', '0', 'DSN BANCANG RT 002 RW 011 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', 'DSN BANCANG RT 002 RW 011 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '3080024442', '3080024442', '$2y$10$jCIVrDEecuikza8ef1W1H.KywHscFSiOISacjGOAirEsbMpUOzdNi', '', 1, 1),
(125, 'FADILA YUNI ASTITI', '3523136506070001', '3523131703060482', '0077011698', '3489/231.072', 'TUBAN', '2007-06-25', 2, 1, '', 1, 2, 2, 'RIYANTO', '3523133007640001', 1964, 'SLTA', 'PEGAWAI NEGERI SIPIL', '0', 'DARWATI', '3523136506740001', 1974, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANG WINANGUN RT 001 RW 001 TUWIRI WETAN KEC. MERAKURAK KAB. TUBAN 62355', 'DSN KARANG WINANGUN RT 001 RW 001 TUWIRI WETAN KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0077011698', '0077011698', '$2y$10$9Ac.59CFQl6K.pIdPIPhfuANiy.08vtfvWVwxvyr4S.dDKxKwbqsq', '', 1, 1),
(126, 'FELISIA', '3523154406070002', '3523150901100072', '0072032536', '3490/232.072', 'TUBAN', '2007-05-04', 2, 1, '', 1, 2, 1, 'CARMUNTONO', '3523150107820181', 1982, 'TIDAK/BELOM SEKOLAH', 'KARYAWAN SWASTA', '0', 'TUTINAWATI', '3523154107870104', 1987, 'TIDAK/BELOM SEKOLAH', 'KARYAWAN SWASTA', '0', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0072032536', '0072032536', '$2y$10$F.KGLG5ZdMGR8vfrPVomIeFP0RjwHBHm6MLGYdBofKc1wMH1mOpQK', '', 1, 1),
(127, 'GADIS EKA MEFIA MUKHAN', '3523134310080001', '3523131503060230', '3089102437', '3491/233.072', 'TUBAN', '2008-10-03', 2, 1, '', 1, 0, 1, '', '', 0, '', '', '0', 'TITIN NOFIAH', '3523135501900002', 1990, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BANCANG RT 001 RW 012 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', 'DSN BANCANG RT 001 RW 012 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '3089102437', '3089102437', '$2y$10$cQGEfV3kffJqy5qJ.lLnneNtdk./Qi3OznojvT6Nk4sZnvyBX28YW', '', 1, 1),
(128, 'MAHDISA MAYA YOLANY', '3523165404080002', '3523160612090071', '0083929826', '3492/234.072', 'TUBAN', '2008-04-14', 2, 1, '', 1, 2, 1, 'HADI MUHAMMAD', '3523162811840006', 1984, 'SD', 'NELAYAN', '0', 'NURHAYANTI', '3523164711860004', 1986, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'JL PANGLIMA SUDIRMAN RT 002 RW 002 KARANGSARI KEC. TUBAN KAB. TUBAN 62314', 'JL PANGLIMA SUDIRMAN RT 002 RW 002 KARANGSARI KEC. TUBAN KAB. TUBAN 62314', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0083929826', '0083929826', '$2y$10$VSoX5XpP/n9sPBrcBq02ye8OsmM2A1B2fJ59aovrqEJqE1nCsEh3e', '', 1, 1),
(129, 'MAYA MELYSSA PUTRI', '3523205202080001', '3523201403062417', '0085627138', '3493/235.072', 'TUBAN', '2008-02-12', 2, 1, '', 1, 2, 1, 'SUMARLIN', '3523202709870001', 1987, 'DIPLOMA IV', 'GURU', '0', 'MUHSINATIN', '3523204601870002', 1987, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN TELO RT 002 RW 002 PAKIS KEC. GRABAGAN KAB. TUBAN 62373', 'DSN TELO RT 002 RW 002 PAKIS KEC. GRABAGAN KAB. TUBAN 62373', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0085627138', '0085627138', '$2y$10$jNLDB4x82I3VMh6ZMxt6x.ZKU7i/MpseNkSLkxaGovxvZn6dvDKla', '', 1, 1),
(130, 'MAYLAFFASYA NAJWA AL-SHIHAB', '3523155507070002', '3523150107220006', '0073262209', '3494/236.072', 'TUBAN', '2007-07-17', 2, 1, '', 1, 3, 2, 'PURWANTO', '', 0, '', '', '0', 'NINIK SETIYOWATI', '3523154202820011', 1982, 'DIPLOMA III', 'WIRASWASTA', '0', 'JL. HOS COKROAMINOTO NO 266 RT 007 RW 004 GEDONGOMBO KEC. SEMANDING KAB. TUBAN 62381', 'JL. HOS COKROAMINOTO NO 266 RT 007 RW 004 GEDONGOMBO KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0073262209', '0073262209', '$2y$10$xxVwxSKKydQ8sVDh2UNkfOlFHer5ISoHR81VuvAp7Pw.XSlgsKf9O', '', 1, 1),
(131, 'MELISCA ANANDA PRATAMA', '3523155710070001', '3523150412130004', '0079594439', '3495/237.072', 'TUBAN', '2007-10-17', 2, 1, '', 1, 2, 1, 'SUMITRO', '3523150704850004', 1985, 'SD', 'Wiraswasta', '0', 'NURPIATI', '3523154606870005', 1987, 'SD', 'WIRASWASTA', '0', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN TLOGOPULE RT 002 RW 035 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0079594439', '0079594439', '$2y$10$wJEqdRCYRk6qGWU2nSmsUePjUzVGhqixa1bJNy1wtKDfsaiNxEyMO', '', 1, 1),
(132, 'NURUL LAILA SAGITA', '3523184601080002', '3523182412090592', '0085130985', '3496/238.072', 'TUBAN', '2008-01-06', 2, 1, '', 1, 0, 1, 'TASMADI', '3523182702670001', 1967, 'SD', 'PETANI', '0', 'NGATMINAH', '3523184301680001', 1968, 'SD', 'PETANI', '0', 'DSN SINGGRT RT 002 RW 003 PUCANGAN KEC. PALANG KAB. TUBAN 62391', 'DSN SINGGRT RT 002 RW 003 PUCANGAN KEC. PALANG KAB. TUBAN 62391', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0085130985', '0085130985', '$2y$10$FVBWF9.4.yYyKGm/z9SDLOzXtpLBEZS3CIaW77elOUgavLFU6hApu', '', 1, 1),
(133, 'PRISCA GADIS OKTAVIA', '3523126610070001', '3523120207200002', '0073909093', '3497/239.072', 'TUBAN', '2007-10-26', 2, 1, '', 1, 2, 1, 'YOYOK ZUDIWIYONO', '', 0, '', '', '0', 'TUTUT', '3523127005900003', 1990, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANGANYAR RT 004 RW 002 TEMAJI KEC. JENU KAB. TUBAN 62352', 'DSN KARANGANYAR RT 004 RW 002 TEMAJI KEC. JENU KAB. TUBAN 62352', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0073909093', '0073909093', '$2y$10$kbP4Ahxa1OETUoUaoUHNt.TByyNK5xPrT335RPgMqtt19FAiwTtze', '', 1, 1),
(134, 'SITI ASTINA MAHARANI', '3523135609070002', '3523131509090012', '0076386475', '3499/241.072', 'TUBAN', '2007-09-16', 2, 1, '', 1, 0, 1, 'DASWAN', '3523131311730002', 1973, 'SD', 'PETANI', '0', 'NURKAYATIN', '3523134107860021', 1986, 'SLTP', 'PETANI', '0', 'DSN BANCANG RT 001 RW 010 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', 'DSN BANCANG RT 001 RW 010 TAHULU KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0076386475', '0076386475', '$2y$10$A4D5.Wrdf3vJQJrcJKflUeKi9ZO2PCwBqsrjYO1D6ElCOrTD8hcK2', '', 1, 1),
(135, 'WASI\'AH NELA MARZUQOH', '3523135101080002', '3523130202110001', '0088996381', '3500/242.072', 'TUBAN', '2008-01-11', 2, 1, '', 1, 2, 1, 'SUYANTO', '3523131909760002', 1976, 'SD', 'Wiraswasta', '0', 'RETNO WATI', '3523134803880004', 1988, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN TLOGO WUNI RT 001 RW 003 TEMANDANG KEC. MERAKURAK KAB. TUBAN 62355', 'DSN TLOGO WUNI RT 001 RW 003 TEMANDANG KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0088996381', '0088996381', '$2y$10$Qis.TbANYMDb77O.ZXXDBur.bIiMzXhWeBYp7bpt1mzOiMaKmF1CK', '', 1, 1),
(136, 'YAYUK WIJAYANTI', '3523157005080003', '3523150809090103', '0081337803', '3501/243.072', 'TUBAN', '2008-05-30', 2, 1, '', 1, 2, 1, 'JASMANI', '3523150709800009', 1980, 'SD', 'PETANI', '0', 'CARTI', '3523155306790007', 1979, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT 002 RW 037 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', 'DSN TLOGOPULE RT 002 RW 037 PRUNGGAHAN KULON KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0081337803', '0081337803', '$2y$10$t6ncVs/WtpzdqtjHqRORNuYiafTjFUikizYysZyMRsSuHi1qs5L7K', '', 1, 1),
(137, 'YOLANDA AYLIN TRIHAPSARI', '3523166808080005', '3523161503062905', '0085016452', '3502/244.072', 'TUBAN', '2008-08-28', 2, 1, '', 1, 0, 1, 'SUYADI RAJIYANTO', '352316107680006', 1968, 'SD', 'PEGAWAI NEGERI SIPIL', '0', 'ISMIWATI', '3523166008750001', 1973, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN BONGKOL 1 RT 002 RW 003 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', 'DSN BONGKOL 1 RT 002 RW 003 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0085016452', '0085016452', '$2y$10$eCmTGXJdllfmKAw60vfgKOYfHmtJ7VTLRq3jW/YNBvEz.Jzrb1F1K', '', 1, 1),
(138, 'YUNUS MAHMUD', '3523132209060001', '3523130703120001', '0068062206', '3503/245.072', 'TUBAN', '2006-09-22', 1, 1, '', 1, 3, 2, 'TAMSI', '3523131704750004', 1975, 'SD', 'Wiraswasta', '0', 'NURUL HIKMAH', '3523134602770002', 1977, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANGREJO RT 003 RW 005 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', 'DSN KARANGREJO RT 003 RW 005 TEGALREJO KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 5, '', '2023-07-17', 'XI LPKKK', '0068062206', '0068062206', '$2y$10$SOJbUOc/UpJY.3M3JGQdoO6PGro5Ur3gjjR8UzdwwFvMBaTqrEZ2W', '', 1, 1),
(139, 'AGENG HAYYU AL MUHYI', '3201370506080001', '3521021606140001', '0081317868', '3439/581.105', 'BOGOR', '2008-06-05', 1, 1, '', 1, 2, 2, 'FIRMAN SUKIRMAN', '', 0, '', '', '0', 'ANIK PURWANINGRUM', '3201375912760002', 1976, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'JL.A YANI NO.24 RT 004 RW 002 NGRAMBE KAB.NGAWI 63623', 'JL.A YANI NO.24 RT 004 RW 002 NGRAMBE KAB.NGAWI 63623', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0081317868', '0081317868', '$2y$10$eHILEKcrYlRfvjMNAyF75Onm7chrWYsCPev5PYS9.tfG3LwMqjUkK', '', 1, 1),
(140, 'ANGGUN AGUSTIN', '3523186308060001', '3523181303067497', '0064308410', '3440/582.105', 'TUBAN', '2006-08-23', 2, 1, '', 1, 3, 2, 'DJASMONO', '3523180707670003', 1966, 'SLTP', 'SOPIR', '0', 'IRAWATI', '3523187006780003', 1974, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'CENDORO UTARA RT 001 RW 002 CENDORO KEC PALANG KAB. TUBAN 62391', 'CENDORO UTARA RT 001 RW 002 CENDORO KEC PALANG KAB. TUBAN 62391', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0064308410', '0064308410', '$2y$10$qtkvCOfU3x/lYIKpojEa2.0d/Yy30rbMExO.ur8NWaW9PzhzLRewa', '', 1, 1),
(141, 'CELSI OLIVVIA PUTRI', '3523156108070002', '3523152403140004', '0073805616', '3442/584.105', 'TUBAN', '2007-08-21', 2, 1, '', 1, 0, 1, 'DRIPNO', '3523151204740009', 1974, 'SD', 'Wiraswasta', '0', 'MARWI ASTUTIK', '3523167001830005', 1983, 'SLTP', 'PETANI', '0', 'DSN TLOGOPULE RT 002  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 002  RW 033 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0073805616', '0073805616', '$2y$10$fqg5iTm9KWveRXM/r7CSv.v7k2x86xauqtUJzTu4EekeTby8reAOi', '', 1, 1),
(142, 'CHESY ANASTASYA TERERE', '3523165307080002', '3523162306110004', '0082041175', '3443/585.105', 'TUBAN', '2008-07-13', 2, 3, '', 1, 0, 1, 'ADEBERT TERERE', '3523162310750001', 1975, 'SLTP', 'PELAUT', '0', 'SRI UTAMI', '3523165301830004', 1983, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'GG. WIJAYA KUSUMA I RT 002 RW 003 RONGGOMULYO KEC. TUBAN KAB. TUBAN 62313', 'GG. WIJAYA KUSUMA I RT 002 RW 003 RONGGOMULYO KEC. TUBAN KAB. TUBAN 62313', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0082041175', '0082041175', '$2y$10$VCPZImeUsbe9Luk6wv1RTe.zh9ks12MltA6ms0D2Z8YI2fFMjvK3G', '', 1, 1),
(143, 'DELLA AFRILIA NANDA', '3523155712070001', '3523151109090029', '0072254352', '3444/586.105', 'TUBAN', '2007-02-17', 2, 1, '', 1, 2, 1, 'DIDIK RISMAWANTO', '3523152712790002', 1980, 'SD', 'PETANI', '0', 'SARPUK', '3523154403830008', 1983, 'SD', 'PETANI', '0', 'DSN MOJOKOPEK RT 002 RW 031 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN MOJOKOPEK RT 002 RW 031 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0072254352', '0072254352', '$2y$10$Yfj.Awe4ZrXm8i2Q9qNqAutvhhb29wPq/RV11PRX6IQlLSo2bC.du', '', 1, 1),
(144, 'DIANA RAHAYU WARDANA', '3175064206071011', '3175060412180034', '3071572751', '3445/587.105', 'JAKARTA', '2007-06-02', 2, 1, '', 1, 0, 1, 'WISNU WARDHANA', '', 0, '', '', '0', 'YAYAH NGATRIYAH', '3321104304910002', 1971, 'SLTA', 'MENGURUS RUMAH TANGG', '0', 'KP.PISANGAN RT 008 RW 003 PENGGILINGAN KEC. CAKUNG KOTA JAKARTA TIMUR PROV. DKI JAKARTA 13940', 'KP.PISANGAN RT 008 RW 003 PENGGILINGAN KEC. CAKUNG KOTA JAKARTA TIMUR PROV. DKI JAKARTA 13940', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '3071572751', '3071572751', '$2y$10$vpze7Nk6l6GAdPJLbZtX2uRnWVPXUlf.Q5LAWGGg9qB1WWMv1fmkK', '', 1, 1),
(145, 'DICKY WAHYUDIN FEBRYEAN ARMANSYAH', '7105102302070003', '3523153004210012', '0077724216', '3446/588.105', 'AMURANG', '2007-02-23', 1, 1, '', 1, 2, 1, 'SUWARMAN', '7105100804750001', 1975, 'SLTA', 'Wiraswasta', '0', 'WASEMI', '7105104802820001', 1983, 'SD', 'WIRASWASTA', '0', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0077724216', '0077724216', '$2y$10$yYKqZtGgxZ41pQkaz54GYug7S5ZkfLOctMInsnFWgWT9fp2bVd1b6', '', 1, 1),
(146, 'DWI WULAN DARI', '3523165402060003', '3523160801100156', '0063967280', '3447/589.105', 'TUBAN', '2006-02-14', 2, 1, '', 1, 4, 2, 'SUPRIYONO', '3523160707750004', 1975, 'SLTA', 'Wiraswasta', '0', 'TATIK', '', 0, '', 'MENINGGAL DUNIA', '0', 'JL. SUMUR SRUMBUNG N0. 18 KUTOREJO KEC TUBAN KAB.TUBAN 62311', 'JL. SUMUR SRUMBUNG N0. 18 KUTOREJO KEC TUBAN KAB.TUBAN 62311', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0063967280', '0063967280', '$2y$10$QYNsOvXR2mGbHauDYBMdw.XAC.kUcNOObgLMIDuVl2BveDj5aJyse', '', 1, 1),
(147, 'EKO BAGUS PRASETYO', '3523153103070004', '3523151503063045', '0074193670', '3448/590.105', 'TUBAN', '2007-03-31', 1, 1, '', 1, 0, 1, 'SUNARI', '3523150206850008', 1985, 'SD', 'Wiraswasta', '0', 'TARPIK', '3523155504850001', 1985, 'SD', 'TIDAK BEKERJA', '0', 'DSN TLOGOPULE RT 002 BRW 033 TLOGOPULE SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 002 BRW 033 TLOGOPULE SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0074193670', '0074193670', '$2y$10$hh2VDCHQQxqgj1PtUyXKk.m2MSMezfyRu7g0YwdHI6ibwUZ7J/iLq', '', 1, 1),
(148, 'ELIS RISKI APRILIYANI', '3523184405070001', '3523181109090120', '0077367362', '3449/591.105', 'TUBAN', '2007-05-02', 2, 1, '', 1, 2, 1, 'APRIL', '3523182308800002', 1982, 'SD', 'NELAYAN', '0', 'SRIYANI', '3523185602860003', 1986, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANGAGUNG TENGAH RT 009 RW 002 KARANGAGUNG KEC PALANG KAB. TUBAN 62391', 'DSN KARANGAGUNG TENGAH RT 009 RW 002 KARANGAGUNG KEC PALANG KAB. TUBAN 62391', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0077367362', '0077367362', '$2y$10$/HAGusUP4IlJNb7eyikhN.8HXiaEYj/waIVWRUcwtMp5THs/2vilm', '', 1, 1),
(149, 'FINA YULIA PRATIWI', '3523166602070001', '3523161403063857', '0073264716', '3450/592.105', 'TUBAN', '2007-02-06', 2, 1, '', 1, 2, 2, 'SUPRAPTO', '3523160607740003', 1974, 'SD', 'TRANSPORTASI', '0', 'YULAIKAH', '3523164107780019', 1978, 'SD', 'MENGURUS RUMAH TANGG', '0', 'JL.SEMANGKA RT 002 RW 007 PERBON KEC TUBAN KAB. TUBAN 62351', 'JL.SEMANGKA RT 002 RW 007 PERBON KEC TUBAN KAB. TUBAN 62351', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0073264716', '0073264716', '$2y$10$IhVwKRRjnGQTAN7i9srcY.cJkPsS6okXbDk1PzqNfyW3biJmOlTsC', '', 1, 1),
(150, 'HANDIKA IRFAN FIRNANDA', '3523131510070002', '3523131610130006', '0072398743', '3451/593.105', 'TUBAN', '2007-10-15', 1, 1, '', 1, 2, 1, 'RUSMIN', '', 0, '', '', '0', 'SITI HENIK', '3523135211840001', 1984, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN SEMAMPIR RT 001 RW 001 SEMBUNGREJO KEC. MERAKURAK KAB. TUBAN 62355', 'DSN SEMAMPIR RT 001 RW 001 SEMBUNGREJO KEC. MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0072398743', '0072398743', '$2y$10$diesbNRBUpTagRMp7gu/.eAHvlleBp7copYlQF62tloCBIqPvSMT6', '', 1, 1),
(151, 'HERLIAN DWI SEPTIANI', '3523156309040002', '3523152501180007', '0044744481', '3452/594.105', 'TUBAN', '2004-09-23', 2, 1, '', 1, 2, 2, 'NARKO', '3523150812660001', 1967, 'SD', 'Wiraswasta', '0', 'SUKIRAH', '3523155909690001', 1969, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN SEMANDING TIMUR RT 002 RW 006 SEMNDING KEC SEMANDING KAB TUBAN 62381', 'DSN SEMANDING TIMUR RT 002 RW 006 SEMNDING KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0044744481', '0044744481', '$2y$10$ZN6IIqzyqQKTLqxcTrFF8eMDw7RQmvSG7UYAwkRmV70GFsjk.4uLK', '', 1, 1),
(152, 'HIMA FITRIA FIDAYANTI', '3523104307080002', '3513100209090055', '3081365402', '3453/595.105', 'TUBAN', '2008-07-03', 2, 1, '', 1, 2, 1, 'TRINOTO', '3523101402850001', 1985, 'SD', 'PETANI', '0', 'ASWATI', '3523105508890001', 1988, 'SD', 'PETANI', '0', 'DSN KARANG ANYAR RT 001 RW 001 PUCANGAN KEC MONTONG KAB. TUBAN 62357', 'DSN KARANG ANYAR RT 001 RW 001 PUCANGAN KEC MONTONG KAB. TUBAN 62357', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '3081365402', '3081365402', '$2y$10$vnnEovtpET1BIbladmv5Uu3DpqhlENCZovRZ1kykNpbaHXi/0yegS', '', 1, 1),
(153, 'IGO ARI PRATAMA SAPUTRA', '3523151911070001', '3502161607210003', '0073682654', '3454/596.105', 'TUBAN', '2007-11-19', 1, 1, '', 1, 2, 1, 'MUJIONO', '', 0, '', '', '0', 'SARTIK', '3523154606870002', 1985, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB TUBAN 62381', 'DSN KRAJAN RT 002 RW 005 BEKTIHARJO KEC. SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0073682654', '0073682654', '$2y$10$Ha3UFyW2o8pbjoUdw7b42eDxF3T1TNA6KNcRwMgHarv.O3sFLQUda', '', 1, 1),
(154, 'JAMILATUL HIDAYATI', '3523150710070003', '3523151403067279', '0078774458', '3455/597.105', 'TUBAN', '2007-10-07', 2, 1, '', 1, 2, 1, 'ABDUL WAKID', '', 0, '', '', '0', 'SUSANA', '3523156104840002', 1984, 'SLTP', 'PETANI', '0', 'DSN JARUM RT 002 RW 021 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN JARUM RT 002 RW 021 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0078774458', '0078774458', '$2y$10$Dx6wS6VoifnUu.4WmoDZAuVqTWnjalVRJYZS14wS8z9lhwpM/3Jc6', '', 1, 1),
(155, 'MAHENDRA ', '3523130707070006', '3523131603065637', '0077943081', '3456/598.105', 'TUBAN', '2007-07-07', 1, 1, '', 1, 3, 2, 'WARIJAN', '3523130202660001', 1966, 'SD', 'PERDAGANGAN', '0', 'PUJI', '35233135408740001', 1974, 'SD', 'PERDAGANGAN', '0', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0077943081', '0077943081', '$2y$10$jArsUYRdv5SFYjxdoGFe5uE3expQ3QA775S4MKE3qSrchEQVs20ky', '', 1, 1),
(156, 'MAR ATUS SHOLIHAH', '3523155211070004', '3523152312090122', '0073149316', '3457/599.105', 'TUBAN', '2007-11-12', 2, 1, '', 1, 2, 1, 'HADI SUTOMO', '3523152808810005', 1981, 'SLTP', 'Wiraswasta', '0', 'TRI DIYAH PURWANTI', '3523155104880005', 1988, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'KOWANG SELATAN RT 00  RW 00    KOWANG KEC. SEMANDING KAB. TUBAN 62381', 'KOWANG SELATAN RT 00  RW 00    KOWANG KEC. SEMANDING KAB. TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0073149316', '0073149316', '$2y$10$Z8cK7Yr/bYCpI3iIHbgCbuukIC.YU0kj3Odqqo1ZpHrWdZfMsBuT.', '', 1, 1),
(157, 'MAYA KIN-KIN ANGGRIYANI', '3523154503080002', '3523150809090150', '0083546000', '3458/600.105', 'TUBAN', '2008-03-05', 2, 1, '', 1, 2, 1, 'MOCH. TOHIR', '3523150609830003', 1983, 'SD', 'PETANI', '0', 'WARLIK ELIKA', '3523154107880132', 1987, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0083546000', '0083546000', '$2y$10$tnai5vwOdDBJu8u5qn2YVOEimA4B8Pquha.dSyZq3BgaEAweuskoe', '', 1, 1),
(158, 'MILDA HIDAYATUL UMMAH', '3523104511090001', '3523100803069271', '0084331161', '3459/601.105', 'TUBAN', '2008-11-15', 2, 1, '', 1, 0, 1, 'DAMAN HURI', '', 0, '', '', '0', 'HARMIKI', '3523105209770001', 1977, 'SD', 'MENGURUS RUMAH TANGG', '0', 'PAKEL RT 015 RW 003 PAKEL KEC. MONTONG KAB TUBAN 62357 ', 'PAKEL RT 015 RW 003 PAKEL KEC. MONTONG KAB TUBAN 62357 ', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0084331161', '0084331161', '$2y$10$6nnFL8rcTq8/rUmBE1By5O.jIMU0zoWV9ErUuB5Cc90czL5Xcj6TK', '', 1, 1),
(159, 'MOHAMMAD AZKA NAUFAL HILMI', '3523150711070002', '3523151503064123', '3077263829', '3460/602.105', 'TUBAN', '2007-11-07', 1, 1, '', 1, 0, 1, 'H. SUWAJI', '3523151302670001', 1967, 'TIDAK/BELOM SEKOLAH', 'Wiraswasta', '0', 'HJ. SUTIK', '3523155411720001', 1972, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT 004 RW 008 JADI KEC SEMANDING KAB TUBAN 62381', 'DSN KRAJAN RT 004 RW 008 JADI KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '3077263829', '3077263829', '$2y$10$g7JMPU.BvQescTPA.x8GZ.aC61HbtUogEa.TZfXpXpmH27ao7FQHa', '', 1, 1),
(160, 'NOVI AULIA RAHMAWATI', '3523186507070002', '3523182105120019', '0076848202', '3461/603.105', 'TUBAN', '2007-07-25', 2, 1, '', 1, 0, 1, 'KASNOTO', '3523181512770001', 1977, 'SLTP', 'Wiraswasta', '0', 'KASWATI', '3523186412700003', 1970, 'SD', 'MENGURUS RUMAH TANGG', '0', 'CENDORO SELATAN RT 003 RW 006 KEC PALANG KAB TUBAN 62391', 'CENDORO SELATAN RT 003 RW 006 KEC PALANG KAB TUBAN 62391', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0076848202', '0076848202', '$2y$10$6AtJ6dNFwE86u.uN1qzaHeOSS4W8uaxIcsaasarGZ4kPe01ztipQe', '', 1, 1),
(161, 'REFA ZULI AMELIA', '3523137007070001', '3523132201100279', '0074952652', '3462/604.105', 'TUBAN', '2007-07-30', 2, 1, '', 1, 0, 1, 'KASRUN', '3523131204780004', 1978, 'SD', 'INDUSTRI', '0', 'RUKMINI', '3523136705850004', 1985, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BECOK RT 004 RW 008  TEGALREJO KEC MERAKURAK KAB TUBAN 62355', 'DSN BECOK RT 004 RW 008  TEGALREJO KEC MERAKURAK KAB TUBAN 62355', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0074952652', '0074952652', '$2y$10$c0bKZFG3QNuIPhSC0tRiiO3ACcNtRAAOz/4nD9iUrGEEfCHyciXFy', '', 1, 1),
(162, 'RISKA MAULIDA RAHMA', '3523106404080003', '3523100803066778', '0082299466', '3464/606.105', 'TUBAN', '2007-10-10', 2, 1, '', 1, 2, 1, 'SUPRIYANTO', '3523181007790005', 1979, 'SLTP', 'KARYAWAN SWASTA', '0', 'KARIYANI', '3523184806850004', 1985, 'SD', 'KARYAWAN SWASTA', '0', 'DSN SINGGET RT 005 RW 003 PUCANGAN KEC PALANG KAB TUBAN 62391', 'DSN SINGGET RT 005 RW 003 PUCANGAN KEC PALANG KAB TUBAN 62391', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0082299466', '0082299466', '$2y$10$xnSGOiAhZHglqem3hUIof.oWe7dp6jYm5D/zedvyyB6wqW1D8q9vy', '', 1, 1),
(163, 'RISQI DWI FIRNANDO', '3523150506070006', '3523150107140005', '0075411891', '3465/607.105', 'TUBAN', '2007-07-05', 1, 1, '', 1, 4, 2, 'KASTO', '3523151305620003', 1962, 'TIDAK/BELOM SEKOLAH', 'PETANI', '0', 'MARNING', '3523156508810002', 1981, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN JADI RT 004 RW 007 JADI KEC SEMANDING KAB TUBAN 62381', 'DSN JADI RT 004 RW 007 JADI KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0075411891', '0075411891', '$2y$10$QorlUmw8xF1/JHk9hC8o5eMKtCR3imortaZvqxLOF7lLXlI9KNKuG', '', 1, 1),
(164, 'SELVIA FAIZURA', '3523154311070002', '3523152508170003', '0072863667', '3466/608.105', 'TUBAN', '2007-11-03', 2, 1, '', 1, 2, 1, 'YOYOK WIDODO', '', 0, '', '', '0', 'WARTINIK', '3523154406830002', 1983, 'SD', 'PETANI', '0', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', 'DSN BOGOR RT 004 RW 015 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0072863667', '0072863667', '$2y$10$yk9/4Wn58PmgYkPrNOSUOeYkBLw7B8E1ZXUvrVQGRc2Uvq.APcTym', '', 1, 1),
(165, 'SYAFINA NADYA PUTRI', '3523205101070001', '3523201203068484', '0075759118', '3467/609.105', 'TUBAN', '2007-01-17', 2, 1, '', 1, 2, 2, 'SYAFII', '', 0, '', '', '0', ' RITA RAHAYU NINGSIH ', '3523204107830050', 1983, 'SD', 'PETANI', '0', 'DSN GESIKAN  RT 005 RW 004 GESIKAN  KEC GRABAGAN KAB TUBAN 62373', 'DSN GESIKAN  RT 005 RW 004 GESIKAN  KEC GRABAGAN KAB TUBAN 62373', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0075759118', '0075759118', '$2y$10$8XYDJ2kzLkHYQ4jocEdXfOwaCO.hKNf.TZB/s9e9zj8R4oc.FEWVa', '', 1, 1),
(166, 'WISNU SAPUTRA ', '3523130212080001', '3523131603065637', '0088738928', '3468/610.105', 'TUBAN', '2008-12-02', 1, 1, '', 1, 3, 3, 'WARIJAN', '3523130202660001', 1966, 'SD', 'PERDAGANGAN', '0', 'PUJI', '3523135408740001', 1974, 'SD', 'PERDAGANGAN', '0', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', 'DSN BAKALAN RT 003   RW 004  TEGALREJO KEC MERAKURAK KAB. TUBAN 62355', '0', '0', '0', '0', 2, 3, '', '2023-07-17', 'XI PH', '0088738928', '0088738928', '$2y$10$QrEBtlJrTpZEcMCYK4PMt.djIS6DSNxDhrsUVuDreH3vItWzh51gy', '', 1, 1),
(167, 'ADINDA FATIMATUS ZAHRA ISLAMI', '3523135107080001', '3523131901100008', '0084976371', '3470/767.063', 'TUBAN', '2008-07-11', 2, 1, '', 1, 2, 1, 'KASRIP', '3523132705800001', 1980, 'SD', 'PETANI', '0', 'SITI ROHMAH', '3523135107850004', 1985, 'SD', 'MENGURUS RUMAH TANGG', '0', 'DSN MULUNG RT 003 RW 002 BOGOREJO KEC MERAKURAK KAB TUBAN 62355', 'DSN MULUNG RT 003 RW 002 BOGOREJO KEC MERAKURAK KAB TUBAN 62355', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0084976371', '0084976371', '$2y$10$iA7ObARxFE63lzyBjD3FLueKPWoctqaewjcecHii1A6LyazB9b2va', '', 1, 1),
(168, 'AULIA RENANDA PASHA', '3523184610070002', '3523172008140002', '0072726779', '3471/768.063', 'TEGAL', '2007-10-06', 2, 1, '', 1, 2, 1, 'SISYANTO', '3523172801800001', 1980, 'SLTA', 'Wiraswasta', '0', 'ULFA MISTUTIK', '3523185510780005', 1978, 'SLTA', 'WIRASWASTA', '0', 'DSN NGRAYUNG RT 011 / RW 001 NGRAYUNG KEC. PLUMPANG KAB TUBAN 62382', 'DSN NGRAYUNG RT 011 / RW 001 NGRAYUNG KEC. PLUMPANG KAB TUBAN 62382', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0072726779', '0072726779', '$2y$10$u5P4Fz7GxnEMiFv/isGEWOa7NPkPBjvb334yxlQ2adNHcxW/lCUJO', '', 1, 1),
(169, 'AZUHRIL REGA FAHRIN AKBAR MUHAMMAD', '3524071210070004', '3524081708107739', '0073508319', '3472/769.063', 'LAMONGAN', '2007-11-12', 1, 1, '', 1, 0, 0, '', '', 0, '', '', '0', 'RUBI ATUN', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'LABUHAN RT 004 RW 001 LABUHAN KEC BRONDONG KAB.LAMONGAN 62263', 'LABUHAN RT 004 RW 001 LABUHAN KEC BRONDONG KAB.LAMONGAN 62263', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0073508319', '0073508319', '$2y$10$LRlvsW/.VYRCM9RvMO5z1utA1f3Ty6JcIH2XHlCLVRpGDk6V4M646', '', 1, 1),
(170, 'CHRISTIABELLA', '8171024402080011', '3523151111190008', '0085026047', '3473/770.063', 'AMBON', '2008-02-04', 2, 3, '', 1, 3, 2, 'TAI HITU STENLI HARYONO', '', 0, '', '', '0', 'LANY SOLAPUNG TUNGGAL', '817102660679008', 1979, 'DIPLOMA IV', 'WIRASWASTA', '0', 'JL. M.YAMIN NO 25 F RT 002 RW 003 GEDONGOMBO KEC. SEMANDING KAB.TUBAN 62381', 'JL. M.YAMIN NO 25 F RT 002 RW 003 GEDONGOMBO KEC. SEMANDING KAB.TUBAN 62381', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0085026047', '0085026047', '$2y$10$z6fUdKSEs5xR49o3FIJUDeyN8JffP9P3edQuQkagVOEjbi8LuO00y', '', 1, 1);
INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nik_pd`, `nkk`, `nisn`, `nis`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `agama`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nik_ayah`, `tahun_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `kontak_ayah`, `nama_ibu`, `nik_ibu`, `tahun_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `kontak_ibu`, `alamat`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `terima_tingkat`, `jurusan`, `sekolah_asal`, `terima_tanggal`, `terima_kelas`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(171, 'DANIEL AGKWILA MANGGAPROW', '9205080612060002', '9205080812110004', '0066246226', '3474/771.063', 'URBINASOPEN', '2006-12-06', 1, 3, '', 1, 6, 6, 'ISMAIL WANMA MANGGAPROUW', '9205082801660002', 1966, 'SD', 'PETANI', '0', 'MAGRICE URBINAS', '9205126510670001', 1967, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN URBINASOPEN DESA URBINASOPEN KEC. WAIGEO TIMUR KAB. RAJA AMPAT PROV. PAPUA BARAT DAYA', 'DSN URBINASOPEN DESA URBINASOPEN KEC. WAIGEO TIMUR KAB. RAJA AMPAT PROV. PAPUA BARAT DAYA', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0066246226', '0066246226', '$2y$10$SO5Ly2UuZ.pm8/NmUrbDVeZs65xGUAPNZSsEkFjmyj51LTYaFlK2S', '', 1, 1),
(172, 'EVA OKTAVIANA', '3523156710070002', '3523150704200001', '0079644925', '3476/773.063', 'TUBAN', '2007-10-27', 2, 1, '', 1, 2, 1, 'JASMANI', '3523152305800006', 1980, 'SD', 'WIRASWASTA', '0', 'TUTIK NINGSIH', '3523156305890005', 1989, 'SD', 'PETANI', '0', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN TLOGOPULE RT 001  RW 034 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0079644925', '0079644925', '$2y$10$Yprbh5oYgP/bD5IN98aLoO450qAGFcZiJpEO008vte1AUwAZn6TLq', '', 1, 1),
(173, 'FARIL FIRNANDA', '3523150802080002', '3523152807170001', '0086599185', '3477/774.063', 'TUBAN', '2008-02-08', 1, 1, '', 1, 2, 1, 'PANUT', '3523150107800078', 1980, 'SD', 'INDUSTRI', '0', 'ULIS ITA WINARTI', '3523156104840005', 1984, 'SLTP', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0086599185', '0086599185', '$2y$10$4fnmU8kcISAKbPol.Nj.a.EH38kZb3J/5lRlI4.7flJo7vXPajLsy', '', 1, 1),
(174, 'FRIZHA TRI ANGELS', '3523155310080004', '3523151503063934', '0087660050', '3478/775.063', 'TUBAN', '2008-10-13', 2, 1, '', 1, 3, 3, 'LASTO', '3523151012650004', 1986, 'SD', 'PETANI', '0', 'NGASMI', '3523155404730009', 1973, 'SD', 'PETANI', '0', 'DSN MOJOKOPEK RT 001 RW 030 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', 'DSN MOJOKOPEK RT 001 RW 030 PRUNGGAHAN KULON KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0087660050', '0087660050', '$2y$10$Vc709xcLCDxbebrAVAXKJe5BUQ09rZvExuI3UgxMz1q0WmqCP29Z2', '', 1, 1),
(175, 'MOHAMMAD IWAN SAPUTRA', '3523162401080002', '3523161503060914', '0089646116', '3479/776.063', 'TUBAN', '2008-01-24', 1, 1, '', 1, 0, 1, 'WARSITO', '3523161306720001', 1973, 'SD', 'PERDAGANGAN', '0', 'KASTI\'AH ', '3523165904770001', 1977, 'SD', 'MENGURUS RUMAH TANGG', '0', 'BONGKOL 1 RT 004 RW 001 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', 'BONGKOL 1 RT 004 RW 001 SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0089646116', '0089646116', '$2y$10$PNoR8n85IUKc6SWcEsdMaeSbMF8u9PPPjsntMuRJ0.oOF7Oto2mmO', '', 1, 1),
(176, 'NANDANA RIVA ARDIANSYAH', '3515172109070002', '3523182709190011', '0078615165', '3480/777.063', 'SIDOARJO', '2007-09-21', 1, 1, '', 1, 0, 1, 'MUHAMMAD RIFA\'I', '3515170606810003', 1981, 'SD', 'NELAYAN', '0', 'MIKE INDRAYANI', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN KRADENAN RT OO2 RW 002 KRADENAN KEC PALANG KAB TUBAN 62391', 'DSN KRADENAN RT OO2 RW 002 KRADENAN KEC PALANG KAB TUBAN 62391', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0078615165', '0078615165', '$2y$10$mYJOAeTykk0tttHoig6dWuFxlSxEdRQrad7/kJRQwzn/7biNmjxc6', '', 1, 1),
(177, 'RAGIL ABDULLOH RAJIB', '3523182207070001', '3523181303062342', '0073825573', '3481/778.063', 'TUBAN', '2007-07-22', 1, 1, '', 1, 0, 0, '', '', 0, '', '', '0', 'SRI INDAH NYOMANINGSIH', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN KRADENAN RT OO3 RW 001 KRADENAN KEC PALANG KAB TUBAN 62391', 'DSN KRADENAN RT OO3 RW 001 KRADENAN KEC PALANG KAB TUBAN 62391', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0073825573', '0073825573', '$2y$10$DWKII3mejUDotSDRa.jbaOHpWdoZgCkxHiYi2iSqhNuYd8kAl9EXy', '', 1, 1),
(178, 'SITI NUR LAILATUS SHOLIHAH', '3523165503080001', '3523160811170004', '0088663562', '3482/779.063', 'TUBAN', '2008-03-15', 2, 1, '', 1, 2, 2, 'SRIYONO', '3523161208800002', 1980, 'DIPLOMA IV', 'GURU', '0', 'DJAWUL', '3523164112620001', 0, 'TIDAK/BELOM SEKOLAH', 'MENGURUS RUMAH TANGG', '0', 'BONGKOL II RT 002 RW 006  SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', 'BONGKOL II RT 002 RW 006  SUMURGUNG KEC. TUBAN KAB. TUBAN 62351', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0088663562', '0088663562', '$2y$10$s0y3Vy8TcRmN1SHnOojCXecb8SSa7F6cFUS6zvWB0blIEThrDPS8G', '', 1, 1),
(179, 'YOGA DIMAS NUR SAPUTRO', '3523183004080001', '3523181403064500', '0088630556', '3483/780.063', 'TUBAN', '2008-04-30', 1, 1, '', 1, 0, 1, '', '', 0, '', '', '0', 'SULISTYOWATI', '', 0, '', 'MENGURUS RUMAH TANGG', '0', 'DSN KARANGREJO  RT 006 RW 003 KRADENAN KEC PALANG KAB TUBAN 62391', 'DSN KARANGREJO  RT 006 RW 003 KRADENAN KEC PALANG KAB TUBAN 62391', '0', '0', '0', '0', 2, 4, '', '2023-07-17', 'XI RPL', '0088630556', '0088630556', '$2y$10$RU1cc1.LtWfG8tKhm9jSheqtlke25vaFsbeOsTQheAtZrtk6lIH2K', '', 1, 1),
(180, 'DINDA EKA WULAN PRATIWI', '3523156506070004', '3523150612190007', '0077271100', '3326/884.102', 'TUBAN', '2007-01-25', 2, 1, '082184492779', 1, 1, 1, 'Bronto', '3523150404840009', 1984, 'SD / sederajat', 'Karyawan Swasta', '0', 'ISDI ANIM', '3523154602860003', 1986, 'SD / sederajat', 'PETANI', '0', 'DSN JARUM RT 001  / RW 025 PERUNGGAHAN KULON KEC SEMANDING KAB. TUBAN 62381 ', 'DSN JARUM RT 001  / RW 025 PERUNGGAHAN KULON KEC SEMANDING KAB. TUBAN 62381 ', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 3 SEMANDING', '2022-07-13', 'XII AK', '0077271100', '0077271100', '$2y$10$wIY48d7.s8x8piudEI8tdO9G1vNlUiFt807THbeHvSuRg/Hgtgxqi', '', 1, 1),
(181, 'DWI RISTA OVIYANTI', '3524076712060002', '3524071708107565', '0065978989', '3327/885.102', 'LAMONGAN', '2006-12-27', 2, 1, '081336916342', 1, 2, 2, 'SAMIJAN', '3524070607720007', 1972, 'SD / sederajat', 'Karyawan Swasta', '0', 'ELVI FATHIYAH', '3524075802740001', 1974, 'SMP / sederajat', 'KARYAWAN SWASTA', '0', 'WEDUNG RT 001 / RW 007 SEDAYULAWAS KEC. BRONDONG KAB.LAMONGAN 62263', 'WEDUNG RT 001 / RW 007 SEDAYULAWAS KEC. BRONDONG KAB.LAMONGAN 62263', '0', '0', '0', '0', 3, 1, 'MTS MUHAMMADIYAH 21 WEDUNG', '2022-07-13', 'XII AK', '0065978989', '0065978989', '$2y$10$IIifPhIZT3CYBhtuP36MK.FhIq36YT9tt0wI5U/1RPbjKQnUaelh6', '', 1, 1),
(182, 'HESTI HERLINA AYU PRATIWI', '3523155608060004', '3523151404190001', '0066153262', '3328/886.102', 'TUBAN', '2006-08-16', 2, 1, '085714205889', 1, 1, 1, 'Imanuel', '3523152201780004', 1987, 'SMP / sederajat', 'Wiraswasta', '0', 'JULIASTRI', '3523156303840008', 1984, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN MOJOKOPEK RT 001 / RW 028 PERUNGGAHAN KULON KEC .SEMANDING TUBAN 62381', 'DSN MOJOKOPEK RT 001 / RW 028 PERUNGGAHAN KULON KEC .SEMANDING TUBAN 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 1 SEMANDING', '2022-07-13', 'XII AK', '0066153262', '0066153262', '$2y$10$yKlozaqkZT484DaTH8WeTuox03SDEIGYHBg4BQlkZh7XPIl3WZykm', '', 1, 1),
(183, 'JULIANAWATI', '3523156707060001', '3523152804090018', '0068139262', '3405/897.102', 'TUBAN', '2006-07-26', 2, 1, '082132798516', 1, 1, 1, 'MOHAMAD IMAM GODZALI', '3523150507830003', 1983, 'SD / sederajat', 'Petani', '0', 'SUMARNI', '3523156807860002', 1986, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN  RT 003 RW 1 DS KRAJAN KEC SEMANDING KAB TUBAN 62381', 'DSN KRAJAN  RT 003 RW 1 DS KRAJAN KEC SEMANDING KAB TUBAN 62381', '0', '0', '0', '0', 3, 1, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII AK', '0068139262', '0068139262', '$2y$10$hHzh2NhpGEZBrCQKgTjwnufNlf0NrHji8bFHTtC33q54ITQBoADXu', '', 1, 1),
(184, 'KISWIJI JEFONI', '3523156806060004', '3523152302100003', '0067614407', '3329/887.102', 'TUBAN', '2005-06-26', 2, 1, '083193914362', 1, 1, 1, 'PAIMUN', '3523151202800006', 1980, 'Putus SD', 'Wiraswasta', '0', 'NGASNI AL ANIK', '3523155001770003', 1977, 'SD / sederajat', 'WIRASWASTA', '0', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', 'DSN BOGOR RT 002 RW 009 BEKTIHARJO KEC SEMANDING KAB.TUBAN 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 1 SEMANDING', '2022-07-13', 'XII AK', '0067614407', '0067614407', '$2y$10$EdEJj5mefpP2scHzRhU.Ye4nXPZpEXdqH1Fck2KxLIu6FTuoDyksW', '', 1, 1),
(185, 'NABILA PUTRI RAMADHANI', '3523125010060001', '3523121603061832', '0069835847', '3330/888.102', 'TUBAN', '2006-10-10', 2, 1, '082143969617', 1, 1, 1, 'Lasiyanto', '3523120112790004', 1979, 'SD / sederajat', 'Wiraswasta', '0', 'NURWITOPAH', '3523125909810001', 1980, 'SD / sederajat', 'WIRASWASTA', '0', 'DSN REMEN RT 001 RW 004 REMEN KEC. JENU KAB. TUBAN 62352', 'DSN REMEN RT 001 RW 004 REMEN KEC. JENU KAB. TUBAN 62352', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 1 JENU', '2022-07-13', 'XII AK', '0069835847', '0069835847', '$2y$10$sEnh0CHqtk8uZNEBGnbSSOSMM5bZXg6GBXbbGQNAFIxBkC3WP1ssC', '', 1, 1),
(186, 'NIA AMELIYA', '3523154201050001', '3523151503062482', '0051634970', '3331/889.102', 'TUBAN', '2005-01-02', 2, 1, '082131215188', 1, 3, 2, 'Katminto', '3523152506790001', 1980, 'SD / sederajat', 'Petani', '0', 'YASMI', '3523157004800001', 1982, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN JARUM RT 002  / RW 014 JADI KEC SEMANDING KAB. TUBAN 62381 ', 'DSN JARUM RT 002  / RW 014 JADI KEC SEMANDING KAB. TUBAN 62381 ', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 3 SEMANDING', '2022-07-13', 'XII AK', '0051634970', '0051634970', '$2y$10$wM2X3KBfuYRRZTbIgmXVmOP4YzgY7swsZqdQCg0atN9ZkMrKcjHGy', '', 1, 1),
(187, 'RIZKY PUTRI INDAH LESTARI', '3523156712060001', '3523151403069857', '0069566802', '3332/890.102', 'TUBAN', '2006-12-27', 2, 1, '082245863463', 1, 3, 4, 'WARSONO', '3523151312710003', 1971, 'SD / sederajat', 'Petani', '0', 'TAWI', '3523155309730006', 1973, 'SD / sederajat', 'PETANI', '0', 'DSN TLOGOPULE RT 1 RW 37 Ds.PRUNGGAHAN KEC. SEMANDING 62381', 'DSN TLOGOPULE RT 1 RW 37 Ds.PRUNGGAHAN KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII AK', '0069566802', '0069566802', '$2y$10$PX9yY.h/ji.NzVV6/2bx8.Z.T01TVqaZ77TngK8IlP2VxWdGu3NU6', '', 1, 1),
(188, 'SELFIANA SAFITRI', '3523086803070004', '3523082501100179', '0078957091', '3333/891.102', 'TUBAN', '2007-03-28', 2, 1, '081717582665', 1, 2, 1, 'SUTIKNO', '3523080508790004', 1979, 'SD / sederajat', 'Pedagang Kecil', '0', 'SULASINI', '3523084107790103', 1979, 'SD / sederajat', 'WIRASWASTA', '0', 'Ds. WOLUTENGAH RT 4 RW 2 KEC. KEREK 62356', 'Ds. WOLUTENGAH RT 4 RW 2 KEC. KEREK 62356', '0', '0', '0', '0', 3, 1, 'MTS BAITUSSALAF', '2022-07-13', 'XII AK', '0078957091', '0078957091', '$2y$10$Fcd0YbXzMclW9KGIvR966OMr58VMENXTCw95Q3WM8pGjXa5xY0o56', '', 1, 1),
(189, 'SELPINA DOUW', '9128014809060003', '9128012710180010', '0075509494', '3334/892.102', 'WIDIMEI', '2006-09-08', 2, 2, '081354543653', 1, 7, 1, 'Martinus Douw', '9128012112600001', 1974, 'SMA / sederajat', 'Pensiunan', '0', 'MARSELA PAKAGE', '9128014503760001', 1972, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JALAN BANDARA RT 2 RW 3 WAGHETE I KEC. TIGI 98763', 'JALAN BANDARA RT 2 RW 3 WAGHETE I KEC. TIGI 98763', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 1 Tigi ', '2022-07-13', 'XII AK', '0075509494', '0075509494', '$2y$10$8baf49eiotuigXWdAxDL1uNdbqalRdNJtiCxMd8EZsikXMQpaqfZu', '', 1, 1),
(190, 'SITI FAIS NUR HASANAH', '3523152707060004', '3523150901100057', '0066159384', '3335/893.102', 'TUBAN', '2006-07-27', 2, 1, '085607740405', 1, 2, 2, 'Sahir', '3523150501690005', 1980, 'SD / sederajat', 'Wiraswasta', '0', 'TASMIRAH', '3523155607730003', 1985, 'SD / sederajat', 'PETANI', '0', 'Jl. HAYAM WURUK RT 2 RW 28 Ds. MOJO KOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', 'Jl. HAYAM WURUK RT 2 RW 28 Ds. MOJO KOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII AK', '0066159384', '0066159384', '$2y$10$MddICbzcGKPU7ssWqLBabeHfWv1m7MQ10hniCdVvEBerBRH3fp/hW', '', 1, 1),
(191, 'SITI SHOLIKHA', '3578165707070009', '3578162709190021', '0072767505', '3336/894.102', 'SURABAYA', '2007-07-17', 2, 1, '081334096774', 1, 2, 2, 'Ludfi Hartono', '0', 1975, 'SMA / sederajat', 'Sudah Meninggal', '0', 'SITA MEIRAWATI', '3578166406780004', 1978, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'WONOSARI WETAN I NO. 22RT1RW7WONOKUSUMOKEC. SEMAMPIR60154', 'WONOSARI WETAN I NO. 22RT1RW7WONOKUSUMOKEC. SEMAMPIR60154', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 27 SURABAYA', '2022-07-13', 'XII AK', '0072767505', '0072767505', '$2y$10$sn3kYS/zbhZ247CMGQpnB.DUkO3V0MZB8SCbQ6VhcBg2NTFkS43sW', '', 1, 1),
(192, 'UMI MAGHFIROH', '3523156605070003', '3523152210180006', '0077946134', '3337/895.102', 'TUBAN', '2007-05-26', 2, 1, '082335318861', 1, 3, 1, 'KARMIT', '3523152906850001', 1985, 'SMP / sederajat', 'Wiraswasta', '0', 'ENDANG', '3523154107880027', 1988, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN SECANG RT 4 RW 15 Ds. BOGOR BEKTIHARJO KEC. SEMANDING 62381', 'DSN SECANG RT 4 RW 15 Ds. BOGOR BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 1 SEMANDING', '2022-07-13', 'XII AK', '0077946134', '0077946134', '$2y$10$D1OvEU4ql6fjIGYG2.dxdOJNk0cy5bKMEfoN80pk4QS5CvVW9r/8S', '', 1, 1),
(193, 'WIDYA AYU LUGITA', '3523154310070004', '3523151901170006', '0071199171', '3338/896.102', 'TUBAN', '2007-10-03', 2, 1, '087702886978', 1, 2, 1, 'SUHARTONO', '0', 1980, 'SD / sederajat', 'Petani', '0', 'DARWIN', '3523155512950004', 1991, 'SMP / sederajat', 'PETANI', '0', 'DSN TLOGOPULE RT 1 RW 37 TLOGOPULE PRUNGGAHAN KEC. SEMANDING 62381', 'DSN TLOGOPULE RT 1 RW 37 TLOGOPULE PRUNGGAHAN KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 1, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII AK', '0071199171', '0071199171', '$2y$10$2pkPeJnvCeX//dKalHbEZeXlgMGAdVVlF2q5w2ltit5Bd/7fW/x.S', '', 1, 1),
(194, 'ARJUN ASTUTIK', '3523156606060002', '3523151806130001', '0063618860', '3339/451.096', 'TUBAN', '2006-06-26', 2, 1, '0', 1, 2, 2, 'RASDI', '0', 1973, 'SD / sederajat', 'Sudah Meninggal', '0', ' SUMIASIH', '3523154207740005', 1974, 'SD / sederajat', 'BURUH', '0', 'DSN. WIDENGAN RT 5 RW 13 KEL. GEDONGOMBO KEC. SEMANDING 62381', 'DSN. WIDENGAN RT 5 RW 13 KEL. GEDONGOMBO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'MTS SUMBERSARI KOWANG', '2022-07-13', 'XII BD', '0063618860', '0063618860', '$2y$10$hMNmAVADdlvFGE.RtGyLGONFuJUpHChulnk9OBdlDc7MbiyPACNTq', '', 1, 1),
(195, 'AYU ULANDARI', '3522086904070001', '3523202102180001', '0075305322', '3340/452.096', 'BOJONEGORO ', '2007-04-29', 2, 1, '088226005001', 1, 0, 1, 'SUBIANTO', '3522082910800004', 1980, 'SD / sederajat', 'Petani', '0', 'BARNI', '3523116306730002', 1973, 'SD / sederajat', 'WIRASWASTA', '0', 'DSN DAWUNG RT 05 RW 09 DS. GRABAGAN KEC. GRABAGAN KAB. TUBAN 62373', 'DSN DAWUNG RT 05 RW 09 DS. GRABAGAN KEC. GRABAGAN KAB. TUBAN 62373', '0', '0', '0', '0', 3, 2, 'SMP MU ALLIMIN', '2022-07-13', 'XII BD', '0075305322', '0075305322', '$2y$10$Ozd6LDgrvStezrQj0sdR5.tDeV.ld1NB55xi551eGQTVGuEG6VkLu', '', 1, 1),
(196, 'DHI ERNA SEFIA MUSTIKA', '3523154906060005', '3523151303062141', '0063062386', '3341/453.096', 'TUBAN', '2006-09-06', 2, 1, '082333919353', 1, 1, 2, 'Tumito', '3523150811640002', 1964, 'SD / sederajat', 'Wiraswasta', '0', 'KAMIASRI', '3523154811740002', 1974, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN. MANGKUNG RT 3 RW 5 DS. NGINO KEC. SEMANDING 62381', 'DSN. MANGKUNG RT 3 RW 5 DS. NGINO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 SEMANDING', '2022-07-13', 'XII BD', '0063062386', '0063062386', '$2y$10$VWWshr69faLCZDJOkhta4O6rYJKvzDvNhqmorMmVJnZdUISsXUvh.', '', 1, 1),
(197, 'DWI SUPRIYATININGSIH', '3523151911060004', '3523151403069800', '0067357840', '3342/454.096', 'TUBAN', '2006-11-19', 2, 1, '082143014669', 1, 2, 2, 'SARIJAN', '3523150107600135', 1961, 'SD / sederajat', 'Petani', '0', 'PASINAH', '3523154107590087', 1959, 'SD / sederajat', 'PEDAGANG KECIL', '0', 'DSN. TLOGOPUE RT 1 RW 34  DS. PRUNGGAHAN KULON KEC. SEMANDING 62381', 'DSN. TLOGOPUE RT 1 RW 34  DS. PRUNGGAHAN KULON KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP ISLAM BEJAGUNG', '2022-07-13', 'XII BD', '0067357840', '0067357840', '$2y$10$oNxx2.ZhDV0lH2QE3xvpcevJhHckXM1VlwfKX6xJuirp35dXcAs7.', '', 1, 1),
(198, 'FERREN YUANDA', '6472036108070003', '6472091210160005', '0078746221', '3343/455.096', 'SAMARINDA', '2007-08-21', 2, 5, '085695314184', 1, 3, 2, 'Franky Yuanda Weng', '1750011908650001', 1965, 'S1', 'Wiraswasta', '0', 'FATIMAH', '6472037006710002', 1971, 'SMP / sederajat', 'WIRASWASTA', '0', 'JL AMINAH SYUKUR NO.27 RT 1 RW 0 PELABUHAN KEC. SAMARINDA ILIR 75112', 'JL AMINAH SYUKUR NO.27 RT 1 RW 0 PELABUHAN KEC. SAMARINDA ILIR 75112', '0', '0', '0', '0', 3, 2, 'SMP Katolik 1  WR. Soepratman Samarinda', '2022-07-13', 'XII BD', '0078746221', '0078746221', '$2y$10$HYmOqOd42SJlf/iIJsznxehPHEp8DMCzzwKqr7PhFqfzynz9mh98G', '', 1, 1),
(199, 'HITA NUR FAIDA', '3523084801070001', '3523081107090035', '0075392907', '3344/456.096', 'TUBAN', '2007-01-08', 2, 1, '088803858124', 1, 2, 1, 'WINANTO', '3523081306800005', 1980, 'SD / sederajat', 'Pedagang Kecil', '0', 'SITI KHOLIFAH', '3523085010800009', 1982, 'SD / sederajat', 'PEDAGANG KECIL', '0', 'DS. WOLUTENGAH RT 5 RW 2 HKEC. KEREK 62356', 'DS. WOLUTENGAH RT 5 RW 2 HKEC. KEREK 62356', '0', '0', '0', '0', 3, 2, 'MTS BAITUSSALAF', '2022-07-13', 'XII BD', '0075392907', '0075392907', '$2y$10$TDw1dLDDZSz5g2SZwB8qT.9MwklchzI6eF8OSiCuX.SPSx.iPp80S', '', 1, 1),
(200, 'MOCH. ALIF ILHAM RAIHAN', '3523202504060001', '3523201203065014', '0068865769', '3345/457.096', 'TUBAN', '2006-04-25', 1, 1, '083166474716', 1, 3, 1, 'ARIFIN', '3523200808820001', 1982, 'SD / sederajat', 'Petani', '0', 'SITI BASWATI', '3523205410810001', 1981, 'SD / sederajat', 'PETANI', '0', 'DSN SAMBUNG REJO RT 5 RW 2 DS DAHOR KEC. GRABAGAN 62373', 'DSN SAMBUNG REJO RT 5 RW 2 DS DAHOR KEC. GRABAGAN 62373', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 RENGEL', '2022-07-13', 'XII BD', '0068865769', '0068865769', '$2y$10$50pFq3XbmeSH4Ywnk151zuhAuL70AhQiL4U3cvJt4.TfERPpfbAd.', '', 1, 1),
(201, 'MOCH. ESSKA AFANDY', '3523152606060003', '3523151908210008', '0065314157', '3346/458.096', 'TUBAN', '2006-06-24', 1, 1, '083857684935', 1, 1, 1, 'DIRMU', '3523151503760003', 1976, 'SD / sederajat', 'Petani', '0', 'WASINI', '3523154503790007', 1979, 'SD / sederajat', 'BURUH', '0', 'JLN. DESA GESINGRT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', 'JLN. DESA GESINGRT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 SEMANDING', '2022-07-13', 'XII BD', '0065314157', '0065314157', '$2y$10$BlNwCVTqN9x4Xip4XhkAMe8.iMRgHZUdBEUv0plChx.ToK9V1qCEK', '', 1, 1),
(202, 'MOHAMAD ALDI ARDIANSYAH', '3523153011060001', '3523150111210003', '0061818155', '3347/459.096', 'TUBAN', '2006-11-30', 1, 1, '085859990594', 1, 1, 1, 'SUNARYO', '0', 1975, 'SD / sederajat', 'Peternak', '0', 'SUMARTINIK', '0', 1983, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JLN. DESA GESINGRT 1 RW 2 KRAJAN GESING KEC. SEMANDING 62381', 'JLN. DESA GESINGRT 1 RW 2 KRAJAN GESING KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 SEMANDING', '2022-07-13', 'XII BD', '0061818155', '0061818155', '$2y$10$Ye.AJlndAbDKZK.Yt0rbA.NkLkr156NUpTSIh1Yj7cNL1QukTfZEq', '', 1, 1),
(203, 'NANDA RIZKA KURNIA PUTRI', '3523155305070002', '3523150303100005', '0075289504', '3348/460.096', 'TUBAN', '2007-05-13', 2, 1, '085645128179', 1, 3, 1, 'Tarmudo', '0', 0, 'SMP / sederajat', 'Sudah Meninggal', '0', 'TUTIK', '3523154711760001', 1976, 'SMP / sederajat', 'WIRASWASTA', '0', 'JL. RAYA BEKTIHARJO RT 1 RW 5 BEKTIHARJO KEC. SEMANDING 62381', 'JL. RAYA BEKTIHARJO RT 1 RW 5 BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII BD', '0075289504', '0075289504', '$2y$10$.zG.wjTz3reRmQrrPDlqp.B/ixaKW3tnhJZ48butaBMfdw4DZz6ZO', '', 1, 1),
(204, 'NEDA AL HABIB UBAIDILLAH', '3523150906060001', '3523153003110002', '0063140837', '3349/461.096', 'TUBAN', '2006-06-09', 1, 1, '082333317601', 1, 1, 1, 'JUNARI', '3523150405770004', 1977, 'SD / sederajat', 'Wiraswasta', '0', 'DASUPIN', '3523155008850005', 1985, 'SMP / sederajat', 'PETANI', '0', 'DSN TLOGOPULE RT 2 RW 33 DS PRUNGGAHAN KULON KEC. SEMANDING 62381', 'DSN TLOGOPULE RT 2 RW 33 DS PRUNGGAHAN KULON KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII BD', '0063140837', '0063140837', '$2y$10$GmmSFXO97kqRe2boqJdeqeysh4uc8QnslkJmByaZmhkkjjwMuMSqq', '', 1, 1),
(205, 'NOVA KARISMA ILYAS', '3523154504070003', '3523151303063369', '0078192306', '3350/462.096', 'LAMONGAN', '2007-04-05', 2, 1, '083856225581', 1, 1, 1, 'Robindra Ilyas', '0', 1980, 'SMA / sederajat', 'Wiraswasta', '0', 'CATUR WULANDARI', '0', 1984, 'SMA / sederajat', 'KARYAWAN SWASTA', '0', 'DSN CUNGKUP  RT 11 RW 3 DS. PENAMBANGAN KEC. SEMANDING 62381', 'DSN CUNGKUP  RT 11 RW 3 DS. PENAMBANGAN KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 1 SEMANDING', '2022-07-13', 'XII BD', '0078192306', '0078192306', '$2y$10$hOIoRzInLwRCpfMKHACk0ubhAev1758FSTrwJ26mFJDQpJePw6pBq', '', 1, 1),
(206, 'OGA DIAN SAPUTRA', '3523153010060002', '3523151303061874', '0066054543', '3351/463.096', 'TUBAN', '2006-10-30', 1, 1, '081358118404', 1, 2, 1, 'TAMAJI', '3523150103820005', 1982, 'SD / sederajat', 'Petani', '0', 'SUSIATUN', '3523156607890001', 1989, 'Putus SD', 'BURUH', '0', 'JLN. DESA GESING RT 1 RW 3 KRAJAN GESING KEC. SEMANDING 62381', 'JLN. DESA GESING RT 1 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 SEMANDING', '2022-07-13', 'XII BD', '0066054543', '0066054543', '$2y$10$D4Tr184uAaNxKxfr/vxHHeC4LHBg.SIf28Fk3jGXLX4RVR0q5xP.2', '', 1, 1),
(207, 'OKTAMELINDA DWI SAFITRI', '3524076310060002', '3524071608101781', '0066037840', '3352/464.096', 'LAMONGAN', '2006-10-23', 2, 1, '085602664012', 1, 1, 2, 'PURNOMO', '3524071503730007', 1973, 'SMP / sederajat', 'Nelayan', '0', 'SITI FATIMAH', '3524074909760004', 1976, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. AKBP SUROKO RT 1 RW 2 KEBONSARI KEC. TUBAN 62317', 'JL. AKBP SUROKO RT 1 RW 2 KEBONSARI KEC. TUBAN 62317', '0', '0', '0', '0', 3, 2, 'MTS NEGERI 1 TUBAN', '2022-07-13', 'XII BD', '0066037840', '0066037840', '$2y$10$Q8SqU3O9YFmMbBFiJrBW9eKeE0qXDwSScXO2WT5FoSdJjtcCr/FdO', '', 1, 1),
(208, 'RURUL PUJI SAFITRI', '3523154801070002', '3523150609090184', '0078598780', '3353/465.096', 'TUBAN', '2007-01-08', 2, 1, '083149620277', 1, 0, 1, 'Rusnanto', '3523150208790002', 1979, 'SD / sederajat', 'Petani', '0', 'ISTUN SURYAWATI', '3523154107830014', 1986, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN MEDOKAN RT 1 RW 5 DS. BEKTIHARJO KEC. SEMANDING 62381', 'DSN KRAJAN MEDOKAN RT 1 RW 5 DS. BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII BD', '0078598780', '0078598780', '$2y$10$jt9DG8B7rW5h8fZt0L7aTe1YbwCqVIWaG0zRGHGcl7PPcwCulKFJq', '', 1, 1),
(209, 'SISKA INDA INATA', '3523156304060001', '3523151303065863', '0063836945', '3355/467.096', 'TUBAN', '2006-04-23', 2, 1, '0882172567273', 1, 2, 3, 'Tarji', '3523150107760005', 1976, 'SD / sederajat', 'Petani', '0', 'PARNI', '3523154107780005', 1978, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JLN. WATUONDO RT 4 RW 16 MEDOKAN BEKTIHARJO KEC. SEMANDING 62381', 'JLN. WATUONDO RT 4 RW 16 MEDOKAN BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII BD', '0063836945', '0063836945', '$2y$10$SV6wyUIGrgzFIL8j9D.mzOX5assA1h3nYKRp1.DtE1VCzyt6RGmaK', '', 1, 1),
(210, 'SOFI DESTIA NOVITA', '3523155612060002', '3523150609090069', '0068528218', '3356/468.096', 'TUBAN', '2006-12-16', 2, 1, '083135203376', 1, 0, 1, 'SAMPURNO', '3523150405790006', 1979, 'SD / sederajat', 'Petani', '0', 'PARMI', '3523154102880004', 1988, 'SD / sederajat', 'PETANI', '0', 'DSN SECANG RT 2 RW14 BOGOR BEKTIHARJO KEC. SEMANDING 62381', 'DSN SECANG RT 2 RW14 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII BD', '0068528218', '0068528218', '$2y$10$LGxaZ5/BkjsIeSQpKYoFteFq8RQxyEq4U0sXCQamQjLim5JIn3g46', '', 1, 1),
(211, 'ZUSHINTA MEGA PERMATA', '3523155704070004', '3523151303062179', '0077734097', '3358/470.096', 'TUBAN', '2007-04-17', 2, 1, '085708865833', 1, 1, 1, 'Pramu', '3523150204730006', 1973, 'SD / sederajat', 'Petani', '0', 'KASRI', '3523154706740006', 1974, '0', 'MENGURUS RUMAH TANGG', '0', 'MANGKUNG RT 1 RW5 MANGKUNG NGINO KEC. SEMANDING 62381', 'MANGKUNG RT 1 RW5 MANGKUNG NGINO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 2, 'SMP NEGERI 2 SEMANDING', '2022-07-13', 'XII BD', '0077734097', '0077734097', '$2y$10$b0jDNLHDF8d1vvgkuv4HsO6Dh5X/C31dY..GIBsr25GL4req.omNq', '', 1, 1),
(212, 'CHIKKA VALENSIA KURNIA FITRI', '3523176210060002', '3523172003090037', '0067103362', '3386/207.072', 'TUBAN', '2006-10-22', 2, 1, '085797285287', 1, 2, 1, 'MOHAMAD NGASKUR', '3536456767899981', 1981, 'SD / sederajat', 'Karyawan Swasta', '0', 'VERI KRISTININGSIH', '3523456789000085', 1986, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN NGRAYUNG RT 004 RW 001 DESA NGRAYUNG KEC, PLUMPANG TUBAN 62382', 'DSN NGRAYUNG RT 004 RW 001 DESA NGRAYUNG KEC, PLUMPANG TUBAN 62382', '0', '0', '0', '0', 3, 5, 'SMP NEGERI 1 PLUMPANG', '2022-07-13', 'XII LPKKK', '0067103362', '0067103362', '$2y$10$FaDzGYeo8vt9Nh5SGWds5ecwt4VYGayr7/cax44TgLFEtZwM27rre', '', 1, 1),
(213, 'CYNTYA EKA RAHAYU', '3523134710070001', '3523131603062836', '0077706929', '3387/208.072', 'TUBAN', '2007-10-07', 2, 1, '082245934090', 1, 0, 1, 'Supardi', '3523130107790002', 1977, 'SD / sederajat', 'Petani', '0', 'SUSIATI', '3523134107830003', 1983, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'BECOK RT 2 RW  7 TEGALREJO KEC. MERAKURAK', 'BECOK RT 2 RW  7 TEGALREJO KEC. MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0077706929', '0077706929', '$2y$10$nCbN52qPaY0mBebnoDecVuyh7zj8wEomlixh1TsR8m.a.NuCvj6he', '', 1, 1),
(214, 'DWI NUR INTAN FEBYA MAHARANI', '3523135702070001', '3523131503060949', '0076134393', '3388/209.072', 'TUBAN', '2007-02-17', 2, 1, '082230388518', 1, 1, 1, 'TAJAM', '3523131509680002', 1968, 'SMA / sederajat', 'PNS/TNI/Polri', '0', 'SUTIKAH', '3523134912740001', 1974, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN. BANCANG RT O1 RW 09 TAHULU KEC. MERAKURAK', 'DSN. BANCANG RT O1 RW 09 TAHULU KEC. MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0076134393', '0076134393', '$2y$10$iwnUp4d1/zwWXkR5kySoSevh0lYs6b/Q4pfpIi3ajPYyldgcgZyeW', '', 1, 1),
(215, 'ELIFA MEI ELGIA SARI', '3523137105070003', '3523132808150004', '0076079691', '3389/210.072', 'TUBAN', '2007-05-31', 2, 1, '082245934865', 1, 2, 1, 'Warsidi Efendi', '3523131702740001', 1974, 'SD / sederajat', 'Petani', '0', 'JUWARNING', '3523134704830004', 1983, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'BANCANG RT 1 RW 11 TAHULU KEC. MERAKURAK', 'BANCANG RT 1 RW 11 TAHULU KEC. MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0076079691', '0076079691', '$2y$10$65CJcZZ3oMU9KaAKLNCbIuIrLHF5oEAJzxSIx727w642vgEGQ2Hi2', '', 1, 1),
(216, 'FITRI DEVITA OCTASIA', '3514026710070001', '3523151311150001', '0078176081', '3391/212.072', 'PASURUAN', '2007-10-27', 2, 1, '085335160808', 1, 2, 1, 'sumantri', '3514020101790002', 1979, 'SMA / sederajat', 'Wiraswasta', '0', 'LILIK ERNAWATI', '3514024108840002', 1980, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. BANYULANGSE RT 4 RW 1 KRAJAN BOTO KEC. SEMANDING 62381', 'JL. BANYULANGSE RT 4 RW 1 KRAJAN BOTO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 5, 'SMP NEGERI 3 SEMANDING', '2022-07-13', 'XII LPKKK', '0078176081', '0078176081', '$2y$10$Q8E/6olMobtMw5LFgcS0nO9UhqHOJqaIxnVan3sVg1/VJ46unbxNG', '', 1, 1),
(217, 'GUSTIA NINGSIH LARASATI KHORIN', '3523135508070001', '3523132101100048', '0075748694', '3392/213.072', 'TUBAN', '2007-08-15', 2, 1, '082257149838', 1, 2, 1, 'ELIANTO KHORIN', '0', 0, '0', 'Sudah Meninggal', '0', 'SUVIYAS', '3523134505820006', 1982, 'SD / sederajat', 'KARYAWAN SWASTA', '0', 'DSN BANCANG RT 3 RW 9 TAHULU KEC. MERAKURAK 62355', 'DSN BANCANG RT 3 RW 9 TAHULU KEC. MERAKURAK 62355', '0', '0', '0', '0', 3, 5, 'MTS MANBAIL FUTUH JENU', '2022-07-13', 'XII LPKKK', '0075748694', '0075748694', '$2y$10$/lHVkuuDjcDTq7n9bflBY.f5.BeBxWODBcZXs/k3N3D6ZkWwC5DAe', '', 1, 1),
(218, 'ICHA AMELLIA', '6402065407070006', '3523150507220008', '0071445605', '3393/214.072', 'TENGGARONG', '2007-07-14', 2, 1, '081230563078', 1, 3, 1, 'TARSONO', '6402060209760005', 1976, 'SMP / sederajat', 'Wiraswasta', '0', 'YULIANTIK', '6402064707800011', 1980, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DUSUN JADI RT 2 RW 9 JADI KEC. SEMANDING 62381', 'DUSUN JADI RT 2 RW 9 JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 5, 'MTS AL-KAUTSAR', '2022-07-13', 'XII LPKKK', '0071445605', '0071445605', '$2y$10$ijYmfF.3hm.XWteXo379..qrm6OG82RYDh2uBlRFn4DcbGW49jOKC', '', 1, 1),
(219, 'JOKO SATRIYO', '3523152303050002', '3523151302200010', '0067885701', '3394/215.072', 'TUBAN', '2006-07-13', 1, 1, '08813102454', 1, 1, 2, 'SUKANDAR', '0', 1978, 'SD / sederajat', 'Wiraswasta', '0', 'SARNI', '3523155801760002', 1976, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JLN. DESA GESING RT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', 'JLN. DESA GESING RT 2 RW 3 KRAJAN GESING KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 5, 'MTS MIFTAHUL HUDA TUNAH', '2022-07-13', 'XII LPKKK', '0067885701', '0067885701', '$2y$10$Vj/lebBMb1jXYdwzxYUx0Oq5GdyPQoSz8muYL6NdVZy1i9.SEf0Ru', '', 1, 1),
(220, 'LAELATUL FITRIAH', '3523136410060003', '3523131603060226', '0061297170', '3395/216.072', 'TUBAN', '2006-10-23', 2, 1, '081231752442', 1, 2, 4, 'TARMAN', '3523130107660044', 1966, 'SD / sederajat', 'Petani', '0', 'PANCI', '3523134107690048', 1969, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN DORODUWUR RT 01 RW 08 TAHULU KEC . MERAKURAK', 'DSN DORODUWUR RT 01 RW 08 TAHULU KEC . MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0061297170', '0061297170', '$2y$10$ppnDm8YSjHcO4hoHn.670uJpvNP9CEeeTSxFfCH4zN6MfbufWmIE.', '', 1, 1),
(221, 'MALINCE SELEGANI', '9127020804830002', '9127020612180006', '0036281052', '3396/217.072', 'BILAI', '2006-04-21', 2, 2, '082197697267', 1, 3, 1, 'SIMON SELEGANI', '9127021707770002', 1977, 'SD / sederajat', 'Wiraswasta', '0', 'DOMENIKA BAGUBAU', '9127025204780002', 1974, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'BILAI RT 0 RW 0 DALIMBABILAI KEC. HOMEYO', 'BILAI RT 0 RW 0 DALIMBABILAI KEC. HOMEYO', '0', '0', '0', '0', 3, 5, 'SMP YPPK BILAI', '2022-07-13', 'XII LPKKK', '0036281052', '0036281052', '$2y$10$P1mTEnyuu931BNPACwIT6OOjobfQeeo2GsffXUpBknLn9w173mAm6', '', 1, 1),
(222, 'MOH AIMAN SYAFIQ', '3523120909060001', '3523121905090007', '0066439337', '3397/218.072', 'TUBAN', '2006-09-09', 1, 1, '087773908097', 1, 1, 1, 'NASUKAN', '3523120906760003', 1976, 'SD / sederajat', 'Wiraswasta', '0', 'CHOIRIYAH ULFAH', '3523125408820006', 1982, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN RAWASAN RT 1 RW 3 RAWASAN KEC. JENU 62352', 'DSN RAWASAN RT 1 RW 3 RAWASAN KEC. JENU 62352', '0', '0', '0', '0', 3, 5, 'MTS MIFTAHUL HUDA JENU', '2022-07-13', 'XII LPKKK', '0066439337', '0066439337', '$2y$10$VKzZxyRqcbSxWyIaT2fBWO7v10yEabLs78Rl.Tlab5PevRv8Gj7NO', '', 1, 1),
(223, 'NANDA FANI RAMADHANI', '3523135310060001', '3523132803220007', '0062913099', '3398/219.072', 'TUBAN', '2006-10-13', 2, 1, '082140304076', 1, 0, 1, 'SUWONDO', '3523131512790003', 1979, 'SD / sederajat', 'Wiraswasta', '0', 'KASTRI', '3523134809830001', 1983, 'SD / sederajat', 'PETANI', '0', 'DSN. BECOK RT 05/ RW 07  DS. TEGALREJO KEC. MERAKURAK KAB. TUBAN', 'DSN. BECOK RT 05/ RW 07  DS. TEGALREJO KEC. MERAKURAK KAB. TUBAN', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0062913099', '0062913099', '$2y$10$leu.OUWRkF0nMzAz753.jeMIZFmBpn3qfknaRtgs1Wy1tfBs8EVKK', '', 1, 1),
(224, 'NATALIA TEBAI', '9128026511080001', '9128022004210005', '0088687692', '3399/220.072', 'OKAGO', '2008-11-25', 2, 3, '0', 1, 0, 1, 'DEKI TEBAI', '9128022012800005', 1978, 'SMP / sederajat', 'Petani', '0', 'SAFIRA KEIYA', '9128024709890002', 1980, 'SMP / sederajat', 'PETANI', '0', 'IYAIPUGI RT 4 RW 0 ENAROTALI KEC. PANIAI TIMUR 98700', 'IYAIPUGI RT 4 RW 0 ENAROTALI KEC. PANIAI TIMUR 98700', '0', '0', '0', '0', 3, 5, 'SMP YPPGI ENAROTALI', '2022-07-13', 'XII LPKKK', '0088687692', '0088687692', '$2y$10$cQeuT5RLyoFNaHG0OvwjxOVuicRN6B1sjnWmY2MkxF7TMLlgK3a0C', '', 1, 1),
(225, 'RINA AMELIA WATI', '3523134707080001', '3523132811160002', '0085832863', '3400/221.072', 'TUBAN', '2008-07-07', 2, 1, '082140312043', 1, 9, 1, 'WACIP', '3523130107640023', 1984, 'SD / sederajat', 'Wiraswasta', '0', 'SUGIATININGSIH', '3523135708890002', 1989, 'SMP / sederajat', 'PETANI', '0', 'DSN BECOK RT 01 RW 07 TEGALREJO KEC. MERAKURAK', 'DSN BECOK RT 01 RW 07 TEGALREJO KEC. MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0085832863', '0085832863', '$2y$10$U43Pu66Tn/UgpTcjF1HGyOwmLN6ymvlCRVTTgG6vB7WCbMxMmB74i', '', 1, 1),
(226, 'SUKMA MELATI PUTRI WARKAWANI', '9111024602060001', '9105152508200002', '0065962423', '3401/222.072', 'SERUI', '2006-02-06', 2, 1, '081354214439', 1, 1, 2, 'Wartani', '9111022506730002', 1973, 'SMP / sederajat', 'Karyawan Swasta', '0', 'MEI LIDIA WARKAWANI', '9111024303830001', 1983, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. MOH. TOHA RT 1 R W1 ANOTAUREI KEC. YAPEN SELATAN', 'JL. MOH. TOHA RT 1 R W1 ANOTAUREI KEC. YAPEN SELATAN', '0', '0', '0', '0', 3, 5, 'SMP NEGERI ANOTAUREI SERUI', '2022-07-13', 'XII LPKKK', '0065962423', '0065962423', '$2y$10$l8VHOnOmLMJk0I/yYku.6.lQXhea22Vg5dUrcl0P3x1h1tF77l06S', '', 1, 1),
(227, 'UMI ZUMROTUN KHASANAH', '3523134909060002', '3523131510180006', '0062768412', '3402/223.072', 'TUBAN', '2006-09-08', 2, 1, '082333991247', 1, 6, 1, 'WARNO', '3523131508780001', 1979, 'SD / sederajat', 'Petani', '0', 'WARJUKIN', '3523134410860002', 1986, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN. BANCANG 01 RW 10 DS. TAHULU KEC. MERAKURAK', 'DSN. BANCANG 01 RW 10 DS. TAHULU KEC. MERAKURAK', '0', '0', '0', '0', 3, 5, 'SMP NURUL HUDA MERAKURAK', '2022-07-13', 'XII LPKKK', '0062768412', '0062768412', '$2y$10$b6PjXPxMIWOBuXw/GQ3N9OfRLyI2Svz0POE2TF5obVl/u61BVcyIi', '', 1, 1),
(228, 'YOHANA KEIYA', '9109014502060012', '9104222404180003', '0067695227', '3403/224.072', 'TIMIKA', '2006-05-24', 2, 2, '081249096144', 1, 1, 1, 'Ansilius Keiya', '0', 0, 'Tidak sekolah', 'Sudah Meninggal', '0', 'MARTINA PIGAI', '9104224603870002', 1987, 'Tidak sekolah', 'MENGURUS RUMAH TANGG', '0', 'JL SARERA RT 16 RW 6 KALISEMEN KEC. NABIRE BARAT 98856', 'JL SARERA RT 16 RW 6 KALISEMEN KEC. NABIRE BARAT 98856', '0', '0', '0', '0', 3, 5, 'SMP Negeri 2 Wanggar', '2022-07-13', 'XII LPKKK', '0067695227', '0067695227', '$2y$10$9O4zb2.C7GnXA7C5z.a2t.4f2xwM4HDJ4BuybTKTZyJNVf0C/r.5.', '', 1, 1),
(229, 'YULINCE NAWIPA', '9180245689942003', '9108012406150004', '9992665800', '3404/225.072', 'ENAROTALI', '2007-07-17', 2, 3, '081231796689', 1, 2, 1, 'Piter Nawipa', '9108011709780001', 1965, 'SMA / sederajat', 'PNS/TNI/Polri', '0', 'SELPINA TENOUYE', '9108015909780002', 1968, 'Tidak sekolah', 'MENGURUS RUMAH TANGG', '0', 'POGEI ENAROTALI KEC.PANIAI TIMUR KAB. PANIAI  PROVINSI PAPUA', 'POGEI ENAROTALI KEC.PANIAI TIMUR KAB. PANIAI  PROVINSI PAPUA', '0', '0', '0', '0', 3, 5, 'SMP YPPGI ENAROTALI', '2022-07-13', 'XII LPKKK', '9992665800', '9992665800', '$2y$10$OoTCGpGnd1lbE3s0GJ7rTeiGp4RVh108SSKiswyo24tww39cGAmg.', '', 1, 1),
(230, 'AHMAD RIZQI', '3523151206070001', '3523152208090143', '0077859414', '3359/571.105', 'TUBAN', '2007-06-12', 1, 1, '0', 1, 9, 1, 'M. Ali', '3523153608780004', 1978, 'SD / sederajat', 'Petani', '0', 'KARSINI', '3523155811760002', 1976, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. RAYA JADI RT 02 RW 07 KRAJANJADIKEC. SEMANDING 62381', 'JL. RAYA JADI RT 02 RW 07 KRAJANJADIKEC. SEMANDING 62381', '0', '0', '0', '0', 3, 3, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII PH', '0077859414', '0077859414', '$2y$10$UYb.0oWwjKfA1hzsgK8wFeHKwFTsCFbBSCkh6EdCc.ozI/qQOQGky', '', 1, 1),
(231, 'ANUR ROHMAN', '3523152609060002', '3523151503064182', '0064854635', '3360/572.105', 'TUBAN', '2006-09-25', 1, 1, '081216253467', 1, 0, 1, 'Sumidjan', '3523150512620003', 1958, 'SMP / sederajat', 'Pedagang Kecil', '0', 'KASTONAH', '3523154805690002', 1969, 'Tidak sekolah', 'PEDAGANG BESAR', '0', 'JL. RAYA JADI RT 02 RW 07 KRAJAN JADI KEC. SEMANDING 62381', 'JL. RAYA JADI RT 02 RW 07 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 3, 'SMP MU ALLIMIN', '2022-07-13', 'XII PH', '0064854635', '0064854635', '$2y$10$uO3qlVALDq1u8gfc8.9rnOg3nX24.7.rb3bWJYfUT.J3Zdlt6u6T6', '', 1, 1),
(232, 'DIMAS STIAWAN', '3523150703070004', '3523151503064092', '0074134093', '3361/573.105', 'TUBAN', '2007-03-07', 1, 1, '085334547642', 1, 0, 3, 'Slamet', '3523151503064092', 1965, 'SD / sederajat', 'Petani', '0', 'SRIYEM', '3523154207690002', 1969, 'SD / sederajat', 'PETANI', '0', 'JL. RAYA JADI RT 2 RW 8 BOKGEDE JADI KEC. SEMANDING 62381', 'JL. RAYA JADI RT 2 RW 8 BOKGEDE JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 3, 'SMP NEGERI 3 SEMANDING', '2022-07-13', 'XII PH', '0074134093', '0074134093', '$2y$10$gPr6pgchxoSh3uLc9jH2RuuWOPyc5WJMBbPTeyYgl0ddLj5uBWS8.', '', 1, 1),
(233, 'ERLINCE NAYLA DWI MATELDA', '3524075501070003', '3524072308190006', '0074283379', '3362/574.105', 'LAMONGAN', '2007-01-15', 2, 1, '0', 1, 2, 2, 'Fx Bayu Dwi Devieanto', '0', 1976, 'SMA / sederajat', 'Wiraswasta', '0', 'Sandik wahyuningsih', '0', 1979, 'SMA / sederajat', 'BURUH', '0', 'JL. PEMUDART3RW2BRONDONGBRONDONGKEC. BRONDONG 62263', 'JL. PEMUDART3RW2BRONDONGBRONDONGKEC. BRONDONG 62263', '0', '0', '0', '0', 3, 3, 'SMP MUHAMMADIYAH 14 PACIRAN', '2022-07-13', 'XII PH', '0074283379', '0074283379', '$2y$10$eKry0BykfXde1HSkV8UdkOrx4P/80jmiDbHgyr3ZNyNJf1szGZ6sS', '', 1, 1),
(234, 'FERDY YOGA DWI PRATAMA', '3523151704070001', '3523151503064938', '0073511340', '3363/575.105', 'TUBAN', '2007-04-17', 1, 1, '082337301259', 1, 2, 1, 'Jayus', '3523152706720001', 1968, 'SD / sederajat', 'Petani', '0', '', '3523155506740007', 1973, 'SD / sederajat', '', '0', 'JL. RAYA JADI RT 3 RW 7 KRAJAN JADI KEC. SEMANDING 62381', 'JL. RAYA JADI RT 3 RW 7 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 3, 'SMP MU ALLIMIN', '2022-07-13', 'XII PH', '0073511340', '0073511340', '$2y$10$IrxuuXB1CU8l.AymTSjWHuTIPiF2aM3ZVBA1eUxja8Uj3glED7bsu', '', 1, 1),
(235, 'HENI RAHMAYANTI', '3523104403070001', '3523100803066777', '0073719455', '3364/576.105', 'TUBAN', '2007-03-04', 2, 1, '085335180446', 1, 1, 2, 'KARNOTO', '3523102301710001', 1978, 'SMP / sederajat', 'Petani', '0', 'SUKARNI', '3523104511740001', 1980, 'SMP / sederajat', 'PETANI', '0', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG 62357', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG 62357', '0', '0', '0', '0', 3, 3, 'SMP NEGERI 1 MONTONG', '2022-07-13', 'XII PH', '0073719455', '0073719455', '$2y$10$xA48UdANIKIRuEvUtWxyVO2ythHPajoKK2ugGVrjzoGo7DIB0jmHG', '', 1, 1),
(236, 'NAYSILLA JULYA PUTRI', '3523125707060003', '3523121603067780', '0068455957', '3365/577.105', 'TUBAN', '2006-07-17', 2, 1, '0', 1, 1, 1, 'ADI ANTORO', '3523121010750003', 1975, 'SMP / sederajat', 'Pedagang Kecil', '0', 'MARNI WULANSARI', '3523124706790004', 1979, 'SMP / sederajat', 'PEDAGANG KECIL', '0', 'DSN. JEMBEL RT1 RW 7 JEMBEL SUGIHWARAS KEC. JENU 62352', 'DSN. JEMBEL RT1 RW 7 JEMBEL SUGIHWARAS KEC. JENU 62352', '0', '0', '0', '0', 3, 3, ' ', '2022-07-13', 'XII PH', '0068455957', '0068455957', '$2y$10$u7B1xf4iYeL.6hcBEPmM6eU5L0AkQpCuY76ADSW5CGsXeGjqntWL2', '', 1, 1),
(237, 'REVITA NIKEN FARADILA', '3523105207070001', '3523102206120001', '0075039282', '3366/578.105', 'TUBAN', '2007-07-12', 2, 1, '085259349561', 1, 4, 1, 'HADI SANTOSO', '3523102404820002', 1970, 'SMP / sederajat', 'Wiraswasta', '0', 'DEWI SRI RAHMAWATI', '3523107004870002', 1975, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG', 'DSN TILENG RT 16 RW 8 TALUN KEC. MONTONG', '0', '0', '0', '0', 3, 3, 'SMP NEGERI 1 MONTONG', '2022-07-13', 'XII PH', '0075039282', '0075039282', '$2y$10$CSQg73oDMceElH5Zw0nhhuHTiOyfJ4X5ZSvfgvn3sZkcCKoFlMzDG', '', 1, 1),
(238, 'ZASKIA SAFNA NURANI', '3523165209060005', '3523160205090125', '0062161054', '3368/580.105', 'TUBAN', '2006-09-12', 2, 1, '0', 1, 2, 1, 'SUTRISNO', '3523162908800004', 1980, 'SMA / sederajat', 'Pedagang Kecil', '0', 'TRI SUSANTI', '3523164711820003', 1982, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'SUGIHARJO - TUBAN RT5 RW 8 WINONG SUGIHARJO KEC. TUBAN 62351', 'SUGIHARJO - TUBAN RT5 RW 8 WINONG SUGIHARJO KEC. TUBAN 62351', '0', '0', '0', '0', 3, 3, 'MTS MANBAIL FUTUH JENU', '2022-07-13', 'XII PH', '0062161054', '0062161054', '$2y$10$UfOjp7HDZPSHkYuxj4XVze3KCQasG3QBZ57HvZIuujEg/CqE4QcQC', '', 1, 1),
(239, 'AMINULLAH MAULANA IBRAHIM AMRI', '7471051603070003', '7471050103080347', '0097937920', '3369/750.063', 'KENDAL', '2007-03-16', 1, 1, '0', 1, 2, 1, 'AMRI S HERMAN', '0', 1983, 'SMA / sederajat', 'Wiraswasta', '0', 'MIRA SASMIMING', '0', 0, '0', 'MENGURUS RUMAH TANGG', '0', 'DSN TARING RT 9 RW 15 GEDONGOMBO KEC. SEMANDING', 'DSN TARING RT 9 RW 15 GEDONGOMBO KEC. SEMANDING', '0', '0', '0', '0', 3, 4, 'MTS SUMBERSARI KOWANG', '2022-07-13', 'XII RPL', '0097937920', '0097937920', '$2y$10$6B1asQYGJaCvyJ2AljQbnu44UxeqBItOjuXlsAmQYzC9syAsHkDHC', '', 1, 1),
(240, 'CHIKA IMELDA', '3523186804060005', '3523180308090028', '0068625097', '3371/752.063', 'TUBAN', '2006-04-28', 2, 1, '089601520021', 1, 4, 2, 'Dasmolan', '3523180110780001', 1978, 'SD / sederajat', 'Buruh', '0', 'Dwi Lestari', '3523185608810006', 1981, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. PANGLIMA SUDIRMAN RT 1 RW 2 KARANGSARI KEC. TUBAN 62314', 'JL. PANGLIMA SUDIRMAN RT 1 RW 2 KARANGSARI KEC. TUBAN 62314', '0', '0', '0', '0', 3, 4, 'SMP PGRI 3 TUBAN', '2022-07-13', 'XII RPL', '0068625097', '0068625097', '$2y$10$DixZ/6BPoMFD0Y8o/rgYOuRlIFRqcxJTtKNLJvKtucA/YpZVCEOvS', '', 1, 1),
(241, 'ERNA NURVITA SARI', '3523156709060003', '3523150901100053', '3066300818', '3372/753.063', 'TUBAN', '2006-09-27', 2, 1, '085708877160', 1, 3, 1, 'Jasman', '3523150907710001', 1971, 'SMP / sederajat', 'Petani', '0', 'SUMARTI', '3523154808780005', 1976, 'SD / sederajat', 'PETANI', '0', 'MOJOKOPEK RT 2 RW 28 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING', 'MOJOKOPEK RT 2 RW 28 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII RPL', '3066300818', '3066300818', '$2y$10$KJoe2fnTMjxiCq/eT/0AsOKqNHADGESdCPvCjZM4BEJGzlRTPSL76', '', 1, 1),
(242, 'FERDI ARISKA', '3523152605060001', '3523150609090109', '0066966616', '3373/754.063', 'TUBAN', '2006-05-26', 1, 1, '083833307218', 1, 2, 1, 'PARJI', '3523152703830006', 1983, 'SMP / sederajat', 'Wiraswasta', '0', 'YENI PALUPI', '3523156005860006', 1986, 'SMP / sederajat', 'WIRASWASTA', '0', 'DSN SECANG RT 3RW 15 BOGOR BEKTIHARJO KEC. SEMANDING 62381', 'DSN SECANG RT 3RW 15 BOGOR BEKTIHARJO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII RPL', '0066966616', '0066966616', '$2y$10$ZIWrkbKn5Lkah3myKX6qBegcF9ZMg4npEsYm5IVtGL0Q15Ld4k98u', '', 1, 1),
(243, 'HARDIANSYAH SAMUNI', '3523151306060001', '3523151403066658', '0069290505', '3374/755.063', 'TUBAN', '2006-06-13', 1, 1, '0', 1, 1, 1, 'SLAMET', '3523150310770004', 1976, 'SD / sederajat', 'Wiraswasta', '0', 'YUNTINI', '3523156309760001', 1976, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN KRAJAN RT2 RW2 BOTO KEC. SEMANDING 62381', 'DSN KRAJAN RT2 RW2 BOTO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII RPL', '0069290505', '0069290505', '$2y$10$Ys8gGk6U4l3aCtFjdqeFbO9k32ayXaRWt93V5mgOnmeBLGeoLhmsu', '', 1, 1),
(244, 'IDA WIDIASTUTIK', '3523085611060002', '3523081407092636', '0064665112', '3375/756.063', 'TUBAN', '2006-11-16', 2, 1, '085850183280', 1, 1, 1, 'SARJU', '3523080703760003', 1976, 'SD / sederajat', 'Petani', '0', 'SUPARMI', '3523085401840002', 1984, 'SD / sederajat', 'PETANI', '0', 'JL. RAYA GAJI RT 6 RW 3 SIDOMULYO GAJI KEC. KEREK 62356', 'JL. RAYA GAJI RT 6 RW 3 SIDOMULYO GAJI KEC. KEREK 62356', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 2 KEREK', '2022-07-13', 'XII RPL', '0064665112', '0064665112', '$2y$10$9aEE23uiengOdI2i8/zdWOfVY/vDjgJwkJLA/jfxqo0CtSPKDAkJq', '', 1, 1),
(245, 'IMELDA SUSANTO', '3523166509070003', '3523161503063349', '0079233876', '3376/757.063', 'TUBAN', '2007-09-25', 2, 2, '089513680354', 1, 1, 1, 'WAHYUDI SUSANTO', '0', 1982, 'SMA / sederajat', 'Wiraswasta', '0', ' LIANNA WATI', '3523165003820001', 1982, 'SMA / sederajat', 'WIRASWASTA', '0', 'LATSARI 3 GG. BAGUS RT4 RW 4 LATSARI KEC. TUBAN 62314', 'LATSARI 3 GG. BAGUS RT4 RW 4 LATSARI KEC. TUBAN 62314', '0', '0', '0', '0', 3, 4, 'SMP KATOLIK RONGGOLAWE', '2022-07-13', 'XII RPL', '0079233876', '0079233876', '$2y$10$9dmVKgnknTQeS789PoXSv.PFJyG7sfCHU/LKeK9ZyftmJpaYt6cAe', '', 1, 1),
(246, 'MUHAMMAD ALFIAN FEBRIANSYAH', '3523130902070002', '3523131603065618', '0072662658', '3377/758.063', 'TUBAN', '2007-02-09', 1, 1, '0', 1, 1, 2, 'SUKRI', '3523130201700001', 1970, 'SD / sederajat', 'Petani', '0', 'SUMIJAH', '3523135607760001', 1976, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'JL. BANYU LANGSE RT 4 RW 4 KRAJAN BOTO KEC. SEMANDING 62381', 'JL. BANYU LANGSE RT 4 RW 4 KRAJAN BOTO KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII RPL', '0072662658', '0072662658', '$2y$10$gBl4eUKY.ifLGKIDJpyoCe4TEcait8/8XtVJ6wzTxQHN6yMPDQbEe', '', 1, 1),
(247, 'NAILA SALSABILA', '3523126802070001', '3523121805090150', '0077726482', '3378/759.063', 'TUBAN', '2007-02-28', 2, 1, '0', 1, 1, 1, 'WASLAM', '3523121910760001', 1976, 'Tidak sekolah', 'Petani', '0', 'JULIKAH', '3523124901860004', 1986, 'SD / sederajat', 'PETANI', '0', 'DS. SUWALAN RT 3 RW 1 KRAJAN SUWALAN KEC. JENU 62352', 'DS. SUWALAN RT 3 RW 1 KRAJAN SUWALAN KEC. JENU 62352', '0', '0', '0', '0', 3, 4, 'MTS MANBAIL FUTUH JENU', '2022-07-13', 'XII RPL', '0077726482', '0077726482', '$2y$10$UAgoLQf3zMGW3dJDOX66Pev1Ky67LtDfoRATsDPlH4G8FpeaeqVZO', '', 1, 1),
(248, 'NAYLA KARTIKA PUTRI', '3523165309060001', '3523161401100088', '0069486834', '3379/760.063', 'TUBAN', '2006-09-13', 2, 1, '085748801680', 1, 1, 1, 'MUNAFIIN', '3523160404820003', 1982, 'SMA / sederajat', 'Wiraswasta', '0', 'SAMININGSIH', '3523165108840003', 1984, 'SMA / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DESA SUMURGUNG RT 2 RW 8 KUTHI SUMURGUNG KEC. TUBAN 62351', 'DESA SUMURGUNG RT 2 RW 8 KUTHI SUMURGUNG KEC. TUBAN 62351', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 4 TUBAN', '2022-07-13', 'XII RPL', '0069486834', '0069486834', '$2y$10$.EHLk59DL/ritYSXzHaVuujGP6rpoCjsQuWKYJ9fyVTBDOCeL.koq', '', 1, 1),
(249, 'NAZAR ALI ROHMATULLOH', '3523152810060001', '3523151503062536', '0067684801', '3380/761.063', 'TUBAN', '2006-10-28', 1, 1, '082131312804', 1, 1, 4, 'Purnomo', '3523151503730004', 1973, 'SD / sederajat', 'Petani', '0', 'KASWINARUM', '3523154904740002', 1974, 'SD / sederajat', 'PETANI', '0', 'JL. RAYA JADI RT 4 RW 8 KRAJAN JADI KEC. SEMANDING 62381', 'JL. RAYA JADI RT 4 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'SMP ISLAM BEJAGUNG', '2022-07-13', 'XII RPL', '0067684801', '0067684801', '$2y$10$Jon.BTIyUW7H9LWxvE4h6OSEHsxBQsLjFfPuglNK6lXE8/c73YOs2', '', 1, 1),
(250, 'NONI ICHA NURAENI', '3523156509060003', '3523151503066380', '0061202342', '3381/762.063', 'TUBAN', '2006-09-25', 2, 1, '081259153368', 1, 3, 1, 'Narko', '3523150404800010', 1980, 'SD / sederajat', 'Petani', '0', 'LASEMI', '3523155607740005', 1974, 'SD / sederajat', 'PETANI', '0', 'HAYAM WURUK RT 25 RW 9 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', 'HAYAM WURUK RT 25 RW 9 MOJOKOPEK PRUNGGAHAN KULON KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 4 SEMANDING', '2022-07-13', 'XII RPL', '0061202342', '0061202342', '$2y$10$N9W0ePPwnViIlz1H8u1xjuoQ2WOn/tepzN13LmisR9qF5Dkq9n.mG', '', 1, 1),
(251, 'OKTA VIANA LESTARI', '3523154610070003', '3523150801140009', '0076456155', '3382/763.063', 'TUBAN', '2007-10-06', 2, 1, '0', 1, 2, 1, 'JUPRI', '3523152412840005', 1984, 'SMP / sederajat', 'Petani', '0', 'KATIMAH', '3523154107890106', 1988, 'SD / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII RPL', '0076456155', '0076456155', '$2y$10$JnWzdKKvM9D.Zkysh/pI3.CQhVOU40O/WQDcgZZbk.rrpnq4posVq', '', 1, 1),
(252, 'RAHAYU WIDANINGSIH', '3523155008070003', '3523152712090114', '0075011417', '3383/764.063', 'TUBAN', '2007-08-10', 2, 1, '0', 1, 1, 1, 'SOLIKIN', '3523151107800001', 1982, 'SD / sederajat', 'Wiraswasta', '0', ' SULESTARI', '3523154608860010', 1986, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', 'DS JADI RT 3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII RPL', '0075011417', '0075011417', '$2y$10$2oIBV90qX6jZjD83iEJh5eHsKfZyaQWWpf9eRctgtK.YYb2IF/fcm', '', 1, 1);
INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nik_pd`, `nkk`, `nisn`, `nis`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `agama`, `kontak_siswa`, `hub_keluarga`, `jumlah_saudara`, `anak_ke`, `nama_ayah`, `nik_ayah`, `tahun_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `kontak_ayah`, `nama_ibu`, `nik_ibu`, `tahun_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `kontak_ibu`, `alamat`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `kontak_wali`, `terima_tingkat`, `jurusan`, `sekolah_asal`, `terima_tanggal`, `terima_kelas`, `username`, `pass`, `password`, `foto`, `jenis_siswa`, `aktif`) VALUES
(253, 'SABRINA RAHAYU NURFAIZAH', '3523156106070001', '3523152812090076', '0138774220', '3505/781.063', 'TUBAN', '2007-08-10', 2, 1, '0', 1, 1, 1, 'ALI SUTIKNO', '3523150503780014', 1978, 'SD / sederajat', 'Petani', '0', ' SULESTARI', '3523154304860016', 1986, 'SD / sederajat', 'PETANI', '0', 'DS JADI RT3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', 'DS JADI RT3 RW 8 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'MTS TARBIYATUT THULLLAB', '2022-07-13', 'XII RPL', '0138774220', '0138774220', '$2y$10$eestx6NdCB7cdZPP6JLg0.AIyZSip8Q0tbzH40TqGjN0z7YWgwBe.', '', 1, 1),
(254, 'SADEWO VIGO MANDALA PUTRA', '3523151001070001', '3523150609090111', '0073308212', '3384/765.063', 'TUBAN', '2007-01-10', 1, 1, '0', 1, 0, 1, 'SUTAGUS ALI PRIBADI', '3523150702780003', 1978, 'D1', 'Karyawan Swasta', '0', 'SUTRINIS', '3523155306850004', 1985, 'SMP / sederajat', 'MENGURUS RUMAH TANGG', '0', 'DSN BOGOR RT/RW 003/015 BEKTIHARJO KEC. SEMANDING     ', 'DSN BOGOR RT/RW 003/015 BEKTIHARJO KEC. SEMANDING     ', '0', '0', '0', '0', 3, 4, 'MTS NEGERI 3 TUBAN', '2022-07-13', 'XII RPL', '0073308212', '0073308212', '$2y$10$uIO8qJ3en8C0zrRIYWIfdex2lwJci8SNMklB2vPlXs/r.gZX7j20W', '', 1, 1),
(255, 'SENDY RAFI SAPUTRA', '3523151010070001', '3523151503068081', '0079527331', '3385/766.063', 'TUBAN', '2007-10-10', 1, 1, '082140608121', 1, 1, 2, 'TANTO', '3523151009830002', 1978, 'SMP / sederajat', 'Wiraswasta', '0', ' RITA', '3523155106830003', 1983, 'SMP / sederajat', 'PEDAGANG KECIL', '0', 'JADI RT 3 RW 11 KRAJAN JADI KEC. SEMANDING 62381', 'JADI RT 3 RW 11 KRAJAN JADI KEC. SEMANDING 62381', '0', '0', '0', '0', 3, 4, 'SMP NEGERI 3 SEMANDING', '2022-07-13', 'XII RPL', '0079527331', '0079527331', '$2y$10$VGWubLL9th.wT.QKLBWt5uWR43IxG1KnSuqz.QryXOA2jEaCbht9m', '', 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa_eskul`
--

INSERT INTO `siswa_eskul` (`id_siswa_eskul`, `tahun`, `semester`, `id_eskul`, `id_siswa`, `predikat`, `keterangan`) VALUES
(1, 1, 1, 1, 1, '', ''),
(2, 1, 1, 1, 2, '', ''),
(3, 1, 1, 1, 3, '', ''),
(4, 1, 1, 1, 4, '', ''),
(5, 1, 1, 1, 5, '', ''),
(6, 1, 1, 1, 6, '', ''),
(7, 1, 1, 1, 7, '', ''),
(8, 1, 1, 1, 8, '', ''),
(9, 1, 1, 1, 9, '', ''),
(10, 1, 1, 1, 10, '', ''),
(11, 1, 1, 1, 11, '', ''),
(12, 1, 1, 1, 12, '', ''),
(13, 1, 1, 1, 13, '', ''),
(14, 1, 1, 1, 14, '', ''),
(15, 1, 1, 1, 15, '', ''),
(16, 1, 1, 1, 16, '', ''),
(17, 1, 1, 1, 17, '', ''),
(18, 1, 1, 1, 18, '', ''),
(19, 1, 1, 1, 19, '', ''),
(20, 1, 1, 1, 20, '', ''),
(21, 1, 1, 1, 21, '', ''),
(22, 1, 1, 1, 22, '', ''),
(23, 1, 1, 1, 23, '', ''),
(24, 1, 1, 1, 24, '', ''),
(25, 1, 1, 1, 25, '', ''),
(26, 1, 1, 1, 26, '', ''),
(27, 1, 1, 1, 27, '', ''),
(28, 1, 1, 1, 28, '', ''),
(29, 1, 1, 1, 29, '', ''),
(30, 1, 1, 1, 30, '', ''),
(31, 1, 1, 1, 31, '', ''),
(32, 1, 1, 1, 32, '', ''),
(33, 1, 1, 1, 33, '', ''),
(34, 1, 1, 1, 34, '', ''),
(35, 1, 1, 1, 35, '', ''),
(36, 1, 1, 1, 36, '', ''),
(37, 1, 1, 1, 37, '', ''),
(38, 1, 1, 1, 38, '', ''),
(39, 1, 1, 1, 39, '', ''),
(40, 1, 1, 1, 40, '', ''),
(41, 1, 1, 1, 41, '', ''),
(42, 1, 1, 1, 42, '', ''),
(43, 1, 1, 1, 43, '', ''),
(44, 1, 1, 1, 44, '', ''),
(45, 1, 1, 1, 45, '', ''),
(46, 1, 1, 1, 46, '', ''),
(47, 1, 1, 1, 47, '', ''),
(48, 1, 1, 1, 48, '', ''),
(49, 1, 1, 1, 49, '', ''),
(50, 1, 1, 1, 50, '', ''),
(51, 1, 1, 1, 51, '', ''),
(52, 1, 1, 1, 52, '', ''),
(53, 1, 1, 1, 53, '', ''),
(54, 1, 1, 1, 54, '', ''),
(55, 1, 1, 1, 55, '', ''),
(56, 1, 1, 1, 56, '', ''),
(57, 1, 1, 1, 57, '', ''),
(58, 1, 1, 1, 58, '', ''),
(59, 1, 1, 1, 59, '', ''),
(60, 1, 1, 1, 60, '', ''),
(61, 1, 1, 1, 61, '', ''),
(62, 1, 1, 1, 62, '', ''),
(63, 1, 1, 1, 63, '', ''),
(64, 1, 1, 1, 64, '', ''),
(65, 1, 1, 1, 65, '', ''),
(66, 1, 1, 1, 66, '', ''),
(67, 1, 1, 1, 67, '', ''),
(68, 1, 1, 1, 68, '', ''),
(69, 1, 1, 1, 69, '', ''),
(70, 1, 1, 1, 70, '', ''),
(71, 1, 1, 1, 71, '', ''),
(72, 1, 1, 1, 72, '', ''),
(73, 1, 1, 1, 73, '', ''),
(74, 1, 1, 1, 74, '', ''),
(75, 1, 1, 1, 75, '', ''),
(76, 1, 1, 1, 76, '', ''),
(77, 1, 1, 1, 77, '', ''),
(78, 1, 1, 1, 78, '', ''),
(79, 1, 1, 1, 79, '', ''),
(80, 1, 1, 1, 80, '', ''),
(81, 1, 1, 1, 81, '', ''),
(82, 1, 1, 1, 82, '', ''),
(83, 1, 1, 1, 83, '', ''),
(84, 1, 1, 1, 84, '', ''),
(85, 1, 1, 1, 85, '', ''),
(86, 1, 1, 1, 86, '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa_kelas`
--

INSERT INTO `siswa_kelas` (`id_siswa_kelas`, `tahun`, `semester`, `id_tingkat`, `id_kelas`, `id_siswa`, `status`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 2, 1),
(3, 1, 1, 1, 1, 3, 1),
(4, 1, 1, 1, 1, 4, 1),
(5, 1, 1, 1, 1, 5, 1),
(6, 1, 1, 1, 1, 6, 1),
(7, 1, 1, 1, 1, 7, 1),
(8, 1, 1, 1, 1, 8, 1),
(9, 1, 1, 1, 1, 9, 1),
(10, 1, 1, 1, 1, 10, 1),
(11, 1, 1, 1, 1, 11, 1),
(12, 1, 1, 1, 2, 12, 1),
(13, 1, 1, 1, 2, 13, 1),
(14, 1, 1, 1, 2, 14, 1),
(15, 1, 1, 1, 2, 15, 1),
(16, 1, 1, 1, 2, 16, 1),
(17, 1, 1, 1, 2, 17, 1),
(18, 1, 1, 1, 2, 18, 1),
(19, 1, 1, 1, 2, 19, 1),
(20, 1, 1, 1, 2, 20, 1),
(21, 1, 1, 1, 2, 21, 1),
(22, 1, 1, 1, 2, 22, 1),
(23, 1, 1, 1, 2, 23, 1),
(24, 1, 1, 1, 2, 24, 1),
(25, 1, 1, 1, 2, 25, 1),
(26, 1, 1, 1, 2, 26, 1),
(27, 1, 1, 1, 2, 27, 1),
(28, 1, 1, 1, 2, 28, 1),
(29, 1, 1, 1, 3, 60, 1),
(30, 1, 1, 1, 3, 61, 1),
(31, 1, 1, 1, 3, 62, 1),
(32, 1, 1, 1, 3, 63, 1),
(33, 1, 1, 1, 3, 64, 1),
(34, 1, 1, 1, 3, 65, 1),
(35, 1, 1, 1, 3, 66, 1),
(36, 1, 1, 1, 3, 67, 1),
(37, 1, 1, 1, 3, 68, 1),
(38, 1, 1, 1, 3, 69, 1),
(39, 1, 1, 1, 3, 70, 1),
(40, 1, 1, 1, 3, 71, 1),
(41, 1, 1, 1, 3, 72, 1),
(42, 1, 1, 1, 3, 73, 1),
(43, 1, 1, 1, 3, 74, 1),
(44, 1, 1, 1, 3, 75, 1),
(45, 1, 1, 1, 3, 76, 1),
(46, 1, 1, 1, 3, 77, 1),
(47, 1, 1, 1, 3, 78, 1),
(48, 1, 1, 1, 3, 79, 1),
(49, 1, 1, 1, 4, 80, 1),
(50, 1, 1, 1, 4, 81, 1),
(51, 1, 1, 1, 4, 82, 1),
(52, 1, 1, 1, 4, 83, 1),
(53, 1, 1, 1, 4, 84, 1),
(54, 1, 1, 1, 4, 85, 1),
(55, 1, 1, 1, 4, 86, 1),
(56, 1, 1, 1, 5, 29, 1),
(57, 1, 1, 1, 5, 30, 1),
(58, 1, 1, 1, 5, 31, 1),
(59, 1, 1, 1, 5, 32, 1),
(60, 1, 1, 1, 5, 33, 1),
(61, 1, 1, 1, 5, 34, 1),
(62, 1, 1, 1, 5, 35, 1),
(63, 1, 1, 1, 5, 36, 1),
(64, 1, 1, 1, 5, 37, 1),
(65, 1, 1, 1, 5, 38, 1),
(66, 1, 1, 1, 5, 39, 1),
(67, 1, 1, 1, 5, 40, 1),
(68, 1, 1, 1, 5, 41, 1),
(69, 1, 1, 1, 5, 42, 1),
(70, 1, 1, 1, 5, 43, 1),
(71, 1, 1, 1, 5, 44, 1),
(72, 1, 1, 1, 5, 45, 1),
(73, 1, 1, 1, 5, 46, 1),
(74, 1, 1, 1, 5, 47, 1),
(75, 1, 1, 1, 5, 48, 1),
(76, 1, 1, 1, 5, 49, 1),
(77, 1, 1, 1, 5, 50, 1),
(78, 1, 1, 1, 5, 51, 1),
(79, 1, 1, 1, 5, 52, 1),
(80, 1, 1, 1, 5, 53, 1),
(81, 1, 1, 1, 5, 54, 1),
(82, 1, 1, 1, 5, 55, 1),
(83, 1, 1, 1, 5, 56, 1),
(84, 1, 1, 1, 5, 57, 1),
(85, 1, 1, 1, 5, 58, 1),
(86, 1, 1, 1, 5, 59, 1),
(87, 1, 1, 2, 6, 87, 1),
(88, 1, 1, 2, 6, 88, 1),
(89, 1, 1, 2, 6, 89, 1),
(90, 1, 1, 2, 6, 90, 1),
(91, 1, 1, 2, 6, 91, 1),
(92, 1, 1, 2, 6, 92, 1),
(93, 1, 1, 2, 6, 93, 1),
(94, 1, 1, 2, 6, 94, 1),
(95, 1, 1, 2, 6, 95, 1),
(96, 1, 1, 2, 6, 96, 1),
(97, 1, 1, 2, 6, 97, 1),
(98, 1, 1, 2, 6, 98, 1),
(99, 1, 1, 2, 6, 99, 1),
(100, 1, 1, 2, 6, 100, 1),
(101, 1, 1, 2, 6, 101, 1),
(102, 1, 1, 2, 7, 102, 1),
(103, 1, 1, 2, 7, 103, 1),
(104, 1, 1, 2, 7, 104, 1),
(105, 1, 1, 2, 7, 105, 1),
(106, 1, 1, 2, 7, 106, 1),
(107, 1, 1, 2, 7, 107, 1),
(108, 1, 1, 2, 7, 108, 1),
(109, 1, 1, 2, 7, 109, 1),
(110, 1, 1, 2, 7, 110, 1),
(111, 1, 1, 2, 7, 111, 1),
(112, 1, 1, 2, 7, 112, 1),
(113, 1, 1, 2, 7, 113, 1),
(114, 1, 1, 2, 7, 114, 1),
(115, 1, 1, 2, 7, 115, 1),
(116, 1, 1, 2, 7, 116, 1),
(117, 1, 1, 2, 7, 117, 1),
(118, 1, 1, 2, 7, 118, 1),
(119, 1, 1, 2, 7, 119, 1),
(120, 1, 1, 2, 7, 177, 1),
(121, 1, 1, 2, 8, 139, 1),
(122, 1, 1, 2, 8, 140, 1),
(123, 1, 1, 2, 8, 141, 1),
(124, 1, 1, 2, 8, 142, 1),
(125, 1, 1, 2, 8, 143, 1),
(126, 1, 1, 2, 8, 144, 1),
(127, 1, 1, 2, 8, 145, 1),
(128, 1, 1, 2, 8, 146, 1),
(129, 1, 1, 2, 8, 147, 1),
(130, 1, 1, 2, 8, 148, 1),
(131, 1, 1, 2, 8, 149, 1),
(132, 1, 1, 2, 8, 150, 1),
(133, 1, 1, 2, 8, 151, 1),
(134, 1, 1, 2, 8, 152, 1),
(135, 1, 1, 2, 8, 153, 1),
(136, 1, 1, 2, 8, 154, 1),
(137, 1, 1, 2, 8, 155, 1),
(138, 1, 1, 2, 8, 156, 1),
(139, 1, 1, 2, 8, 157, 1),
(140, 1, 1, 2, 8, 158, 1),
(141, 1, 1, 2, 8, 159, 1),
(142, 1, 1, 2, 8, 160, 1),
(143, 1, 1, 2, 8, 161, 1),
(144, 1, 1, 2, 8, 162, 1),
(145, 1, 1, 2, 8, 163, 1),
(146, 1, 1, 2, 8, 164, 1),
(147, 1, 1, 2, 8, 165, 1),
(148, 1, 1, 2, 8, 166, 1),
(149, 1, 1, 2, 9, 167, 1),
(150, 1, 1, 2, 9, 168, 1),
(151, 1, 1, 2, 9, 169, 1),
(152, 1, 1, 2, 9, 170, 1),
(153, 1, 1, 2, 9, 171, 1),
(154, 1, 1, 2, 9, 172, 1),
(155, 1, 1, 2, 9, 173, 1),
(156, 1, 1, 2, 9, 174, 1),
(157, 1, 1, 2, 9, 175, 1),
(158, 1, 1, 2, 9, 176, 1),
(159, 1, 1, 2, 9, 178, 1),
(160, 1, 1, 2, 9, 179, 1),
(161, 1, 1, 2, 10, 120, 1),
(162, 1, 1, 2, 10, 121, 1),
(163, 1, 1, 2, 10, 122, 1),
(164, 1, 1, 2, 10, 123, 1),
(165, 1, 1, 2, 10, 124, 1),
(166, 1, 1, 2, 10, 125, 1),
(167, 1, 1, 2, 10, 126, 1),
(168, 1, 1, 2, 10, 127, 1),
(169, 1, 1, 2, 10, 128, 1),
(170, 1, 1, 2, 10, 129, 1),
(171, 1, 1, 2, 10, 130, 1),
(172, 1, 1, 2, 10, 131, 1),
(173, 1, 1, 2, 10, 132, 1),
(174, 1, 1, 2, 10, 133, 1),
(175, 1, 1, 2, 10, 134, 1),
(176, 1, 1, 2, 10, 135, 1),
(177, 1, 1, 2, 10, 136, 1),
(178, 1, 1, 2, 10, 137, 1),
(179, 1, 1, 2, 10, 138, 1),
(180, 1, 1, 3, 11, 180, 1),
(181, 1, 1, 3, 11, 181, 1),
(182, 1, 1, 3, 11, 182, 1),
(183, 1, 1, 3, 11, 183, 1),
(184, 1, 1, 3, 11, 184, 1),
(185, 1, 1, 3, 11, 185, 1),
(186, 1, 1, 3, 11, 186, 1),
(187, 1, 1, 3, 11, 187, 1),
(188, 1, 1, 3, 11, 188, 1),
(189, 1, 1, 3, 11, 189, 1),
(190, 1, 1, 3, 11, 190, 1),
(191, 1, 1, 3, 11, 191, 1),
(192, 1, 1, 3, 11, 192, 1),
(193, 1, 1, 3, 11, 193, 1),
(194, 1, 1, 3, 12, 194, 1),
(195, 1, 1, 3, 12, 195, 1),
(196, 1, 1, 3, 12, 196, 1),
(197, 1, 1, 3, 12, 197, 1),
(198, 1, 1, 3, 12, 198, 1),
(199, 1, 1, 3, 12, 199, 1),
(200, 1, 1, 3, 12, 200, 1),
(201, 1, 1, 3, 12, 201, 1),
(202, 1, 1, 3, 12, 202, 1),
(203, 1, 1, 3, 12, 203, 1),
(204, 1, 1, 3, 12, 204, 1),
(205, 1, 1, 3, 12, 205, 1),
(206, 1, 1, 3, 12, 206, 1),
(207, 1, 1, 3, 12, 207, 1),
(208, 1, 1, 3, 12, 208, 1),
(209, 1, 1, 3, 12, 209, 1),
(210, 1, 1, 3, 12, 210, 1),
(211, 1, 1, 3, 12, 211, 1),
(212, 1, 1, 3, 13, 230, 1),
(213, 1, 1, 3, 13, 231, 1),
(214, 1, 1, 3, 13, 232, 1),
(215, 1, 1, 3, 13, 233, 1),
(216, 1, 1, 3, 13, 234, 1),
(217, 1, 1, 3, 13, 235, 1),
(218, 1, 1, 3, 13, 236, 1),
(219, 1, 1, 3, 13, 237, 1),
(220, 1, 1, 3, 13, 238, 1),
(221, 1, 1, 3, 14, 239, 1),
(222, 1, 1, 3, 14, 240, 1),
(223, 1, 1, 3, 14, 241, 1),
(224, 1, 1, 3, 14, 242, 1),
(225, 1, 1, 3, 14, 243, 1),
(226, 1, 1, 3, 14, 244, 1),
(227, 1, 1, 3, 14, 245, 1),
(228, 1, 1, 3, 14, 246, 1),
(229, 1, 1, 3, 14, 247, 1),
(230, 1, 1, 3, 14, 248, 1),
(231, 1, 1, 3, 14, 249, 1),
(232, 1, 1, 3, 14, 250, 1),
(233, 1, 1, 3, 14, 251, 1),
(234, 1, 1, 3, 14, 252, 1),
(235, 1, 1, 3, 14, 253, 1),
(236, 1, 1, 3, 14, 254, 1),
(237, 1, 1, 3, 14, 255, 1),
(238, 1, 1, 3, 15, 212, 1),
(239, 1, 1, 3, 15, 213, 1),
(240, 1, 1, 3, 15, 214, 1),
(241, 1, 1, 3, 15, 215, 1),
(242, 1, 1, 3, 15, 216, 1),
(243, 1, 1, 3, 15, 217, 1),
(244, 1, 1, 3, 15, 218, 1),
(245, 1, 1, 3, 15, 219, 1),
(246, 1, 1, 3, 15, 220, 1),
(247, 1, 1, 3, 15, 221, 1),
(248, 1, 1, 3, 15, 222, 1),
(249, 1, 1, 3, 15, 223, 1),
(250, 1, 1, 3, 15, 224, 1),
(251, 1, 1, 3, 15, 225, 1),
(252, 1, 1, 3, 15, 226, 1),
(253, 1, 1, 3, 15, 227, 1),
(254, 1, 1, 3, 15, 228, 1),
(255, 1, 1, 3, 15, 229, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_pelajaran`
--

CREATE TABLE `tahun_pelajaran` (
  `id_tahun_pelajaran` int(11) NOT NULL,
  `tahun_pelajaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tahun_pelajaran`
--

INSERT INTO `tahun_pelajaran` (`id_tahun_pelajaran`, `tahun_pelajaran`) VALUES
(1, '2024-2025'),
(2, '2025-2026'),
(3, '2026-2027'),
(4, '2027-2028');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `id_user` int(11) NOT NULL,
  `urut` varchar(55) NOT NULL,
  `tujuan` text NOT NULL,
  `kktp` int(11) NOT NULL,
  `middle_formatif` int(10) NOT NULL,
  `middle_ph` int(10) NOT NULL,
  `formatif_as` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `jabatan`, `nama`, `kelamin`, `agama`, `nip`, `nuptk`, `kontak`, `id_kepegawaian`, `ijazah`, `id_tugas_tambahan`, `username`, `pass`, `password`, `foto`, `moto`) VALUES
(1, 2, 'ADMINISTRATOR', 1, 1, '-', '-', '85707357', 5, 5, 5, 'abdira', 'abdira', '$2y$10$FgGn/hg/dk2UlcHIYPVtIOWnpV3rtExXfWoaiyBNYyZYy4mMmvqiK', '', ''),
(2, 1, 'Nanang Slamet Mulyono, S.Pd, MPd', 1, 1, '-', '-', '6285153542484', 1, 1, 5, 'nanang', '12345678', '$2y$10$i69KiaYbDLfcLMACNWkYU.0ljTXFigPVHDM4sJmRPdXdzX3z458g2', '', ''),
(3, 3, 'Uswatun Hasanah, S.Pd.', 2, 1, '-', '-', '6281335370190', 5, 2, 5, 'uswatun', '12345678', '$2y$10$lBj45TW.9Dr3.2eNZj/WPu4M/nGWFNT4Yk1L0FVn7XFSEcL0mUMG6', '', ''),
(4, 3, 'Dasa Eka Nugroho, A.Md, Par.', 1, 1, '-', '-', '62895622260657', 5, 2, 5, 'dasa', '12345678', '$2y$10$4FhJS7GpK8HDYiFy4nq3KezsqExIhq1rofXuXggObcuKjPgj1pbCS', '', ''),
(5, 3, 'Dra.Tutik Rahayu', 2, 1, '-', '-', '6281232425566', 5, 2, 5, 'tutik', '12345678', '$2y$10$yleKS1pS0CnPvmDoym9tpO1iFy63KS4LPcLHnhi6ae.wXGa81VyG6', '', ''),
(6, 3, 'Miftakhul Huda', 1, 1, '-', '-', '6281334438177', 5, 2, 5, 'miftakhul', '12345678', '$2y$10$4golxkJuPAE0uMoAWa.jmukqPwa.Dir4MZapazg8stf./2ImUsk/S', '', ''),
(7, 3, 'Nuriska Qodriyawanti, S.Pd', 2, 1, '-', '-', '6289668763743', 5, 2, 5, 'nuriska', '12345678', '$2y$10$vlMOBIH85hVSbeG4utMgZe5.TuQJEtJiDQmVwQ7nRef36y56Z1L1W', '', ''),
(8, 3, 'Muhari, MA', 1, 1, '-', '-', '6285733313391', 5, 2, 5, 'muhari', '12345678', '$2y$10$oTax03j5Zb.7KHodsHfL7.cG78VRLxMPdfHzqjxXx9JFTa1rDZWvO', '', ''),
(9, 3, 'Dyah Ayu Maulidina Munita Sari, S.Pd.', 2, 1, '-', '-', '6285885472007', 5, 2, 5, 'ayu', '12345678', '$2y$10$diuhLG6hlsGCwA17STzK1ux9c3ip4cAbSeAWsIkxzkGfpGGKLz1o6', '', '1'),
(10, 3, 'Suryawanto, S.Pd.', 1, 1, '-', '-', '6281330502678', 5, 2, 5, 'surya', '12345678', '$2y$10$RFpm.bVrWbqe.Z9VKCqTi.QAGSr4U15DbByfhjNCbLYGs39b23Uae', '', '1'),
(11, 3, 'Nurul Khoiriyah, S.Pd', 2, 1, '-', '-', '6281335710412', 5, 2, 5, 'nurul', '12345678', '$2y$10$DxoQNljm2EwiES45nr1i1uZMt79LmqCVeHO6LLfETfkWM0RBYwaPW', '', ''),
(12, 3, 'Agus Tyas Ferry Firmansyah, S.Pd.', 1, 1, '-', '-', '6285784914429', 5, 2, 5, 'ferry', '12345678', '$2y$10$y7SXgyGz8HjiQPSxL1vdHeyDCodSARZesnM6qJQSJRxwaGTim74d2', '', ''),
(13, 3, 'Zaeni S.Th', 1, 3, '-', '-', '6281233868282', 5, 2, 5, 'zaeni', '12345678', '$2y$10$dMc8XYiEBn3oi45lwpnfXuVqX/BOPcjlgXpTtvUQAQ4TxULw45bmi', '', ''),
(14, 3, 'Herlina Faizah,S.PdI', 2, 1, '-', '-', '6281905185690', 5, 2, 5, 'herlina', '12345678', '$2y$10$CodBrXYBhvIFvkELzi9wEuqhQdzm2TwmZJxzVbp/peqLgCYLkg7F2', '', ''),
(15, 3, 'Konis Zaitun, Amd. Keb', 2, 1, '-', '-', '6281332794436', 5, 2, 5, 'konis', '12345678', '$2y$10$MLu4nnl6/SjrQ492YzQ.KeH8elUz2jgYdkZvZIyBhLUdy5SsSTnBe', '', ''),
(16, 3, 'Setiawan, S.Pd', 1, 1, '-', '-', '6281231037093', 5, 2, 5, 'setiawan', '12345678', '$2y$10$uJh/jJg3zoHUWNPeu.M6nuB/Ouyn0l1ALND2/H2T6.YjVF9RkCbD.', '', ''),
(17, 3, 'Siti Eli Novianti,S.Pdi', 2, 1, '-', '-', '6285706612670', 5, 2, 5, 'eli', '12345678', '$2y$10$fJFOQs1n7fqmSdKuK2/leOhcYAW3Fg8vJMile0DUk787Cme44ARju', '', ''),
(18, 3, 'Yanny Husain Kusuma, S.Pd', 1, 1, '-', '-', '6285708474080', 5, 2, 5, 'yanny', '12345678', '$2y$10$FYUI0xv5NwGcxW0tSKnR/ewkF6ujf2qfLl3HG00gwvL2djOhSoQnq', '', ''),
(19, 3, 'Sisca Silviana, S.Pd', 2, 1, '-', '-', '6285731775351', 5, 2, 5, 'sisca', '12345678', '$2y$10$KAH4uOssVE0vbYJtn.ZboO5vB0dK2L5r4oO7kwCXai38f/3y1UTKi', '', ''),
(20, 3, 'Destri Cahyono, S.Pd', 1, 1, '-', '-', '6282230810551', 5, 2, 5, 'destri', '12345678', '$2y$10$s6kPxN0FlyXCiWGFFp49meW22BdoWYJhKjNrbso6ND1dGsvyVa9Z.', '', ''),
(21, 3, 'Ines Galuh Aprilian, S.Pd', 2, 1, '-', '-', '6285730004494', 5, 2, 5, 'ines', '12345678', '$2y$10$VmfOytJf9MOER5RUshRnZe8lvtEH02Ull8oBSz/.RUmsOElw5ox9u', '', ''),
(22, 3, 'Lin Ningsih Agustina, S.Pd', 2, 1, '-', '-', '6281227839551', 5, 2, 5, 'lin', '12345678', '$2y$10$igQ.fhEWXEw/ycL/0qIrauVKX5k9V8Jt5pZ5763yYhQmtJIbremH.', '', ''),
(23, 3, 'Hanif Arifani Akbar, S.Farm, A.Pt', 1, 1, '-', '-', '6281311474560', 5, 2, 5, 'hanif', '12345678', '$2y$10$P7aBaZsdowXx7Q5kFxvJE.DwQrK34ZgbLE71wnyZtfyV7b049D9wq', '', ''),
(24, 3, 'Siti Aminur Rohmawati, S.Pd', 2, 1, '-', '-', '6281935009433', 5, 2, 5, 'ami', '12345678', '$2y$10$Do3.r1t94HPtaxoL22exhesZJwpLsS0H8WWxwXYbQBhUNAS/2uMK.', '', ''),
(25, 3, 'Eko Puji Santoso, S.Pd', 1, 1, '-', '-', '6285524777100', 5, 2, 5, 'eko', '12345678', '$2y$10$OXQtGcs2R4Bogta.3kCes.NlbpXpYZoywig2KcA2FfxC8jlmSK0W6', '', ''),
(26, 3, 'Kamalita, S.Farm, A.Pt', 2, 1, '-', '-', '6282335212425', 5, 2, 5, 'kamalita', '12345678', '$2y$10$9WyyvPnA3uoM2dwdkjzUkONLXakH0pLb./vr/8IGJlvfnTtF0oVzq', '', ''),
(27, 3, 'Ummu Hanik, S.Ak', 2, 1, '-', '-', '6282139143794', 5, 2, 5, 'hanik', '12345678', '$2y$10$dgKqvYyyYyI3q9EZs0yuTevSa63SQhPGrQ.p7DSeDcwzOacLZ8sve', '', ''),
(28, 3, 'Drs. Roziqin, MA', 1, 1, '-', '-', '6281259936260', 5, 2, 5, 'roziqin', '12345678', '$2y$10$Oon02GHiwQS1hYgi0XVXBeJldl6feHYY4LhKO2F.6v9P.oRYDNlea', '', ''),
(29, 3, 'Aminu Bil Huda', 1, 1, '-', '-', '6285707357080', 5, 2, 5, 'aminu', '12345678', '$2y$10$a7pj6JU58Ym7uus.hJmE/.qd0NavUOJ.cnKmdGuMkMn4FKr9Cy2B2', '', ''),
(30, 3, 'Nur Akbar Ash Shomad', 1, 1, '-', '-', '6281230273330', 5, 2, 5, 'akbar', '12345678', '$2y$10$v2kc00M9u3TghatOkfWJee6SEY9gj1qjKyutBJ8SipI4zfrERSzGm', '', ''),
(31, 3, 'Yulistiadi Firman, S.Kom', 1, 1, '-', '-', '62881036281342', 5, 2, 5, 'adi', '12345678', '$2y$10$GdmF.4ZeKNZfSBDNgI/dI.ygEjiZrTwAr3AhzgVItmvK.ldvURQPa', '', ''),
(32, 3, 'M. Sahal Mahfudz, SH', 1, 1, '-', '-', '628998327123', 5, 2, 5, 'sahal', '12345678', '$2y$10$ctpQh4wU8VBMYBf8pG.E8ujjj9Jo.786FY87Q594IVOLhJtSeUXMu', '', ''),
(33, 2, 'Danang Dwi Putra Teguh Wioso', 1, 1, '-', '-', '6289638151162', 5, 5, 5, 'danang', '12345678', '$2y$10$RCzeCNtjlJ/.YtC1WZOW1OapfuYNXJg7GyBLn/VloIOrDrc2WCU2q', '', ''),
(35, 3, 'Bagus Prastyo', 1, 1, '-', '-', '6285815535727', 5, 5, 5, 'bagus', '12345678', '$2y$10$G7DwtmWC7lXCqq6Ura9ev.0L3hfFXaHZRFBjhm7sxgMRW6Zp6rrva', '', ''),
(36, 3, 'Widyasmoro PI, S.Sn', 1, 1, '-', '-', '6281235811388', 5, 2, 5, 'widyasmoro', '12345678', '$2y$10$hVZlYAOhK/oL03haZWTfgO01z57nyr7R74ztMDG6fXa2hv6NHnuZy', '', ''),
(37, 3, 'Dwi Udiningsih, S.Pd', 2, 3, '-', '-', '6281289524645', 5, 2, 5, 'dwi', '12345678', '$2y$10$itb23ZDt8PqFReYxo5AH/.I6CdrUP7W.rRt0yG3heOoQM.FzyxPu2', '', ''),
(38, 2, 'Dorina Dinanda Amelia Dwie Augustien', 2, 1, '-', '-', '682264468522', 5, 5, 5, 'dorina', '12345678', '$2y$10$eZNq0/fsXUPR454sUsy14utfNNIGVhdJh..eRsk4EzTj0maXqlLbG', '', '');

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
-- Indeks untuk tabel `deskripsi_rapor`
--
ALTER TABLE `deskripsi_rapor`
  ADD PRIMARY KEY (`id_deskripsi`);

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
  ADD KEY `terima_kelas` (`terima_tingkat`);

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
  MODIFY `id_catatan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `deskripsi_rapor`
--
ALTER TABLE `deskripsi_rapor`
  MODIFY `id_deskripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_eskul` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id_kelas_wali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id_lager_nilai_mapel` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  MODIFY `id_mapel_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT untuk tabel `mapel_proyek`
--
ALTER TABLE `mapel_proyek`
  MODIFY `id_mapel_proyek` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id_mapel_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2995;

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
  MODIFY `id_nilai_formatif` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_kelas`
--
ALTER TABLE `nilai_kelas`
  MODIFY `id_nilai_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id_nilai_mata_pelajaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT untuk tabel `nilai_proyek`
--
ALTER TABLE `nilai_proyek`
  MODIFY `id_nilai_proyek` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_as`
--
ALTER TABLE `nilai_sumatif_as`
  MODIFY `id_nilai_sumatif_as` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_ph`
--
ALTER TABLE `nilai_sumatif_ph`
  MODIFY `id_nilai_sumatif_ph` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_sumatif_ts`
--
ALTER TABLE `nilai_sumatif_ts`
  MODIFY `id_nilai_sumatif_ts` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_pembina_eskul` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengingat`
--
ALTER TABLE `pengingat`
  MODIFY `id_pengingat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_proyek_kelas` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `proyek_subelemen`
--
ALTER TABLE `proyek_subelemen`
  MODIFY `id_proyek_subelemen` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT untuk tabel `siswa_eskul`
--
ALTER TABLE `siswa_eskul`
  MODIFY `id_siswa_eskul` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  MODIFY `id_siswa_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

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
  MODIFY `id_tahun_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id_tingkat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  MODIFY `id_tugas_tambahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tujuan_pembelajaran`
--
ALTER TABLE `tujuan_pembelajaran`
  MODIFY `id_tujuan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `catatan_wali`
--
ALTER TABLE `catatan_wali`
  ADD CONSTRAINT `catatan_wali_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catatan_wali_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catatan_wali_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD CONSTRAINT `mapel_kelas_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_kelas_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_kelas_ibfk_3` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_kelas_ibfk_4` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD CONSTRAINT `mapel_siswa_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_4` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_5` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_6` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkat` (`id_tingkat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_7` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);

--
-- Ketidakleluasaan untuk tabel `nilai_formatif`
--
ALTER TABLE `nilai_formatif`
  ADD CONSTRAINT `nilai_formatif_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_formatif_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_formatif_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_formatif_ibfk_4` FOREIGN KEY (`id_tujuan`) REFERENCES `tujuan_pembelajaran` (`id_tujuan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_formatif_ibfk_5` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_formatif_ibfk_6` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_kelas`
--
ALTER TABLE `nilai_kelas`
  ADD CONSTRAINT `nilai_kelas_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_kelas_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_kelas_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_kelas_ibfk_4` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_mapel`
--
ALTER TABLE `nilai_mapel`
  ADD CONSTRAINT `nilai_mapel_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_ibfk_4` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_ibfk_5` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_mapel_mid`
--
ALTER TABLE `nilai_mapel_mid`
  ADD CONSTRAINT `nilai_mapel_mid_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_mid_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_mid_ibfk_3` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_mid_ibfk_4` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mapel_mid_ibfk_5` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_mata_pelajaran`
--
ALTER TABLE `nilai_mata_pelajaran`
  ADD CONSTRAINT `nilai_mata_pelajaran_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mata_pelajaran_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mata_pelajaran_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mata_pelajaran_ibfk_4` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_mata_pelajaran_ibfk_5` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_sumatif_as`
--
ALTER TABLE `nilai_sumatif_as`
  ADD CONSTRAINT `nilai_sumatif_as_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_as_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_as_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_as_ibfk_4` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_as_ibfk_5` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_sumatif_ph`
--
ALTER TABLE `nilai_sumatif_ph`
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_4` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_5` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ph_ibfk_6` FOREIGN KEY (`id_tujuan`) REFERENCES `tujuan_pembelajaran` (`id_tujuan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_sumatif_ts`
--
ALTER TABLE `nilai_sumatif_ts`
  ADD CONSTRAINT `nilai_sumatif_ts_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ts_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ts_ibfk_3` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ts_ibfk_4` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_sumatif_ts_ibfk_5` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa_eskul`
--
ALTER TABLE `siswa_eskul`
  ADD CONSTRAINT `siswa_eskul_ibfk_1` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_eskul_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_eskul_ibfk_3` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_eskul_ibfk_4` FOREIGN KEY (`id_eskul`) REFERENCES `eskul` (`id_eskul`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa_kelas`
--
ALTER TABLE `siswa_kelas`
  ADD CONSTRAINT `siswa_kelas_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_kelas_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_kelas_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_kelas_ibfk_4` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkat` (`id_tingkat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_kelas_ibfk_5` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa_prakerin`
--
ALTER TABLE `siswa_prakerin`
  ADD CONSTRAINT `siswa_prakerin_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_prakerin_ibfk_2` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_prakerin_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tujuan_pembelajaran`
--
ALTER TABLE `tujuan_pembelajaran`
  ADD CONSTRAINT `tujuan_pembelajaran_ibfk_1` FOREIGN KEY (`tahun`) REFERENCES `tahun_pelajaran` (`id_tahun_pelajaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tujuan_pembelajaran_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tujuan_pembelajaran_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `semester` (`id_semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tujuan_pembelajaran_ibfk_4` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkat` (`id_tingkat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tujuan_pembelajaran_ibfk_5` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
