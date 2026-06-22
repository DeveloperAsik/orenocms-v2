-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2026 pada 12.27
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
CREATE DATABASE IF NOT EXISTS `db_project_orenocms_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_project_orenocms_app`;

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

--
-- Dumping data untuk tabel `tbl_d_app_assets_documents_p`
--

INSERT INTO `tbl_d_app_assets_documents_p` (`id`, `code`, `__name`, `__content`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw', 'id-card-ariffirmansyah-danantara2.png', 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw/001/original/id-card-ariffirmansyah-danantara2.png', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(2, 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw', 'id-card-ariffirmansyah-danantara2.png', 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw/001/tiny/id-card-ariffirmansyah-danantara2.png', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(3, 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw', 'id-card-ariffirmansyah-danantara2.png', 'PIwmnlndeuEXjJM46glfUFDDiVAQNmLw/001/small/id-card-ariffirmansyah-danantara2.png', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(4, 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ/001/original/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(5, 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ/001/tiny/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(6, 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'SgQsLvfSMAiMOPZO7I6a1cVftrJ8MhsZ/001/small/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(7, 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI', 'P064146_ARIF_FIRMANSYAH.jpg', 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI/001/original/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(8, 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI', 'P064146_ARIF_FIRMANSYAH.jpg', 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI/001/tiny/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(9, 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI', 'P064146_ARIF_FIRMANSYAH.jpg', 'ZU9ejH4dfHwUmIaHHo5lHXunl5jD4woI/001/small/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(10, 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw', 'P064146_ARIF_FIRMANSYAH-1.jpg', 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw/001/original/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(11, 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw', 'P064146_ARIF_FIRMANSYAH-1.jpg', 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw/001/tiny/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(12, 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw', 'P064146_ARIF_FIRMANSYAH-1.jpg', 'cZvVQlv5VG7OyzM6AHrRHVwLUjonP8hw/001/small/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(13, 'WX288LANTucaplgM5NJW1mCahSfqPhLE', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'WX288LANTucaplgM5NJW1mCahSfqPhLE/001/original/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(14, 'WX288LANTucaplgM5NJW1mCahSfqPhLE', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'WX288LANTucaplgM5NJW1mCahSfqPhLE/001/tiny/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(15, 'WX288LANTucaplgM5NJW1mCahSfqPhLE', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'WX288LANTucaplgM5NJW1mCahSfqPhLE/001/small/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(16, 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE/001/original/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(17, 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE/001/tiny/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(18, 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE', 'P064146_ARIF_FIRMANSYAH-3.jpg', 'Mln1tA4taCTDg8AEZMBIbG5yRNCZkyRE/001/small/P064146_ARIF_FIRMANSYAH-3.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(19, 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd/001/original/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(20, 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd/001/tiny/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(21, 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd', 'P064146_ARIF_FIRMANSYAH-2.jpg', 'QOARwZz7gfm7fW1eciMLWmNot2BZYMRd/001/small/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(22, 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3', 'P064146_ARIF_FIRMANSYAH.jpg', 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3/001/original/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(23, 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3', 'P064146_ARIF_FIRMANSYAH.jpg', 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3/001/tiny/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(24, 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3', 'P064146_ARIF_FIRMANSYAH.jpg', 'lRd6x7cI12qAn5mLDBr7OcloH1CUtZU3/001/small/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(25, 'fXIERq5mlExbsekYmp5Svusn9qoIXpey', 'default', 'fXIERq5mlExbsekYmp5Svusn9qoIXpey/001/original/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(26, 'fXIERq5mlExbsekYmp5Svusn9qoIXpey', 'default', 'fXIERq5mlExbsekYmp5Svusn9qoIXpey/001/tiny/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(27, 'fXIERq5mlExbsekYmp5Svusn9qoIXpey', 'default', 'fXIERq5mlExbsekYmp5Svusn9qoIXpey/001/small/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(28, 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg', 'default', 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg/001/original/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(29, 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg', 'default', 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg/001/tiny/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(30, 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg', 'default', 'VNhkYv6osp5NpWUw85L7Thwn7A7ctNMg/001/small/P064146_ARIF_FIRMANSYAH-2.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(31, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 'default', 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN/001/original/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37'),
(32, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 'default', 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN/001/tiny/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37'),
(33, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 'default', 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN/001/small/P064146_ARIF_FIRMANSYAH-1.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37');

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

--
-- Dumping data untuk tabel `tbl_d_app_assets_documents_type_c`
--

INSERT INTO `tbl_d_app_assets_documents_type_c` (`id`, `code`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '001', 'photos', '-', 1, 1, '2026-05-20 10:54:47', 1, '2026-05-20 10:54:47'),
(2, '002', 'words', '-', 1, 1, '2026-05-20 10:54:47', 1, '2026-05-20 10:54:47'),
(3, '003', 'excel', '-', 1, 1, '2026-05-20 10:54:47', 1, '2026-05-20 10:54:47'),
(4, '004', 'presentation', '-', 1, 1, '2026-05-20 10:54:47', 1, '2026-05-20 10:54:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_document_type_r`
--

CREATE TABLE `tbl_d_app_assets_document_type_r` (
  `id` int(32) NOT NULL,
  `__app_document_id` int(32) NOT NULL DEFAULT 0,
  `__app_document_type_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_d_app_assets_document_type_r`
--

INSERT INTO `tbl_d_app_assets_document_type_r` (`id`, `__app_document_id`, `__app_document_type_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(2, 2, 1, 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(3, 3, 1, 1, 1, '2026-05-22 11:00:18', 1, '2026-05-22 11:00:18'),
(4, 4, 1, 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(5, 5, 1, 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(6, 6, 1, 1, 1, '2026-05-26 11:48:25', 1, '2026-05-26 11:48:25'),
(7, 7, 1, 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(8, 8, 1, 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(9, 9, 1, 1, 1, '2026-05-26 11:51:16', 1, '2026-05-26 11:51:16'),
(10, 10, 1, 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(11, 11, 1, 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(12, 12, 1, 1, 1, '2026-05-26 11:56:15', 1, '2026-05-26 11:56:15'),
(13, 13, 1, 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(14, 14, 1, 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(15, 15, 1, 1, 1, '2026-05-26 13:18:02', 1, '2026-05-26 13:18:02'),
(16, 16, 1, 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(17, 17, 1, 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(18, 18, 1, 1, 1, '2026-05-26 13:19:58', 1, '2026-05-26 13:19:58'),
(19, 19, 1, 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(20, 20, 1, 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(21, 21, 1, 1, 1, '2026-05-26 16:37:05', 1, '2026-05-26 16:37:05'),
(22, 22, 1, 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(23, 23, 1, 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(24, 24, 1, 1, 1, '2026-05-29 14:06:31', 1, '2026-05-29 14:06:31'),
(25, 25, 1, 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(26, 26, 1, 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(27, 27, 1, 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36'),
(28, 28, 1, 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(29, 29, 1, 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(30, 30, 1, 1, 1, '2026-06-08 13:39:10', 1, '2026-06-08 13:39:10'),
(31, 31, 1, 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37'),
(32, 32, 1, 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37'),
(33, 33, 1, 1, 1, '2026-06-15 17:46:37', 1, '2026-06-15 17:46:37');

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
  `__method` varchar(5) NOT NULL,
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

INSERT INTO `tbl_d_app_assets_master_method_p` (`id`, `code`, `__name`, `__param`, `__method`, `__rank`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '123123', 'create', '', 'GET', 1, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(2, '132213', 'edit', '{id}', 'GET', 2, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(3, '123123', 'view', '', 'GET', 3, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(4, '132213', 'update', '{id}', 'POST', 4, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(5, '123123', 'insert', '', 'POST', 5, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(6, '132213', 'remove', '{id}', 'POST', 6, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(7, '123123', 'delete', '{id}', 'POST', 7, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(8, '132213', 'get_list', '{id}', 'POST', 8, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(9, '132213', 'detail', '{id}', 'GET', 9, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(10, '132213', 'login', '', 'GET', 10, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(11, '132213', 'logout', '', 'GET', 11, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(12, '132213', 'dashboard', '', 'GET', 11, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(13, '132213', '__init', '', 'POST', 12, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(14, '132213', 'forgot_password', '', 'GET', 13, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(15, '132213', 'register', '', 'GET', 14, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(16, '132213', '__validate', '', 'POST', 15, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(17, '132213', '__fn_ajax_get', '', 'GET', 16, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(18, '132213', '__fn_ajax_post', '', 'POST', 17, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20'),
(19, '132213', 'handle', '', 'GET', 18, '-', 1, 1, '2026-02-05 04:44:20', 1, '2026-02-05 04:44:20');

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
--
-- Database: `db_project_orenocms_app_backup`
--
CREATE DATABASE IF NOT EXISTS `db_project_orenocms_app_backup` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_project_orenocms_app_backup`;

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
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_app_assets_master_method_p`
--

CREATE TABLE `tbl_d_app_assets_master_method_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__param` varchar(255) NOT NULL,
  `__method` varchar(5) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_meta_c`
--
ALTER TABLE `tbl_a_app_contents_meta_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_p`
--
ALTER TABLE `tbl_a_app_contents_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_photo_c`
--
ALTER TABLE `tbl_a_app_contents_photo_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_app_contents_types_c`
--
ALTER TABLE `tbl_a_app_contents_types_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_attachments_c`
--
ALTER TABLE `tbl_b_app_messages_attachments_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_p`
--
ALTER TABLE `tbl_b_app_messages_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_app_messages_send_r`
--
ALTER TABLE `tbl_b_app_messages_send_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_controller_p`
--
ALTER TABLE `tbl_d_app_assets_master_controller_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_form_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_form_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_master_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_project_orenocms_uac`
--
CREATE DATABASE IF NOT EXISTS `db_project_orenocms_uac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_project_orenocms_uac`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `payload` text NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_groups_p`
--

CREATE TABLE `tbl_a_uac_groups_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__level` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `__uac_group_parent_id` int(32) NOT NULL,
  `__is_key_group` tinyint(1) NOT NULL DEFAULT 0,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_group_project` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_groups_p`
--

INSERT INTO `tbl_a_uac_groups_p` (`id`, `code`, `__name`, `__icon`, `__rank`, `__level`, `__description`, `__uac_group_parent_id`, `__is_key_group`, `__is_menu`, `__is_group_project`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '001', 'system', '-', 1, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(2, '002', 'superuser', '-', 2, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(3, '003', 'webmaster', '-', 3, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(4, '004', 'webmaster-appsec-spv', '-', 1, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(5, '005', 'webmaster-appsec-soc', '-', 2, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(6, '006', 'webmaster-appsec-spc', '-', 3, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(7, '007', 'officer', '-', 4, 1, '', 2, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(8, '008', 'officer-sat', '-', 1, 2, '', 7, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(9, '009', 'officer-pentes', '-', 2, 2, '', 7, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_menu_p`
--

CREATE TABLE `tbl_a_uac_menu_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` text NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__level` int(4) NOT NULL,
  `__rank` int(4) NOT NULL,
  `__badge` varchar(255) NOT NULL,
  `__badge_value` varchar(255) NOT NULL,
  `__badge_id` int(32) NOT NULL DEFAULT 0,
  `__is_badge` tinyint(1) NOT NULL DEFAULT 0,
  `__uac_menu_parent_id` int(32) NOT NULL DEFAULT 0,
  `__is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `__is_head` tinyint(1) NOT NULL DEFAULT 0,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_open` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_menu_p`
--

INSERT INTO `tbl_a_uac_menu_p` (`id`, `code`, `__name`, `__path`, `__icon`, `__level`, `__rank`, `__badge`, `__badge_value`, `__badge_id`, `__is_badge`, `__uac_menu_parent_id`, `__is_dashboard`, `__is_head`, `__is_basic`, `__is_open`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '231321', 'Dashboard', 'extraweb/dashboard/', '<i class=\"icon-home\"></i>', 1, 1, '', '', 0, 0, 0, 1, 0, 1, 0, 1, 1, '2026-02-06 09:10:56', 1, '2026-02-06 09:10:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_modules_p`
--

CREATE TABLE `tbl_a_uac_modules_p` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__default_path` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_modules_p`
--

INSERT INTO `tbl_a_uac_modules_p` (`id`, `code`, `__alias`, `__name`, `__default_path`, `__rank`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '', 'cdn-static', 'CDN Static Files', 'cdn.static.files/v1/', 1, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(2, '', 'backend-api', 'Backend API', 'api/v1/', 2, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(3, '', 'backend-cms', 'Backend CMS', 'extraweb/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(4, '', 'frontend-application-home', 'Frontend Application Home', 'home/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(5, '', 'frontend-application-cdn', 'Frontend Application CDN', 'cdn/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_p`
--

CREATE TABLE `tbl_a_uac_permissions_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` varchar(255) NOT NULL,
  `__controller` varchar(255) NOT NULL,
  `__action` varchar(255) NOT NULL,
  `__method` varchar(255) NOT NULL,
  `__segment1` varchar(255) DEFAULT NULL,
  `__segment2` varchar(255) DEFAULT NULL,
  `__segment3` varchar(255) DEFAULT NULL,
  `__segment4` varchar(255) DEFAULT NULL,
  `__segment5` varchar(255) DEFAULT NULL,
  `__segment6` varchar(255) DEFAULT NULL,
  `__segment7` varchar(255) DEFAULT NULL,
  `__segment8` varchar(255) DEFAULT NULL,
  `__description` text NOT NULL,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_public` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_permissions_p`
--

INSERT INTO `tbl_a_uac_permissions_p` (`id`, `code`, `__alias`, `__name`, `__path`, `__controller`, `__action`, `__method`, `__segment1`, `__segment2`, `__segment3`, `__segment4`, `__segment5`, `__segment6`, `__segment7`, `__segment8`, `__description`, `__is_basic`, `__is_public`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '321redss', 'extraweb', 'extraweb', 'extraweb', 'AuthentificationMD', 'handle', 'get', 'extraweb', 'null', 'null', 'null', 'null', 'null', NULL, NULL, 'route direct access to middleware', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-18 17:21:03'),
(2, 'wewrewr123', 'extraweb-login', 'extraweb/login/', 'extraweb/login', 'AppController', 'login', 'get', 'extraweb', 'login', 'null', 'null', 'null', 'null', NULL, NULL, 'logon page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(3, 'wewrewr123', 'extraweb-logout', 'extraweb/logout/', 'extraweb/logout', 'AppController', 'logout', 'get', 'extraweb', 'logout', 'null', 'null', 'null', 'null', NULL, NULL, 'logout page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(4, 'wewrewr123', 'extraweb-forgot-password', 'extraweb/forgot-password/', 'extraweb/forgot-password', 'AppController', 'forgot_password', 'get', 'extraweb', 'forgot-password', 'null', 'null', 'null', 'null', NULL, NULL, 'forgot password page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(5, 'wewrewr123', 'extraweb-register', 'extraweb/register/', 'extraweb/register', 'AppController', 'register', 'get', 'extraweb', 'register', 'null', 'null', 'null', 'null', NULL, NULL, 'register page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(6, '324wr123', 'extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', 'null', 'null', 'null', 'null', NULL, NULL, 'validate page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(7, '324wr123', 'extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init', 'AppController', '__init', 'post', 'extraweb', 'authentification', 'init', 'null', 'null', 'null', NULL, NULL, 'validate login page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(8, 'wewrewr123', 'extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', 'null', 'null', 'null', 'null', NULL, NULL, 'dashboard page', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-19 08:27:31'),
(9, '333ewwr123', 'extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get/{param}', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', '{param}', 'null', 'null', NULL, NULL, 'ajax action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(10, '756wr123', 'extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/{param}', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', '{param}', 'null', 'null', NULL, NULL, 'ajax action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(11, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', 'null', NULL, NULL, 'users view action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(12, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', 'null', NULL, NULL, 'users get_list action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(13, 'aaaa000', 'extraweb-master-uac-users-edit', 'extraweb/master/uac/users/edit/{id}', 'extraweb/master/uac/users/edit/{id}', 'UserController', 'edit', 'get', 'extraweb', 'master', 'uac', 'users', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(14, 'aaaa000', 'extraweb-master-uac-users-update', 'extraweb/master/uac/users/update/{id}', 'extraweb/master/uac/users/update/{id}', 'UserController', 'update', 'post', 'extraweb', 'master', 'uac', 'users', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(15, 'aaaa000', 'extraweb-master-uac-users-create', 'extraweb/master/uac/users/create', 'extraweb/master/uac/users/create', 'UserController', 'create', 'get', 'extraweb', 'master', 'uac', 'users', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(16, 'aaaa000', 'extraweb-master-uac-users-insert', 'extraweb/master/uac/users/insert', 'extraweb/master/uac/users/insert', 'UserController', 'insert', 'post', 'extraweb', 'master', 'uac', 'users', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(17, 'aaaa000', 'extraweb-master-uac-users-delete', 'extraweb/master/uac/users/delete/{id}', 'extraweb/master/uac/users/delete/{id}', 'UserController', 'delete', 'get', 'extraweb', 'master', 'uac', 'users', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(18, 'aaaa000', 'extraweb-master-uac-users-remove', 'extraweb/master/uac/users/remove/{id}', 'extraweb/master/uac/users/remove/{id}', 'UserController', 'remove', 'get', 'extraweb', 'master', 'uac', 'users', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(19, 'aaaa000', 'extraweb-master-uac-groups-view', 'extraweb/master/uac/groups/view', 'extraweb/master/uac/groups/view', 'GroupsController', 'view', 'get', 'extraweb', 'master', 'uac', 'groups', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(20, 'aaaa000', 'extraweb-master-uac-groups-get_list', 'extraweb/master/uac/groups/get_list', 'extraweb/master/uac/groups/get_list', 'GroupsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'groups', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(21, 'aaaa000', 'extraweb-master-uac-groups-edit', 'extraweb/master/uac/groups/edit/{id}', 'extraweb/master/uac/groups/edit/{id}', 'GroupsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'groups', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(22, 'aaaa000', 'extraweb-master-uac-groups-update', 'extraweb/master/uac/groups/update/{id}', 'extraweb/master/uac/groups/update/{id}', 'GroupsController', 'update', 'post', 'extraweb', 'master', 'uac', 'groups', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(23, 'aaaa000', 'extraweb-master-uac-groups-create', 'extraweb/master/uac/groups/create', 'extraweb/master/uac/groups/create', 'GroupsController', 'create', 'get', 'extraweb', 'master', 'uac', 'groups', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(24, 'aaaa000', 'extraweb-master-uac-groups-insert', 'extraweb/master/uac/groups/insert', 'extraweb/master/uac/groups/insert', 'GroupsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'groups', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(25, 'aaaa000', 'extraweb-master-uac-groups-delete', 'extraweb/master/uac/groups/delete', 'extraweb/master/uac/groups/delete', 'GroupsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'groups', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(26, 'aaaa000', 'extraweb-master-uac-groups-remove', 'extraweb/master/uac/groups/remove/{id}', 'extraweb/master/uac/groups/remove/{id}', 'GroupsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'groups', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(27, 'aaaa000', 'extraweb-master-uac-menus-view', 'extraweb/master/uac/menus/view', 'extraweb/master/uac/menus/view', 'MenusController', 'view', 'get', 'extraweb', 'master', 'uac', 'menus', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(28, 'aaaa000', 'extraweb-master-uac-menus-get_list', 'extraweb/master/uac/menus/get_list', 'extraweb/master/uac/menus/get_list', 'MenusController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'menus', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(29, 'aaaa000', 'extraweb-master-uac-menus-edit', 'extraweb/master/uac/menus/edit/{id}', 'extraweb/master/uac/menus/edit/{id}', 'MenusController', 'edit', 'get', 'extraweb', 'master', 'uac', 'menus', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(30, 'aaaa000', 'extraweb-master-uac-menus-update', 'extraweb/master/uac/menus/update/{id}', 'extraweb/master/uac/menus/update/{id}', 'MenusController', 'update', 'post', 'extraweb', 'master', 'uac', 'menus', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(31, 'aaaa000', 'extraweb-master-uac-menus-create', 'extraweb/master/uac/menus/create', 'extraweb/master/uac/menus/create', 'MenusController', 'create', 'get', 'extraweb', 'master', 'uac', 'menus', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(32, 'aaaa000', 'extraweb-master-uac-menus-insert', 'extraweb/master/uac/menus/insert', 'extraweb/master/uac/menus/insert', 'MenusController', 'insert', 'post', 'extraweb', 'master', 'uac', 'menus', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(33, 'aaaa000', 'extraweb-master-uac-menus-delete', 'extraweb/master/uac/menus/delete/{id}', 'extraweb/master/uac/menus/delete/{id}', 'MenusController', 'delete', 'get', 'extraweb', 'master', 'uac', 'menus', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(34, 'aaaa000', 'extraweb-master-uac-menus-remove', 'extraweb/master/uac/menus/remove/{id}', 'extraweb/master/uac/menus/remove/{id}', 'MenusController', 'remove', 'get', 'extraweb', 'master', 'uac', 'menus', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(35, 'aaaa000', 'extraweb-master-uac-permission-view', 'extraweb/master/uac/permissions/view', 'extraweb/master/uac/permissions/view', 'PermissionsController', 'view', 'get', 'extraweb', 'master', 'uac', 'permissions', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(36, 'aaaa000', 'extraweb-master-uac-permission-get_list', 'extraweb/master/uac/permissions/get_list', 'extraweb/master/uac/permissions/get_list', 'PermissionsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'permissions', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(37, 'aaaa000', 'extraweb-master-uac-permission-edit', 'extraweb/master/uac/permissions/edit/{id}', 'extraweb/master/uac/permissions/edit/{id}', 'PermissionsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'permissions', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(38, 'aaaa000', 'extraweb-master-uac-permission-update', 'extraweb/master/uac/permissions/update/{id}', 'extraweb/master/uac/permissions/update/{id}', 'PermissionsController', 'update', 'post', 'extraweb', 'master', 'uac', 'permissions', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(39, 'aaaa000', 'extraweb-master-uac-permission-create', 'extraweb/master/uac/permissions/create', 'extraweb/master/uac/permissions/create', 'PermissionsController', 'create', 'get', 'extraweb', 'master', 'uac', 'permissions', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(40, 'aaaa000', 'extraweb-master-uac-permission-insert', 'extraweb/master/uac/permissions/insert', 'extraweb/master/uac/permissions/insert', 'PermissionsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'permissions', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(41, 'aaaa000', 'extraweb-master-uac-permission-delete', 'extraweb/master/uac/permissions/delete/{id}', 'extraweb/master/uac/permissions/delete/{id}', 'PermissionsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'permissions', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(42, 'aaaa000', 'extraweb-master-uac-permission-remove', 'extraweb/master/uac/permissions/remove/{id}', 'extraweb/master/uac/permissions/remove/{id}', 'PermissionsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'permissions', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(43, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/create', 'extraweb/master/assets/test/create', 'TestController', 'create', 'get', 'extraweb', 'master', 'assets', 'test', 'create', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(44, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/edit/{id}', 'extraweb/master/assets/test/edit/{id}', 'TestController', 'edit', 'get', 'extraweb', 'master', 'assets', 'test', 'edit', '{id}', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(45, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/view', 'extraweb/master/assets/test/view', 'TestController', 'view', 'get', 'extraweb', 'master', 'assets', 'test', 'view', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(46, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/update/{id}', 'extraweb/master/assets/test/update/{id}', 'TestController', 'update', 'post', 'extraweb', 'master', 'assets', 'test', 'update', '{id}', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(47, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/insert', 'extraweb/master/assets/test/insert', 'TestController', 'insert', 'post', 'extraweb', 'master', 'assets', 'test', 'insert', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(48, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/remove/{id}', 'extraweb/master/assets/test/remove/{id}', 'TestController', 'remove', 'get', 'extraweb', 'master', 'assets', 'test', 'remove', '{id}', '', '', '1', 1, 1, 0, 1, '2026-03-26 18:58:04', 1, '2026-03-26 20:58:16'),
(49, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/delete/{id}', 'extraweb/master/assets/test/delete/{id}', 'TestController', 'delete', 'get', 'extraweb', 'master', 'assets', 'test', 'delete', '{id}', '', '', '1', 1, 1, 0, 1, '2026-03-26 18:58:04', 1, '2026-03-26 20:56:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_schemes_p`
--

CREATE TABLE `tbl_a_uac_permissions_schemes_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__title` varchar(255) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(43) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(43) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_permissions_schemes_p`
--

INSERT INTO `tbl_a_uac_permissions_schemes_p` (`id`, `code`, `__title`, `__group_id`, `__user_id`, `__permission_id`, `__module_id`, `__is_allowed`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '002', 'Superuser', 2, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(2, '002', 'Superuser', 2, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(3, '002', 'Superuser', 2, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(4, '002', 'Superuser', 2, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(5, '002', 'Superuser', 2, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(6, '002', 'Superuser', 2, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(7, '002', 'Superuser', 2, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(8, '002', 'Superuser', 2, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(9, '002', 'Superuser', 2, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(10, '002', 'Superuser', 2, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(11, '002', 'Superuser', 2, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(12, '002', 'Superuser', 2, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(13, '002', 'Superuser', 2, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(14, '002', 'Superuser', 2, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(15, '002', 'Superuser', 2, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(16, '002', 'Superuser', 2, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(17, '002', 'Superuser', 2, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(18, '002', 'Superuser', 2, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(19, '002', 'Superuser', 2, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(20, '002', 'Superuser', 2, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(21, '002', 'Superuser', 2, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(22, '002', 'Superuser', 2, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(23, '002', 'Superuser', 2, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(24, '002', 'Superuser', 2, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(25, '002', 'Superuser', 2, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(26, '002', 'Superuser', 2, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(27, '002', 'Superuser', 2, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(28, '002', 'Superuser', 2, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(29, '002', 'Superuser', 2, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(30, '002', 'Superuser', 2, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(31, '002', 'Superuser', 2, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(32, '002', 'Superuser', 2, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(33, '002', 'Superuser', 2, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(34, '002', 'Superuser', 2, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(35, '002', 'Superuser', 2, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(36, '002', 'Superuser', 2, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(37, '002', 'Superuser', 2, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(38, '002', 'Superuser', 2, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(39, '002', 'Superuser', 2, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(40, '002', 'Superuser', 2, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(41, '002', 'Superuser', 2, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(42, '002', 'Superuser', 2, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(43, '002', 'Superuser', 2, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(44, '002', 'Superuser', 2, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(45, '002', 'Superuser', 2, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(46, '002', 'Superuser', 2, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(47, '002', 'Superuser', 2, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(48, '002', 'Superuser', 2, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(49, '002', 'Superuser', 2, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(50, '004', 'Webmaster SPV', 4, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(51, '004', 'Webmaster SPV', 4, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(52, '004', 'Webmaster SPV', 4, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(53, '004', 'Webmaster SPV', 4, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(54, '004', 'Webmaster SPV', 4, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(55, '004', 'Webmaster SPV', 4, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(56, '004', 'Webmaster SPV', 4, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(57, '004', 'Webmaster SPV', 4, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(58, '004', 'Webmaster SPV', 4, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(59, '004', 'Webmaster SPV', 4, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(60, '004', 'Webmaster SPV', 4, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(61, '004', 'Webmaster SPV', 4, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(62, '004', 'Webmaster SPV', 4, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(63, '004', 'Webmaster SPV', 4, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(64, '004', 'Webmaster SPV', 4, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(65, '004', 'Webmaster SPV', 4, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(66, '004', 'Webmaster SPV', 4, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(67, '004', 'Webmaster SPV', 4, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(68, '004', 'Webmaster SPV', 4, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(69, '004', 'Webmaster SPV', 4, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(70, '004', 'Webmaster SPV', 4, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(71, '004', 'Webmaster SPV', 4, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(72, '004', 'Webmaster SPV', 4, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(73, '004', 'Webmaster SPV', 4, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(74, '004', 'Webmaster SPV', 4, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(75, '004', 'Webmaster SPV', 4, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(76, '004', 'Webmaster SPV', 4, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(77, '004', 'Webmaster SPV', 4, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(78, '004', 'Webmaster SPV', 4, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(79, '004', 'Webmaster SPV', 4, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(80, '004', 'Webmaster SPV', 4, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(81, '004', 'Webmaster SPV', 4, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(82, '004', 'Webmaster SPV', 4, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(83, '004', 'Webmaster SPV', 4, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(84, '004', 'Webmaster SPV', 4, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(85, '004', 'Webmaster SPV', 4, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(86, '004', 'Webmaster SPV', 4, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(87, '004', 'Webmaster SPV', 4, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(88, '004', 'Webmaster SPV', 4, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(89, '004', 'Webmaster SPV', 4, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(90, '004', 'Webmaster SPV', 4, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(91, '004', 'Webmaster SPV', 4, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(92, '004', 'Webmaster SPV', 4, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(93, '004', 'Webmaster SPV', 4, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(94, '004', 'Webmaster SPV', 4, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(95, '004', 'Webmaster SPV', 4, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(96, '004', 'Webmaster SPV', 4, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(97, '004', 'Webmaster SPV', 4, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(98, '004', 'Webmaster SPV', 4, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(99, '005', 'Webmaster SOC', 5, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(100, '005', 'Webmaster SOC', 5, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(101, '005', 'Webmaster SOC', 5, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(102, '005', 'Webmaster SOC', 5, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(103, '005', 'Webmaster SOC', 5, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(104, '005', 'Webmaster SOC', 5, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(105, '005', 'Webmaster SOC', 5, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(106, '005', 'Webmaster SOC', 5, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(107, '005', 'Webmaster SOC', 5, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(108, '005', 'Webmaster SOC', 5, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(109, '005', 'Webmaster SOC', 5, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(110, '005', 'Webmaster SOC', 5, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(111, '005', 'Webmaster SOC', 5, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(112, '005', 'Webmaster SOC', 5, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(113, '005', 'Webmaster SOC', 5, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(114, '005', 'Webmaster SOC', 5, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(115, '005', 'Webmaster SOC', 5, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(116, '005', 'Webmaster SOC', 5, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(117, '005', 'Webmaster SOC', 5, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(118, '005', 'Webmaster SOC', 5, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(119, '005', 'Webmaster SOC', 5, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(120, '005', 'Webmaster SOC', 5, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(121, '005', 'Webmaster SOC', 5, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(122, '005', 'Webmaster SOC', 5, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(123, '005', 'Webmaster SOC', 5, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(124, '005', 'Webmaster SOC', 5, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(125, '005', 'Webmaster SOC', 5, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(126, '005', 'Webmaster SOC', 5, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(127, '005', 'Webmaster SOC', 5, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(128, '005', 'Webmaster SOC', 5, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(129, '005', 'Webmaster SOC', 5, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(130, '005', 'Webmaster SOC', 5, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(131, '005', 'Webmaster SOC', 5, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(132, '005', 'Webmaster SOC', 5, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(133, '005', 'Webmaster SOC', 5, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(134, '005', 'Webmaster SOC', 5, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(135, '005', 'Webmaster SOC', 5, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(136, '005', 'Webmaster SOC', 5, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(137, '005', 'Webmaster SOC', 5, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(138, '005', 'Webmaster SOC', 5, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(139, '005', 'Webmaster SOC', 5, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(140, '005', 'Webmaster SOC', 5, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(141, '005', 'Webmaster SOC', 5, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(142, '005', 'Webmaster SOC', 5, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(143, '005', 'Webmaster SOC', 5, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(144, '005', 'Webmaster SOC', 5, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(145, '005', 'Webmaster SOC', 5, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(146, '005', 'Webmaster SOC', 5, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(147, '005', 'Webmaster SOC', 5, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(148, '006', 'Webmaster SPC', 6, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(149, '006', 'Webmaster SPC', 6, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(150, '006', 'Webmaster SPC', 6, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(151, '006', 'Webmaster SPC', 6, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(152, '006', 'Webmaster SPC', 6, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(153, '006', 'Webmaster SPC', 6, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(154, '006', 'Webmaster SPC', 6, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(155, '006', 'Webmaster SPC', 6, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(156, '006', 'Webmaster SPC', 6, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(157, '006', 'Webmaster SPC', 6, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(158, '006', 'Webmaster SPC', 6, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(159, '006', 'Webmaster SPC', 6, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(160, '006', 'Webmaster SPC', 6, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(161, '006', 'Webmaster SPC', 6, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(162, '006', 'Webmaster SPC', 6, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(163, '006', 'Webmaster SPC', 6, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(164, '006', 'Webmaster SPC', 6, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(165, '006', 'Webmaster SPC', 6, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(166, '006', 'Webmaster SPC', 6, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(167, '006', 'Webmaster SPC', 6, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(168, '006', 'Webmaster SPC', 6, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(169, '006', 'Webmaster SPC', 6, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(170, '006', 'Webmaster SPC', 6, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(171, '006', 'Webmaster SPC', 6, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(172, '006', 'Webmaster SPC', 6, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(173, '006', 'Webmaster SPC', 6, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(174, '006', 'Webmaster SPC', 6, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(175, '006', 'Webmaster SPC', 6, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(176, '006', 'Webmaster SPC', 6, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(177, '006', 'Webmaster SPC', 6, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(178, '006', 'Webmaster SPC', 6, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(179, '006', 'Webmaster SPC', 6, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(180, '006', 'Webmaster SPC', 6, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(181, '006', 'Webmaster SPC', 6, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(182, '006', 'Webmaster SPC', 6, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(183, '006', 'Webmaster SPC', 6, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(184, '006', 'Webmaster SPC', 6, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(185, '006', 'Webmaster SPC', 6, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(186, '006', 'Webmaster SPC', 6, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(187, '006', 'Webmaster SPC', 6, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(188, '006', 'Webmaster SPC', 6, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(189, '006', 'Webmaster SPC', 6, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(190, '006', 'Webmaster SPC', 6, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(191, '006', 'Webmaster SPC', 6, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(192, '006', 'Webmaster SPC', 6, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(193, '006', 'Webmaster SPC', 6, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(194, '006', 'Webmaster SPC', 6, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(195, '006', 'Webmaster SPC', 6, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(196, '006', 'Webmaster SPC', 6, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(197, '008', 'Officer SAT', 8, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(198, '008', 'Officer SAT', 8, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(199, '008', 'Officer SAT', 8, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(200, '008', 'Officer SAT', 8, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(201, '008', 'Officer SAT', 8, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(202, '008', 'Officer SAT', 8, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(203, '008', 'Officer SAT', 8, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(204, '008', 'Officer SAT', 8, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(205, '008', 'Officer SAT', 8, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(206, '008', 'Officer SAT', 8, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(207, '008', 'Officer SAT', 8, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(208, '008', 'Officer SAT', 8, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(209, '008', 'Officer SAT', 8, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(210, '008', 'Officer SAT', 8, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(211, '008', 'Officer SAT', 8, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(212, '008', 'Officer SAT', 8, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(213, '008', 'Officer SAT', 8, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(214, '008', 'Officer SAT', 8, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(215, '008', 'Officer SAT', 8, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(216, '008', 'Officer SAT', 8, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(217, '008', 'Officer SAT', 8, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(218, '008', 'Officer SAT', 8, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(219, '008', 'Officer SAT', 8, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(220, '008', 'Officer SAT', 8, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(221, '008', 'Officer SAT', 8, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(222, '008', 'Officer SAT', 8, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(223, '008', 'Officer SAT', 8, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(224, '008', 'Officer SAT', 8, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(225, '008', 'Officer SAT', 8, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(226, '008', 'Officer SAT', 8, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(227, '008', 'Officer SAT', 8, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(228, '008', 'Officer SAT', 8, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(229, '008', 'Officer SAT', 8, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(230, '008', 'Officer SAT', 8, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(231, '008', 'Officer SAT', 8, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(232, '008', 'Officer SAT', 8, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(233, '008', 'Officer SAT', 8, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(234, '008', 'Officer SAT', 8, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(235, '008', 'Officer SAT', 8, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(236, '008', 'Officer SAT', 8, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(237, '008', 'Officer SAT', 8, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(238, '008', 'Officer SAT', 8, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(239, '008', 'Officer SAT', 8, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(240, '008', 'Officer SAT', 8, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(241, '008', 'Officer SAT', 8, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(242, '008', 'Officer SAT', 8, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(243, '008', 'Officer SAT', 8, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(244, '008', 'Officer SAT', 8, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(245, '008', 'Officer SAT', 8, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(246, '009', 'Officer PENTEST', 9, 0, 1, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(247, '009', 'Officer PENTEST', 9, 0, 2, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(248, '009', 'Officer PENTEST', 9, 0, 3, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(249, '009', 'Officer PENTEST', 9, 0, 4, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(250, '009', 'Officer PENTEST', 9, 0, 5, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(251, '009', 'Officer PENTEST', 9, 0, 6, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(252, '009', 'Officer PENTEST', 9, 0, 7, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(253, '009', 'Officer PENTEST', 9, 0, 8, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(254, '009', 'Officer PENTEST', 9, 0, 9, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(255, '009', 'Officer PENTEST', 9, 0, 10, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(256, '009', 'Officer PENTEST', 9, 0, 11, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(257, '009', 'Officer PENTEST', 9, 0, 12, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(258, '009', 'Officer PENTEST', 9, 0, 13, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(259, '009', 'Officer PENTEST', 9, 0, 14, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(260, '009', 'Officer PENTEST', 9, 0, 15, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(261, '009', 'Officer PENTEST', 9, 0, 16, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(262, '009', 'Officer PENTEST', 9, 0, 17, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(263, '009', 'Officer PENTEST', 9, 0, 18, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(264, '009', 'Officer PENTEST', 9, 0, 19, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(265, '009', 'Officer PENTEST', 9, 0, 20, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(266, '009', 'Officer PENTEST', 9, 0, 21, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(267, '009', 'Officer PENTEST', 9, 0, 22, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(268, '009', 'Officer PENTEST', 9, 0, 23, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(269, '009', 'Officer PENTEST', 9, 0, 24, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(270, '009', 'Officer PENTEST', 9, 0, 25, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(271, '009', 'Officer PENTEST', 9, 0, 26, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(272, '009', 'Officer PENTEST', 9, 0, 27, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(273, '009', 'Officer PENTEST', 9, 0, 28, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(274, '009', 'Officer PENTEST', 9, 0, 29, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(275, '009', 'Officer PENTEST', 9, 0, 30, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(276, '009', 'Officer PENTEST', 9, 0, 31, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(277, '009', 'Officer PENTEST', 9, 0, 32, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(278, '009', 'Officer PENTEST', 9, 0, 33, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(279, '009', 'Officer PENTEST', 9, 0, 34, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(280, '009', 'Officer PENTEST', 9, 0, 35, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(281, '009', 'Officer PENTEST', 9, 0, 36, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(282, '009', 'Officer PENTEST', 9, 0, 37, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(283, '009', 'Officer PENTEST', 9, 0, 38, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(284, '009', 'Officer PENTEST', 9, 0, 39, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(285, '009', 'Officer PENTEST', 9, 0, 40, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(286, '009', 'Officer PENTEST', 9, 0, 41, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(287, '009', 'Officer PENTEST', 9, 0, 42, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(288, '009', 'Officer PENTEST', 9, 0, 43, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(289, '009', 'Officer PENTEST', 9, 0, 44, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(290, '009', 'Officer PENTEST', 9, 0, 45, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(291, '009', 'Officer PENTEST', 9, 0, 46, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(292, '009', 'Officer PENTEST', 9, 0, 47, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(293, '009', 'Officer PENTEST', 9, 0, 48, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21'),
(294, '009', 'Officer PENTEST', 9, 0, 49, 3, 1, 1, 1, '2026-05-29 09:12:21', 1, '2026-05-29 09:12:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_users_module_c`
--

CREATE TABLE `tbl_a_uac_users_module_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_users_module_c`
--

INSERT INTO `tbl_a_uac_users_module_c` (`id`, `code`, `__user_id`, `__module_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '21312321', 1, 3, 1, 1, '2026-06-22 10:00:56', 1, '2026-06-22 10:00:56'),
(2, '23112312', 2, 3, 1, 1, '2026-06-22 10:00:56', 1, '2026-06-22 10:00:56'),
(3, '21312321', 3, 3, 1, 1, '2026-06-22 10:00:56', 1, '2026-06-22 10:00:56'),
(4, '23112312', 4, 3, 1, 1, '2026-06-22 10:00:56', 1, '2026-06-22 10:00:56'),
(5, '23112312', 8, 3, 1, 1, '2026-06-22 10:00:56', 1, '2026-06-22 10:00:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_users_p`
--

CREATE TABLE `tbl_a_uac_users_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__user_name` varchar(255) NOT NULL,
  `__user_ldap` varchar(255) NOT NULL,
  `__first_name` varchar(100) NOT NULL,
  `__last_name` varchar(155) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__phone_number` varchar(16) NOT NULL,
  `__password` text NOT NULL,
  `__salt` text NOT NULL,
  `__description` text NOT NULL,
  `__score` int(11) NOT NULL,
  `__uac_user_profile_id` int(32) NOT NULL,
  `__uac_user_registered_type_id` int(32) NOT NULL,
  `__uac_user_location_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_users_p`
--

INSERT INTO `tbl_a_uac_users_p` (`id`, `code`, `__user_name`, `__user_ldap`, `__first_name`, `__last_name`, `__email`, `__phone_number`, `__password`, `__salt`, `__description`, `__score`, `__uac_user_profile_id`, `__uac_user_registered_type_id`, `__uac_user_location_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '21343rdw', 'system.core', '', 'system', 'core', 'system.core@orenocms.com', '08886137768', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 0, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(2, '3432dsa', 'mobile.sys', '', 'mobile', 'sys', 'mobile.sys@orenocms.com', '08886137769', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 0, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(3, '3435dsd', 'admin.web', '', 'admin', 'web', 'admin.web@orenocms.com', '08886137767', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 0, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(8, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 'test', 'hq\\4146', 'test', 'tesa', 'test.tesa@mail.com', '628651342423', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJNMlE9JmFtcDtjWFU9JmFtcDtNMDA9JmFtcDtSa3M9XCJ9Ig.xFxRIFie1VC8vAFN9dsoZ7pD28IlSeRvzhhXfjT3JhE', '', 'desc', 0, 1, 2, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_locations_p`
--

CREATE TABLE `tbl_a_uac_user_locations_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__country_id` int(32) NOT NULL,
  `__province_id` int(32) NOT NULL,
  `__city_id` int(32) NOT NULL,
  `__district_id` int(32) NOT NULL,
  `__area_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_user_locations_p`
--

INSERT INTO `tbl_a_uac_user_locations_p` (`id`, `code`, `__country_id`, `__province_id`, `__city_id`, `__district_id`, `__area_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 1, 6, 58, 0, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_login_attempts_c`
--

CREATE TABLE `tbl_a_uac_user_login_attempts_c` (
  `id` int(32) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__pass_attempt` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__ip_address` varchar(32) NOT NULL,
  `__browser` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_profiles_c`
--

CREATE TABLE `tbl_a_uac_user_profiles_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__address` text NOT NULL,
  `__lat` varchar(255) NOT NULL,
  `__lng` varchar(255) NOT NULL,
  `__zoom` int(4) NOT NULL,
  `__socmed_fb` varchar(255) NOT NULL,
  `__socmed_tw` varchar(255) NOT NULL,
  `__socmed_ins` varchar(255) NOT NULL,
  `__socmed_lnkd` varchar(255) NOT NULL,
  `__photos` text NOT NULL,
  `__last_education` varchar(255) NOT NULL,
  `__last_education_institution` varchar(255) NOT NULL,
  `__skill` text NOT NULL,
  `__notes` text NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_user_profiles_c`
--

INSERT INTO `tbl_a_uac_user_profiles_c` (`id`, `code`, `__address`, `__lat`, `__lng`, `__zoom`, `__socmed_fb`, `__socmed_tw`, `__socmed_ins`, `__socmed_lnkd`, `__photos`, `__last_education`, `__last_education_institution`, `__skill`, `__notes`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 'addr', '3424324324324324', '657657865765765', 4, 'fb', 'tw', 'in', 'ln', 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN/001/original/default.png', 's1', 'ui', 'skil', 'notes', '-', 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_registered_type_c`
--

CREATE TABLE `tbl_a_uac_user_registered_type_c` (
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
-- Dumping data untuk tabel `tbl_a_uac_user_registered_type_c`
--

INSERT INTO `tbl_a_uac_user_registered_type_c` (`id`, `code`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '23ewrwe43242', 'system.auto.create', '', 1, 1, '2025-12-29 12:06:16', 1, '2025-12-29 12:06:16'),
(2, '3284723dfsfhjg', 'superuser.manual.create', '', 1, 1, '2025-12-29 12:06:16', 1, '2025-12-29 12:06:16'),
(3, 'dsada8767da', 'guests.manual.create', '', 1, 1, '2025-12-29 12:06:16', 1, '2025-12-29 12:06:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_token_c`
--

CREATE TABLE `tbl_a_uac_user_token_c` (
  `id` int(32) NOT NULL,
  `__token` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__expiry_date` datetime NOT NULL,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__is_logged_in` tinyint(1) NOT NULL DEFAULT 0,
  `__is_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_user_token_c`
--

INSERT INTO `tbl_a_uac_user_token_c` (`id`, `__token`, `__device_id`, `__expiry_date`, `__uac_group_id`, `__uac_user_id`, `__is_logged_in`, `__is_expiry`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '', '6a32508643523', '2026-06-17 18:34:01', 0, 0, 0, 1, 1, 1, '2026-06-17 15:23:55', 1, '2026-06-17 15:23:55'),
(2, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUlNUMlZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhjVlZZYUU5VlZEQTVcIn0i.H0io9_bb14IwSFuP8E-9E_CDgVvtS-o5eU1RDDwym7Y', '6a32508643523', '2026-06-17 21:24:15', 1, 1, 1, 0, 1, 1, '2026-06-17 15:24:15', 1, '2026-06-17 15:24:15'),
(3, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1WVk1YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUldVRkpGVmpSVVYzQktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWM0JLWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhjVmt6WkU1YWVqQTVcIn0i.yuNJrd5-bJGxulqsAAzvb6diCqNuFGNotYsGmhcGOuM', '6a32508643523', '2026-06-17 21:27:02', 1, 1, 1, 0, 1, 1, '2026-06-17 15:27:02', 1, '2026-06-17 15:27:02'),
(4, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVVYzQktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhjV0V6YkU5a2VqQTVcIn0i.Pg6_k2dw7Z-ymsuB4nTjdNEG9xz6toc2KlxNve9m6Rs', '6a32508643523', '2026-06-17 21:29:27', 1, 1, 1, 0, 1, 1, '2026-06-17 15:29:27', 1, '2026-06-17 15:29:27'),
(5, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhObEZVUWs1UlZEQTVcIn0i.FInObMiUdKmSUqvFCNCN3YdkGSdB75ePpc_Vp6gEAHU', '6a32508643523', '2026-06-17 21:30:40', 1, 1, 1, 0, 1, 1, '2026-06-17 15:30:40', 1, '2026-06-17 15:30:40'),
(6, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUlNUMlZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhObFZZYUU5YWVqQTVcIn0i.oQ7d_UFaOH6EKHuUNqZPq1qj1Wacqa9ICFl4z4AhsEU', '6a32508643523', '2026-06-17 21:34:16', 1, 1, 1, 0, 1, 1, '2026-06-17 15:34:16', 1, '2026-06-17 15:34:16'),
(7, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhObFpVUWxCVlZEQTVcIn0i.ZxPYhH_ZS2pQ1GSQ49rSquhE5QavaeUeFwYYV3bfzmg', '6a32508643523', '2026-06-17 21:35:49', 1, 1, 1, 0, 1, 1, '2026-06-17 15:35:49', 1, '2026-06-17 15:35:49'),
(8, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhObUV6WkU1UlZEQTVcIn0i.CZjtb1kQdN5ccXil-DDN9qIISXw1-n61NJ1NmlD7dfk', '6a32508643523', '2026-06-17 21:39:00', 1, 1, 1, 0, 1, 1, '2026-06-17 15:39:00', 1, '2026-06-17 15:39:00'),
(9, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hQVmtac00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGaGtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZXWHBLVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhObUY2Ums1VlZEQTVcIn0i.Y1-sitj33ss47_sm_gNOjlnjSJbStYVMNU5c1_n0NZM', '6a32508643523', '2026-06-17 21:39:51', 1, 1, 1, 0, 1, 1, '2026-06-17 15:39:51', 1, '2026-06-17 15:39:51'),
(10, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSVlkwVkRGU2NtVkZNVlZUV0d4T1VrVkZlbFF3VWtKa01ERlZVMWhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNUazVWTVZWU1dHUlFWa1ZHTTFSclVrNU9WVGxWV2pOa1RsSkZSalZVV0hCQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlplbEpQWVcxa00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZrelpFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKcVRrVXhSVkZZYUU1aGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRFMllUTm9UbFpGUlRGVVZWSkNUVVV4Tm1GNlZsQlNSVVl6VkZWU1NtVnJNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVDJWdFkzbFVNRkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBaV3RGZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhjVlpZYUU1VlZEQTVcIn0i.-hvDlxkPxah8HbB8oQ9zqkylJDtRsbn5OYDNTDVFs54', '6a3283038b06a', '2026-06-18 00:25:11', 1, 1, 1, 0, 1, 1, '2026-06-17 18:25:11', 1, '2026-06-17 18:25:11'),
(11, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSVlkwVkRGU2NtVkZNVlZUV0d4T1VrVkZlbFF3VWtKa01ERlZVMWhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNUazVWTVZWU1dHUlFWa1ZHTTFSclVrNU9WVGxWV2pOa1RsSkZSalZVV0hCQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlplbEpQWVcxa00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZrelpFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKcVRrVXhSVkZZYUU1aGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRFMllUTm9UbFpGUlRGVVZWSkNUVVV4Tm1GNlZsQlNSVVl6VkZWU1NtVnJNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVDJWdFkzbFVNRkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBaV3RGZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhjVlpVUWxCVlZEQTVcIn0i.h6ZYpToNY-5S9qSDm6aQx2neqRM7JfrjUo7tUWlHdMo', '6a3283038b06a', '2026-06-18 00:25:49', 1, 1, 1, 0, 1, 1, '2026-06-17 18:25:49', 1, '2026-06-17 18:25:49'),
(12, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUlNUMlZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJsQldSVVl6VkRGU1FrNVZPVlZVV0hCT1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNibVZWT1ZWaE0yeE9aVzF6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1IwMHdWRlZTUWsxVk9WVmhlbFpPWVd0V00xUlZVa1pOUlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZrelpFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWTVZSVlVrSk9WVEZGWVhwV1RtVnJNVE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRsRlUxUldVRlpGYkRaVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJ1Y0c1a01ERkZWbFJXVUZaSGREVlVWbEpDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBaV3RGZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhObFZZWkU5YWVqQTVcIn0i.GYYkL7__-YTF7J4uB6732ONUSQy7ojy2ZNVln-TLLDs', '6a32862a1f3e7', '2026-06-18 00:34:06', 1, 1, 1, 0, 1, 1, '2026-06-17 18:34:06', 1, '2026-06-17 18:34:06'),
(13, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVZrNVNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtKa01EVTJXak5rVGxKRlZqVlVWVkpDWldzMVJWRllaRTlsYkd3elZGVlNWazVWTVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGWVROc1VGWkhkRFZVVmxKQ1pEQTVWVkZZWkU1U1IwMHdWRlZTUWswd05YRlJXR1JQWlcxamVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVVZsSlNaREF4UlZkWWFFNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2QwTTFSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhSVkZVVGxCU1JVWXpWRlpTU21Rd01VVlVWRUpPVWtWRmVsUnRjRUprTURWVllUTmtUbEpGYkRWVU1WSnlaV3N4TmxGWVpGQldSV3N4VkRGU1NtVkZNVVZSVkZaT1VrVkdNMVJ1Y0c1a01ERkZXWHBLVGxKRlJYcFVNRkpxVGtVMWNWb3paRTVTUldzeFZGVlNRbVZGTlVWUldHUlBZV3RXTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVXhObFpVUWs1a2VqQTVcIn0i.hRHFnb3jO546-1bxj8t8aQgvWcQEbKJMvTiW_BM2K1c', '6a33759547138', '2026-06-18 17:35:43', 1, 1, 1, 0, 1, 1, '2026-06-18 11:35:43', 1, '2026-06-18 11:35:43'),
(14, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVll6VkRGU1JtVkZPVlZoTTJoT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1RsSkZiRFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVRsQlNSVVl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXbnBPVUZKR2F6QlVWVkpDVFVVeE5tRjZWazVTUld3elZGVlNWazVWTVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1QyVnRZM2xVTUZKQ1pEQTFObEZZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JPWVcxME0xUlZVa1pOUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZrelpFNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2ROTUZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1IwMHdWRzF3Ym1Rd01VVlZXSEJRVmtkME0xUlhjRUprTURWVllUTmtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1Y2VkRCU1drNUZNVVZSVkU1T1VrVkdNMVJXVWtwa01ERkZWbFJXVGxKRlJqVlVNVkpDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBaV3RHTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pXczFWVkZZWkU5YWVqQTVcIn0i.MN-3FNlcvoMWhuLyeoLxK5bB64v4yvzHKOFGIqR0QP4', '6a339519e6a29', '2026-06-18 19:50:06', 1, 1, 1, 0, 1, 1, '2026-06-18 13:50:06', 1, '2026-06-18 13:50:06'),
(15, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1WVk1YRlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrVnNOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWM0JLWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVZrNVNSVVl6VkRGU1FrNVZPVlZVV0hCT1VrVkZlbFF3VWtKa01ERTJWRmhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNUazVWT1ZWaE0yeE9aV3RHTTFSWGNGWk9WVGxWV2pOa1VGWkhjM2hVYkZKQ1pEQTVWVkZZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpRVmtaR00xUlZVbTVPVlRsVllUTndUMUpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVkxVkZkd1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2QwTTFSVlVrSk9WVEZGWVhwV1RtVnJNVE5VVlZKcVRrVXhSVkZZY0U1bGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRFMllYcFdVRlpGYkRaVVZWSkNaVlUxVldGNlZsQlNSVVV4VkRGU1ZrMVZNVVZSVkZaT1VrVkdNMVJXVWtwT1ZUbFZWVlJHVUZaSGN6RlVhMUpDWkRBNVJXRjZWbEJXUlRCM1ZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVrcGxWVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQTFSVlJZYkU1YWVqQTVcIn0i.J-Hsy8wIfattrjNSnK06SiyCltvkhQAslNAFE-rBqEY', '6a38ac561a0e8', '2026-06-22 16:43:22', 1, 1, 1, 0, 1, 1, '2026-06-22 10:43:22', 1, '2026-06-22 10:43:22'),
(16, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUldVRkpGVmpSVU1GSnFaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrVnNOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpZYkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWFFNWhhMFl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtKa01ERTJWRlJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZZelZGVlNWazVWTVVWUldHeE9ZV3RHTTFRd1VscE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJVVmxCV1JURTJWREZTY2sxRk5WVmhlbFpPWld4Rk1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZSVVZrNVNSVVkxVkZkd1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZURnhVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZXTlZSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhSVkZZY0U1bGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVa0prTURWVllUTmtUbEpGYkRWVVZWSkNUa1UxY1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZWVlJHVUZaSGREWlVhMUp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9aVzEwTTFSVlVrcGxWVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0V6YkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVTFSVmt6YUU1a2VqQTVcIn0i.2lY9lbXQmaYUtvrmXNt02jvCoQyQgI7EPgGz-gexf14', '6a38e87c968c5', '2026-06-22 20:47:13', 1, 1, 1, 0, 1, 1, '2026-06-22 14:47:13', 1, '2026-06-22 14:47:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_group_permissions_r`
--

CREATE TABLE `tbl_b_uac_group_permissions_r` (
  `id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL DEFAULT 0,
  `__group_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_group_permissions_r`
--

INSERT INTO `tbl_b_uac_group_permissions_r` (`id`, `__user_id`, `__group_id`, `__permission_id`, `__module_id`, `__is_allowed`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 1, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(2, 1, 1, 2, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(3, 1, 1, 3, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(4, 1, 1, 4, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(5, 1, 1, 5, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(6, 1, 1, 6, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(7, 1, 1, 7, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(8, 1, 1, 8, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(9, 1, 1, 9, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(10, 1, 1, 10, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(11, 1, 1, 11, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(12, 1, 1, 12, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(13, 1, 1, 13, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(14, 1, 1, 14, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(15, 1, 1, 15, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(16, 1, 1, 16, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(17, 1, 1, 17, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(18, 1, 1, 18, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(19, 1, 1, 19, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(20, 1, 1, 20, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(21, 1, 1, 21, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(22, 1, 1, 22, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(23, 1, 1, 23, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(24, 1, 1, 24, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(25, 1, 1, 25, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(26, 1, 1, 26, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(27, 1, 1, 27, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(28, 1, 1, 28, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(29, 1, 1, 29, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(30, 1, 1, 30, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(31, 1, 1, 31, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(32, 1, 1, 32, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(33, 1, 1, 33, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(34, 1, 1, 34, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(35, 1, 1, 35, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(36, 1, 1, 36, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(37, 1, 1, 37, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(38, 1, 1, 38, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(39, 1, 1, 39, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(40, 1, 1, 40, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(41, 1, 1, 41, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(42, 1, 1, 42, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(43, 1, 1, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(44, 1, 2, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(45, 1, 3, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(46, 1, 1, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(47, 1, 2, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(48, 1, 3, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(49, 1, 1, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(50, 1, 2, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(51, 1, 3, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(52, 1, 1, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(53, 1, 2, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(54, 1, 3, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(55, 1, 1, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(56, 1, 2, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(57, 1, 3, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(58, 1, 1, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(59, 1, 2, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(60, 1, 3, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(61, 1, 1, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(62, 1, 2, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(63, 1, 3, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(64, 1, 1, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(65, 1, 2, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(66, 1, 3, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(255, 8, 8, 1, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(256, 8, 8, 2, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(257, 8, 8, 3, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(258, 8, 8, 4, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(259, 8, 8, 5, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(260, 8, 8, 6, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(261, 8, 8, 7, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(262, 8, 8, 8, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(263, 8, 8, 9, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(264, 8, 8, 10, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(265, 8, 8, 11, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(266, 8, 8, 12, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(267, 8, 8, 13, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(268, 8, 8, 14, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(269, 8, 8, 15, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(270, 8, 8, 16, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(271, 8, 8, 17, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(272, 8, 8, 18, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(273, 8, 8, 19, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(274, 8, 8, 20, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(275, 8, 8, 21, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(276, 8, 8, 22, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(277, 8, 8, 23, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(278, 8, 8, 24, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(279, 8, 8, 25, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(280, 8, 8, 26, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(281, 8, 8, 27, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(282, 8, 8, 28, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(283, 8, 8, 29, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(284, 8, 8, 30, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(285, 8, 8, 31, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(286, 8, 8, 32, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(287, 8, 8, 33, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(288, 8, 8, 34, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(289, 8, 8, 35, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(290, 8, 8, 36, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(291, 8, 8, 37, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(292, 8, 8, 38, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(293, 8, 8, 39, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(294, 8, 8, 40, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(295, 8, 8, 41, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(296, 8, 8, 42, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(297, 8, 8, 43, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(298, 8, 8, 44, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(299, 8, 8, 45, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(300, 8, 8, 46, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(301, 8, 8, 47, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(302, 8, 4, 1, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(303, 8, 4, 2, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(304, 8, 4, 3, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(305, 8, 4, 4, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(306, 8, 4, 5, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(307, 8, 4, 6, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(308, 8, 4, 7, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(309, 8, 4, 8, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(310, 8, 4, 9, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(311, 8, 4, 10, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(312, 8, 4, 11, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(313, 8, 4, 12, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(314, 8, 4, 13, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(315, 8, 4, 14, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(316, 8, 4, 15, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(317, 8, 4, 16, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(318, 8, 4, 17, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(319, 8, 4, 18, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(320, 8, 4, 19, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(321, 8, 4, 20, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(322, 8, 4, 21, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(323, 8, 4, 22, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(324, 8, 4, 23, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(325, 8, 4, 24, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(326, 8, 4, 25, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(327, 8, 4, 26, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(328, 8, 4, 27, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(329, 8, 4, 28, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(330, 8, 4, 29, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(331, 8, 4, 30, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(332, 8, 4, 31, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(333, 8, 4, 32, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(334, 8, 4, 33, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(335, 8, 4, 34, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(336, 8, 4, 35, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(337, 8, 4, 36, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(338, 8, 4, 37, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(339, 8, 4, 38, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(340, 8, 4, 39, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(341, 8, 4, 40, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(342, 8, 4, 41, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(343, 8, 4, 42, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(344, 8, 4, 43, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(345, 8, 4, 44, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(346, 8, 4, 45, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(347, 8, 4, 46, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(348, 8, 4, 47, 3, 1, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_menu_permissions_r`
--

CREATE TABLE `tbl_b_uac_menu_permissions_r` (
  `id` int(32) NOT NULL,
  `__menu_id` int(32) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_group_c`
--

CREATE TABLE `tbl_b_uac_user_group_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_user_group_c`
--

INSERT INTO `tbl_b_uac_user_group_c` (`id`, `code`, `__uac_user_id`, `__uac_group_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '32423qweq', 1, 1, 1, 1, '2026-01-05 08:51:27', 1, '2026-01-05 08:51:27'),
(2, 'e3weawea', 1, 2, 1, 1, '2026-01-05 08:51:27', 1, '2026-01-05 08:51:27'),
(11, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 8, 8, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(12, 'rP6hOJYVSJ85ovkAw3ARx1DOMLOeBhAN', 8, 4, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_permissions_r`
--

CREATE TABLE `tbl_b_uac_user_permissions_r` (
  `id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_user_permissions_r`
--

INSERT INTO `tbl_b_uac_user_permissions_r` (`id`, `__user_id`, `__permission_id`, `__is_denied`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(2, 1, 2, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(3, 1, 3, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(4, 1, 4, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(5, 1, 5, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(6, 1, 6, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(7, 1, 7, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(8, 1, 8, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(9, 1, 9, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(10, 1, 10, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(11, 1, 11, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(12, 1, 12, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(13, 1, 13, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(14, 1, 14, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(15, 1, 15, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(16, 1, 16, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(17, 1, 17, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(18, 1, 18, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(19, 1, 19, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(20, 1, 20, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(21, 1, 21, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(22, 1, 22, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(23, 1, 23, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(24, 1, 24, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(25, 1, 25, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(26, 1, 26, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(27, 1, 27, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(28, 1, 28, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(29, 1, 29, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(30, 1, 30, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(31, 1, 31, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(32, 1, 32, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(33, 1, 33, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(34, 1, 34, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(35, 1, 35, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(36, 1, 36, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(37, 1, 37, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(38, 1, 38, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(39, 1, 39, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(40, 1, 40, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(41, 1, 41, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(42, 1, 42, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(43, 1, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(44, 2, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(45, 3, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(46, 1, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(47, 2, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(48, 3, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(49, 1, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(50, 2, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(51, 3, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(52, 1, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(53, 2, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(54, 3, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(55, 1, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(56, 2, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(57, 3, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(58, 1, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(59, 2, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(60, 3, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(61, 1, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(62, 2, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(63, 3, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(64, 1, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(65, 2, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(66, 3, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(161, 8, 1, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(162, 8, 2, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(163, 8, 3, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(164, 8, 4, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(165, 8, 5, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(166, 8, 6, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(167, 8, 7, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(168, 8, 8, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(169, 8, 9, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(170, 8, 10, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(171, 8, 11, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(172, 8, 12, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(173, 8, 13, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(174, 8, 14, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(175, 8, 15, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(176, 8, 16, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(177, 8, 17, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(178, 8, 18, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(179, 8, 19, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(180, 8, 20, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(181, 8, 21, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(182, 8, 22, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(183, 8, 23, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(184, 8, 24, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(185, 8, 25, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(186, 8, 26, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(187, 8, 27, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(188, 8, 28, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(189, 8, 29, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(190, 8, 30, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(191, 8, 31, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(192, 8, 32, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(193, 8, 33, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(194, 8, 34, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(195, 8, 35, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(196, 8, 36, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(197, 8, 37, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(198, 8, 38, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(199, 8, 39, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(200, 8, 40, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(201, 8, 41, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(202, 8, 42, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(203, 8, 43, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(204, 8, 44, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(205, 8, 45, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(206, 8, 46, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30'),
(207, 8, 47, 0, 1, 1, '2026-06-15 18:29:30', 1, '2026-06-15 18:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_a_country_p`
--

CREATE TABLE `tbl_c_uac_location_a_country_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__phone_ext` varchar(6) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_c_uac_location_a_country_p`
--

INSERT INTO `tbl_c_uac_location_a_country_p` (`id`, `code`, `__phone_ext`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'idn', '+62', 'Indonesia', '', 1, 1, '2026-05-13 11:38:41', 1, '2026-05-13 11:38:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_b_provinces_p`
--

CREATE TABLE `tbl_c_uac_location_b_provinces_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__capital_city` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_c_uac_location_b_provinces_p`
--

INSERT INTO `tbl_c_uac_location_b_provinces_p` (`id`, `code`, `__name`, `__capital_city`, `__description`, `__country_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '11', 'Aceh', 'Banda Aceh', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(2, '51', 'Bali', 'Denpasar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(3, '36', 'Banten', 'Serang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(4, '17', 'Bengkulu', 'Bengkulu', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(5, '34', 'Daerah Istimewa Yogyakarta', 'Yogyakarta', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(6, '31', 'Daerah Khusus Ibukota Jakarta', 'DKI', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(7, '75', 'Gorontalo', 'Gorontalo', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(8, '15', 'Jambi', 'Jambi', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(9, '32', 'Jawa Barat', 'Bandung', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(10, '33', 'Jawa Tengah', 'Semarang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(11, '35', 'Jawa Timur', 'Surabaya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(12, '61', 'Kalimantan Barat', 'Pontianak', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(13, '63', 'Kalimantan Selatan', 'Banjarbaru', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(14, '62', 'Kalimantan Tengah', 'Palangka Raya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(15, '64', 'Kalimantan Timur', 'Samarinda', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(16, '65', 'Kalimantan Utara', 'Tanjung Selor', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(17, '19', 'Kepulauan Bangka Belitung', 'Pangkalpinang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(18, '21', 'Kepulauan Riau', 'Tanjungpinang 	', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(19, '81', 'Maluku', 'Ambon', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(20, '82', 'Maluku Utara', 'Sofifi', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(21, '52', 'Nusa Tenggara Barat', 'Mataram', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(22, '53', 'Nusa Tenggara Timur', 'Kupang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(23, '91', 'Papua', 'Jayapura', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(24, '92', 'Papua Barat', 'Manokwari', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(25, '96', 'Papua Barat Daya', 'Sorong', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(26, '95', 'Papua Pegunungan', 'Jayawijaya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(27, '93', 'Papua Selatan', 'Salor', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(28, '94', 'Papua Tengah', 'Wanggar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(29, '14', 'Riau', 'Pekanbaru', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(30, '76', 'Sulawesi Barat', 'Mamuju', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(31, '73', 'Sulawesi Selatan', 'Makassar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(32, '72', 'Sulawesi Tengah', 'Palu', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(33, '74', 'Sulawesi Tenggara', 'Kendari', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(34, '71', 'Sulawesi Utara', 'Manado', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(35, '13', 'Sumatera Barat', 'Padang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(36, '16', 'Sumatera Selatan', 'Palembang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(37, '12', 'Sumatera Utara', 'Medan', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_c_cities_p`
--

CREATE TABLE `tbl_c_uac_location_c_cities_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_c_uac_location_c_cities_p`
--

INSERT INTO `tbl_c_uac_location_c_cities_p` (`id`, `code`, `__name`, `__description`, `__country_id`, `__province_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '11.05', 'Kab. Aceh Barat', 'Meulaboh', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(2, '11.12', 'Kab. Aceh Barat Daya', 'Blangpidie', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(3, '11.06', 'Kab. Aceh Besar', 'Kota Janthoe', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(4, '11.14', 'Kab. Aceh Jaya', 'Calang', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(5, '11.01', 'Kab. Aceh Selatan', 'Tapaktuan', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(6, '11.10', 'Kab. Aceh Singkil', 'Singkil', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(7, '11.16', 'Kab. Aceh Tamiang', 'Kota Kualasimpang', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(8, '11.04', 'Kab. Aceh Tengah', 'Takengon', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(9, '11.02', 'Kab. Aceh Tenggara', 'Kutacane', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(10, '11.03', 'Kab. Aceh Timur', 'Idi Rayeuk', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(11, '11.08', 'Kab. Aceh Utara', 'Lhoksukon', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(12, '11.17', 'Kab. Bener Meriah', 'Simpang Tiga Redelong', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(13, '11.11', 'Kab. Bireuen', 'Bireuen', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(14, '11.13', 'Kab. Gayo Lues', 'Blangkejeren', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(15, '11.15', 'Kab. Nagan Raya', 'Suka Makmue', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(16, '11.07', 'Kab. Pidie', 'Sigli', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(17, '11.18', 'Kab. Pidie Jaya', 'Meureudu', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(18, '11.09', 'Kab. Simeulue', 'Sinabang', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(19, '11.71', 'Kota Banda Aceh', '', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(20, '11.74', 'Kota Langsa', '', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(21, '11.73', 'Kota Lhokseumawe', '', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(22, '11.72', 'Kota Sabang', '', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(23, '11.75', 'Kota Subulussalam', '', 1, 1, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(24, '1', 'Kabupaten Badung', 'Mangupura', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(25, '2', 'Kabupaten Bangli', 'Bangli', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(26, '3', 'Kabupaten Buleleng', 'Singaraja', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(27, '4', 'Kabupaten Gianyar', 'Gianyar', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(28, '5', 'Kabupaten Jembrana', 'Negara', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(29, '6', 'Kabupaten Karangasem', 'Amlapura', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(30, '7', 'Kabupaten Klungkung', 'Semarapura', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(31, '8', 'Kabupaten Tabanan', 'Singasana', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(32, '9', 'Kota Denpasar', '', 1, 2, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(33, '1', 'Kabupaten Lebak', 'Rangkasbitung', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(34, '2', 'Kabupaten Pandeglang', 'Pandeglang', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(35, '3', 'Kabupaten Serang', 'Ciruas', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(36, '4', 'Kabupaten Tangerang', 'Tigaraksa', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(37, '5', 'Kota Cilegon', '', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(38, '6', 'Kota Serang', '', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(39, '7', 'Kota Tangerang', '', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(40, '8', 'Kota Tangerang Selatan', '', 1, 3, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(41, '1', 'Kabupaten Bengkulu Selatan', 'Kota Manna', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(42, '2', 'Kabupaten Bengkulu Tengah', 'Karang Tinggi', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(43, '3', 'Kabupaten Bengkulu Utara', 'Kota Arga Makmur', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(44, '4', 'Kabupaten Kaur', 'Kaur Selatan', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(45, '5', 'Kabupaten Kepahiang', 'Kepahiang', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(46, '6', 'Kabupaten Lebong', 'Tubei', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(47, '7', 'Kabupaten Mukomuko', 'Kota Mukomuko', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(48, '8', 'Kabupaten Rejang Lebong', 'Curup', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(49, '9', 'Kabupaten Seluma', 'Pasar Tais', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(50, '10', 'Kota Bengkulu', '', 1, 4, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(51, '34.02', 'Kabupaten Bantul', 'Bantul', 1, 5, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(52, '34.03', 'Kabupaten Gunungkidul', 'Wonosari', 1, 5, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(53, '34.01', 'Kabupaten Kulon Progo', 'Wates', 1, 5, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(54, '34.04', 'Kabupaten Sleman', 'Sleman', 1, 5, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(55, '34.71', 'Kota Yogyakarta', '', 1, 5, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(56, '1', 'Kabupaten Administrasi Kepulauan Seribu', 'Pulau Pramuka', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(57, '2', 'Kota Administrasi Jakarta Barat', '', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(58, '3', 'Kota Administrasi Jakarta Pusat', '', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(59, '4', 'Kota Administrasi Jakarta Selatan', '', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(60, '5', 'Kota Administrasi Jakarta Timur ', '', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(61, '6', 'Kota Administrasi Jakarta Utara', '', 1, 6, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(62, '75.02', 'Kab. Boalemo', 'Tilamuta', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(63, '75.03', 'Kab. Bone Bolango', 'Suwawa', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(64, '75.01', 'Kab. Gorontalo', 'Limboto', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(65, '75.05', 'Kab. Gorontalo Utara', 'Kwandang', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(66, '75.04', 'Kab. Pohuwato', 'Marisa', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(67, '75.71', 'Kota Gorontalo', '', 1, 7, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(68, '1', 'Kabupaten Batanghari', 'Muara Bulian', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(69, '2', 'Kabupaten Bungo', 'Muara Bungo', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(70, '3', 'Kabupaten Kerinci', 'Siulak', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(71, '4', 'Kabupaten Merangin', 'Bangko', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(72, '5', 'Kabupaten Muaro Jambi', 'Sengeti', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(73, '6', 'Kabupaten Sarolangun', 'Sarolangun', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(74, '7', 'Kabupaten Tanjung Jabung Barat', 'Kuala Tungkal', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(75, '8', 'Kabupaten Tanjung Jabung Timur', 'Muara Sabak', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(76, '9', 'Kabupaten Tebo', 'Muara Tebo', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(77, '9', 'Kota Jambi', '', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(78, '10', 'Kota Sungai Penuh', '', 1, 8, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(79, '1', 'Kabupaten Bandung', 'Soreang', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(80, '2', 'Kabupaten Bandung Barat', 'Ngamprah', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(81, '3', 'Kabupaten Bekasi', 'Cikarang Pusat', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(82, '4', 'Kabupaten Bogor', 'Cibinong', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(83, '5', 'Kabupaten Ciamis', 'Ciamis', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(84, '6', 'Kabupaten Cianjur', 'Cianjur', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(85, '7', 'Kabupaten Cirebon', 'Sumber', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(86, '8', 'Kabupaten Garut', 'Tarogong Kidul', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(87, '9', 'Kabupaten Indramayu', 'Indramayu', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(88, '10', 'Kabupaten Karawang', 'Karawang Barat', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(89, '11', 'Kabupaten Kuningan', 'Kuningan', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(90, '12', 'Kabupaten Majalengka', 'Majalengka', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(91, '13', 'Kabupaten Pangandaran', 'Parigi', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(92, '14', 'Kabupaten Purwakarta', 'Purwakarta', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(93, '15', 'Kabupaten Subang', 'Subang', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(94, '16', 'Kabupaten Sukabumi', 'Palabuhanratu', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(95, '17', 'Kabupaten Sumedang', 'Sumedang Utara', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(96, '18', 'Kabupaten Tasikmalaya', 'Singaparna', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(97, '19', 'Kota Bandung', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(98, '19', 'Kota Banjar', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(99, '20', 'Kota Bekasi', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(100, '21', 'Kota Bogor', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(101, '22', 'Kota Cimahi', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(102, '23', 'Kota Cirebon', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(103, '24', 'Kota Bandung', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(104, '25', 'Kota Depok', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(105, '26', 'Kota Sukabumi', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(106, '27', 'Kota Tasikmalaya', '', 1, 9, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(107, '1', 'Kabupaten Banjarnegara', 'Banjarnegara', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(108, '2', 'Kabupaten Banyumas', 'Purwokerto', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(109, '3', 'Kabupaten Batang', 'Batang', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(110, '4', 'Kabupaten Blora', 'Blora', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(111, '5', 'Kabupaten Boyolali', 'Boyolali', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(112, '6', 'Kabupaten Brebes', 'Brebes', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(113, '7', 'Kabupaten Cilacap', 'Cilacap', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(114, '8', 'Kabupaten Demak', 'Demak', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(115, '9', 'Kabupaten Grobogan', 'Purwodadi', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(116, '10', 'Kabupaten Jepara', 'Jepara', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(117, '11', 'Kabupaten Karanganyar', 'Karanganyar', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(118, '12', 'Kabupaten Kebumen', 'Kebumen', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(119, '13', 'Kabupaten Kendal', 'Kendal', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(120, '14', 'Kabupaten Klaten', 'Klaten', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(121, '15', 'Kabupaten Kudus', 'Kudus', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(122, '16', 'Kabupaten Magelang', 'Mungkid', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(123, '17', 'Kabupaten Pati', 'Pati', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(124, '18', 'Kabupaten Pekalongan', 'Kajen', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(125, '19', 'Kabupaten Pemalang', 'Pemalang', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(126, '20', 'Kabupaten Purbalingga', 'Purbalingga', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(127, '21', 'Kabupaten Purworejo', ' 	Purworejo', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(128, '22', 'Kabupaten Rembang', 'Rembang', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(129, '23', 'Kabupaten Semarang', 'Ungaran', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(130, '24', 'Kabupaten Sragen', 'Sragen', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(131, '25', 'Kabupaten Sukoharjo', ' 	Sukoharjo', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(132, '26', 'Kabupaten Tegal', 'Slawi', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(133, '27', 'Kabupaten Temanggung', 'Temanggung', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(134, '28', 'Kabupaten Wonogiri', 'Wonogiri', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(135, '29', 'Kabupaten Wonosobo', 'Wonosobo', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(136, '30', 'Kota Magelang', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(137, '31', 'Kota Pekalongan', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(138, '32', 'Kota Salatiga', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(139, '33', 'Kota Semarang', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(140, '34', 'Kota Surakarta', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35'),
(141, '35', 'Kota Tegal', '', 1, 10, 1, 1, '2026-05-25 08:37:35', 1, '2026-05-25 08:37:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_d_districts_p`
--

CREATE TABLE `tbl_c_uac_location_d_districts_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL DEFAULT '0',
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_c_uac_location_d_districts_p`
--

INSERT INTO `tbl_c_uac_location_d_districts_p` (`id`, `code`, `__name`, `__description`, `__country_id`, `__province_id`, `__city_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '11.05.07', 'Arongan Lambalek', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(2, '11.05.06', 'Bubon', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(3, '11.05.01', 'Johan Pahlawan', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(4, '11.05.02', 'Kaway XVI', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(5, '11.05.09', 'Meureubo', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(6, '11.05.08', 'Pantai Ceureumen', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(7, '11.05.12', 'Pantai Ceureumen', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(8, '11.05.12', 'Panton Reu', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(9, '11.05.05', 'Samatiga', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(10, '11.05.03', 'Sungai Mas', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(11, '11.05.04', 'Woyla', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(12, '11.05.10', 'Woyla Barat', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(13, '11.05.11', 'Woyla Timur', '0', 1, 1, 1, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(14, '11.06.01', 'Blangpidie', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(15, '11.06.02', 'Tangan-Tangan', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(16, '11.06.03', 'Manggeng', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(17, '11.06.04', 'Susoh', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(18, '11.06.05', 'Kuala Batee', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(19, '11.06.06', 'Babah Rot', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(20, '11.06.07', 'Setia', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(21, '11.06.08', 'Jeumpa', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(22, '11.06.09', 'Lembah Sabil', '0', 1, 1, 2, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(23, '11.06.21', 'Baitussalam', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(24, '11.06.23', 'Blang Bintang', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(25, '11.06.07', 'Darul Imarah', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(26, '11.06.20', 'Darul Kamal', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(27, '11.06.12', 'Darussalam', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(28, '11.06.03', 'Indrapuri', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(29, '11.06.10', 'Ingin Jaya', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(30, '11.06.16', 'Kota Jantho', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(31, '11.06.15', 'Krueng Barona Jaya', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(32, '11.06.18', 'Kuta Baro', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(33, '11.06.17', 'Kuta Cot Glie', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(34, '11.06.11', 'Kuta Malaka', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(35, '11.06.14', 'Lembah Seulawah', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(36, '11.06.22', 'Leupung', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(37, '11.06.02', 'Lhoknga', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(38, '11.06.01', 'Lhoong', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(39, '11.06.05', 'Mesjid Raya', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(40, '11.06.09', 'Montasik', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(41, '11.06.08', 'Peukan Bada', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(42, '11.06.13', 'Pulo Aceh', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(43, '11.06.04', 'Seulimeum', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(44, '11.06.19', 'Simpang Tiga', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37'),
(45, '11.06.06', 'Suka Makmur', '0', 1, 1, 3, 1, 1, '2026-05-25 09:50:37', 1, '2026-05-25 09:50:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_e_areas_p`
--

CREATE TABLE `tbl_c_uac_location_e_areas_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `__disctrict_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_module_c`
--
ALTER TABLE `tbl_a_uac_users_module_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_module_c`
--
ALTER TABLE `tbl_a_uac_users_module_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_project_orenocms_uac_backup`
--
CREATE DATABASE IF NOT EXISTS `db_project_orenocms_uac_backup` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_project_orenocms_uac_backup`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `payload` text NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_groups_p`
--

CREATE TABLE `tbl_a_uac_groups_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__level` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `__uac_group_parent_id` int(32) NOT NULL,
  `__is_key_group` tinyint(1) NOT NULL DEFAULT 0,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_group_project` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_menu_p`
--

CREATE TABLE `tbl_a_uac_menu_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` text NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__level` int(4) NOT NULL,
  `__rank` int(4) NOT NULL,
  `__badge` varchar(255) NOT NULL,
  `__badge_value` varchar(255) NOT NULL,
  `__badge_id` int(32) NOT NULL DEFAULT 0,
  `__is_badge` tinyint(1) NOT NULL DEFAULT 0,
  `__uac_menu_parent_id` int(32) NOT NULL DEFAULT 0,
  `__is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `__is_head` tinyint(1) NOT NULL DEFAULT 0,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_open` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_modules_p`
--

CREATE TABLE `tbl_a_uac_modules_p` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__default_path` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_p`
--

CREATE TABLE `tbl_a_uac_permissions_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` varchar(255) NOT NULL,
  `__controller` varchar(255) NOT NULL,
  `__action` varchar(255) NOT NULL,
  `__method` varchar(255) NOT NULL,
  `__segment1` varchar(255) DEFAULT NULL,
  `__segment2` varchar(255) DEFAULT NULL,
  `__segment3` varchar(255) DEFAULT NULL,
  `__segment4` varchar(255) DEFAULT NULL,
  `__segment5` varchar(255) DEFAULT NULL,
  `__segment6` varchar(255) DEFAULT NULL,
  `__segment7` varchar(255) DEFAULT NULL,
  `__segment8` varchar(255) DEFAULT NULL,
  `__description` text NOT NULL,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_public` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_permissions_p`
--

INSERT INTO `tbl_a_uac_permissions_p` (`id`, `code`, `__alias`, `__name`, `__path`, `__controller`, `__action`, `__method`, `__segment1`, `__segment2`, `__segment3`, `__segment4`, `__segment5`, `__segment6`, `__segment7`, `__segment8`, `__description`, `__is_basic`, `__is_public`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(50, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/get_list/{id}', 'extraweb/master/assets/test/get_list/{id}', 'TestController', 'get_list', 'post', 'extraweb', 'master', 'assets', 'test', 'get_list', '{id}', '', '', '1', 1, 1, 0, 1, '2026-03-26 18:58:04', 1, '2026-03-26 20:55:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_schemes_p`
--

CREATE TABLE `tbl_a_uac_permissions_schemes_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__title` varchar(255) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(43) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(43) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_users_p`
--

CREATE TABLE `tbl_a_uac_users_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__user_name` varchar(255) NOT NULL,
  `__user_ldap` varchar(255) NOT NULL,
  `__first_name` varchar(100) NOT NULL,
  `__last_name` varchar(155) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__phone_number` varchar(16) NOT NULL,
  `__password` text NOT NULL,
  `__salt` text NOT NULL,
  `__description` text NOT NULL,
  `__score` int(11) NOT NULL,
  `__uac_user_profile_id` int(32) NOT NULL,
  `__uac_user_registered_type_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_locations_p`
--

CREATE TABLE `tbl_a_uac_user_locations_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__country_id` int(32) NOT NULL,
  `__province_id` int(32) NOT NULL,
  `__city_id` int(32) NOT NULL,
  `__district_id` int(32) NOT NULL,
  `__area_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_login_attempts_c`
--

CREATE TABLE `tbl_a_uac_user_login_attempts_c` (
  `id` int(32) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__pass_attempt` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__ip_address` varchar(32) NOT NULL,
  `__browser` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_profiles_c`
--

CREATE TABLE `tbl_a_uac_user_profiles_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__address` text NOT NULL,
  `__lat` varchar(255) NOT NULL,
  `__lng` varchar(255) NOT NULL,
  `__zoom` int(4) NOT NULL,
  `__socmed_fb` varchar(255) NOT NULL,
  `__socmed_tw` varchar(255) NOT NULL,
  `__socmed_ins` varchar(255) NOT NULL,
  `__socmed_lnkd` varchar(255) NOT NULL,
  `__photos` text NOT NULL,
  `__last_education` varchar(255) NOT NULL,
  `__last_education_institution` varchar(255) NOT NULL,
  `__skill` text NOT NULL,
  `__notes` text NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_registered_type_c`
--

CREATE TABLE `tbl_a_uac_user_registered_type_c` (
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
-- Struktur dari tabel `tbl_a_uac_user_token_c`
--

CREATE TABLE `tbl_a_uac_user_token_c` (
  `id` int(32) NOT NULL,
  `__token` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__expiry_date` datetime NOT NULL,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__is_logged_in` tinyint(1) NOT NULL DEFAULT 0,
  `__is_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_group_permissions_r`
--

CREATE TABLE `tbl_b_uac_group_permissions_r` (
  `id` int(32) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_menu_permissions_r`
--

CREATE TABLE `tbl_b_uac_menu_permissions_r` (
  `id` int(32) NOT NULL,
  `__menu_id` int(32) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_group_c`
--

CREATE TABLE `tbl_b_uac_user_group_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_permissions_r`
--

CREATE TABLE `tbl_b_uac_user_permissions_r` (
  `id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_a_country_p`
--

CREATE TABLE `tbl_c_uac_location_a_country_p` (
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
-- Struktur dari tabel `tbl_c_uac_location_b_provinces_p`
--

CREATE TABLE `tbl_c_uac_location_b_provinces_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_c_cities_p`
--

CREATE TABLE `tbl_c_uac_location_c_cities_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_d_districts_p`
--

CREATE TABLE `tbl_c_uac_location_d_districts_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` int(32) NOT NULL DEFAULT 0,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_e_areas_p`
--

CREATE TABLE `tbl_c_uac_location_e_areas_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `__disctrict_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
