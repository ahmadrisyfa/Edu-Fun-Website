-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2024 at 07:10 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kird8282_edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `writers_id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('Data Science','Network Security') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `tanggal`, `gambar`, `deskripsi`, `writers_id`, `category`, `created_at`, `updated_at`) VALUES
(1, ' Machine Learning: Membuat Mesin yang Cerdas dan Belajar dari Data', '2024-10-08', 'pngegg (1).png', ' Machine Learning (ML) adalah teknologi di mana mesin diprogram untuk \"belajar\" dari data dan membuat keputusan atau prediksi secara mandiri tanpa instruksi khusus dari manusia. ML menggunakan berbagai algoritma seperti regresi linear untuk memprediksi nilai numerik, algoritma K-Nearest Neighbors (KNN) untuk mengklasifikasikan data berdasarkan kedekatan atau kemiripan, serta Random Forest yang menggabungkan beberapa pohon keputusan untuk meningkatkan akurasi model. ML diterapkan secara luas di berbagai bidang, seperti dalam rekomendasi produk pada platform e-commerce, prediksi pasar saham, analisis tren kesehatan, dan bahkan dalam mendeteksi penipuan.', 1, 'Data Science', NULL, NULL),
(2, 'Deep Learning: Membangun Jaringan Saraf Tiruan untuk Analisis Data Kompleks', '2024-10-08', 'Cross-Platform App Development Frameworks in 2024 - SolGuruz.jpeg', 'Deep Learning adalah cabang dari Machine Learning yang mengandalkan jaringan saraf tiruan (neural networks) yang terdiri dari beberapa lapisan untuk memproses dan menganalisis data yang sangat kompleks, seperti gambar, suara, atau teks. Dalam model deep learning, lapisan-lapisan dalam jaringan saraf ini bekerja bersama untuk mengenali pola-pola rumit yang tidak mudah terlihat oleh algoritma tradisional. Teknologi ini memungkinkan mesin untuk mengidentifikasi wajah dalam gambar, mengklasifikasikan objek, dan bahkan mendeteksi emosi dalam suara. Deep Learning banyak diterapkan dalam aplikasi-aplikasi seperti pengenalan wajah, sistem rekomendasi yang lebih canggih, dan pengembangan kendaraan otonom.', 2, 'Data Science', NULL, NULL),
(3, 'Software Security: Melindungi Aplikasi dari Ancaman dan Kerentanan', '2024-10-24', 'pngegg (2).png', 'Keamanan perangkat lunak adalah cabang dari keamanan informasi yang berfokus pada melindungi aplikasi dari berbagai ancaman, kerentanan, dan serangan. Dengan semakin banyaknya aplikasi yang digunakan dalam berbagai bidang, penting untuk memastikan bahwa perangkat lunak tersebut aman dari exploit dan malware. Praktik terbaik dalam keamanan perangkat lunak meliputi pengujian penetrasi, analisis kerentanan, dan penerapan prinsip-prinsip desain yang aman. Ini termasuk penggunaan enkripsi untuk melindungi data sensitif, pembaruan rutin untuk memperbaiki kerentanan, dan pengembangan perangkat lunak yang mengikuti pedoman keamanan yang ketat. Keamanan perangkat lunak yang efektif tidak hanya melindungi data pengguna, tetapi juga menjaga reputasi perusahaan dan kepercayaan pelanggan.', 3, 'Network Security', NULL, NULL),
(4, 'Network Administration: Mengelola dan Mengamankan Infrastruktur Jaringan', '2024-10-26', 'pngegg.png', ' Administrasi jaringan adalah proses mengelola dan mengkonfigurasi infrastruktur jaringan agar berfungsi dengan baik dan aman. Seorang administrator jaringan bertanggung jawab untuk memastikan bahwa semua perangkat jaringan, seperti router, switch, dan firewall, beroperasi dengan efisien dan aman. Tugas mereka meliputi pemantauan kinerja jaringan, pengelolaan akses pengguna, dan penerapan kebijakan keamanan yang ketat. Administrasi jaringan juga melibatkan pemecahan masalah dan perbaikan masalah yang muncul, serta pengaturan kebijakan cadangan untuk memastikan keberlangsungan operasi. Dalam lingkungan yang semakin terhubung, kemampuan untuk mengamankan jaringan dari serangan siber, seperti DDoS dan intrusi, menjadi semakin penting.', 1, 'Network Security', NULL, NULL),
(5, 'Natural Language Processing (NLP): Mengajarkan Mesin Memahami dan Memproses Bahasa Manusia', '2024-10-12', 'Clean Wallpapers.png', 'Natural Language Processing (NLP) adalah bidang dalam kecerdasan buatan yang bertujuan mengajarkan komputer untuk memahami, menganalisis, dan menghasilkan bahasa manusia. NLP memungkinkan mesin untuk bekerja dengan teks dan ucapan, seperti menganalisis sentimen dari ulasan produk, menerjemahkan teks otomatis, dan menjalankan sistem chatbot yang dapat menjawab pertanyaan pengguna. NLP menggunakan teknik-teknik khusus seperti tokenisasi, analisis sintaksis, dan deteksi entitas untuk menguraikan makna dari bahasa manusia yang kompleks. Penerapan NLP sangat luas, mulai dari layanan pelanggan otomatis hingga analisis opini dalam media sosial.', 2, 'Data Science', NULL, NULL),
(6, 'Popular Network Technology: Menghadapi Tantangan Keamanan di Era Digital', '2024-10-06', 'wepik-gradient-professional-code-company-logo-20240531191734ClMM.png', 'Dalam dunia yang semakin terhubung, teknologi jaringan populer seperti VPN (Virtual Private Network), SD-WAN (Software-Defined Wide Area Network), dan IoT (Internet of Things) memainkan peran kunci dalam cara kita berkomunikasi dan berbagi data. VPN menyediakan lapisan keamanan tambahan dengan mengenkripsi koneksi internet, menjaga privasi pengguna saat berselancar di web. SD-WAN membantu perusahaan dalam mengelola jaringan mereka dengan lebih efisien, menawarkan fleksibilitas dan keandalan yang lebih baik. Sementara itu, IoT menghadirkan tantangan baru dalam keamanan jaringan karena semakin banyak perangkat yang terhubung ke internet, meningkatkan potensi titik lemah. Memahami teknologi ini dan menerapkan langkah-langkah keamanan yang tepat adalah penting untuk melindungi data dan menjaga integritas jaringan.', 3, 'Network Security', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_01_062142_create_writers_table', 1),
(5, '2024_10_31_173109_create_artikel_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5SmrSDWZ2yUQ4E1Pghhs6g9WLsztnaE5euknVOiO', NULL, '52.16.245.145', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUNId3JyOWZHbktpVHM1N2dXc2pjQ25CaFhHNjR0bGNXellvQU9QTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730461032),
('71bODkdxP4x2q8SwZn8VSmO1Je33aDoRfTTc0XKf', NULL, '205.169.39.206', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem5CYlJFWG9aWDZCWE1NcjhicGRlSWx3ZDZpc0xHbUhPZVVWNDRkQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9lZHVmdW4ueXVrb2RpbmcubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730460153),
('aCQ4ALxRRyS4lIYFTAwxVHjNtWYcRfFrbaJuSNFV', NULL, '36.73.105.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFE0NEpTSFJHZmVaejlQMnFrdU9uOUQ3MUpGbEo4c0ZyQXp6dmoweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkL3BvcHVsYXI/cGFnZT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730462750),
('gtvr48K57MAZeiPoj72oZi9et5DHXdzrEAyCV3c2', NULL, '103.108.229.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFRKa0htdE5aUnNGaktINWVUQzc4QVZodWg0MDBGdHVhYThmMU5YViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730460678),
('h9IAnEyrs47cy4Xg8tI4L90jUYGBICVA65X0OWQg', NULL, '52.16.245.145', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY09JeFg3WFBzTVdkZUlsdFBDTFVxWklocG1wY3IzMXBsRHl6ZTU3NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730461028),
('J5IwfQzAonDDbT21LgHLYwxgyUKzGdDztVymdpaV', NULL, '52.16.245.145', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmkzdnQzTkFKeXd6V3c4a2hmdmZzUUxiVllmNTVtR1FHV0ZNbUd4SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730461014),
('KYS5nM170FuV7EAyoOIgE2UuiYijQrfQUJxORDjE', NULL, '2a03:b0c0:2:d0::1713:9001', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2duWFZrdm40VEN4SGV5YXhBRjRlc1JyU1ZTTkNaR1ZMdWdOM1JCYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730460028),
('LW9HcID6vCLRJPnZMWjNgbSsAa9mWHpiDadOqRfQ', NULL, '52.16.245.145', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2pWbVhiQ3J2SHlsdmp2M2hZTDVUSDVWMDV3QlFidEl6WlhmcFlLaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730461029),
('MBTDyG8rldGZxfWGColASlfnp4ESCYBBZPaSKHon', NULL, '2a03:b0c0:3:d0::e89:e001', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkZETjA5dm5QUTE1NzNCQ1ljN0VpZ0h3ZmhkWVdWTzNIS2sxYnFyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cuZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730460028),
('nFAKLZ6YJO9A33XpzXD18GlFLzA1BHyMGNhx3rf2', NULL, '141.148.153.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1B2clhpZFE3YjEydURVMXByTUpuZ0FzODF3U0tlMm5adjF3dkJtUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730461227),
('o7yq3Fp7MpBZjQzfgM06una3kto4vd1SdWmi7rdw', NULL, '2a03:b0c0:3:d0::e89:e001', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGVoTHFVSWdvdkdvRWUzM1oyV213b1NGc3VsVG9JRHlSejJieHVDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730460028),
('QGkfWpz3ljDgovn5YH2toULvQW6kNFkZFUDwPRVE', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTJhdVNoOURnWFdIMXdOVUxnWXh1U2p6S3dJZ2FrcVppYmE0VmVqZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly9sb2NhbGhvc3QvRWR1RnVuJTIwV2ViJTIwQXBwbGljYXRpb24vZXhhbXBsZS1hcHAvcHVibGljL3BvcHVsYXI/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730452407),
('RdfFPCh3AllVAQ1OZnx48c2HG11tXfyDCd7jsiEg', NULL, '2a03:b0c0:3:d0::e89:e001', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkZZVXhCam9LTVZVaFVxSXNPcVlPOWhNYUFyN2IzQ3NwWHRETWxtdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730460028),
('sgw2JvJhzuYijTQVyGBlVAh2qVasq1ODgV36hcaZ', NULL, '34.72.176.129', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak52ZnRaNnZuNGNkZFhMSGdodWlZTnJBM1JZSW5ZVlBwR1JMaElrWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9lZHVmdW4ueXVrb2RpbmcubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730460122),
('tqAyNQFXLQmaSnLurQDWXAZla6ULGgh3gsCXEbve', NULL, '205.169.39.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEpzNkFVZTdEQWllcDVLSm8zS3JtS2Mwa2F3V3FwUzZnN3F3dHowOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9lZHVmdW4ueXVrb2RpbmcubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730460161),
('u2ZfLveSVkPVAqQwflhTX7VPchndxpAesNupK3Cp', NULL, '141.148.153.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWlGQU9XTGtGVVdVQlBHUXdpNldzTDJYeHhPU21QckJtdXphTlJJbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730461223),
('UDz5KWJzJ5HJHfZozJeNffFlAuuwMV8RyjJ0R5Hj', NULL, '52.16.245.145', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTNFNkpkTHY4UDRzb2sxMmZXZTZTWTZPZGtOSWFPRW9QNk9mclJtTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730461010),
('Vl5lrxuDVQsemuSfyG4jTkwRN3kGj9f0HQFkLAgk', NULL, '2a03:b0c0:2:d0::1733:8001', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREp3Y2FYeEVKam1UbTd2ampMN01VNkp0SkpHNFBITDNGR0w1S01mYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9lZHVmdW4ueXVrb2RpbmcubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730460028),
('XUos128Mo3YlrqT94yQ0ru5INCePRwe78iztXCE8', NULL, '52.16.245.145', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXlHNU5uTjBCRlRZSTRuemNHWEtaQ0x4eklPdnNmcWNUU3ZtbkNtQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVkdWZ1bi55dWtvZGluZy5teS5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730461012),
('xXE5mu36BwNuHH9Gy6jzu8UTJVwcmyqmhqhAT9AI', NULL, '2a03:b0c0:2:d0::1733:8001', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY21Pb0dxZGdQa2x5SlJCVnhWdURSM2JCYnNKUGRzdk1IclVJcmRTYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9lZHVmdW4ueXVrb2RpbmcubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730460028),
('yQU2Bm0JuK3xVcP9xwxmRlEz31Edh38xLPM4pPA4', NULL, '2a03:b0c0:2:d0::1713:9001', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTNzVXIxcG9QTEpJbkEzSXJGcTN1ckllVlNaM3EyVzY1ak5wNkxkVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730460028),
('zh3guJiBOqWoojvgCyvEr8K0wIINqYZco1KRoc9O', NULL, '103.80.236.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRENPMVB4VGZaeE9qTnZwa3A4N05NcVY2ZGZ0bnBQVk9nUjVzcmhKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vZWR1ZnVuLnl1a29kaW5nLm15LmlkL2NhdGVnb3J5L05ldHdvcmslMjBTZWN1cml0eSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730460994);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `posisi` text NOT NULL,
  `gambar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `nama`, `posisi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 'Spesialis Interactive Multimedia', '6-512.webp', NULL, NULL),
(2, 'Bia Mecca Annisa', 'Spesialis Data Science', 'iconfinder-4-avatar-2754580_120522.png', NULL, NULL),
(3, 'Abi Firmansyah', 'Spesialis Network Security', 'png-transparent-male-portrait-avatar-computer-icons-icon-design-avatar-flat-face-icon-people-head-cartoon.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_writers_id_foreign` (`writers_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_writers_id_foreign` FOREIGN KEY (`writers_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
