-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2025 at 05:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp-kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` char(36) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `causer_id` char(36) DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Cabang', 'Tambah Cabang', '8b78715f-6aa4-4b3a-b040-8a30f3885c05', 'App\\Models\\Branch', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"name\":\"Cabang Pusat\",\"telephone\":\"081234567890\",\"address\":\"Jl. Desa Bendungan - Kuningan\",\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(2, 'Cabang', 'Tambah Cabang', 'b369f376-3fb0-46b8-910c-44070423858c', 'App\\Models\\Branch', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"name\":\"Cabang Bendungan\",\"telephone\":\"081234567890\",\"address\":\"Jl. Raya Luragung - Kuningan\",\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(3, 'Pengguna', 'Tambah Pengguna', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"8fa0c74a-9090-4837-95a4-930c23fd7205\",\"avatar\":\"pEvFUuQfTn.png\",\"name\":\"Owner\",\"email\":\"owner@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$uMY75Zx5IrwMXy\\/SN89c7uBFZIG6wQOXTowDryH4lr596Dbq8M08.\",\"branch_id\":null,\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(4, 'Pengguna', 'Tambah Pengguna', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"3bd325bc-2afa-4cb1-bdde-5694d5138190\",\"avatar\":\"8nBmeQOM11.png\",\"name\":\"Admin Cabang Pusat\",\"email\":\"admin.pusat@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$HWoZmoJ5.akINVvtePxkJOsqbMJl2ZWXJfo3DawsTSOq01NI5qSWm\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(5, 'Pengguna', 'Tambah Pengguna', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"avatar\":\"9gc6eQL7Kc.png\",\"name\":\"Admin Cabang Bendungan\",\"email\":\"admin.bendungan@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$ZVEPrEx18dUOmEP\\/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(6, 'Pengguna', 'Tambah Pengguna', '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"71f68da5-3732-48ef-bcd9-ca20bab139c1\",\"avatar\":\"nkpMxTd7a9.png\",\"name\":\"Kepala Toko Cabang Pusat\",\"email\":\"kepalatoko.pusat@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$TxUPFG69bfBkabQBP.5geOnN\\/mlEpMb\\/xjJE\\/7tHJIADqSfSmiof.\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T13:45:40.000000Z\"}}', NULL, '2025-01-13 13:45:40', '2025-01-13 13:45:40'),
(7, 'Pengguna', 'Tambah Pengguna', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', 'created', NULL, NULL, '{\"attributes\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"oUrv3LGkFK.png\",\"name\":\"Kepala Toko Cabang Bendungan\",\"email\":\"kepalatoko.bendungan@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T13:45:40.000000Z\"}}', NULL, '2025-01-13 13:45:40', '2025-01-13 13:45:40'),
(8, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:46:22', '2025-01-13 13:46:22'),
(9, 'default', 'Keluar', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:50:33', '2025-01-13 13:50:33'),
(10, 'default', 'Masuk', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:53:30', '2025-01-13 13:53:30'),
(11, 'default', 'Keluar', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:53:42', '2025-01-13 13:53:42'),
(12, 'default', 'Masuk', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:53:49', '2025-01-13 13:53:49'),
(13, 'default', 'Keluar', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:53:57', '2025-01-13 13:53:57'),
(14, 'default', 'Masuk', '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', NULL, '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:54:02', '2025-01-13 13:54:02'),
(15, 'default', 'Keluar', '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', NULL, '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:39', '2025-01-13 13:55:39'),
(16, 'default', 'Masuk', '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', NULL, '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:45', '2025-01-13 13:55:45'),
(17, 'default', 'Keluar', '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', NULL, '71f68da5-3732-48ef-bcd9-ca20bab139c1', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:49', '2025-01-13 13:55:49'),
(18, 'default', 'Masuk', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:52', '2025-01-13 13:55:52'),
(19, 'default', 'Keluar', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:53', '2025-01-13 13:55:53'),
(20, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 13:55:56', '2025-01-13 13:55:56'),
(21, 'Cabang', 'Tambah Cabang', '0b94c625-291e-42f1-8ca6-a8e4914da8bc', 'App\\Models\\Branch', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"0b94c625-291e-42f1-8ca6-a8e4914da8bc\",\"name\":\"Cek\",\"telephone\":\"32323\",\"address\":\"sdsdd\",\"created_at\":\"2025-01-13T14:10:20.000000Z\",\"updated_at\":\"2025-01-13T14:10:20.000000Z\"}}', NULL, '2025-01-13 14:10:20', '2025-01-13 14:10:20'),
(22, 'Cabang', 'Ubah Cabang', '0b94c625-291e-42f1-8ca6-a8e4914da8bc', 'App\\Models\\Branch', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"0b94c625-291e-42f1-8ca6-a8e4914da8bc\",\"name\":\"Cek 1\",\"telephone\":\"083232\",\"address\":\"jl. Cek\",\"created_at\":\"2025-01-13T14:10:20.000000Z\",\"updated_at\":\"2025-01-13T14:13:41.000000Z\"},\"old\":{\"id\":\"0b94c625-291e-42f1-8ca6-a8e4914da8bc\",\"name\":\"Cek\",\"telephone\":\"32323\",\"address\":\"sdsdd\",\"created_at\":\"2025-01-13T14:10:20.000000Z\",\"updated_at\":\"2025-01-13T14:10:20.000000Z\"}}', NULL, '2025-01-13 14:13:41', '2025-01-13 14:13:41'),
(23, 'Cabang', 'Hapus Cabang', '0b94c625-291e-42f1-8ca6-a8e4914da8bc', 'App\\Models\\Branch', 'deleted', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"old\":{\"id\":\"0b94c625-291e-42f1-8ca6-a8e4914da8bc\",\"name\":\"Cek 1\",\"telephone\":\"083232\",\"address\":\"jl. Cek\",\"created_at\":\"2025-01-13T14:10:20.000000Z\",\"updated_at\":\"2025-01-13T14:13:41.000000Z\"}}', NULL, '2025-01-13 14:13:45', '2025-01-13 14:13:45'),
(24, 'Diskon', 'Tambah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-31 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T14:34:10.000000Z\"}}', NULL, '2025-01-13 14:34:10', '2025-01-13 14:34:10'),
(25, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Tidak Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:03:54.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-31 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T14:34:10.000000Z\"}}', NULL, '2025-01-13 15:03:54', '2025-01-13 15:03:54'),
(26, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:06:36.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Tidak Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:03:54.000000Z\"}}', NULL, '2025-01-13 15:06:36', '2025-01-13 15:06:36'),
(27, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:06:52.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:06:36.000000Z\"}}', NULL, '2025-01-13 15:06:52', '2025-01-13 15:06:52'),
(28, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:07:21.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:06:52.000000Z\"}}', NULL, '2025-01-13 15:07:21', '2025-01-13 15:07:21'),
(29, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:07:28.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:07:21.000000Z\"}}', NULL, '2025-01-13 15:07:28', '2025-01-13 15:07:28'),
(30, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-14 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:08:16.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:07:28.000000Z\"}}', NULL, '2025-01-13 15:08:16', '2025-01-13 15:08:16'),
(31, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:16:13.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-14 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:08:16.000000Z\"}}', NULL, '2025-01-13 15:16:13', '2025-01-13 15:16:13'),
(32, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:16:41.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:16:13.000000Z\"}}', NULL, '2025-01-13 15:16:41', '2025-01-13 15:16:41'),
(33, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Tidak Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:18:38.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-12 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:16:41.000000Z\"}}', NULL, '2025-01-13 15:18:38', '2025-01-13 15:18:38'),
(34, 'Diskon', 'Tambah Diskon', '331a086d-fd90-45e8-b05f-db40be8aa47b', 'App\\Models\\Discount', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"331a086d-fd90-45e8-b05f-db40be8aa47b\",\"name\":\"Diskon 2.2\",\"percentage\":\"12\",\"start_date\":\"2025-02-02 00:00:00\",\"end_date\":\"2025-02-03 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T15:20:10.000000Z\",\"updated_at\":\"2025-01-13T15:20:10.000000Z\"}}', NULL, '2025-01-13 15:20:10', '2025-01-13 15:20:10'),
(35, 'Diskon', 'Ubah Diskon', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'App\\Models\\Discount', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:20:17.000000Z\"},\"old\":{\"id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"name\":\"Diskon Akhir Bulan Januari\",\"percentage\":\"20\",\"start_date\":\"2025-01-13 00:00:00\",\"end_date\":\"2025-01-13 00:00:00\",\"status\":\"Tidak Aktif\",\"created_at\":\"2025-01-13T14:34:10.000000Z\",\"updated_at\":\"2025-01-13T15:18:38.000000Z\"}}', NULL, '2025-01-13 15:20:17', '2025-01-13 15:20:17'),
(36, 'Diskon', 'Tambah Diskon', '000cf756-62ec-428c-ad64-04b5220ce27f', 'App\\Models\\Discount', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"000cf756-62ec-428c-ad64-04b5220ce27f\",\"name\":\"dsds\",\"percentage\":\"2\",\"start_date\":\"2025-01-13 08:00:00\",\"end_date\":\"2025-01-13 08:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T15:20:26.000000Z\",\"updated_at\":\"2025-01-13T15:20:26.000000Z\"}}', NULL, '2025-01-13 15:20:26', '2025-01-13 15:20:26'),
(37, 'Diskon', 'Hapus Diskon', '000cf756-62ec-428c-ad64-04b5220ce27f', 'App\\Models\\Discount', 'deleted', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"old\":{\"id\":\"000cf756-62ec-428c-ad64-04b5220ce27f\",\"name\":\"dsds\",\"percentage\":\"2\",\"start_date\":\"2025-01-13 08:00:00\",\"end_date\":\"2025-01-13 08:00:00\",\"status\":\"Aktif\",\"created_at\":\"2025-01-13T15:20:26.000000Z\",\"updated_at\":\"2025-01-13T15:20:26.000000Z\"}}', NULL, '2025-01-13 15:20:29', '2025-01-13 15:20:29'),
(38, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 15:20:34', '2025-01-13 15:20:34'),
(39, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 15:20:40', '2025-01-13 15:20:40'),
(40, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 15:23:09', '2025-01-13 15:23:09'),
(41, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 15:23:17', '2025-01-13 15:23:17'),
(42, 'Produk', 'Tambah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-13T15:48:53.000000Z\"}}', NULL, '2025-01-13 15:48:53', '2025-01-13 15:48:53'),
(43, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-13T15:54:57.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-13T15:48:53.000000Z\"}}', NULL, '2025-01-13 15:54:57', '2025-01-13 15:54:57'),
(44, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"2\",\"price\":\"4500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T15:55:04.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"2\",\"price\":\"4500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T11:18:00.000000Z\"}}', NULL, '2025-01-13 15:55:04', '2025-01-13 15:55:04'),
(45, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"2\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T15:55:57.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"2\",\"price\":\"4500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T15:55:04.000000Z\"}}', NULL, '2025-01-13 15:55:57', '2025-01-13 15:55:57'),
(46, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"J3FP6sb4nDY2mLHPvD5bDHPffg9a9ImtmdnpMERE.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"3\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:26:33.000000Z\",\"updated_at\":\"2025-01-13T15:56:06.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"J3FP6sb4nDY2mLHPvD5bDHPffg9a9ImtmdnpMERE.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"3\",\"price\":\"3500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:26:33.000000Z\",\"updated_at\":\"2025-01-13T11:17:57.000000Z\"}}', NULL, '2025-01-13 15:56:06', '2025-01-13 15:56:06'),
(47, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-13T15:56:14.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-08T03:08:38.000000Z\"}}', NULL, '2025-01-13 15:56:14', '2025-01-13 15:56:14'),
(48, 'Produk', 'Ubah Produk', 'bd7fb5f3-b300-42b7-9383-4a7590654d03', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"bd7fb5f3-b300-42b7-9383-4a7590654d03\",\"image\":\"qhOlDNt0WFqO0ICpqZmrtnGodRySjX4GmQYuSDeZ.jpg\",\"name\":\"Backsrop TV\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:23:51.000000Z\",\"updated_at\":\"2025-01-13T15:56:22.000000Z\"},\"old\":{\"id\":\"bd7fb5f3-b300-42b7-9383-4a7590654d03\",\"image\":\"qhOlDNt0WFqO0ICpqZmrtnGodRySjX4GmQYuSDeZ.jpg\",\"name\":\"Backsrop TV\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:23:51.000000Z\",\"updated_at\":\"2025-01-08T03:11:48.000000Z\"}}', NULL, '2025-01-13 15:56:22', '2025-01-13 15:56:22'),
(49, 'Produk', 'Ubah Produk', 'dda0dafe-147b-4b64-a19d-14a1f3d7abeb', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"kuBLj41mYYuwUgt7Hx7OzrH5yv0MbdFAp6X44u91.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"5\",\"price\":\"3000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:22:57.000000Z\",\"updated_at\":\"2025-01-13T15:57:08.000000Z\"},\"old\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"kuBLj41mYYuwUgt7Hx7OzrH5yv0MbdFAp6X44u91.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"5\",\"price\":\"3000000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:22:57.000000Z\",\"updated_at\":\"2025-01-08T02:12:05.000000Z\"}}', NULL, '2025-01-13 15:57:08', '2025-01-13 15:57:08'),
(50, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"4\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T15:57:16.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"4\",\"price\":\"4000000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-07T06:30:23.000000Z\"}}', NULL, '2025-01-13 15:57:16', '2025-01-13 15:57:16'),
(51, 'Produk', 'Ubah Produk', '55d2017d-d49f-490e-8b1c-a173b134ff2d', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"55d2017d-d49f-490e-8b1c-a173b134ff2d\",\"image\":\"qgCaCuT42ORHT4UXbNSeGrt7UVkHvW71okV5wA76.jpg\",\"name\":\"Bupet Kristal 4 Pintu\",\"stock\":\"0\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:20:38.000000Z\",\"updated_at\":\"2025-01-13T15:57:25.000000Z\"},\"old\":{\"id\":\"55d2017d-d49f-490e-8b1c-a173b134ff2d\",\"image\":\"qgCaCuT42ORHT4UXbNSeGrt7UVkHvW71okV5wA76.jpg\",\"name\":\"Bupet Kristal 4 Pintu\",\"stock\":\"0\",\"price\":\"3500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:20:38.000000Z\",\"updated_at\":\"2025-01-13T11:17:50.000000Z\"}}', NULL, '2025-01-13 15:57:25', '2025-01-13 15:57:25'),
(52, 'Cabang', 'Ubah Cabang', 'b369f376-3fb0-46b8-910c-44070423858c', 'App\\Models\\Branch', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"name\":\"Cabang Luragung\",\"telephone\":\"081234567890\",\"address\":\"Jl. Raya Luragung - Kuningan\",\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T15:58:35.000000Z\"},\"old\":{\"id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"name\":\"Cabang Bendungan\",\"telephone\":\"081234567890\",\"address\":\"Jl. Raya Luragung - Kuningan\",\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 15:58:35', '2025-01-13 15:58:35'),
(53, 'Pengguna', 'Ubah Pengguna', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"oUrv3LGkFK.png\",\"name\":\"Kepala Toko Cabang Bendungan\",\"email\":\"kepalatoko.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T15:59:35.000000Z\"},\"old\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"oUrv3LGkFK.png\",\"name\":\"Kepala Toko Cabang Bendungan\",\"email\":\"kepalatoko.bendungan@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T13:45:40.000000Z\"}}', NULL, '2025-01-13 15:59:35', '2025-01-13 15:59:35'),
(54, 'Pengguna', 'Ubah Pengguna', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"dk0B3dloLJ.png\",\"name\":\"Kepala Toko Cabang Luragung\",\"email\":\"kepalatoko.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T16:02:20.000000Z\"},\"old\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"oUrv3LGkFK.png\",\"name\":\"Kepala Toko Cabang Bendungan\",\"email\":\"kepalatoko.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:40.000000Z\",\"updated_at\":\"2025-01-13T15:59:35.000000Z\"}}', NULL, '2025-01-13 16:02:20', '2025-01-13 16:02:20'),
(55, 'Pengguna', 'Ubah Pengguna', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"avatar\":\"Yivuf7fSfI.png\",\"name\":\"Admin Cabang Luragung\",\"email\":\"admin.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$ZVEPrEx18dUOmEP\\/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T16:02:38.000000Z\"},\"old\":{\"id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"avatar\":\"9gc6eQL7Kc.png\",\"name\":\"Admin Cabang Bendungan\",\"email\":\"admin.bendungan@gmail.com\",\"email_verified_at\":\"2025-01-13T13:45:39.000000Z\",\"password\":\"$2y$12$ZVEPrEx18dUOmEP\\/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T13:45:39.000000Z\",\"updated_at\":\"2025-01-13T13:45:39.000000Z\"}}', NULL, '2025-01-13 16:02:38', '2025-01-13 16:02:38'),
(56, 'Produk', 'Ubah Produk', 'bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7\",\"image\":\"27gGqHu1msqrNORvgeNN7uJUCOYuNcTN26BF6oJF.jpg\",\"name\":\"Sofa Turkis\",\"stock\":\"5\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:19:53.000000Z\",\"updated_at\":\"2025-01-13T16:03:13.000000Z\"},\"old\":{\"id\":\"bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7\",\"image\":\"27gGqHu1msqrNORvgeNN7uJUCOYuNcTN26BF6oJF.jpg\",\"name\":\"Sofa Turkis\",\"stock\":\"5\",\"price\":\"4500000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:19:53.000000Z\",\"updated_at\":\"2025-01-08T03:08:36.000000Z\"}}', NULL, '2025-01-13 16:03:13', '2025-01-13 16:03:13'),
(57, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T16:03:20.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-07T06:29:56.000000Z\"}}', NULL, '2025-01-13 16:03:20', '2025-01-13 16:03:20'),
(58, 'Produk', 'Ubah Produk', 'd0b9e991-e078-4c57-8cd0-bd00e2ae66e4', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"d0b9e991-e078-4c57-8cd0-bd00e2ae66e4\",\"image\":\"UcTxehfvyFxp0kILv7OwzNVksjb9KzQfPA4FFLrZ.jpg\",\"name\":\"Sofa Sudut Balok\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:18:16.000000Z\",\"updated_at\":\"2025-01-13T16:03:35.000000Z\"},\"old\":{\"id\":\"d0b9e991-e078-4c57-8cd0-bd00e2ae66e4\",\"image\":\"UcTxehfvyFxp0kILv7OwzNVksjb9KzQfPA4FFLrZ.jpg\",\"name\":\"Sofa Sudut Balok\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":null,\"created_at\":\"2025-01-07T06:18:16.000000Z\",\"updated_at\":\"2025-01-08T02:12:37.000000Z\"}}', NULL, '2025-01-13 16:03:35', '2025-01-13 16:03:35'),
(59, 'Pengguna', 'Tambah Pengguna', 'fbda82d6-eb3b-463d-a74e-100724374f01', 'App\\Models\\User', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"fbda82d6-eb3b-463d-a74e-100724374f01\",\"avatar\":\"zbQ8IPESbw.png\",\"name\":\"Asasas\",\"email\":\"asass@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$q9EBCWbcp5m2IQ6ezBmhye7FajQdIQWBq\\/hq0Rog1V0TthcOx4acy\",\"branch_id\":null,\"remember_token\":null,\"created_at\":\"2025-01-13T16:09:06.000000Z\",\"updated_at\":\"2025-01-13T16:09:06.000000Z\"}}', NULL, '2025-01-13 16:09:06', '2025-01-13 16:09:06'),
(60, 'Pengguna', 'Hapus Pengguna', 'fbda82d6-eb3b-463d-a74e-100724374f01', 'App\\Models\\User', 'deleted', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"old\":{\"id\":\"fbda82d6-eb3b-463d-a74e-100724374f01\",\"avatar\":\"zbQ8IPESbw.png\",\"name\":\"Asasas\",\"email\":\"asass@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$q9EBCWbcp5m2IQ6ezBmhye7FajQdIQWBq\\/hq0Rog1V0TthcOx4acy\",\"branch_id\":null,\"remember_token\":null,\"created_at\":\"2025-01-13T16:09:06.000000Z\",\"updated_at\":\"2025-01-13T16:09:06.000000Z\"}}', NULL, '2025-01-13 16:10:33', '2025-01-13 16:10:33'),
(61, 'Pengguna', 'Tambah Pengguna', 'a67122c1-b399-4752-a9bf-2fdfb530be61', 'App\\Models\\User', 'created', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a67122c1-b399-4752-a9bf-2fdfb530be61\",\"avatar\":\"lTm5P9DStz.png\",\"name\":\"sasasas\",\"email\":\"sasas@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$j27OWeQi2qRm4rjy4un5qetBKAnNH00aRii\\/cbepZCf0uKuK6kK\\/G\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T16:10:55.000000Z\",\"updated_at\":\"2025-01-13T16:10:55.000000Z\"}}', NULL, '2025-01-13 16:10:55', '2025-01-13 16:10:55'),
(62, 'Pengguna', 'Ubah Pengguna', 'a67122c1-b399-4752-a9bf-2fdfb530be61', 'App\\Models\\User', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a67122c1-b399-4752-a9bf-2fdfb530be61\",\"avatar\":\"lTm5P9DStz.png\",\"name\":\"sasasas\",\"email\":\"sasas@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$j27OWeQi2qRm4rjy4un5qetBKAnNH00aRii\\/cbepZCf0uKuK6kK\\/G\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T16:10:55.000000Z\",\"updated_at\":\"2025-01-13T16:11:04.000000Z\"},\"old\":{\"id\":\"a67122c1-b399-4752-a9bf-2fdfb530be61\",\"avatar\":\"lTm5P9DStz.png\",\"name\":\"sasasas\",\"email\":\"sasas@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$j27OWeQi2qRm4rjy4un5qetBKAnNH00aRii\\/cbepZCf0uKuK6kK\\/G\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T16:10:55.000000Z\",\"updated_at\":\"2025-01-13T16:10:55.000000Z\"}}', NULL, '2025-01-13 16:11:04', '2025-01-13 16:11:04'),
(63, 'Pengguna', 'Hapus Pengguna', 'a67122c1-b399-4752-a9bf-2fdfb530be61', 'App\\Models\\User', 'deleted', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"old\":{\"id\":\"a67122c1-b399-4752-a9bf-2fdfb530be61\",\"avatar\":\"lTm5P9DStz.png\",\"name\":\"sasasas\",\"email\":\"sasas@gmail.com\",\"email_verified_at\":null,\"password\":\"$2y$12$j27OWeQi2qRm4rjy4un5qetBKAnNH00aRii\\/cbepZCf0uKuK6kK\\/G\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T16:10:55.000000Z\",\"updated_at\":\"2025-01-13T16:11:04.000000Z\"}}', NULL, '2025-01-13 16:11:08', '2025-01-13 16:11:08'),
(64, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 16:13:29', '2025-01-13 16:13:29'),
(65, 'default', 'Masuk', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 16:13:35', '2025-01-13 16:13:35'),
(66, 'default', 'Keluar', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-13 16:19:48', '2025-01-13 16:19:48'),
(67, 'default', 'Masuk', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-13 16:19:57', '2025-01-13 16:19:57'),
(68, 'Keranjang', 'Tambah Keranjang', '9942acb3-15db-48e9-88bc-2facbe7264b1', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"9942acb3-15db-48e9-88bc-2facbe7264b1\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:21:07.000000Z\",\"updated_at\":\"2025-01-13T16:21:07.000000Z\"}}', NULL, '2025-01-13 16:21:07', '2025-01-13 16:21:07'),
(69, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T16:21:07.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"2\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:27:37.000000Z\",\"updated_at\":\"2025-01-13T15:55:57.000000Z\"}}', NULL, '2025-01-13 16:21:07', '2025-01-13 16:21:07'),
(70, 'Transaksi', 'Tambah Transaksi', '3ec60487-741f-487f-a85e-9f48effa97d0', 'App\\Models\\Transaction', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"3ec60487-741f-487f-a85e-9f48effa97d0\",\"cashier_id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"cart_id\":\"9942acb3-15db-48e9-88bc-2facbe7264b1\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"discount_id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"total\":\"3600000.00\",\"money\":\"3600000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-13T16:48:47.000000Z\",\"updated_at\":\"2025-01-13T16:48:47.000000Z\"}}', NULL, '2025-01-13 16:48:47', '2025-01-13 16:48:47'),
(71, 'Keranjang', 'Ubah Keranjang', '9942acb3-15db-48e9-88bc-2facbe7264b1', 'App\\Models\\Cart', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"9942acb3-15db-48e9-88bc-2facbe7264b1\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-13T16:21:07.000000Z\",\"updated_at\":\"2025-01-13T16:48:47.000000Z\"},\"old\":{\"id\":\"9942acb3-15db-48e9-88bc-2facbe7264b1\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:21:07.000000Z\",\"updated_at\":\"2025-01-13T16:21:07.000000Z\"}}', NULL, '2025-01-13 16:48:47', '2025-01-13 16:48:47'),
(72, 'Keranjang', 'Tambah Keranjang', '7b5b077f-43a3-4da7-b575-32f4701002c0', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7b5b077f-43a3-4da7-b575-32f4701002c0\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:49:09.000000Z\",\"updated_at\":\"2025-01-13T16:49:09.000000Z\"}}', NULL, '2025-01-13 16:49:09', '2025-01-13 16:49:09'),
(73, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"J3FP6sb4nDY2mLHPvD5bDHPffg9a9ImtmdnpMERE.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:26:33.000000Z\",\"updated_at\":\"2025-01-13T16:49:09.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"J3FP6sb4nDY2mLHPvD5bDHPffg9a9ImtmdnpMERE.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"3\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:26:33.000000Z\",\"updated_at\":\"2025-01-13T15:56:06.000000Z\"}}', NULL, '2025-01-13 16:49:09', '2025-01-13 16:49:09'),
(74, 'Transaksi', 'Tambah Transaksi', 'b2769ef4-8110-4b52-b71d-790abb495f13', 'App\\Models\\Transaction', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b2769ef4-8110-4b52-b71d-790abb495f13\",\"cashier_id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"cart_id\":\"7b5b077f-43a3-4da7-b575-32f4701002c0\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"discount_id\":null,\"total\":\"3500000.00\",\"money\":\"3500000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-13T16:49:17.000000Z\",\"updated_at\":\"2025-01-13T16:49:17.000000Z\"}}', NULL, '2025-01-13 16:49:17', '2025-01-13 16:49:17'),
(75, 'Keranjang', 'Ubah Keranjang', '7b5b077f-43a3-4da7-b575-32f4701002c0', 'App\\Models\\Cart', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7b5b077f-43a3-4da7-b575-32f4701002c0\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-13T16:49:09.000000Z\",\"updated_at\":\"2025-01-13T16:49:17.000000Z\"},\"old\":{\"id\":\"7b5b077f-43a3-4da7-b575-32f4701002c0\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:49:09.000000Z\",\"updated_at\":\"2025-01-13T16:49:09.000000Z\"}}', NULL, '2025-01-13 16:49:17', '2025-01-13 16:49:17'),
(76, 'Keranjang', 'Tambah Keranjang', '67fda8d3-6d9d-4661-b9ad-31f0dd7fec21', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"67fda8d3-6d9d-4661-b9ad-31f0dd7fec21\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:59:53.000000Z\",\"updated_at\":\"2025-01-13T16:59:53.000000Z\"}}', NULL, '2025-01-13 16:59:53', '2025-01-13 16:59:53'),
(77, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"3\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T16:59:53.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"4\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T15:57:16.000000Z\"}}', NULL, '2025-01-13 16:59:53', '2025-01-13 16:59:53'),
(78, 'Transaksi', 'Tambah Transaksi', '72f7b054-5cef-4e05-8086-d711b028c1b7', 'App\\Models\\Transaction', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"72f7b054-5cef-4e05-8086-d711b028c1b7\",\"cashier_id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"cart_id\":\"67fda8d3-6d9d-4661-b9ad-31f0dd7fec21\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"discount_id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"subtotal\":\"4000000.00\",\"total\":\"3200000.00\",\"money\":\"3200000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-13T17:02:27.000000Z\",\"updated_at\":\"2025-01-13T17:02:27.000000Z\"}}', NULL, '2025-01-13 17:02:27', '2025-01-13 17:02:27'),
(79, 'Keranjang', 'Ubah Keranjang', '67fda8d3-6d9d-4661-b9ad-31f0dd7fec21', 'App\\Models\\Cart', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"67fda8d3-6d9d-4661-b9ad-31f0dd7fec21\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-13T16:59:53.000000Z\",\"updated_at\":\"2025-01-13T17:02:27.000000Z\"},\"old\":{\"id\":\"67fda8d3-6d9d-4661-b9ad-31f0dd7fec21\",\"status\":\"pending\",\"created_at\":\"2025-01-13T16:59:53.000000Z\",\"updated_at\":\"2025-01-13T16:59:53.000000Z\"}}', NULL, '2025-01-13 17:02:27', '2025-01-13 17:02:27'),
(80, 'Keranjang', 'Tambah Keranjang', '0e43c243-5d8e-47b6-8bdd-ac633cc6205c', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"0e43c243-5d8e-47b6-8bdd-ac633cc6205c\",\"status\":\"pending\",\"created_at\":\"2025-01-13T17:02:56.000000Z\",\"updated_at\":\"2025-01-13T17:02:56.000000Z\"}}', NULL, '2025-01-13 17:02:56', '2025-01-13 17:02:56'),
(81, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:02:56.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"3\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T16:59:53.000000Z\"}}', NULL, '2025-01-13 17:02:56', '2025-01-13 17:02:56'),
(82, 'Transaksi', 'Tambah Transaksi', 'f4823d90-33d9-4356-accd-224b3103e81c', 'App\\Models\\Transaction', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"f4823d90-33d9-4356-accd-224b3103e81c\",\"cashier_id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"cart_id\":\"0e43c243-5d8e-47b6-8bdd-ac633cc6205c\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"discount_id\":null,\"subtotal\":\"0.00\",\"total\":\"4000000.00\",\"money\":\"4000000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-13T17:03:00.000000Z\",\"updated_at\":\"2025-01-13T17:03:00.000000Z\"}}', NULL, '2025-01-13 17:03:00', '2025-01-13 17:03:00');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(83, 'Keranjang', 'Ubah Keranjang', '0e43c243-5d8e-47b6-8bdd-ac633cc6205c', 'App\\Models\\Cart', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"0e43c243-5d8e-47b6-8bdd-ac633cc6205c\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-13T17:02:56.000000Z\",\"updated_at\":\"2025-01-13T17:03:00.000000Z\"},\"old\":{\"id\":\"0e43c243-5d8e-47b6-8bdd-ac633cc6205c\",\"status\":\"pending\",\"created_at\":\"2025-01-13T17:02:56.000000Z\",\"updated_at\":\"2025-01-13T17:02:56.000000Z\"}}', NULL, '2025-01-13 17:03:00', '2025-01-13 17:03:00'),
(84, 'Keranjang', 'Tambah Keranjang', '1802b57a-f3c5-4135-a2d3-84aad80a84bc', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"1802b57a-f3c5-4135-a2d3-84aad80a84bc\",\"status\":\"pending\",\"created_at\":\"2025-01-13T17:03:20.000000Z\",\"updated_at\":\"2025-01-13T17:03:20.000000Z\"}}', NULL, '2025-01-13 17:03:20', '2025-01-13 17:03:20'),
(85, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:03:20.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:02:56.000000Z\"}}', NULL, '2025-01-13 17:03:20', '2025-01-13 17:03:20'),
(86, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:04:15.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:03:20.000000Z\"}}', NULL, '2025-01-13 17:04:15', '2025-01-13 17:04:15'),
(87, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:04:17.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:04:15.000000Z\"}}', NULL, '2025-01-13 17:04:17', '2025-01-13 17:04:17'),
(88, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:05:05.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:04:17.000000Z\"}}', NULL, '2025-01-13 17:05:05', '2025-01-13 17:05:05'),
(89, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:05:10.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:05:05.000000Z\"}}', NULL, '2025-01-13 17:05:10', '2025-01-13 17:05:10'),
(90, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:06:00.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"1\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:21:59.000000Z\",\"updated_at\":\"2025-01-13T17:05:10.000000Z\"}}', NULL, '2025-01-13 17:06:00', '2025-01-13 17:06:00'),
(91, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:03.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T16:03:20.000000Z\"}}', NULL, '2025-01-13 17:06:03', '2025-01-13 17:06:03'),
(92, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"3\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:17.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:03.000000Z\"}}', NULL, '2025-01-13 17:06:17', '2025-01-13 17:06:17'),
(93, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"2\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:19.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"3\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:17.000000Z\"}}', NULL, '2025-01-13 17:06:19', '2025-01-13 17:06:19'),
(94, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:23.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"2\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:19.000000Z\"}}', NULL, '2025-01-13 17:06:23', '2025-01-13 17:06:23'),
(95, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:24.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:23.000000Z\"}}', NULL, '2025-01-13 17:06:24', '2025-01-13 17:06:24'),
(96, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:07:04.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:06:24.000000Z\"}}', NULL, '2025-01-13 17:07:04', '2025-01-13 17:07:04'),
(97, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:07:05.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:07:04.000000Z\"}}', NULL, '2025-01-13 17:07:05', '2025-01-13 17:07:05'),
(98, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:29.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:07:05.000000Z\"}}', NULL, '2025-01-13 17:09:29', '2025-01-13 17:09:29'),
(99, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:31.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:29.000000Z\"}}', NULL, '2025-01-13 17:09:31', '2025-01-13 17:09:31'),
(100, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:46.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:31.000000Z\"}}', NULL, '2025-01-13 17:09:46', '2025-01-13 17:09:46'),
(101, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:49.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"5\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T06:18:55.000000Z\",\"updated_at\":\"2025-01-13T17:09:46.000000Z\"}}', NULL, '2025-01-13 17:09:49', '2025-01-13 17:09:49'),
(102, 'Transaksi', 'Tambah Transaksi', '3d4cc2b5-c77e-42ca-a61c-fa433c81f9dd', 'App\\Models\\Transaction', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"3d4cc2b5-c77e-42ca-a61c-fa433c81f9dd\",\"cashier_id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"cart_id\":\"1802b57a-f3c5-4135-a2d3-84aad80a84bc\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"discount_id\":null,\"subtotal\":\"3800000.00\",\"total\":\"3800000.00\",\"money\":\"3800000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-13T17:09:57.000000Z\",\"updated_at\":\"2025-01-13T17:09:57.000000Z\"}}', NULL, '2025-01-13 17:09:57', '2025-01-13 17:09:57'),
(103, 'Keranjang', 'Ubah Keranjang', '1802b57a-f3c5-4135-a2d3-84aad80a84bc', 'App\\Models\\Cart', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"1802b57a-f3c5-4135-a2d3-84aad80a84bc\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-13T17:03:20.000000Z\",\"updated_at\":\"2025-01-13T17:09:57.000000Z\"},\"old\":{\"id\":\"1802b57a-f3c5-4135-a2d3-84aad80a84bc\",\"status\":\"pending\",\"created_at\":\"2025-01-13T17:03:20.000000Z\",\"updated_at\":\"2025-01-13T17:03:20.000000Z\"}}', NULL, '2025-01-13 17:09:57', '2025-01-13 17:09:57'),
(104, 'default', 'Keluar', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-13 17:26:49', '2025-01-13 17:26:49'),
(105, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 17:26:51', '2025-01-13 17:26:51'),
(106, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-13 17:56:20', '2025-01-13 17:56:20'),
(107, 'default', 'Masuk', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-13 17:56:26', '2025-01-13 17:56:26'),
(108, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-14 04:47:17', '2025-01-14 04:47:17'),
(109, 'Keranjang', 'Tambah Keranjang', '7aa7044f-c411-4d86-a2a3-e3fb1bffc960', 'App\\Models\\Cart', 'created', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7aa7044f-c411-4d86-a2a3-e3fb1bffc960\",\"status\":\"pending\",\"created_at\":\"2025-01-14T06:01:59.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"}}', NULL, '2025-01-14 06:01:59', '2025-01-14 06:01:59'),
(110, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-13T15:54:57.000000Z\"}}', NULL, '2025-01-14 06:01:59', '2025-01-14 06:01:59'),
(111, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"}}', NULL, '2025-01-14 06:01:59', '2025-01-14 06:01:59'),
(112, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"9\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"}}', NULL, '2025-01-14 06:01:59', '2025-01-14 06:01:59'),
(113, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"8\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"9\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:01:59.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(114, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"7\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"8\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(115, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"6\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"7\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(116, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"5\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"6\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(117, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"4\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"5\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(118, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"3\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"4\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:00', '2025-01-14 06:02:00'),
(119, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:14.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"3\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:00.000000Z\"}}', NULL, '2025-01-14 06:02:14', '2025-01-14 06:02:14'),
(120, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:03:44.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:02:14.000000Z\"}}', NULL, '2025-01-14 06:03:44', '2025-01-14 06:03:44'),
(121, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:06:20.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:03:44.000000Z\"}}', NULL, '2025-01-14 06:06:20', '2025-01-14 06:06:20'),
(122, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:06:37.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:06:20.000000Z\"}}', NULL, '2025-01-14 06:06:37', '2025-01-14 06:06:37'),
(123, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:09:20.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:06:37.000000Z\"}}', NULL, '2025-01-14 06:09:20', '2025-01-14 06:09:20'),
(124, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:10:26.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"11\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:09:20.000000Z\"}}', NULL, '2025-01-14 06:10:26', '2025-01-14 06:10:26'),
(125, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-14 08:22:09', '2025-01-14 08:22:09'),
(126, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-14 08:22:30', '2025-01-14 08:22:30'),
(127, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T08:25:50.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-13T15:56:14.000000Z\"}}', NULL, '2025-01-14 08:25:50', '2025-01-14 08:25:50'),
(128, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T08:25:55.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T08:25:50.000000Z\"}}', NULL, '2025-01-14 08:25:55', '2025-01-14 08:25:55'),
(129, 'default', 'Keluar', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-14 08:26:04', '2025-01-14 08:26:04'),
(130, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-14 08:26:07', '2025-01-14 08:26:07'),
(131, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-14 10:14:10', '2025-01-14 10:14:10'),
(132, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-14 10:14:23', '2025-01-14 10:14:23'),
(133, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:15:34.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T08:25:55.000000Z\"}}', NULL, '2025-01-14 10:15:34', '2025-01-14 10:15:34'),
(134, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"2\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:15:49.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:15:34.000000Z\"}}', NULL, '2025-01-14 10:15:49', '2025-01-14 10:15:49'),
(135, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:16:02.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"2\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:15:49.000000Z\"}}', NULL, '2025-01-14 10:16:02', '2025-01-14 10:16:02'),
(136, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T10:16:05.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"10\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T15:48:53.000000Z\",\"updated_at\":\"2025-01-14T06:10:26.000000Z\"}}', NULL, '2025-01-14 10:16:05', '2025-01-14 10:16:05'),
(137, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:16:19.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:16:02.000000Z\"}}', NULL, '2025-01-14 10:16:19', '2025-01-14 10:16:19'),
(138, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:16:23.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T06:25:37.000000Z\",\"updated_at\":\"2025-01-14T10:16:19.000000Z\"}}', NULL, '2025-01-14 10:16:23', '2025-01-14 10:16:23'),
(139, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-17 01:54:59', '2025-01-17 01:54:59'),
(140, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-28 05:01:31', '2025-01-28 05:01:31'),
(141, 'Produk', 'Ubah Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"AtwFpm9LUE16gFWJG6OkMTO4o1f1shgVN1MLHf3z.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T22:48:53.000000Z\",\"updated_at\":\"2025-01-28T12:01:54.000000Z\"},\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"r26v1V9JoRArbdT1mUtRZxH7fEKoLiX84qcAw62o.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T22:48:53.000000Z\",\"updated_at\":\"2025-01-14T17:16:05.000000Z\"}}', NULL, '2025-01-28 05:01:54', '2025-01-28 05:01:54'),
(142, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:04:04.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"5pLacXZ5KImlQarBD6kZCL9PgPoyTU11aS5rqx9A.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-13T23:21:07.000000Z\"}}', NULL, '2025-01-28 05:04:04', '2025-01-28 05:04:04'),
(143, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:06:00.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"J3FP6sb4nDY2mLHPvD5bDHPffg9a9ImtmdnpMERE.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-13T23:49:09.000000Z\"}}', NULL, '2025-01-28 05:06:00', '2025-01-28 05:06:00'),
(144, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-28T12:06:28.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"thUgh05jk1053QUOu9MBUxXyG26qBji5p4KU4RsY.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-14T17:16:23.000000Z\"}}', NULL, '2025-01-28 05:06:28', '2025-01-28 05:06:28'),
(145, 'Produk', 'Ubah Produk', 'bd7fb5f3-b300-42b7-9383-4a7590654d03', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"bd7fb5f3-b300-42b7-9383-4a7590654d03\",\"image\":\"alBNjvZkTSDhpo5Jsf70iC0u0LrcTzXr8jVlhYnZ.jpg\",\"name\":\"Backsrop TV\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:23:51.000000Z\",\"updated_at\":\"2025-01-28T12:07:02.000000Z\"},\"old\":{\"id\":\"bd7fb5f3-b300-42b7-9383-4a7590654d03\",\"image\":\"qhOlDNt0WFqO0ICpqZmrtnGodRySjX4GmQYuSDeZ.jpg\",\"name\":\"Backsrop TV\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:23:51.000000Z\",\"updated_at\":\"2025-01-13T22:56:22.000000Z\"}}', NULL, '2025-01-28 05:07:02', '2025-01-28 05:07:02'),
(146, 'Produk', 'Ubah Produk', 'dda0dafe-147b-4b64-a19d-14a1f3d7abeb', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"3ZHF7CyilKZo4yoyowYN7hgaIeFBrPALbQCVGdms.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"5\",\"price\":\"3000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:22:57.000000Z\",\"updated_at\":\"2025-01-28T12:07:29.000000Z\"},\"old\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"kuBLj41mYYuwUgt7Hx7OzrH5yv0MbdFAp6X44u91.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"5\",\"price\":\"3000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:22:57.000000Z\",\"updated_at\":\"2025-01-13T22:57:08.000000Z\"}}', NULL, '2025-01-28 05:07:29', '2025-01-28 05:07:29'),
(147, 'Produk', 'Ubah Produk', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"unppAmoJEyMGFAgquLXotc4JeJDjc43c1l9a3vk5.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:21:59.000000Z\",\"updated_at\":\"2025-01-28T12:07:47.000000Z\"},\"old\":{\"id\":\"b86cbe0a-11e6-4505-89a5-da5e3ccdf399\",\"image\":\"gseqoDG3A9IpjXKhhxzHjMDCbAQkCVXvcZvyzWpa.jpg\",\"name\":\"Lemari HPL 2 Pintu Standar\",\"stock\":\"2\",\"price\":\"4000000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:21:59.000000Z\",\"updated_at\":\"2025-01-14T00:06:00.000000Z\"}}', NULL, '2025-01-28 05:07:47', '2025-01-28 05:07:47'),
(148, 'Produk', 'Ubah Produk', '55d2017d-d49f-490e-8b1c-a173b134ff2d', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"55d2017d-d49f-490e-8b1c-a173b134ff2d\",\"image\":\"1hcGHZf6Cnymqwxw6XrYlt7oxf7xMw0BqzoX3Xpv.jpg\",\"name\":\"Bupet Kristal 4 Pintu\",\"stock\":\"0\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:20:38.000000Z\",\"updated_at\":\"2025-01-28T12:08:29.000000Z\"},\"old\":{\"id\":\"55d2017d-d49f-490e-8b1c-a173b134ff2d\",\"image\":\"qgCaCuT42ORHT4UXbNSeGrt7UVkHvW71okV5wA76.jpg\",\"name\":\"Bupet Kristal 4 Pintu\",\"stock\":\"0\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:20:38.000000Z\",\"updated_at\":\"2025-01-13T22:57:25.000000Z\"}}', NULL, '2025-01-28 05:08:29', '2025-01-28 05:08:29'),
(149, 'Produk', 'Ubah Produk', 'bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7\",\"image\":\"l0dwlvC7heNiTo7N8SplCIiq8a2NvQVNsar7JGv8.jpg\",\"name\":\"Sofa Turkis\",\"stock\":\"5\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:19:53.000000Z\",\"updated_at\":\"2025-01-28T12:08:49.000000Z\"},\"old\":{\"id\":\"bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7\",\"image\":\"27gGqHu1msqrNORvgeNN7uJUCOYuNcTN26BF6oJF.jpg\",\"name\":\"Sofa Turkis\",\"stock\":\"5\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:19:53.000000Z\",\"updated_at\":\"2025-01-13T23:03:13.000000Z\"}}', NULL, '2025-01-28 05:08:49', '2025-01-28 05:08:49');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(150, 'Produk', 'Hapus Produk', 'a71c38ed-9383-472d-9595-50e16ab9e3e3', 'App\\Models\\Product', 'deleted', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"old\":{\"id\":\"a71c38ed-9383-472d-9595-50e16ab9e3e3\",\"image\":\"AtwFpm9LUE16gFWJG6OkMTO4o1f1shgVN1MLHf3z.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"12\",\"price\":\"300000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-13T22:48:53.000000Z\",\"updated_at\":\"2025-01-28T12:01:54.000000Z\"}}', NULL, '2025-01-28 05:09:07', '2025-01-28 05:09:07'),
(151, 'Produk', 'Ubah Produk', '7c92a9ad-af8a-4283-8031-e7e25c580075', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"uxltLQLppqIFk8eREXZAR0w688Hq63CDWDjvMBEo.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:18:55.000000Z\",\"updated_at\":\"2025-01-28T12:09:23.000000Z\"},\"old\":{\"id\":\"7c92a9ad-af8a-4283-8031-e7e25c580075\",\"image\":\"slhgEhwi4bogKQYBC6ftZEiYd2ULX0f0t3hxzfd4.jpg\",\"name\":\"Sofa Sudut GGS\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:18:55.000000Z\",\"updated_at\":\"2025-01-14T00:09:49.000000Z\"}}', NULL, '2025-01-28 05:09:23', '2025-01-28 05:09:23'),
(152, 'Produk', 'Ubah Produk', 'd0b9e991-e078-4c57-8cd0-bd00e2ae66e4', 'App\\Models\\Product', 'updated', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '{\"attributes\":{\"id\":\"d0b9e991-e078-4c57-8cd0-bd00e2ae66e4\",\"image\":\"7RjVeNr5smLlCgDZIHHIpEv6la6Hgv9piBSb7uUX.jpg\",\"name\":\"Sofa Sudut Balok\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:18:16.000000Z\",\"updated_at\":\"2025-01-28T12:09:49.000000Z\"},\"old\":{\"id\":\"d0b9e991-e078-4c57-8cd0-bd00e2ae66e4\",\"image\":\"UcTxehfvyFxp0kILv7OwzNVksjb9KzQfPA4FFLrZ.jpg\",\"name\":\"Sofa Sudut Balok\",\"stock\":\"4\",\"price\":\"3800000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:18:16.000000Z\",\"updated_at\":\"2025-01-13T23:03:35.000000Z\"}}', NULL, '2025-01-28 05:09:49', '2025-01-28 05:09:49'),
(153, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-28 05:09:57', '2025-01-28 05:09:57'),
(154, 'default', 'Masuk', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-28 05:09:59', '2025-01-28 05:09:59'),
(155, 'default', 'Keluar', '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', NULL, '8fa0c74a-9090-4837-95a4-930c23fd7205', 'App\\Models\\User', '[]', NULL, '2025-01-28 05:11:43', '2025-01-28 05:11:43'),
(156, 'default', 'Masuk', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-01-28 05:11:54', '2025-01-28 05:11:54'),
(157, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:11:59.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:06:00.000000Z\"}}', NULL, '2025-01-28 05:11:59', '2025-01-28 05:11:59'),
(158, 'Pengguna', 'Ubah Pengguna', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"avatar\":\"2RjH6gCIFa.png\",\"name\":\"Admin Cabang Luragung\",\"email\":\"admin.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:39.000000Z\",\"password\":\"$2y$12$ZVEPrEx18dUOmEP\\/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:39.000000Z\",\"updated_at\":\"2025-01-28T12:16:36.000000Z\"},\"old\":{\"id\":\"493f4fe1-83ff-4cc5-9b5b-f34611427de6\",\"avatar\":\"Yivuf7fSfI.png\",\"name\":\"Admin Cabang Luragung\",\"email\":\"admin.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:39.000000Z\",\"password\":\"$2y$12$ZVEPrEx18dUOmEP\\/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:39.000000Z\",\"updated_at\":\"2025-01-13T23:02:38.000000Z\"}}', NULL, '2025-01-28 05:16:36', '2025-01-28 05:16:36'),
(159, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:33:41.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:11:59.000000Z\"}}', NULL, '2025-01-28 05:33:41', '2025-01-28 05:33:41'),
(160, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:33:44.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:33:41.000000Z\"}}', NULL, '2025-01-28 05:33:44', '2025-01-28 05:33:44'),
(161, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:35:34.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:33:44.000000Z\"}}', NULL, '2025-01-28 05:35:34', '2025-01-28 05:35:34'),
(162, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:36:39.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:04:04.000000Z\"}}', NULL, '2025-01-28 05:36:39', '2025-01-28 05:36:39'),
(163, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:53:05.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:36:39.000000Z\"}}', NULL, '2025-01-28 05:53:05', '2025-01-28 05:53:05'),
(164, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:07.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:35:34.000000Z\"}}', NULL, '2025-01-28 05:53:07', '2025-01-28 05:53:07'),
(165, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:17.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:07.000000Z\"}}', NULL, '2025-01-28 05:53:17', '2025-01-28 05:53:17'),
(166, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:19.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:17.000000Z\"}}', NULL, '2025-01-28 05:53:19', '2025-01-28 05:53:19'),
(167, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:59:15.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:53:19.000000Z\"}}', NULL, '2025-01-28 05:59:15', '2025-01-28 05:59:15'),
(168, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:59:19.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:53:05.000000Z\"}}', NULL, '2025-01-28 05:59:19', '2025-01-28 05:59:19'),
(169, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:59:58.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:59:19.000000Z\"}}', NULL, '2025-01-28 05:59:58', '2025-01-28 05:59:58'),
(170, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:00:34.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T12:59:58.000000Z\"}}', NULL, '2025-01-28 06:00:34', '2025-01-28 06:00:34'),
(171, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:00:37.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:00:34.000000Z\"}}', NULL, '2025-01-28 06:00:37', '2025-01-28 06:00:37'),
(172, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:01:08.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:00:37.000000Z\"}}', NULL, '2025-01-28 06:01:08', '2025-01-28 06:01:08'),
(173, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:03:39.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T12:59:15.000000Z\"}}', NULL, '2025-01-28 06:03:39', '2025-01-28 06:03:39'),
(174, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:11:42.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:03:39.000000Z\"}}', NULL, '2025-01-28 06:11:42', '2025-01-28 06:11:42'),
(175, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:11:45.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:01:08.000000Z\"}}', NULL, '2025-01-28 06:11:45', '2025-01-28 06:11:45'),
(176, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:11:49.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:11:42.000000Z\"}}', NULL, '2025-01-28 06:11:49', '2025-01-28 06:11:49'),
(177, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:12:01.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:11:49.000000Z\"}}', NULL, '2025-01-28 06:12:01', '2025-01-28 06:12:01'),
(178, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-29 19:13:40', '2025-01-29 19:13:40'),
(179, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-30T02:14:00.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-28T12:06:28.000000Z\"}}', NULL, '2025-01-29 19:14:00', '2025-01-29 19:14:00'),
(180, 'Pengguna', 'Ubah Pengguna', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"3bd325bc-2afa-4cb1-bdde-5694d5138190\",\"avatar\":\"thQbSCeBdI.png\",\"name\":\"Admin Cabang Pusat\",\"email\":\"admin.pusat@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:39.000000Z\",\"password\":\"$2y$12$HWoZmoJ5.akINVvtePxkJOsqbMJl2ZWXJfo3DawsTSOq01NI5qSWm\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:39.000000Z\",\"updated_at\":\"2025-01-30T02:14:08.000000Z\"},\"old\":{\"id\":\"3bd325bc-2afa-4cb1-bdde-5694d5138190\",\"avatar\":\"8nBmeQOM11.png\",\"name\":\"Admin Cabang Pusat\",\"email\":\"admin.pusat@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:39.000000Z\",\"password\":\"$2y$12$HWoZmoJ5.akINVvtePxkJOsqbMJl2ZWXJfo3DawsTSOq01NI5qSWm\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:39.000000Z\",\"updated_at\":\"2025-01-13T20:45:39.000000Z\"}}', NULL, '2025-01-29 19:14:08', '2025-01-29 19:14:08'),
(181, 'Transaksi', 'Tambah Transaksi', '7c65713b-4154-45f1-9297-5bb3e054c7ad', 'App\\Models\\Transaction', 'created', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7c65713b-4154-45f1-9297-5bb3e054c7ad\",\"cashier_id\":\"3bd325bc-2afa-4cb1-bdde-5694d5138190\",\"cart_id\":\"7aa7044f-c411-4d86-a2a3-e3fb1bffc960\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"discount_id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"subtotal\":\"2000000.00\",\"total\":\"1600000.00\",\"money\":\"1600000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-30T02:16:03.000000Z\",\"updated_at\":\"2025-01-30T02:16:03.000000Z\"}}', NULL, '2025-01-29 19:16:03', '2025-01-29 19:16:03'),
(182, 'Keranjang', 'Ubah Keranjang', '7aa7044f-c411-4d86-a2a3-e3fb1bffc960', 'App\\Models\\Cart', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"7aa7044f-c411-4d86-a2a3-e3fb1bffc960\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-14T13:01:59.000000Z\",\"updated_at\":\"2025-01-30T02:16:03.000000Z\"},\"old\":{\"id\":\"7aa7044f-c411-4d86-a2a3-e3fb1bffc960\",\"status\":\"pending\",\"created_at\":\"2025-01-14T13:01:59.000000Z\",\"updated_at\":\"2025-01-14T13:01:59.000000Z\"}}', NULL, '2025-01-29 19:16:03', '2025-01-29 19:16:03'),
(183, 'Keranjang', 'Tambah Keranjang', '986536d2-0c91-4a46-a5cf-df21d1dffb20', 'App\\Models\\Cart', 'created', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"986536d2-0c91-4a46-a5cf-df21d1dffb20\",\"status\":\"pending\",\"created_at\":\"2025-01-30T02:17:20.000000Z\",\"updated_at\":\"2025-01-30T02:17:20.000000Z\"}}', NULL, '2025-01-29 19:17:20', '2025-01-29 19:17:20'),
(184, 'Produk', 'Ubah Produk', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg\",\"name\":\"Meja Rias\",\"stock\":\"3\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-30T02:17:20.000000Z\"},\"old\":{\"id\":\"8007ef33-e03e-43fd-99c5-7a7b4dc634af\",\"image\":\"NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg\",\"name\":\"Meja Rias\",\"stock\":\"4\",\"price\":\"2000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:25:37.000000Z\",\"updated_at\":\"2025-01-30T02:14:00.000000Z\"}}', NULL, '2025-01-29 19:17:20', '2025-01-29 19:17:20'),
(185, 'Transaksi', 'Tambah Transaksi', 'bc0e50c0-84f5-463c-82ea-a3461d0a105f', 'App\\Models\\Transaction', 'created', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"bc0e50c0-84f5-463c-82ea-a3461d0a105f\",\"cashier_id\":\"3bd325bc-2afa-4cb1-bdde-5694d5138190\",\"cart_id\":\"986536d2-0c91-4a46-a5cf-df21d1dffb20\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"discount_id\":\"e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5\",\"subtotal\":\"2000000.00\",\"total\":\"1600000.00\",\"money\":\"1600000.00\",\"change_money\":\"0.00\",\"created_at\":\"2025-01-30T02:17:37.000000Z\",\"updated_at\":\"2025-01-30T02:17:37.000000Z\"}}', NULL, '2025-01-29 19:17:37', '2025-01-29 19:17:37'),
(186, 'Keranjang', 'Ubah Keranjang', '986536d2-0c91-4a46-a5cf-df21d1dffb20', 'App\\Models\\Cart', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"986536d2-0c91-4a46-a5cf-df21d1dffb20\",\"status\":\"Terbayar\",\"created_at\":\"2025-01-30T02:17:20.000000Z\",\"updated_at\":\"2025-01-30T02:17:37.000000Z\"},\"old\":{\"id\":\"986536d2-0c91-4a46-a5cf-df21d1dffb20\",\"status\":\"pending\",\"created_at\":\"2025-01-30T02:17:20.000000Z\",\"updated_at\":\"2025-01-30T02:17:20.000000Z\"}}', NULL, '2025-01-29 19:17:37', '2025-01-29 19:17:37'),
(187, 'default', 'Keluar', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-29 19:20:07', '2025-01-29 19:20:07'),
(188, 'default', 'Masuk', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-29 19:20:13', '2025-01-29 19:20:13'),
(189, 'Pengguna', 'Ubah Pengguna', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', 'updated', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '{\"attributes\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"XWOtaVEtVy.png\",\"name\":\"Kepala Toko Cabang Luragung\",\"email\":\"kepalatoko.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:40.000000Z\",\"updated_at\":\"2025-01-30T02:20:26.000000Z\"},\"old\":{\"id\":\"5aa4103a-23c5-40cd-912f-8e42c659b00b\",\"avatar\":\"dk0B3dloLJ.png\",\"name\":\"Kepala Toko Cabang Luragung\",\"email\":\"kepalatoko.luragung@gmail.com\",\"email_verified_at\":\"2025-01-13T20:45:40.000000Z\",\"password\":\"$2y$12$yDD.ttMLA\\/RIRtlsIp\\/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"remember_token\":null,\"created_at\":\"2025-01-13T20:45:40.000000Z\",\"updated_at\":\"2025-01-13T23:02:20.000000Z\"}}', NULL, '2025-01-29 19:20:26', '2025-01-29 19:20:26'),
(190, 'Produk', 'Tambah Produk', 'd1b3c7de-c710-4b96-b3db-9d79840558c7', 'App\\Models\\Product', 'created', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '{\"attributes\":{\"id\":\"d1b3c7de-c710-4b96-b3db-9d79840558c7\",\"image\":\"5RyvJ7PQhE37KllNdcHLc5W10QP9FnyM7k2mVgMQ.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"9\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-30T02:22:32.000000Z\",\"updated_at\":\"2025-01-30T02:22:32.000000Z\"}}', NULL, '2025-01-29 19:22:32', '2025-01-29 19:22:32'),
(191, 'default', 'Keluar', '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', NULL, '5aa4103a-23c5-40cd-912f-8e42c659b00b', 'App\\Models\\User', '[]', NULL, '2025-01-29 19:24:48', '2025-01-29 19:24:48'),
(192, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-01-29 19:24:51', '2025-01-29 19:24:51'),
(193, 'default', 'Masuk', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-02-06 00:52:29', '2025-02-06 00:52:29'),
(194, 'Keranjang', 'Tambah Keranjang', '19652823-0bcc-48b5-885d-ddfe82cb8ce9', 'App\\Models\\Cart', 'created', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"19652823-0bcc-48b5-885d-ddfe82cb8ce9\",\"status\":\"pending\",\"created_at\":\"2025-02-06T07:52:33.000000Z\",\"updated_at\":\"2025-02-06T07:52:33.000000Z\"}}', NULL, '2025-02-06 00:52:33', '2025-02-06 00:52:33'),
(195, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-02-06T07:52:33.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-01-28T13:11:45.000000Z\"}}', NULL, '2025-02-06 00:52:33', '2025-02-06 00:52:33'),
(196, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-02-06T07:52:34.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-01-28T13:12:01.000000Z\"}}', NULL, '2025-02-06 00:52:34', '2025-02-06 00:52:34'),
(197, 'Produk', 'Ubah Produk', '995b57b2-3c50-40af-9f1c-cc1320325230', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"2\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-02-06T07:52:38.000000Z\"},\"old\":{\"id\":\"995b57b2-3c50-40af-9f1c-cc1320325230\",\"image\":\"9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg\",\"name\":\"Bupet Dapur 4 Pintu\",\"stock\":\"1\",\"price\":\"3500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:26:33.000000Z\",\"updated_at\":\"2025-02-06T07:52:34.000000Z\"}}', NULL, '2025-02-06 00:52:38', '2025-02-06 00:52:38'),
(198, 'Produk', 'Ubah Produk', '35c2628c-0e92-4eeb-8353-d773e4251c1d', 'App\\Models\\Product', 'updated', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '{\"attributes\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"1\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-02-06T07:53:00.000000Z\"},\"old\":{\"id\":\"35c2628c-0e92-4eeb-8353-d773e4251c1d\",\"image\":\"dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg\",\"name\":\"Sofa Retro\",\"stock\":\"0\",\"price\":\"4500000.00\",\"branch_id\":\"b369f376-3fb0-46b8-910c-44070423858c\",\"created_at\":\"2025-01-07T13:27:37.000000Z\",\"updated_at\":\"2025-02-06T07:52:33.000000Z\"}}', NULL, '2025-02-06 00:53:00', '2025-02-06 00:53:00'),
(199, 'default', 'Keluar', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', NULL, '493f4fe1-83ff-4cc5-9b5b-f34611427de6', 'App\\Models\\User', '[]', NULL, '2025-02-06 00:54:07', '2025-02-06 00:54:07'),
(200, 'default', 'Masuk', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', NULL, '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '[]', NULL, '2025-02-16 21:59:15', '2025-02-16 21:59:15'),
(201, 'Produk', 'Ubah Produk', 'd1b3c7de-c710-4b96-b3db-9d79840558c7', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"d1b3c7de-c710-4b96-b3db-9d79840558c7\",\"image\":\"5RyvJ7PQhE37KllNdcHLc5W10QP9FnyM7k2mVgMQ.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"8\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-30T02:22:32.000000Z\",\"updated_at\":\"2025-02-17T05:00:32.000000Z\"},\"old\":{\"id\":\"d1b3c7de-c710-4b96-b3db-9d79840558c7\",\"image\":\"5RyvJ7PQhE37KllNdcHLc5W10QP9FnyM7k2mVgMQ.jpg\",\"name\":\"Sofa Abu\",\"stock\":\"9\",\"price\":\"4500000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-30T02:22:32.000000Z\",\"updated_at\":\"2025-01-30T02:22:32.000000Z\"}}', NULL, '2025-02-16 22:00:32', '2025-02-16 22:00:32'),
(202, 'Produk', 'Ubah Produk', 'dda0dafe-147b-4b64-a19d-14a1f3d7abeb', 'App\\Models\\Product', 'updated', '3bd325bc-2afa-4cb1-bdde-5694d5138190', 'App\\Models\\User', '{\"attributes\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"3ZHF7CyilKZo4yoyowYN7hgaIeFBrPALbQCVGdms.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"4\",\"price\":\"3000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:22:57.000000Z\",\"updated_at\":\"2025-02-17T05:00:36.000000Z\"},\"old\":{\"id\":\"dda0dafe-147b-4b64-a19d-14a1f3d7abeb\",\"image\":\"3ZHF7CyilKZo4yoyowYN7hgaIeFBrPALbQCVGdms.jpg\",\"name\":\"Dipan Standar 1 Set\",\"stock\":\"5\",\"price\":\"3000000.00\",\"branch_id\":\"8b78715f-6aa4-4b3a-b040-8a30f3885c05\",\"created_at\":\"2025-01-07T13:22:57.000000Z\",\"updated_at\":\"2025-01-28T12:07:29.000000Z\"}}', NULL, '2025-02-16 22:00:36', '2025-02-16 22:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `telephone`, `address`, `created_at`, `updated_at`) VALUES
('8b78715f-6aa4-4b3a-b040-8a30f3885c05', 'Cabang Pusat', '081234567890', 'Jl. Desa Bendungan - Kuningan', '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
('b369f376-3fb0-46b8-910c-44070423858c', 'Cabang Luragung', '081234567890', 'Jl. Raya Luragung - Kuningan', '2025-01-13 13:45:39', '2025-01-13 15:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:1;', 1738828401),
('admin@gmail.com|127.0.0.1:timer', 'i:1738828401;', 1738828401),
('adminluragung@gmail.com|127.0.0.1', 'i:1;', 1739768335),
('adminluragung@gmail.com|127.0.0.1:timer', 'i:1739768335;', 1739768335),
('aliabdurohman16@gmail.com|127.0.0.1', 'i:1;', 1739768313),
('aliabdurohman16@gmail.com|127.0.0.1:timer', 'i:1739768313;', 1739768313);

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `status`, `created_at`, `updated_at`) VALUES
('0e43c243-5d8e-47b6-8bdd-ac633cc6205c', 'Terbayar', '2025-01-13 17:02:56', '2025-01-13 17:03:00'),
('1802b57a-f3c5-4135-a2d3-84aad80a84bc', 'Terbayar', '2025-01-13 17:03:20', '2025-01-13 17:09:57'),
('19652823-0bcc-48b5-885d-ddfe82cb8ce9', 'pending', '2025-02-06 00:52:33', '2025-02-06 00:52:33'),
('67fda8d3-6d9d-4661-b9ad-31f0dd7fec21', 'Terbayar', '2025-01-13 16:59:53', '2025-01-13 17:02:27'),
('7aa7044f-c411-4d86-a2a3-e3fb1bffc960', 'Terbayar', '2025-01-14 06:01:59', '2025-01-29 19:16:03'),
('7b5b077f-43a3-4da7-b575-32f4701002c0', 'Terbayar', '2025-01-13 16:49:09', '2025-01-13 16:49:17'),
('986536d2-0c91-4a46-a5cf-df21d1dffb20', 'Terbayar', '2025-01-29 19:17:20', '2025-01-29 19:17:37'),
('9942acb3-15db-48e9-88bc-2facbe7264b1', 'Terbayar', '2025-01-13 16:21:07', '2025-01-13 16:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` char(36) NOT NULL,
  `cart_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id`, `cart_id`, `product_id`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
('1849714b-663a-4463-8052-5d0549173337', '19652823-0bcc-48b5-885d-ddfe82cb8ce9', 'dda0dafe-147b-4b64-a19d-14a1f3d7abeb', '1', 3000000.00, '2025-02-16 22:00:36', '2025-02-16 22:00:36'),
('41a8166a-cb80-4a89-9822-c28eb08f6ddd', '67fda8d3-6d9d-4661-b9ad-31f0dd7fec21', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', '1', 4000000.00, '2025-01-13 16:59:53', '2025-01-13 16:59:53'),
('53512522-4c51-410c-9235-3a531acbb9f1', '9942acb3-15db-48e9-88bc-2facbe7264b1', '35c2628c-0e92-4eeb-8353-d773e4251c1d', '1', 4500000.00, '2025-01-13 16:21:07', '2025-01-13 16:21:07'),
('68674d75-bb6b-4309-a707-ef80cc97ce7a', '0e43c243-5d8e-47b6-8bdd-ac633cc6205c', 'b86cbe0a-11e6-4505-89a5-da5e3ccdf399', '1', 4000000.00, '2025-01-13 17:02:56', '2025-01-13 17:02:56'),
('6b0f7b80-24f9-4ce2-b3fa-2bb1fe6d444a', '7aa7044f-c411-4d86-a2a3-e3fb1bffc960', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', '1', 2000000.00, '2025-01-29 19:14:00', '2025-01-29 19:14:00'),
('72257a2e-9cbf-4d8e-a158-976d0427f3a8', '7b5b077f-43a3-4da7-b575-32f4701002c0', '995b57b2-3c50-40af-9f1c-cc1320325230', '1', 3500000.00, '2025-01-13 16:49:09', '2025-01-13 16:49:09'),
('b9242c07-f65e-4f7e-a601-1b95150655bf', '19652823-0bcc-48b5-885d-ddfe82cb8ce9', 'd1b3c7de-c710-4b96-b3db-9d79840558c7', '1', 4500000.00, '2025-02-16 22:00:32', '2025-02-16 22:00:32'),
('bddbda7e-902e-40d8-9cb7-c277ee9292e4', '986536d2-0c91-4a46-a5cf-df21d1dffb20', '8007ef33-e03e-43fd-99c5-7a7b4dc634af', '1', 2000000.00, '2025-01-29 19:17:20', '2025-01-29 19:17:20'),
('c485e742-5885-4139-b527-6118f36cfe8d', '1802b57a-f3c5-4135-a2d3-84aad80a84bc', '7c92a9ad-af8a-4283-8031-e7e25c580075', '1', 3800000.00, '2025-01-13 17:09:49', '2025-01-13 17:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `percentage`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
('331a086d-fd90-45e8-b05f-db40be8aa47b', 'Diskon 2.2', '12', '2025-02-01 17:00:00', '2025-02-02 17:00:00', 'Aktif', '2025-01-13 15:20:10', '2025-01-13 15:20:10'),
('e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 'Diskon Akhir Bulan Januari', '20', '2025-01-12 17:00:00', '2025-01-12 17:00:00', 'Aktif', '2025-01-13 14:34:10', '2025-01-13 15:20:17');

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
(1, '0000_01_00_200512_create_branches_table', 1),
(2, '0001_01_01_000000_create_users_table', 1),
(3, '0001_01_01_000001_create_cache_table', 1),
(4, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_10_09_040409_create_permission_tables', 1),
(6, '2024_10_09_041451_create_activity_log_table', 1),
(7, '2024_10_09_041452_add_event_column_to_activity_log_table', 1),
(8, '2024_10_09_041453_add_batch_uuid_column_to_activity_log_table', 1),
(9, '2024_10_09_054952_create_products_table', 1),
(10, '2024_10_09_055640_create_carts_table', 1),
(11, '2024_10_09_072764_create_cart_details_table', 1),
(12, '2024_10_09_072825_create_discounts_table', 1),
(13, '2024_10_09_072954_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', '8fa0c74a-9090-4837-95a4-930c23fd7205'),
(2, 'App\\Models\\User', '3bd325bc-2afa-4cb1-bdde-5694d5138190'),
(2, 'App\\Models\\User', '493f4fe1-83ff-4cc5-9b5b-f34611427de6'),
(3, 'App\\Models\\User', '5aa4103a-23c5-40cd-912f-8e42c659b00b'),
(3, 'App\\Models\\User', '71f68da5-3732-48ef-bcd9-ca20bab139c1');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `branch_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `stock`, `price`, `branch_id`, `created_at`, `updated_at`) VALUES
('35c2628c-0e92-4eeb-8353-d773e4251c1d', 'dlE8GDmgDw1cD6IIdyaGR06NRfgn42GYgqmGVee1.jpg', 'Sofa Retro', '1', 4500000.00, 'b369f376-3fb0-46b8-910c-44070423858c', '2025-01-07 06:27:37', '2025-02-06 00:53:00'),
('55d2017d-d49f-490e-8b1c-a173b134ff2d', '1hcGHZf6Cnymqwxw6XrYlt7oxf7xMw0BqzoX3Xpv.jpg', 'Bupet Kristal 4 Pintu', '0', 3500000.00, 'b369f376-3fb0-46b8-910c-44070423858c', '2025-01-07 06:20:38', '2025-01-28 05:08:29'),
('7c92a9ad-af8a-4283-8031-e7e25c580075', 'uxltLQLppqIFk8eREXZAR0w688Hq63CDWDjvMBEo.jpg', 'Sofa Sudut GGS', '4', 3800000.00, 'b369f376-3fb0-46b8-910c-44070423858c', '2025-01-07 06:18:55', '2025-01-28 05:09:23'),
('8007ef33-e03e-43fd-99c5-7a7b4dc634af', 'NoPhNdtqraSJW7xgrZmq3Ktzy29WOOA5rLy0DvLu.jpg', 'Meja Rias', '3', 2000000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-07 06:25:37', '2025-01-29 19:17:20'),
('995b57b2-3c50-40af-9f1c-cc1320325230', '9NTpCdwqbmcnRD30AV6BZkyxgyCJwOEYfUTRVeHo.jpg', 'Bupet Dapur 4 Pintu', '2', 3500000.00, 'b369f376-3fb0-46b8-910c-44070423858c', '2025-01-07 06:26:33', '2025-02-06 00:52:38'),
('b86cbe0a-11e6-4505-89a5-da5e3ccdf399', 'unppAmoJEyMGFAgquLXotc4JeJDjc43c1l9a3vk5.jpg', 'Lemari HPL 2 Pintu Standar', '2', 4000000.00, 'b369f376-3fb0-46b8-910c-44070423858c', '2025-01-07 06:21:59', '2025-01-28 05:07:47'),
('bd7fb5f3-b300-42b7-9383-4a7590654d03', 'alBNjvZkTSDhpo5Jsf70iC0u0LrcTzXr8jVlhYnZ.jpg', 'Backsrop TV', '2', 4000000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-07 06:23:51', '2025-01-28 05:07:02'),
('bffbf3d5-b083-42cd-9e28-b8d9ea88dbe7', 'l0dwlvC7heNiTo7N8SplCIiq8a2NvQVNsar7JGv8.jpg', 'Sofa Turkis', '5', 4500000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-07 06:19:53', '2025-01-28 05:08:49'),
('d0b9e991-e078-4c57-8cd0-bd00e2ae66e4', '7RjVeNr5smLlCgDZIHHIpEv6la6Hgv9piBSb7uUX.jpg', 'Sofa Sudut Balok', '4', 3800000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-07 06:18:16', '2025-01-28 05:09:49'),
('d1b3c7de-c710-4b96-b3db-9d79840558c7', '5RyvJ7PQhE37KllNdcHLc5W10QP9FnyM7k2mVgMQ.jpg', 'Sofa Abu', '8', 4500000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-29 19:22:32', '2025-02-16 22:00:32'),
('dda0dafe-147b-4b64-a19d-14a1f3d7abeb', '3ZHF7CyilKZo4yoyowYN7hgaIeFBrPALbQCVGdms.jpg', 'Dipan Standar 1 Set', '4', 3000000.00, '8b78715f-6aa4-4b3a-b040-8a30f3885c05', '2025-01-07 06:22:57', '2025-02-16 22:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(2, 'admin', 'web', '2025-01-13 13:45:39', '2025-01-13 13:45:39'),
(3, 'kepala-toko', 'web', '2025-01-13 13:45:39', '2025-01-13 13:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WcoNSidUIDfgBx4h1JfLQRVA5uz7LBOES6xxtShu', '3bd325bc-2afa-4cb1-bdde-5694d5138190', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidUM1VFZaT0M2UGRNb3VkcEg3MHlCYTBQOGNwQmVmdkZqMXRlUkI2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXNoaWVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MzY6IjNiZDMyNWJjLTJhZmEtNGNiMS1iZGRlLTU2OTRkNTEzODE5MCI7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzM5NzY4MzU1O319', 1739768580);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) NOT NULL,
  `cashier_id` char(36) NOT NULL,
  `cart_id` char(36) NOT NULL,
  `branch_id` char(36) DEFAULT NULL,
  `discount_id` char(36) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `change_money` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `cashier_id`, `cart_id`, `branch_id`, `discount_id`, `subtotal`, `total`, `money`, `change_money`, `created_at`, `updated_at`) VALUES
('3d4cc2b5-c77e-42ca-a61c-fa433c81f9dd', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', '1802b57a-f3c5-4135-a2d3-84aad80a84bc', 'b369f376-3fb0-46b8-910c-44070423858c', NULL, 3800000.00, 3800000.00, 3800000.00, 0.00, '2025-01-13 17:09:57', '2025-01-13 17:09:57'),
('72f7b054-5cef-4e05-8086-d711b028c1b7', '493f4fe1-83ff-4cc5-9b5b-f34611427de6', '67fda8d3-6d9d-4661-b9ad-31f0dd7fec21', 'b369f376-3fb0-46b8-910c-44070423858c', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 4000000.00, 3200000.00, 3200000.00, 0.00, '2025-01-13 17:02:27', '2025-01-13 17:02:27'),
('bc0e50c0-84f5-463c-82ea-a3461d0a105f', '3bd325bc-2afa-4cb1-bdde-5694d5138190', '986536d2-0c91-4a46-a5cf-df21d1dffb20', '8b78715f-6aa4-4b3a-b040-8a30f3885c05', 'e1fc2942-45b1-4b3d-bfb0-cf5cfc880ab5', 2000000.00, 1600000.00, 1600000.00, 0.00, '2025-01-29 19:17:37', '2025-01-29 19:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `branch_id` char(36) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `email_verified_at`, `password`, `branch_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('3bd325bc-2afa-4cb1-bdde-5694d5138190', 'thQbSCeBdI.png', 'Admin Cabang Pusat', 'admin.pusat@gmail.com', '2025-01-13 13:45:39', '$2y$12$HWoZmoJ5.akINVvtePxkJOsqbMJl2ZWXJfo3DawsTSOq01NI5qSWm', '8b78715f-6aa4-4b3a-b040-8a30f3885c05', NULL, '2025-01-13 13:45:39', '2025-01-29 19:14:08'),
('493f4fe1-83ff-4cc5-9b5b-f34611427de6', '2RjH6gCIFa.png', 'Admin Cabang Luragung', 'admin.luragung@gmail.com', '2025-01-13 13:45:39', '$2y$12$ZVEPrEx18dUOmEP/TU4LaOVXi2ReJ2c7k9Ua7gIo21cl3AdxvRQw.', 'b369f376-3fb0-46b8-910c-44070423858c', NULL, '2025-01-13 13:45:39', '2025-01-28 05:16:36'),
('5aa4103a-23c5-40cd-912f-8e42c659b00b', 'XWOtaVEtVy.png', 'Kepala Toko Cabang Luragung', 'kepalatoko.luragung@gmail.com', '2025-01-13 13:45:40', '$2y$12$yDD.ttMLA/RIRtlsIp/lJ.gU2uoE1tLuvpWuUuf7aPb4JdBGFuJza', 'b369f376-3fb0-46b8-910c-44070423858c', NULL, '2025-01-13 13:45:40', '2025-01-29 19:20:26'),
('71f68da5-3732-48ef-bcd9-ca20bab139c1', 'nkpMxTd7a9.png', 'Kepala Toko Cabang Pusat', 'kepalatoko.pusat@gmail.com', '2025-01-13 13:45:39', '$2y$12$TxUPFG69bfBkabQBP.5geOnN/mlEpMb/xjJE/7tHJIADqSfSmiof.', '8b78715f-6aa4-4b3a-b040-8a30f3885c05', NULL, '2025-01-13 13:45:40', '2025-01-13 13:45:40'),
('8fa0c74a-9090-4837-95a4-930c23fd7205', 'pEvFUuQfTn.png', 'Owner', 'owner@gmail.com', '2025-01-13 13:45:39', '$2y$12$uMY75Zx5IrwMXy/SN89c7uBFZIG6wQOXTowDryH4lr596Dbq8M08.', NULL, NULL, '2025-01-13 13:45:39', '2025-01-13 13:45:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `activity_log_subject_id_index` (`subject_id`),
  ADD KEY `activity_log_causer_id_index` (`causer_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_index` (`cart_id`),
  ADD KEY `cart_details_product_id_index` (`product_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_branch_id_index` (`branch_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_cashier_id_index` (`cashier_id`),
  ADD KEY `transactions_cart_id_index` (`cart_id`),
  ADD KEY `transactions_branch_id_index` (`branch_id`),
  ADD KEY `transactions_discount_id_index` (`discount_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_branch_id_index` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_cashier_id_foreign` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
