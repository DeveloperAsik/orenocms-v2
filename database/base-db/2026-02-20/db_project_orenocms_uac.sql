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
-- Database: `db_project_orenocms_uac`
--

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
(2, '002', 'superuser', '-', 2, 1, '', 0, 1, 1, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(3, '003', 'guest', '-', 3, 1, '', 0, 0, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26');

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

INSERT INTO `tbl_a_uac_permissions_p` (`id`, `code`, `__alias`, `__name`, `__path`, `__controller`, `__action`, `__method`, `__segment1`, `__segment2`, `__segment3`, `__segment4`, `__segment5`, `__segment6`, `__description`, `__is_basic`, `__is_public`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '321redss', 'extraweb', 'extraweb', 'extraweb/', 'AuthentificationMD', 'handle', 'get', 'extraweb', 'null', 'null', 'null', 'null', 'null', 'route direct access to middleware', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-18 17:21:03'),
(2, 'wewrewr123', 'extraweb-login', 'extraweb/login/', 'extraweb/login/', 'AppController', 'login', 'get', 'extraweb', 'login', 'null', 'null', 'null', 'null', 'logon page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(3, 'wewrewr123', 'extraweb-logout', 'extraweb/logout/', 'extraweb/logout/', 'AppController', 'logout', 'get', 'extraweb', 'logout', 'null', 'null', 'null', 'null', 'logout page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(4, 'wewrewr123', 'extraweb-forgot-password', 'extraweb/forgot-password/', 'extraweb/forgot-password/', 'AppController', 'forgot_password', 'get', 'extraweb', 'forgot-password', 'null', 'null', 'null', 'null', 'forgot password page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(5, 'wewrewr123', 'extraweb-register', 'extraweb/register/', 'extraweb/register/', 'AppController', 'register', 'get', 'extraweb', 'register', 'null', 'null', 'null', 'null', 'register page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(6, '324wr123', 'extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth/', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', 'null', 'null', 'null', 'null', 'validate page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(7, '324wr123', 'extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init/', 'AppController', '__init', 'post', 'extraweb', 'authentification', 'init', 'null', 'null', 'null', 'validate login page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(8, 'wewrewr123', 'extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard/', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', 'null', 'null', 'null', 'null', 'dashboard page', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-19 08:27:31'),
(9, '333ewwr123', 'extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get/{param}', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', '{param}', 'null', 'null', 'ajax action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(10, '756wr123', 'extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/{param}', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', '{param}', 'null', 'null', 'ajax action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(11, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', 'null', 'users view action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(12, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', 'null', 'users get_list action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(13, 'aaaa000', 'extraweb-master-uac-users-edit', 'extraweb/master/uac/users/edit/{id}', 'extraweb/master/uac/users/edit/{id}', 'UserController', 'edit', 'get', 'extraweb', 'master', 'uac', 'users', 'edit', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(14, 'aaaa000', 'extraweb-master-uac-users-update', 'extraweb/master/uac/users/update/{id}', 'extraweb/master/uac/users/update/{id}', 'UserController', 'update', 'post', 'extraweb', 'master', 'uac', 'users', 'update', '{id}{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(15, 'aaaa000', 'extraweb-master-uac-users-create', 'extraweb/master/uac/users/create', 'extraweb/master/uac/users/create', 'UserController', 'create', 'get', 'extraweb', 'master', 'uac', 'users', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(16, 'aaaa000', 'extraweb-master-uac-users-insert', 'extraweb/master/uac/users/insert', 'extraweb/master/uac/users/insert', 'UserController', 'insert', 'post', 'extraweb', 'master', 'uac', 'users', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(17, 'aaaa000', 'extraweb-master-uac-users-delete', 'extraweb/master/uac/users/delete/{id}', 'extraweb/master/uac/users/delete/{id}', 'UserController', 'delete', 'post', 'extraweb', 'master', 'uac', 'users', 'delete', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(18, 'aaaa000', 'extraweb-master-uac-users-remove', 'extraweb/master/uac/users/remove/{id}', 'extraweb/master/uac/users/remove/{id}', 'UserController', 'remove', 'post', 'extraweb', 'master', 'uac', 'users', 'remove', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(19, 'aaaa000', 'extraweb-master-uac-groups-view', 'extraweb/master/uac/groups/view', 'extraweb/master/uac/groups/view', 'GroupsController', 'view', 'get', 'extraweb', 'master', 'uac', 'groups', 'view', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(20, 'aaaa000', 'extraweb-master-uac-groups-get_list', 'extraweb/master/uac/groups/get_list', 'extraweb/master/uac/groups/get_list', 'GroupsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'groups', 'get_list', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(21, 'aaaa000', 'extraweb-master-uac-groups-edit', 'extraweb/master/uac/groups/edit/{id}', 'extraweb/master/uac/groups/edit/{id}', 'GroupsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'groups', 'edit', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(22, 'aaaa000', 'extraweb-master-uac-groups-update', 'extraweb/master/uac/groups/update/{id}', 'extraweb/master/uac/groups/update/{id}', 'GroupsController', 'update', 'post', 'extraweb', 'master', 'uac', 'groups', 'update', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(23, 'aaaa000', 'extraweb-master-uac-groups-create', 'extraweb/master/uac/groups/create', 'extraweb/master/uac/groups/create', 'GroupsController', 'create', 'get', 'extraweb', 'master', 'uac', 'groups', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(24, 'aaaa000', 'extraweb-master-uac-groups-insert', 'extraweb/master/uac/groups/insert', 'extraweb/master/uac/groups/insert', 'GroupsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'groups', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(25, 'aaaa000', 'extraweb-master-uac-groups-delete', 'extraweb/master/uac/groups/delete', 'extraweb/master/uac/groups/delete', 'GroupsController', 'delete', 'post', 'extraweb', 'master', 'uac', 'groups', 'delete', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(26, 'aaaa000', 'extraweb-master-uac-groups-remove', 'extraweb/master/uac/groups/remove/{id}', 'extraweb/master/uac/groups/remove/{id}', 'GroupsController', 'remove', 'post', 'extraweb', 'master', 'uac', 'groups', 'remove', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(27, 'aaaa000', 'extraweb-master-uac-menus-view', 'extraweb/master/uac/menus/view', 'extraweb/master/uac/menus/view', 'MenusController', 'view', 'get', 'extraweb', 'master', 'uac', 'menus', 'view', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(28, 'aaaa000', 'extraweb-master-uac-menus-get_list', 'extraweb/master/uac/menus/get_list', 'extraweb/master/uac/menus/get_list', 'MenusController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'menus', 'get_list', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(29, 'aaaa000', 'extraweb-master-uac-menus-edit', 'extraweb/master/uac/menus/edit/{id}', 'extraweb/master/uac/menus/edit/{id}', 'MenusController', 'edit', 'get', 'extraweb', 'master', 'uac', 'menus', 'edit', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(30, 'aaaa000', 'extraweb-master-uac-menus-update', 'extraweb/master/uac/menus/update/{id}', 'extraweb/master/uac/menus/update/{id}', 'MenusController', 'update', 'post', 'extraweb', 'master', 'uac', 'menus', 'update', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(31, 'aaaa000', 'extraweb-master-uac-menus-create', 'extraweb/master/uac/menus/create', 'extraweb/master/uac/menus/create', 'MenusController', 'create', 'get', 'extraweb', 'master', 'uac', 'menus', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(32, 'aaaa000', 'extraweb-master-uac-menus-insert', 'extraweb/master/uac/menus/insert', 'extraweb/master/uac/menus/insert', 'MenusController', 'insert', 'post', 'extraweb', 'master', 'uac', 'menus', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(33, 'aaaa000', 'extraweb-master-uac-menus-delete', 'extraweb/master/uac/menus/delete/{id}', 'extraweb/master/uac/menus/delete/{id}', 'MenusController', 'delete', 'post', 'extraweb', 'master', 'uac', 'menus', 'delete', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(34, 'aaaa000', 'extraweb-master-uac-menus-remove', 'extraweb/master/uac/menus/remove/{id}', 'extraweb/master/uac/menus/remove/{id}', 'MenusController', 'remove', 'post', 'extraweb', 'master', 'uac', 'menus', 'remove', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(35, 'aaaa000', 'extraweb-master-uac-permission-view', 'extraweb/master/uac/permissions/view', 'extraweb/master/uac/permissions/view', 'PermissionsController', 'view', 'get', 'extraweb', 'master', 'uac', 'permissions', 'view', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(36, 'aaaa000', 'extraweb-master-uac-permission-get_list', 'extraweb/master/uac/permissions/get_list', 'extraweb/master/uac/permissions/get_list', 'PermissionsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'permissions', 'get_list', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(37, 'aaaa000', 'extraweb-master-uac-permission-edit', 'extraweb/master/uac/permissions/edit/{id}', 'extraweb/master/uac/permissions/edit/{id}', 'PermissionsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'permissions', 'edit', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(38, 'aaaa000', 'extraweb-master-uac-permission-update', 'extraweb/master/uac/permissions/update/{id}', 'extraweb/master/uac/permissions/update/{id}', 'PermissionsController', 'update', 'post', 'extraweb', 'master', 'uac', 'permissions', 'update', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(39, 'aaaa000', 'extraweb-master-uac-permission-create', 'extraweb/master/uac/permissions/create', 'extraweb/master/uac/permissions/create', 'PermissionsController', 'create', 'get', 'extraweb', 'master', 'uac', 'permissions', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(40, 'aaaa000', 'extraweb-master-uac-permission-insert', 'extraweb/master/uac/permissions/insert', 'extraweb/master/uac/permissions/insert', 'PermissionsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'permissions', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(41, 'aaaa000', 'extraweb-master-uac-permission-delete', 'extraweb/master/uac/permissions/delete/{id}', 'extraweb/master/uac/permissions/delete/{id}', 'PermissionsController', 'delete', 'post', 'extraweb', 'master', 'uac', 'permissions', 'delete', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(42, 'aaaa000', 'extraweb-master-uac-permission-remove', 'extraweb/master/uac/permissions/remove/{id}', 'extraweb/master/uac/permissions/remove/{id}', 'PermissionsController', 'remove', 'post', 'extraweb', 'master', 'uac', 'permissions', 'remove', '{id}', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44');

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

--
-- Dumping data untuk tabel `tbl_a_uac_users_p`
--

INSERT INTO `tbl_a_uac_users_p` (`id`, `code`, `__user_name`, `__user_ldap`, `__first_name`, `__last_name`, `__email`, `__phone_number`, `__password`, `__salt`, `__description`, `__score`, `__uac_user_profile_id`, `__uac_user_registered_type_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '', 'system.core', '', 'system', 'core', 'system.core@orenocms.com', '08886137768', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(2, '', 'mobile.sys', '', 'mobile', 'sys', 'mobile.sys@orenocms.com', '08886137769', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(3, '', 'admin.web', '', 'admin', 'web', 'admin.web@orenocms.com', '08886137767', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53');

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
(1, '23ewrwe43242', 'system.auto.create', '', 1, 1, '2025-12-29 12:06:16', 1, '2025-12-29 12:06:16');

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
(4, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZNVlJYY0VKa01ERnhWRlJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFSV1VrcE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpPVWtkamVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFNVdSVlY0Vkcxd2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKeVpWVXhSVkZZYkU1bGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMllUTmtUbEpHVlRGVVZWSkNaVVV4Y1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZWVlJHVUZaSGRETlVNRkpxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZXTkZSV1VsWk5hemxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhSVlpZWkU5a2VqQTVcIn0i.MuJDAcECc9wNG7s1Rr8dd8oKZH1PySONpfG9cDGYuyw', '6997cf5c4c9a1', '2026-02-20 16:05:07', 1, 1, 1, 0, 1, 1, '2026-02-20 10:05:07', 1, '2026-02-20 10:05:07');

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
(42, 1, 42, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04');

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
(42, 1, 42, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00');

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
