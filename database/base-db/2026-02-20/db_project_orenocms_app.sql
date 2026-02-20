-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2026 pada 10.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project_orenocms_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_app_contents_categories_c`
--

CREATE TABLE `tbl_a_app_contents_categories_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__element` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_app_contents_categories_c`
--

INSERT INTO `tbl_a_app_contents_categories_c` (`id`, `code`, `__name`, `__element`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '453534', 'info-board', '-', '-', 1, 1, '2026-01-15 04:24:47', 1, '2026-01-15 04:24:47'),
(2, '324225', 'content', '-', '-', 1, 1, '2026-01-15 04:24:47', 1, '2026-01-15 04:24:47'),
(3, '657657', 'notification', '-', '-', 1, 1, '2026-01-15 04:24:47', 1, '2026-01-15 04:24:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_app_contents_meta_c`
--

CREATE TABLE `tbl_a_app_contents_meta_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__meta_keyword` text NOT NULL,
  `__meta_description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_app_contents_p`
--

CREATE TABLE `tbl_a_app_contents_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__content_title` varchar(255) NOT NULL,
  `__content_icon` varchar(255) NOT NULL,
  `__content_raw` text NOT NULL,
  `__content_sanitize` text NOT NULL,
  `__uac_content_type_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_photo_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_category_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_meta_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_app_contents_p`
--

INSERT INTO `tbl_a_app_contents_p` (`id`, `code`, `__alias`, `__name`, `__content_title`, `__content_icon`, `__content_raw`, `__content_sanitize`, `__uac_content_type_id`, `__uac_content_photo_id`, `__uac_content_category_id`, `__uac_content_meta_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '4324234', 'content-top', 'content-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-plus\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 1, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(2, '5465464', 'content-about', 'content-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bolt\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 1, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(3, '4324234', 'content-top', 'content-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bell-o\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 1, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(4, '5465464', 'content-about', 'content-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-plus\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 1, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(5, '4324234', 'content-top', 'content-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bolt\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 2, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(6, '5465464', 'content-about', 'content-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bell-o\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 2, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(7, '4324234', 'content-top', 'content-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-plus\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 2, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(8, '5465464', 'content-about', 'content-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bolt\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 2, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(9, '4324234', 'notif-top', 'notif-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bell-o\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 3, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(10, '5465464', 'notif-about', 'notif-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-plus\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 3, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(11, '4324234', 'notif-top', 'notif-top', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bolt\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 3, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24'),
(12, '5465464', 'notif-about', 'notif-about', 'Lorem ipsum dolor sit amet', '<i class=\"fa fa-bell-o\"></i>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 1, 0, 3, 0, 1, 1, '2026-01-15 04:26:24', 1, '2026-01-15 04:26:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_app_contents_photo_c`
--

CREATE TABLE `tbl_a_app_contents_photo_c` (
  `id` int(32) NOT NULL,
  `code` text NOT NULL,
  `__path` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_app_contents_types_c`
--

CREATE TABLE `tbl_a_app_contents_types_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__element` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_app_contents_types_c`
--

INSERT INTO `tbl_a_app_contents_types_c` (`id`, `code`, `__name`, `__element`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '5645', 'info', '-', '', 1, 1, '2026-01-15 04:28:16', 1, '2026-01-15 04:28:16'),
(2, '5467', 'news', '-', '', 1, 1, '2026-01-15 04:28:16', 1, '2026-01-15 04:28:16'),
(3, '5645', 'article', '-', '', 1, 1, '2026-01-15 04:28:16', 1, '2026-01-15 04:28:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_app_messages_attachments_c`
--

CREATE TABLE `tbl_b_app_messages_attachments_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` text NOT NULL,
  `__app_message_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_app_messages_p`
--

CREATE TABLE `tbl_b_app_messages_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__subject` varchar(255) NOT NULL,
  `__text` text NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__is_chat` tinyint(1) NOT NULL DEFAULT 0,
  `__is_mail` tinyint(1) NOT NULL DEFAULT 0,
  `__is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `__is_junk` tinyint(1) NOT NULL DEFAULT 0,
  `__is_trash` tinyint(1) NOT NULL DEFAULT 0,
  `__is_read_notif` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_app_messages_p`
--

INSERT INTO `tbl_b_app_messages_p` (`id`, `code`, `__subject`, `__text`, `__icon`, `__is_chat`, `__is_mail`, `__is_draft`, `__is_junk`, `__is_trash`, `__is_read_notif`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '12312', 'hello there', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '<i class=\"fa fa-plus\"></i>', 0, 1, 0, 0, 0, 0, 1, 1, '2026-02-04 10:29:29', 1, '2026-02-04 10:29:29'),
(2, '21312', 'heelo world', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '<i class=\"fa fa-bolt\"></i>', 0, 1, 0, 0, 0, 0, 1, 1, '2026-02-04 10:29:29', 1, '2026-02-04 10:29:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_app_messages_send_r`
--

CREATE TABLE `tbl_b_app_messages_send_r` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL DEFAULT '0',
  `__message_from` int(32) NOT NULL DEFAULT 0,
  `__message_to` int(32) NOT NULL DEFAULT 0,
  `__message_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_app_messages_send_r`
--

INSERT INTO `tbl_b_app_messages_send_r` (`id`, `code`, `__message_from`, `__message_to`, `__message_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '031312', 2, 1, 1, 1, 1, '2026-02-04 10:30:55', 1, '2026-02-04 10:30:55'),
(2, '312313', 2, 1, 2, 1, 1, '2026-02-04 10:30:55', 1, '2026-02-04 10:30:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_app_logs`
--

CREATE TABLE `tbl_c_app_logs` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__fraud_scan` text NOT NULL,
  `__ip_address` varchar(16) NOT NULL,
  `__browser` text NOT NULL,
  `__class` varchar(255) NOT NULL,
  `__method` varchar(255) NOT NULL,
  `__event` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_currency_p`
--

CREATE TABLE `tbl_d_app_assets_currency_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__rate` double NOT NULL,
  `__base_to` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_documents_p`
--

CREATE TABLE `tbl_d_app_assets_documents_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__content` mediumtext NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_documents_type_c`
--

CREATE TABLE `tbl_d_app_assets_documents_type_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_document_type_r`
--

CREATE TABLE `tbl_d_app_assets_document_type_r` (
  `id` int(32) NOT NULL,
  `__app_document_id` int(32) NOT NULL DEFAULT 0,
  `__app_document_type_id` int(32) NOT NULL DEFAULT 0,
  `is_acticve` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_icons_p`
--

CREATE TABLE `tbl_d_app_assets_icons_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__class` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_icons_p`
--

INSERT INTO `tbl_d_app_assets_icons_p` (`id`, `code`, `__name`, `__class`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '00001', 'Automobile', 'fa fa-automobile', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(2, '00002', 'Bank', 'fa fa-bank', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(3, '00003', 'Behance', 'fa fa-behance', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(4, '00004', 'Behance-square', 'fa fa-behance-square', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(5, '00005', 'Bomb', 'fa fa-bomb', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(6, '00006', 'Building', 'fa fa-building', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(7, '00007', 'Cab', 'fa fa-cab', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(8, '00008', 'Child', 'fa fa-child', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(9, '00009', 'Circle-o-notch', 'fa fa-circle-o-notch', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(10, '00010', 'Circle-thin', 'fa fa-circle-thin', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(11, '00011', 'Codepen', 'fa fa-codepen', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(12, '00012', 'Cube', 'fa fa-cube', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(13, '00013', 'Cubes', 'fa fa-cubes', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(14, '00014', 'database', 'fa fa-database', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(15, '00015', 'Delicious', 'fa fa-delicious', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(16, '00016', 'Deviantart', 'fa fa-deviantart', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(17, '00017', 'Digg', 'fa fa-digg', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(18, '00018', 'Drupal', 'fa fa-drupal', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(19, '00019', 'Empire', 'fa fa-empire', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(20, '00020', 'Envelope-square', 'fa fa-envelope-square', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(21, '00001', 'Fax', 'fa fa-fax', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(22, '00002', 'File-archive-o', 'fa fa-file-archive-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(23, '00003', 'File-audio-o', 'fa fa-file-audio-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(24, '00004', 'File-code-o', 'fa fa-file-code-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(25, '00005', 'File-excel-o', 'fa fa-file-excel-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(26, '00006', 'file-image-o', 'fa fa-file-image-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(27, '00007', 'File-movie-o', 'fa fa-file-movie-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(28, '00008', 'File-pdf-o', 'fa fa-file-pdf-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(29, '00009', 'File-photo-o', 'fa fa-file-photo-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(30, '00010', 'File-picture-o', 'fa fa-file-picture-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(31, '00011', 'File-powerpoint-o', 'fa fa-file-powerpoint-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(32, '00012', 'File-sound-o', 'fa fa-file-sound-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(33, '00013', 'File-video-o', 'fa fa-file-video-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(34, '00014', 'File-word-o', 'fa fa-file-word-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(35, '00015', 'Ge', 'fa fa-ge', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(36, '00016', 'Git', 'fa fa-git', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(37, '00017', 'Git-square', 'fa fa-git-square', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(38, '00018', 'Google', 'fa fa-google', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(39, '00019', 'Graduation-cap', 'fa fa-graduation-cap', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(40, '00020', 'Hacker-news', 'fa fa-hacker-news', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(41, '00001', 'Header', 'fa fa-header', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(42, '00002', 'History', 'fa fa-history', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(43, '00003', 'Institution', 'fa fa-institution', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(44, '00004', 'Joomla', 'fa fa-joomla', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(45, '00005', 'Jsfiddle', 'fa fa-jsfiddle', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(46, '00006', 'Language', 'fa fa-language', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(47, '00007', 'Life-bouy', 'fa fa-life-bouy', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(48, '00008', 'Life-ring', 'fa fa-life-ring', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(49, '00009', 'Life-saver', 'fa fa-life-saver', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(50, '00010', 'Mortar-board', 'fa fa-mortar-board', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(51, '00011', 'Openid', 'fa fa-openid', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(52, '00012', 'Paper-plane', 'fa fa-paper-plane', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(53, '00013', 'Paper-plane-o', 'fa fa-paper-plane-o', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(54, '00014', 'Paragraph', 'fa fa-paragraph', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(55, '00015', 'Paw', 'fa fa-paw', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(56, '00016', 'Pied-piper', 'fa fa-pied-piper', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(57, '00017', 'Pied-piper-alt', 'fa fa-pied-piper-alt', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(58, '00018', 'Pied-piper-square', 'fa fa-pied-piper-square', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(59, '00019', 'RA', 'fa fa-ra', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(60, '00020', 'Rebel', 'fa fa-rebel', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(61, '00001', 'Recycle', 'fa fa-recycle', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31'),
(62, '00002', 'Reddit', 'fa fa-reddit', '-', 1, 1, '2026-01-19 09:33:31', 1, '2026-01-19 09:33:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_master_controller_p`
--

CREATE TABLE `tbl_d_app_assets_master_controller_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_master_controller_p`
--

INSERT INTO `tbl_d_app_assets_master_controller_p` (`id`, `code`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '02331', 'UserController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(2, '02332', 'GroupController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(3, '02333', 'PermissionController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(4, '02334', 'MenuController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(5, '02335', 'CurrencyController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(6, '02336', 'IconController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(7, '02337', 'ClassController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(8, '02338', 'MethodController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(9, '02339', 'CountryController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(10, '02341', 'ProvincesController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(11, '02342', 'CitiesController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(12, '02343', 'DistrictsController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(13, '02344', 'AreasController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(14, '02345', 'UserController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(15, '02346', 'GroupController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(16, '02347', 'MenuController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(17, '02347', 'DefaultController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17'),
(18, '02348', 'AjaxController', '-', 1, 1, '2026-02-13 09:50:17', 1, '2026-02-13 09:50:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_master_form_method_p`
--

CREATE TABLE `tbl_d_app_assets_master_form_method_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_master_form_method_p`
--

INSERT INTO `tbl_d_app_assets_master_form_method_p` (`id`, `code`, `__alias`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '0001', 'post', 'POST', '-', 1, 1, '2026-02-13 10:57:41', 1, '2026-02-13 10:57:41'),
(2, '0002', 'get', 'GET', '-', 1, 1, '2026-02-13 10:57:41', 1, '2026-02-13 10:57:41'),
(3, '0003', 'put', 'PUT', '-', 1, 1, '2026-02-13 10:57:41', 1, '2026-02-13 10:57:41'),
(4, '0004', 'delete', 'DELETE', '-', 1, 1, '2026-02-13 10:57:41', 1, '2026-02-13 10:57:41'),
(5, '0005', 'options', 'OPTIONS', '-', 1, 1, '2026-02-13 10:57:41', 1, '2026-02-13 10:57:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_master_method_p`
--

CREATE TABLE `tbl_d_app_assets_master_method_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__param` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_master_method_p`
--

INSERT INTO `tbl_d_app_assets_master_method_p` (`id`, `code`, `__name`, `__param`, `__rank`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '123123', 'create', '', 1, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(2, '132213', 'edit', '{id}', 2, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(3, '123123', 'view', '', 3, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(4, '132213', 'update', '{id}', 4, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(5, '123123', 'insert', '', 5, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(6, '132213', 'remove', '{id}', 6, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(7, '123123', 'delete', '', 7, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(8, '132213', 'get_list', '', 8, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(9, '132213', 'detail', '{id}', 9, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_shorten_url_p`
--

CREATE TABLE `tbl_d_app_assets_shorten_url_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__value` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_smart_list_p`
--

CREATE TABLE `tbl_d_app_assets_smart_list_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__keyword` varchar(255) NOT NULL,
  `__value` varchar(255) NOT NULL,
  `__foreign_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_web_params_p`
--

CREATE TABLE `tbl_d_app_assets_web_params_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__keyword` varchar(255) NOT NULL,
  `__value1` text NOT NULL,
  `__value2` text NOT NULL,
  `__value3` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_web_params_p`
--

INSERT INTO `tbl_d_app_assets_web_params_p` (`id`, `code`, `__keyword`, `__value1`, `__value2`, `__value3`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '001', 'hcl_appscan_ase', 'user', 'hq\\appsat', '-', 1, 1, '2025-12-24 06:16:17', 1, '2025-12-24 06:16:17'),
(2, '002', 'hcl_appscan_ase', 'password', 'Hzkg324#', '-', 1, 1, '2025-12-24 06:16:17', 1, '2025-12-24 06:16:17'),
(3, '003', 'hcl_appscan_ase', 'featureKey', 'AppScanEnterpriseUser', '-', 1, 1, '2025-12-24 06:16:17', 1, '2025-12-24 06:16:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_a_app_contents_categories_c`
--
ALTER TABLE `tbl_a_app_contents_categories_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_app_contents_meta_c`
--
ALTER TABLE `tbl_a_app_contents_meta_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_app_contents_p`
--
ALTER TABLE `tbl_a_app_contents_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_app_contents_photo_c`
--
ALTER TABLE `tbl_a_app_contents_photo_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_app_contents_types_c`
--
ALTER TABLE `tbl_a_app_contents_types_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_app_messages_attachments_c`
--
ALTER TABLE `tbl_b_app_messages_attachments_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_app_messages_p`
--
ALTER TABLE `tbl_b_app_messages_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_app_messages_send_r`
--
ALTER TABLE `tbl_b_app_messages_send_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_app_logs`
--
ALTER TABLE `tbl_c_app_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_currency_p`
--
ALTER TABLE `tbl_d_app_assets_currency_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_documents_p`
--
ALTER TABLE `tbl_d_app_assets_documents_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_icons_p`
--
ALTER TABLE `tbl_d_app_assets_icons_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_master_controller_p`
--
ALTER TABLE `tbl_d_app_assets_master_controller_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_master_form_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_form_method_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_master_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_method_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_shorten_url_p`
--
ALTER TABLE `tbl_d_app_assets_shorten_url_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_smart_list_p`
--
ALTER TABLE `tbl_d_app_assets_smart_list_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_d_app_assets_web_params_p`
--
ALTER TABLE `tbl_d_app_assets_web_params_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_categories_c`
--
ALTER TABLE `tbl_a_app_contents_categories_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_meta_c`
--
ALTER TABLE `tbl_a_app_contents_meta_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_p`
--
ALTER TABLE `tbl_a_app_contents_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_photo_c`
--
ALTER TABLE `tbl_a_app_contents_photo_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_types_c`
--
ALTER TABLE `tbl_a_app_contents_types_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_attachments_c`
--
ALTER TABLE `tbl_b_app_messages_attachments_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_p`
--
ALTER TABLE `tbl_b_app_messages_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_send_r`
--
ALTER TABLE `tbl_b_app_messages_send_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_app_logs`
--
ALTER TABLE `tbl_c_app_logs`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_currency_p`
--
ALTER TABLE `tbl_d_app_assets_currency_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_documents_p`
--
ALTER TABLE `tbl_d_app_assets_documents_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_icons_p`
--
ALTER TABLE `tbl_d_app_assets_icons_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_controller_p`
--
ALTER TABLE `tbl_d_app_assets_master_controller_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_form_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_form_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_shorten_url_p`
--
ALTER TABLE `tbl_d_app_assets_shorten_url_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_smart_list_p`
--
ALTER TABLE `tbl_d_app_assets_smart_list_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_web_params_p`
--
ALTER TABLE `tbl_d_app_assets_web_params_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
