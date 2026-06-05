-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2026 pada 13.28
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
(27, 'fXIERq5mlExbsekYmp5Svusn9qoIXpey', 'default', 'fXIERq5mlExbsekYmp5Svusn9qoIXpey/001/small/P064146_ARIF_FIRMANSYAH.jpg', 'upload photos from create user at admin dashboard', 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36');

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
(27, 27, 1, 1, 1, '2026-06-04 16:55:36', 1, '2026-06-04 16:55:36');

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
(3, '3435dsd', 'admin.web', '', 'admin', 'web', 'admin.web@orenocms.com', '08886137767', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 0, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53');

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
(1, '', '699584f118594', '2026-02-18 16:39:16', 1, 1, 0, 1, 1, 1, '2026-01-22 16:41:24', 1, '2026-02-18 16:23:03'),
(2, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUlNUMlZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWTlliRTVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlZrOVNSVlkwVkd0U1NtUXdNVVZUVkZaT1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNibVZWT1ZWaGVrWlBWa2R6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZYUU1V1IzTXhWREZTY2s1Rk1VVmhlbFpPVmtWVk1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVU1WSktaREF4UlZrelpFNVNSVVkwVkd0U2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2R6ZDFSV1VrWk5SVEZ4VVZoa1RtRnRkRE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRsRlUxUldVRlpHVlhoVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZXak5rVUZaSGREUlVWbEp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBaV3RHTTFSVlVrWk5SVGxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFWVlZZYkU5a2VqQTVcIn0i.wemzB0XiRNtBe4NToorkHSyjhYkGvVA4cxHlTfgI624', '699588ea2f24f', '2026-02-18 22:54:27', 1, 1, 1, 0, 1, 1, '2026-02-18 16:54:27', 1, '2026-02-18 16:54:27'),
(3, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1WVk1YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVVZWSktaREE1VlZsNlRrNVdSVll6VkZkd1JtVkZPVlZoTTJoT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWM0JLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1VGWkhaRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSM014VkZkd1RrNVZPVlZSVkZaT1VrVkdOVlF4VWtKa01EVTJXbnBXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZZelZGVlNWazVWTVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGWVROc1VGWkhkRFZVVmxKQ1pEQTVWVkZZWkU1U1IwMHdWRlZTUWswd05YRmhlbFpPVWtka00xUlZVbFpOUlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZkWWFGQldSM041Vkd4U2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZReFVuSmxWVEUyWVhwV1RsSkhkRE5VVlZKS1RsVXhSVkZVVGxCU1IzTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVa0prTURWVllUTmtUbEpGYkRWVU1WSnlaV3N4TmxGWVpGQldSV3N4VkRGU1NtVkZNVVZSVkZaT1VrVkdNMVJ1Y0c1a01ERkZXWHBLVUZaSGRETlVNRkpDWkRBMVZWVlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVscE5WVGxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RUQXhObHA2Ums1YWVqQTVcIn0i.j_ifgevpGU8EVHhINSIEm2eeO9q4ineWqk3_eJ7Nsu8', '69965b954697a', '2026-02-19 13:38:52', 1, 1, 1, 0, 1, 1, '2026-02-19 07:38:52', 1, '2026-02-19 07:38:52'),
(4, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZNVlJYY0VKa01ERnhWRlJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFSV1VrcE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpPVWtkamVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFNVdSVlY0Vkcxd2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKeVpWVXhSVkZZYkU1bGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMllUTmtUbEpHVlRGVVZWSkNaVVV4Y1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZWVlJHVUZaSGRETlVNRkpxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZXTkZSV1VsWk5hemxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhSVlpZWkU5a2VqQTVcIn0i.MuJDAcECc9wNG7s1Rr8dd8oKZH1PySONpfG9cDGYuyw', '6997cf5c4c9a1', '2026-02-20 16:05:07', 1, 1, 1, 0, 1, 1, '2026-02-20 10:05:07', 1, '2026-02-20 10:05:07'),
(5, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhiWE14VkZkd1RtUXdNVVZoTTJ4T1VrVkdOVlJZY0VKa01EVTJXak5rVGxKRlZqVlVWVkpDWldzMVJWRllaRTlsYkd3elZGVlNWazVWT1ZWaGVrcFBWa2R6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JQVWtVd2VsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVVYzQk9UbFU1VlZGWWFFOWxiV041VkRCU1JtVkZNWEZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZReFVuSmxWVEUyVVZoa1VGWkZiRE5VVlZKS1pXc3hSVkZVVGxCU1JVWXpWRlpTU21Rd01VVlVWRUpPVWtWRmVsUnRjRUprTURWVllYcFdVRlpHYTNoVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVGxKRlJYZFVXSEJxVGtVMWNWb3paRTVTUldzeFZGVlNRbVZWTVRaaGVsWk9Va1ZWZWxRd1VscE9SVEZWVWxoc1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSVlpVUWs5YWVqQTVcIn0i.CH4dmAyTcsaGbHAioxoK1kBYZZHZBI3bsD2wRT1-Gtk', '699bb403b718e', '2026-02-23 15:05:46', 1, 1, 1, 0, 1, 1, '2026-02-23 09:05:46', 1, '2026-02-23 09:05:46'),
(6, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaHNUbUZyVmpSVU1WSnlaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrZGplbFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVhGVFdHaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVVWs5bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhhMVkwVkRGU2NrNVZPVlZWVkVKT1VrVkZNVlJYY0VabFJUVkZVMWhrVGxKR1ZYZFVWVkpDWlVVeFZWRllaRTlsYkdzeFZERlNRazVWTVVWUldHeE9ZV3RHTTFRd1VscE9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZYUU1V1IzTXhWREZTY2s1Rk1VVlJXR1JPWlcxak1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVU1WSktaREF4UlZSWVpFNVNSVVV4VkZWU1JtVkZNVVZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKeVpWVXhWVkpVUWs1aGEwWXpWR3hTVW1Rd01VVlNXR2hPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGYkRWVVZWSkNUa1UxY1dGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZXak5rVGxKRlJqWlVNRkp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUk9aV3RHTTFSVlVuSmtNREZWVWxoa1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhWVk5ZYkU5VlZEQTVcIn0i.0pFiPEjy2MQsxwFuHft9lx-N7xN9cCkjgxTFjxniXIE', '699d07ef90fae', '2026-02-24 16:12:25', 1, 1, 1, 0, 1, 1, '2026-02-24 10:12:25', 1, '2026-02-24 10:12:25'),
(7, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUldVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrWlZlVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWRlliRTVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVUms5aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxhMVkwVkRGU2NrNVZPVlZWVkVKT1VrVkZNVlJYY0dwT1JUVnhXbnBPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkd3elZGVlNWazVWTVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1QyVnRZM2xVTUZKQ1pEQTFObEZZYUU1V1IzTXhWREZTY21WVk1UWlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1JtVkZNVVZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKeVpWVTFObHA2U2xCU1IwMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjRUprTURWVllUTmtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1Y2VkRCU1drNUZNVVZSVkU1T1VrVldORlF4VW5KT1ZUbFZVMWh3VGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZWVWxoa1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhObEpZY0ZCUlZEQTVcIn0i.PsAgNoXG9bNHprsEMk3DYip49Yxssq3Tqlf0dgs5tvE', '699e5049e7b1c', '2026-02-25 15:31:38', 1, 1, 1, 0, 1, 1, '2026-02-25 09:31:38', 1, '2026-02-25 09:31:38'),
(8, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlV3Vkc1d1JtVkZPVlZoTTJoT1ZrWldObFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKU1pWVXhWVkpVUms1bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NrNVZPVlZWVkVKT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JQWlcxa00xUlZVa1pOUlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVkwVkZkd2JrMHdPVlZoTTJST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZXWHBLVGxKRlJYcFVNRkpDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVrWmxWVGxGV1hwV1VGWkZSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RrVTFSVlpZYkU5YWVqQTVcIn0i.G6ZLKxxH5rFk5VZBeBEL3wDQ7WY7Y7bGdHbUjCHfUVU', '699fa58a09eeb', '2026-02-26 14:45:26', 1, 1, 1, 0, 1, 1, '2026-02-26 08:45:26', 1, '2026-02-26 08:45:26'),
(9, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVUWs1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJsQldSVVl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtKa01EVTJXbnBXVUZaRk1UWlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNUbVZyT1ZWaGVrcFBWa1ZHTTFSdWNHNWtNREZGV1hwS1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JQVWtVd2VsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlaREF4UlZkWWFFNVNSVVkwVkZkd1FtUXdPVlZoZWxaUVZrVkdOVlJWVWtKbGF6bEZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWTVZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhSVkZVVGxCU1IzTXhWRmh3VG1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRFMlZGUldVRlpHYTNoVVZWSkNUVEE1UlZGWVpFOWxiR3N4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZWbFJXVGxKRlJYZFVXSEJxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWUldHUlBZV3RXTTFSVlVrWmxWVEZGVVZSV1VGWkhjekZVVlZKS1pEQXhSVlJVVWxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSVnA2Ums1a2VqQTVcIn0i.v-3m2xg3GoyA2CVRHv7oDx5Xr8nLS5yVd2nlSOWINDE', '69af7d1ff1967', '2026-03-10 15:08:53', 1, 1, 1, 0, 1, 1, '2026-03-10 09:08:53', 1, '2026-03-10 09:08:53'),
(10, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hPVWtWc00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0dwT1JUVnhXbnBPVUZKR2F6QlVNVkp5VFVVMVJWRllaRTlsYldNeFZERlNibVZWT1ZWaE0yeE9aVzF6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZVVmxCV1JURTJWREZTY2s1Rk1VVlJXR1JPWlcxa05GUldVbkpPVlRGRlVWaHNVRlpGUmpOVVYzQk9UbFU1VlZGWWFFNVNSVVkxVkZkd1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVTFObHA2U2xCU1IwMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRmVsUXdVbkpPVlRsRlUxUldVRlpGYkRaVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZXak5rVGxKRlJqWlVNRkpHWlVVNVZXRXpaRTVTUldzeFZGVlNRbVZWTVRaaGVsWk9Va1ZXTTFSVlVrcGxWVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0Y2VmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSV0V6Y0U1UlZEQTVcIn0i.k6ym_ZdH0Upn1Cuub3JdCx3IhYQ_Hj4c2VyTR_el0Zw', '69b8b7d3afb26', '2026-03-17 15:09:30', 1, 1, 1, 0, 1, 1, '2026-03-17 09:09:30', 1, '2026-03-17 09:09:30'),
(11, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVll6VkRGU1JtVkZOVVZUV0doT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkZiRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSVVl6Vkd4U2NtUXdNVVZoZWxaT1VrVkdOVlF4VW1wT1JUVnhXak5rVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldRelZGVlNUbVF3T1ZWaGVrcFBWa1ZHTTFSWGNGWk9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWREZTY2s1Rk1VVlJXR1JPVmtac00xUlZVa1psVlRsVllUTndUMUpGUmpOVU1WSktaREF4UlZSWVpFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZSVlVrSk5WVGxWVVZoa1VGWkhkRE5VVlZKS1RsVTFObHA2U2xCU1JVWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVa0prTURFMlVWUldVRlpHYTNoVVZWSkNaVlUxVldGNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZXak5rVGxKRlJqUlViWEJDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazVWTVhGUldHUk9aV3RGZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0Y2VmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1pXczFSVlJVUWs1UlZEQTVcIn0i.IGC8Yl0s-CYNQmllzdvaUXTbI9gr8ottBG9V7OmCkV8', '69bb0ddb29f71', '2026-03-19 09:43:40', 1, 1, 1, 0, 1, 1, '2026-03-19 03:43:40', 1, '2026-03-19 03:43:40'),
(12, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkdUbVZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVll6VkZkd1JtVkZNWEZUV0doT1ZrWldObFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlZWVVdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1VGWkhaRFJVVmxKeVRsVXhWVkpVUms1bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemNFOVNSM014VkZod2NtUXdNVVZaZWxKT1VrVkZlbFF3VWtKa01ERTJWRmhrVGxKSFRUQlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGVkZSU1RsSkZSVEZVVjNCeVRsVXhjVlJZWkU1U1JWWTFWREZTY2s1Rk1VVlJXR1JPVmtac00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVkwVkd0U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1V3ZDFReFVuSmxhemxWVVZoa1QyVnRaRE5VVlZKcVRrVXhSVkZZY0U1bGEwWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaV3N4TmxGWVpFNWxiV1F6VkZWU2NtVlZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZXak5rVGxKRlJqUlViWEJDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVrWk5SVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RUQTFWVmRZY0U5a2VqQTVcIn0i.xZRgHrvxQFBh8erM1qF9QA_RWTpi2zu9T7qGPfCt4-I', '69c510bcd94d0', '2026-03-26 23:56:37', 1, 1, 1, 0, 1, 1, '2026-03-26 17:56:37', 1, '2026-03-26 17:56:37'),
(13, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlV3Vkc1d1JtVkZPVlZoTTJoT1ZrZHpNRlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKU1pWVXhWVkpVVmxCU1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZlbFF3VWtKa01ERnhWRlJPVUZKR2F6QlVNVkp5VFVVMVJWRllaRkJXUlVZelZGVlNUbVF3TVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1RsSkZSWHBVTUZKQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JQVWtVeE0xUlZVa1psVlRsVllUTndUMUpGUmpOVU1WSktUbFU1VlZSVVZrNVNSVVkwVkd0U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKcVRrVXhSVkZZYkU1bGJVMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRk1WUlZVa0prTURFMlVWaGtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1l6VkZWU2FrNUZNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVGxKRlJYZFVXSEJDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazVWTVhGaGVsWk9aVzEwTTFSVlVrWk5SVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RrVXhjVm96YkZCUlZEQTVcIn0i.u2OJrNsLYfrF_ZnZM_T-Wi_KlRUsCVZ5gAyYaWV-sXM', '69c5dd00e8ae2', '2026-03-27 14:28:28', 1, 1, 1, 0, 1, 1, '2026-03-27 08:28:28', 1, '2026-03-27 08:28:28'),
(14, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUldVRkpGVmpSVU1GSnFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtKa01ERTJWRmhrVGxKSFRUQlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGVkZSU1RsSkZSVEZVVjNCeVRsVXhjVlJZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JPWVcxME0xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM041Vkd4U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhSVkZZY0U1bGEwWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaV3N4TmxGWVpFNWxiV1F6VkZWU2NtVlZPVlZoTTJ4T1pXdFdORlF4VW5Ka01ERkZXWHBLVGxKRlJqVlVNVkpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVscE5WVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFSVmt6Y0ZCVlZEQTVcIn0i.Tq8kKqLS6CrTS0vyioYRPVfjezT9PlhdMGEACjxoqWc', '69c6510cd94c4', '2026-03-27 22:47:39', 1, 1, 1, 0, 1, 1, '2026-03-27 16:47:39', 1, '2026-03-27 16:47:39'),
(15, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtaa01ERnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRlZTU21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1UlZsNlZsQldSVlkwVkRGU2NtUXdNVVZUVkZaT1VrVkZlbFF3VWtabFJUVkZVMVJPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNUazVWT1ZWaE0yeE9aVzF6TVZSWWNFNWtNREZGWVROc1RsSkZSalZVTVZKQ1pEQTVWVkZVVmxCV1JURTJWREZTY2sxRk5WVmhlbFpPVWtka00xUlZVa1psVlRsVllUTndUMUpGUmpOVWJuQnVUbFU1VlZSVVZrNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGSlBaVzF6TVZSV1VrWk9WVGxWVVZoa1RtRnRkRE5VVlZKcVRrVXhWVkpVUWs1aGJVMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRFMllYcFdVRlpGYkRaVU1WSnlaV3N4TmxGWVpGQldSV3d6VkZWU1NrNVZNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZWVlJHVUZaSGRETlVNRkpDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazB3T1VWaGVsWk9aVzEwTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhObFpZY0U1VlZEQTVcIn0i.L4Rp6zwYpnaubw23vsIlsUCXF9iCa5ID5xpGVS9U1w8', '69c9ef715dbdd', '2026-03-30 16:35:31', 1, 1, 1, 0, 1, 1, '2026-03-30 10:35:31', 1, '2026-03-30 10:35:31'),
(16, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkNUbVZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrZHpNVlJXVWtaa01ERnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWRlZTU21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZkd1RtUXdNVVZoTTJ4T1VrVkdOVlJZY0dwT1JUVnhXbnBPVUZKR2F6QlVNVkp5VFVVMVJWRllaRTlsYldNeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFSV1VrcGtNREZGVWxSQ1VGWkhkRFZVVmxKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JPWVcxME0xUlZVbFpOUlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZrelpFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxWVEUyVVZoa1VGWkZiRE5VVlZKS1pXczFObHA2U2xCU1IwMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRmVsUXdVbkpPVlRFMllUTmtUbEpHVlRGVVZWSkNaVVV4Y1ZGWVpFNVdSa1V4VkRGU1NtVkZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZWbFJXVGxKRlJqVlVNVkpDWkRBMVZWVlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBaV3RGZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFWVm96YUU1a2VqQTVcIn0i.BaphEPif7PMsj9UlpgdaTqsQcEgcJFnuteDsOQRz_AY', '69cb9a15dbb8c', '2026-03-31 22:58:13', 1, 1, 1, 0, 1, 1, '2026-03-31 16:58:13', 1, '2026-03-31 16:58:13'),
(17, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWR3RTU21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSM014Vkcxd1ZtUXdNVVZTV0doT1VrVkdOVlJZY0VKa01EVTJXbnBPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNRazVWTVVWUldHeE9ZVzF6TVZSdWNHNWtNREZGWVROc1VGWkhkRE5VTUZKeVRsVXhjVlJZWkU1U1IwMHdWRlZTUWsxVk9WVlJXR1JQVWtVeE0xUlZVa1pOUlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVY0Vkd0U1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFReFVuSk5helZWVVZoa1RsWkZWak5VVlZKS1pXc3hSVkZVVGxCU1IwMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGYkRWVU1WSnlUVEE1UlZGWVpGQldSV3N4VkRGU1FrNUZPVlZoTTJ4T1pXdEdNMVJ1Y0c1a01ERkZWbFJXVGxKRlJYZFVXSEJDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVsWk5SVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVTFWVlJZWkU1a2VqQTVcIn0i.PSYHkKNp2wzO_MoXeWHCCj1O7m_m86UfbFTyPtEa10w', '69cca42d90a94', '2026-04-01 17:53:03', 1, 1, 1, 0, 1, 1, '2026-04-01 11:53:03', 1, '2026-04-01 11:53:03'),
(18, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUldVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrVkdOVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWVlliRTVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtabFJUVlZWMVJXVUZaR1ZYaFVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNRazVWTVZWU1ZFWlBZV3RHTTFSclVrNU9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWRlZTUWsxVk9WVlplbEpQWVcxa00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhWVkpVUms5aGJYTXhWR3hTVm1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRGRllUTm9UbFpHVlhsVVZWSkNUVVV4Tm1GNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1a01ERkZWbFJXVDJWdFkzbFVNRkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhObEpZWkZCVlZEQTVcIn0i.kBLFlFdKKN2gxU1uAxAvrxmqWIRMRzf0vsm8fPQlS6A', '69ce533b80cc4', '2026-04-03 00:31:09', 1, 1, 1, 0, 1, 1, '2026-04-02 18:31:09', 1, '2026-04-02 18:31:09'),
(19, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVmtac00xUXhVbXBOTURGVlVsUldVRlpGVmpSVU1WSnlaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01ERlZVMVJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZZelZGVlNWazVWTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWREZTY2s1Rk1VVmhlbFpRVmtaRmVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlaREF4UlZkWWFFNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKbFZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZZYUU1aGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVa0prTURWVllUTmtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZXak5rVUZaSGN6RlVhMUpxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWUldHUlBZV3RXTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSVk5VVmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhWVkpVUms5YWVqQTVcIn0i.TBPiiBLwWFFf-_Yr9BULrywgjDnS7cMZF1JRSX_UBwA', '69e97fdb46826', '2026-04-23 15:11:56', 1, 1, 1, 0, 1, 1, '2026-04-23 09:11:56', 1, '2026-04-23 09:11:56'),
(20, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVWExSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrWlZlVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVUms5aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJsQldSM014Vkcxd1ZtUXdNVVZTV0doT1VrVkdOVlJZY0VKa01ERlZVMVJXVUZaRk1UWlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNibVZWTVZWU1dHUlFWa1ZHTTFSWGNGWk9WVGxWV2pOa1RsSkZSalZVV0hCQ1pEQTVWVkZZWkU1U1IwMHdWRlZTUWswd05YRmhlbFpRVmtaR00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKbFJURlZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWTVZReFVuSk5helZWVVZoa1RsWkZWak5VVlZKS1pXc3hSVkZZYUU1aGJYTXhWRmh3VG1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRsRlUxaG9UbFpGUlRGVVZWSkNaVlUxVldGNlZsQlNSVVl6VkZWU1NtVnJNVVZSVkZaT1VrVkdNMVJ1Y0c1a01ERkZXWHBLVUZaSGN6RlVhMUpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSVkpZYUZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhSVkZZYkZCUlZEQTVcIn0i.boFgbBGo4yamc5r5HI5pTXJscG461UH8vcBSLGy2vyo', '69f9a3933e897', '2026-05-05 21:00:28', 1, 1, 1, 0, 1, 1, '2026-05-05 15:00:28', 1, '2026-05-05 15:00:28'),
(21, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNWazVWT1ZWaGVrcFBWa2R6TVZSVlVuSmtNREZGVkZSU1VGWkhjM3BVYm5CQ1pEQTVWVkZVVmxCV1JURTJWREZTY2sxRk5WVlJXR1JQWlcxa00xUlZVa1psVlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURWVllYcFdVRlpHYTNoVU1WSnlaREE1VlZGWVpFNWxiV014VkRGU2FrMHdNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZWVlJHVGxKRlJYcFVNRkpDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVTFSVlJZY0ZCVlZEQTVcIn0i.7_0zxDmELORu6hU59UIA_PJRJSJE6s3X20R8i1V4GJE', '6a015e77b53f6', '2026-05-11 17:43:39', 1, 1, 1, 0, 1, 1, '2026-05-11 11:43:39', 1, '2026-05-11 11:43:39'),
(22, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hQVmtac00xUXhVbXBOTURGVlVsUlNUMlZyVmpSVU1WSnlaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrVnNOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpZYkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemNFOVNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZNVlJYY0VKa01ERlZVMWhrVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyT1ZWaGVrcFBWa1ZHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpRVmtaR00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVU1WSktUbFU1VlZSVVZrOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1V3ZDFReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKeVpWVXhSVkZZYUU1aGEwWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGUldVRlpHYTNoVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZWVlJHVUZaSGN6RlVhMUpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazVWTVhGaGVsWk9aVzF6ZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVXhWVlZVUms1VlZEQTVcIn0i.I-KfBG4ABFJfrmwFQ0uJGFEXrqs7XXM_Q_hFo94SaZI', '6a02d35f63410', '2026-05-12 20:14:51', 1, 1, 1, 0, 1, 1, '2026-05-12 14:14:51', 1, '2026-05-12 14:14:51');
INSERT INTO `tbl_a_uac_user_token_c` (`id`, `__token`, `__device_id`, `__expiry_date`, `__uac_group_id`, `__uac_user_id`, `__is_logged_in`, `__is_expiry`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(23, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrVkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlZrOVNSVlkwVkd0U1NtVkZNVlZUV0d4T1VrVkZNVlJYY0VabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNUazVWTVZWU1dHUlFWa2R6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JQVWtVeE0xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2R6ZDFSV1VrWk5SVEZ4VWxob1RtRnJiRE5VVlZKeVpWVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRFMllUTm9UbFpGUlRGVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZWbFJXVGxKRlJYZFVXSEJDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhObFJVUWs5VlZEQTVcIn0i.Z99pOuCqdyFebnqBqkILo03XzJXecfRwFuneJFUUAbM', '6a031013cb3bf', '2026-05-13 00:33:45', 1, 1, 1, 0, 1, 1, '2026-05-12 18:33:45', 1, '2026-05-12 18:33:45'),
(24, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVZrNVNSVVl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNWazVWTVZWU1ZFWlBZVzF6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JPWld0Rk1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZSVVZrNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2QwTTFSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURWVllUTm9UbFpHVlhsVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZWbFJXVGxKRlJqWlVWVkp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9aVzEwTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFWVlpZYUU5YWVqQTVcIn0i.IXK4a7Jj8HazxZN91ryYE_cGrPDEQiP3nuQU1irMHu4', '6a03e71a35128', '2026-05-13 15:55:16', 1, 1, 1, 0, 1, 1, '2026-05-13 09:55:16', 1, '2026-05-13 09:55:16'),
(25, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVRsQlNSVVl6VkRGU1FtUXdNVVZaZWxKT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNUazVWT1ZWaE0yeE9aV3RHTTFSV1VrcGtNREZGVWxSQ1VGWkhkRE5VTUZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY21WVk1UWlNXR2hRVmtkME0xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZrelpGQldSM1EyVkRGU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2ROTUZSVlVrSk9WVEZGVVZoa1QyVnRaRE5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRFMllYcFdVRlpGYkRaVVZWSkNaVVV4Y1ZGWVpFNVdSa1V4VkRGU1FrNUZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZVMWh3VGxaRlZURlVNVkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBaV3RGTVZReFVrNU9WVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVXhjVlpVUWs1VlZEQTVcIn0i.k9hpcCqn1joxwY7XwJHljNzC7NwQHpASzNHxonXPglc', '6a0a93fdea1d9', '2026-05-18 17:25:41', 1, 1, 1, 0, 1, 1, '2026-05-18 11:25:41', 1, '2026-05-18 11:25:41'),
(26, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVmtac00xUXhVbXBOTURGVlVsUldVRkpGVmpSVU1GSnFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhhMVkwVkRGU2NtVkZNVlZUV0d4T1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKSGRETlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUazVWT1ZWaE0yeE9aV3RHTTFSdWNHNWtNREZGV1hwS1RsSkZSalJVVmxKeVRsVXhjVlJZYUU1V1IzTXhWREZTY21WVk1UWlJXR1JPVmtWcmVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWREZTUWs1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMllYcFdVRlpGYkRaVVZWSkNUVEE1UlZGWVpFOWxiR3d6VkZWU1JtVkZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZVMWh3VGxKRlJqUlVWM0JxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZWZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFSVmw2Ums5YWVqQTVcIn0i.s3-kciYviWTbmd1shyvdOkXJ2iymLyVe9BUztz0KNAQ', '6a0bcd4bec7fe', '2026-05-19 15:47:56', 1, 1, 1, 0, 1, 1, '2026-05-19 09:47:56', 1, '2026-05-19 09:47:56'),
(27, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVRsQlNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKR1ZYZFVWVkpDWlVVeFZWRllaRTlsYkdzeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFRd1VscE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJVVmxCV1JURTJWREZTY2sxRk5WVlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVY0Vkd0U1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2ROTUZSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWR3hTVW1Rd01VVlNXR2hPVWtWRmVsUnRjSEpPVlRFMllUTmtUbEpHVlRGVVZWSkNUa1UxY1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZWVlJHVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVsWk5SVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVXhjVlpVUms1a2VqQTVcIn0i.yleWqtVAwtk28f8ofS9fNZJ9fJGQeNprBLiYxSojioc', '6a0c107c9df39', '2026-05-19 20:25:53', 1, 1, 1, 0, 1, 1, '2026-05-19 14:25:53', 1, '2026-05-19 14:25:53'),
(28, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Rk5UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVWExSktaREE1VlZsNlRrNVdSVlYzVkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNRkpxWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RtRnJiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NtUXdNVVZWV0hCT1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKSFRUQlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNibVZWTVZWU1dHUlFWa1ZHTTFSWGNGWk9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY21WVk1UWmhlbFpPVWtWV00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZkWWFFNVNSVVV4VkZWU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWVVZoa1QxSkZNVE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRsRlUxaG9UbFpGUlRGVVZWSkNaVlUxVldGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZVMWh3VUZaSGRETlVWbEpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBZV3RXTTFSVlVuSmtNREZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pWVXhSV0V6YkU5UlZEQTVcIn0i.qAn4UzGvax4arUG_OOJNvZT5X8nYqlVIYQoWMlSRU0A', '6a0d41ff3e63b', '2026-05-20 18:09:24', 1, 1, 1, 0, 1, 1, '2026-05-20 12:09:24', 1, '2026-05-20 12:09:24'),
(29, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVVmxCV1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWFFNWhhMFl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRkJXUlVZelZGVlNUbVF3T1ZWaGVrcFBWa1ZHTTFSWGNGWmtNREZGVWxSQ1VGWkhkRFZVVmxKQ1pEQTVWVkZVVmxCV1JURTJWRlZTUWsxVk9WVlJXR1JPWVcxek1WUXhVbFpOVlRGRlVWaHNVRlpGUmpOVVZsSlNaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZXTlZSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRk1WUlZVa0prTURFMlVWUldVRlpHYTNoVVZWSkNaVlUxVlZGWVpFNVdSa1V4VkRGU1NtVkZNVVZSVkZaT1VrZHpNVlJZY0U1a01ERkZWbFJXVGxKRlJqVlVNVkp5VGxVMVZWWllaRTVTUldzeFZGVlNRbVZGTlVWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFSVlJZWkU5VlZEQTVcIn0i.5qaLyEYKPhjUjHX_Yu1a3MuLAAFspOe58W2HX0zn4aU', '6a0e7135b83c5', '2026-05-21 15:43:05', 1, 1, 1, 0, 1, 1, '2026-05-21 09:43:05', 1, '2026-05-21 09:43:05'),
(30, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrVnNOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWFFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldNeFZERlNUazVWT1ZWaE0yeE9aVzF6TVZSWWNFNWtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1IwMHdWREZTY2s1Rk1VVmhlbFpPVWtWVk1WUXhVbFpOVlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFNVNSVVkwVkZkd1FtUXdPVlZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZXTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVbkpPVlRFMllYcFdVRlpGYkRaVU1WSnlaV3N4TmxGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJ1Y0c1T1ZUbFZXak5rVUZaSGRETlVWbEp5VGxVMVZWWllaRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZXTTFSVlVrWmxWVEZGVVZSV1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhjVkZVUWs1VlZEQTVcIn0i.MjOa3xifRbJCjq7gp1N2n90tsGj-C2uxwa7BM2DLV60', '6a0fcaca5bef5', '2026-05-22 16:20:41', 1, 1, 1, 0, 1, 1, '2026-05-22 10:20:41', 1, '2026-05-22 10:20:41'),
(31, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Rk5UWlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkdUbVZyVmpSVU1WSnlaREE1VlZsNlRrNVdSVlV3Vkc1d1JtVkZPVlZoTTJoT1ZrWlZlVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNRkpxWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlZWVVdHaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKU1pWVXhWVkpVUms5aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSM014VkZod2NtUXdNVVZaZWxKT1VrVkZlbFF3VWtKa01ERlZVMWhrVGxKRlZqVlVWVkpDWldzMVJWRllaRTlsYkd3elZGVlNWazVWTVVWUldHeE9ZV3RHTTFSWGNGWk9WVGxWV2pOa1RsSkZSalZVV0hCQ1pEQTVWVkZVVmxCV1JURTJWREZTY2sxRk5WVmhlbFpPVWtka00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKbGF6bEZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZReFVuSmxhemxWVVZoa1QyVnRaRE5VVlZKcVRrVXhSVkZZYUU1aGEwWXpWRlpTU21Rd01VVlVWRUpPVWtWRmVsUnRjRUprTURWVllUTmtUbEpGYkRWVVZWSkNaVlUxVldGNlZsQlNSVVl6VkZWU1NtVnJNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZWVlJHVUZaSGRETlVNRkpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSVlJVVWs1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RrVXhWVmRVUms5UlZEQTVcIn0i.ZFy7TB-3wU3dbjBhu8H8rsrPUjP4RNeFOz5CIC-662w', '6a13a27307042', '2026-05-25 14:16:54', 1, 1, 1, 0, 1, 1, '2026-05-25 08:16:54', 1, '2026-05-25 08:16:54'),
(32, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrWldObFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVUms1bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZkd1RtUXdNVVZoTTJ4T1VrVkdOVlJZY0VabFJURnhVMWhrVGxKRmEzaFVWVkpDWldzMVJWRllaRTlsYkdzeFZERlNRazVWTVVWUldHaFBVa2R6TVZSWWNFNWtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JQVWtVeE0xUlZVa1pOUlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZSWVpFNVNSVVkwVkd0U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKbGF6bEZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxWVEUyVVZoa1VGWkZiRE5VVlZKS1pXc3hWVkpZYkU1aGEwWXpWRmR3Vm1Rd01VVlVWRUpPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGVlhkVU1WSnlaV3N4TmxGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZWbFJXVGxKRlJYZFVXSEJDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUk9aV3RHTTFSVlVrWk5SVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSVlJVVWs1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhjVlJZY0U1VlZEQTVcIn0i.UxeCH6qOulTUFgXgTbBqV5LJg5-4bIxECwOhip5QDA0', '6a15041a5038c', '2026-05-26 15:23:31', 1, 1, 1, 0, 1, 1, '2026-05-26 09:23:31', 1, '2026-05-26 09:23:31'),
(33, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkNUbVZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVll6VkRGU1JtVkZPVlZoTTJoT1ZrVkZNVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1RsSkZiRFJVVmxKeVRsVXhWVkpZWkZCV1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhhMVkwVkRGU2NtUXdNVVZUVkZaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKSFRUQlVWVkpDWldzMVJWRllaRTlsYkdzeFZERlNRazVWTVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1VGWkhkRFZVVmxKeVRsVXhjVlJZWkU1U1IwMHdWRlZTUWswd05YRmhlbFpPWld4R05GUldVbkpPVlRGRlVWaHNVRlpGUmpOVVZsSlNaREF4UlZSWVpFNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKbGF6bEZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZSV1VrWk9WVGxWVVZoa1RtRnRkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRzV3Ym1Rd01VVlVWRUpPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1V4VkRGU1NtVkZPVlZoTTJ4T1pXdEdNMVJ1Y0c1a01ERkZXWHBLVUZaSGREWlVhMUpHWlVVNVZXRXpaRTVTUldzeFZGVlNRbVZGTlVWUldHUk9aV3RHTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSVlJVVWs1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pXczFWVm96YUU1a2VqQTVcIn0i.T0xtYp_taWYZpzNlDdXizTphHIZSUbRYy2HIzF_LxSs', '6a19389ee050e', '2026-05-29 19:58:13', 1, 1, 1, 0, 1, 1, '2026-05-29 13:58:13', 1, '2026-05-29 13:58:13'),
(34, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NtVkZNVlZUV0d4T1VrVkZNVlJYY0VKa01ERTJWRmhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNibVZWTVVWUlZFWlFWa1ZHTTFSWGNGWk9WVGxWV2pOa1VGWkhjM2hVTVZKQ1pEQTVWVkZZYUU1V1IzTXhWREZTY2s1Rk1VVmhlbFpRVmtaR00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZrelpFNVNSVVkwVkZkd1FtUXdPVlZoZWxaUVZrVkdOVlJWVWtKbGF6bEZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKeVpWVXhSVkZZY0U1bGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRsRlUxaGtUbEpHVlRGVVZWSkNaVlUxVldGNlZsQlNSVVV4VkRGU1ZrNVZNVVZSVkZaT1VrVldORlF4VW5KT1ZUbFZXak5rVUZaSGN6RlVhMUpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBaV3RHTTFSVlVrWmxWVEZGVVZSV1VGWkhjekZVVlZKS1pEQXhSVlJVVWs1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhObFpZY0U5a2VqQTVcIn0i.BdthdxcRApKyRFs9DEClLq_TTR19Q4FJDIeVfX5key8', '6a1f92e70f0bb', '2026-06-03 15:35:37', 1, 1, 1, 0, 1, 1, '2026-06-03 09:35:37', 1, '2026-06-03 09:35:37'),
(35, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrZGplbFJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpVVWs5bGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZod2NrNVZPVlZVV0hCT1VrVkZlbFF3VWtabFJURnhVMWhrVGxKSGREVlVWVkpDVGxVNVZWRllaRkJXUlVZelZGVlNUbVF3T1ZWaGVrcFBWa2R6TVZSclVsSmtNREZGWVROc1QyVnRZM2xVTUZKQ1pEQTFObEZZYUU1V1IzTXhWREZTY2s1Rk1VVmhlbFpRVmtaR00xUlZVbXBPUlRsVllUTndUbVZyUmpOVVYzQk9aREF4UlZSWVpGQldSM1EyVkRGU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZUbFZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKcVRrVXhWVkpZYkU1aGEwWXpWREZTU21Rd01VVmhlbFpPVWtWRk1WUlZVa0prTURFMlVWUldVRlpHYTNoVU1WSnlUVVUxUlZGWVpGQldSV3Q2VkRCU1drNUZNVVZSVkU1T1VrVldORlF4VW5KT1ZUbFZXak5rVUZaSGN6RlVhMUpDWkRBMU5scDZWbEJXUlRFMlZGVlNRbVZWTVRaUldHUk9aV3RGTVZReFVrNU9WVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0Y2Vms1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVTFSVkZZY0U5VlZEQTVcIn0i.YgU59DxMg-s5YxfpIDojPEMaBaugDbuKyJsaHb5eY_8', '6a212be978753', '2026-06-04 20:40:35', 1, 1, 1, 0, 1, 1, '2026-06-04 14:40:35', 1, '2026-06-04 14:40:35'),
(36, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVU1WSnlaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrWldObFJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEpXWldzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpVUms5aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVmVGUlljRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NtVkZNVlZUV0d4T1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKR1ZYZFVNVkp5VFRBNVJWRllaRkJXUlVVeFZERlNUazVWT1ZWaGVrWlBWa1ZHTTFReFVrcGtNREZGV1hwS1RsSkZSalJVVmxKeVRsVXhjVlJZWkU1U1IwMHdWRlZTUWswd05YRlJXR1JPVmtWck1WUXhVbFpOVlRGRlVWaHNVRlpGUmpOVVYzQk9UbFU1VlZGWWFFOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZUbFZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWR3hTVWs1Vk9WVlplbEpPVWtWRk1WUlZVbkpPVlRFMllYcFdVRlpHVlhoVVZWSkNUbFV4Y1ZGWVpFOWxiR3d6VkZWU1JtVkZPVlZoTTJ4T1pXdEdNMVJ1Y0c1a01ERkZXWHBLVGxKRlJqUlVWM0J5VGxVMVZWWllaRTVTUldzeFZGVlNRbVZWTVRaaGVsWk9Va1ZWZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0Y2Vms1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhWV0V6YkU1VlZEQTVcIn0i.3Lfl6-BB4t81aDzYN1Is8PGHufgCU9CPebiuvwNT2Bg', '6a22b09bbaf6b', '2026-06-06 00:19:21', 1, 1, 1, 0, 1, 1, '2026-06-05 18:19:21', 1, '2026-06-05 18:19:21');

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

--
-- Dumping data untuk tabel `tbl_b_uac_group_permissions_r`
--

INSERT INTO `tbl_b_uac_group_permissions_r` (`id`, `__group_id`, `__permission_id`, `__module_id`, `__is_allowed`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(2, 1, 2, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(3, 1, 3, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(4, 1, 4, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(5, 1, 5, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(6, 1, 6, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(7, 1, 7, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(8, 1, 8, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(9, 1, 9, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(10, 1, 10, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(11, 1, 11, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(12, 1, 12, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(13, 1, 13, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(14, 1, 14, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(15, 1, 15, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(16, 1, 16, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(17, 1, 17, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(18, 1, 18, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(19, 1, 19, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(20, 1, 20, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(21, 1, 21, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(22, 1, 22, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(23, 1, 23, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(24, 1, 24, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(25, 1, 25, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(26, 1, 26, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(27, 1, 27, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(28, 1, 28, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(29, 1, 29, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(30, 1, 30, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(31, 1, 31, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(32, 1, 32, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(33, 1, 33, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(34, 1, 34, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(35, 1, 35, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(36, 1, 36, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(37, 1, 37, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(38, 1, 38, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(39, 1, 39, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(40, 1, 40, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(41, 1, 41, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(42, 1, 42, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(43, 1, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(44, 2, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(45, 3, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(46, 1, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(47, 2, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(48, 3, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(49, 1, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(50, 2, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(51, 3, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(52, 1, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(53, 2, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(54, 3, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(55, 1, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(56, 2, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(57, 3, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(58, 1, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(59, 2, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(60, 3, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(61, 1, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(62, 2, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(63, 3, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(64, 1, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(65, 2, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(66, 3, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46');

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
(2, 'e3weawea', 1, 2, 1, 1, '2026-01-05 08:51:27', 1, '2026-01-05 08:51:27');

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
(66, 3, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46');

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
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
