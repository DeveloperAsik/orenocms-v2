-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2026 pada 12.38
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
(1, '321redss', 'extraweb', 'extraweb', 'extraweb/', 'AuthentificationMD', 'handle', 'get', 'extraweb', 'null', 'null', 'null', 'null', 'null', 'route direct access to middleware', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(2, 'wewrewr123', 'extraweb-login', 'extraweb/login/', 'extraweb/login/', 'AppController', 'login', 'get', 'extraweb', 'login', 'null', 'null', 'null', 'null', 'logon page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(3, '324wr123', 'extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth/', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', 'null', 'null', 'null', 'null', 'validate page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(4, '324wr123', 'extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init/', 'AppController', '__init', 'post', 'extraweb', 'authentification', 'init', 'null', 'null', 'null', 'validate login page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(5, 'wewrewr123', 'extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard/', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', 'null', 'null', 'null', 'null', 'dashboard page', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(6, '333ewwr123', 'extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get/{param}', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', 'null', 'null', 'null', 'ajax action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(7, '756wr123', 'extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/{param}', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', 'null', 'null', 'null', 'ajax action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(8, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', 'null', 'users view action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(9, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', 'null', 'users get_list action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(10, 'aaaa000', 'extraweb-master-uac-users-edit', 'extraweb/master/uac/users/edit', 'extraweb/master/uac/users/edit', 'UserController', 'edit', 'get', 'extraweb', 'master', 'uac', 'users', 'edit', 'null', '', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(11, 'aaaa000', 'extraweb-master-uac-users-update', 'extraweb/master/uac/users/update', 'extraweb/master/uac/users/update', 'UserController', 'update', 'post', 'extraweb', 'master', 'uac', 'users', 'update', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(12, 'aaaa000', 'extraweb-master-uac-users-create', 'extraweb/master/uac/users/create', 'extraweb/master/uac/users/create', 'UserController', 'create', 'get', 'extraweb', 'master', 'uac', 'users', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(13, 'aaaa000', 'extraweb-master-uac-users-insert', 'extraweb/master/uac/users/insert', 'extraweb/master/uac/users/insert', 'UserController', 'insert', 'post', 'extraweb', 'master', 'uac', 'users', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(14, 'aaaa000', 'extraweb-master-uac-users-delete', 'extraweb/master/uac/users/delete', 'extraweb/master/uac/users/delete', 'UserController', 'delete', 'post', 'extraweb', 'master', 'uac', 'users', 'delete', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(15, 'aaaa000', 'extraweb-master-uac-users-remove', 'extraweb/master/uac/users/remove', 'extraweb/master/uac/users/remove', 'UserController', 'remove', 'post', 'extraweb', 'master', 'uac', 'users', 'remove', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(16, 'aaaa000', 'extraweb-master-uac-groups-view', 'extraweb/master/uac/groups/view', 'extraweb/master/uac/groups/view', 'GroupsController', 'view', 'get', 'extraweb', 'master', 'uac', 'groups', 'view', 'null', '', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(17, 'aaaa000', 'extraweb-master-uac-groups-get_list', 'extraweb/master/uac/groups/get_list', 'extraweb/master/uac/groups/get_list', 'GroupsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'groups', 'get_list', 'null', '', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(18, 'aaaa000', 'extraweb-master-uac-groups-edit', 'extraweb/master/uac/groups/edit', 'extraweb/master/uac/groups/edit', 'GroupsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'groups', 'edit', 'null', '', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(19, 'aaaa000', 'extraweb-master-uac-groups-update', 'extraweb/master/uac/groups/update', 'extraweb/master/uac/groups/update', 'GroupsController', 'update', 'post', 'extraweb', 'master', 'uac', 'groups', 'update', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(20, 'aaaa000', 'extraweb-master-uac-groups-create', 'extraweb/master/uac/groups/create', 'extraweb/master/uac/groups/create', 'GroupsController', 'create', 'get', 'extraweb', 'master', 'uac', 'groups', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(21, 'aaaa000', 'extraweb-master-uac-groups-insert', 'extraweb/master/uac/groups/insert', 'extraweb/master/uac/groups/insert', 'GroupsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'groups', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(22, 'aaaa000', 'extraweb-master-uac-groups-delete', 'extraweb/master/uac/groups/delete', 'extraweb/master/uac/groups/delete', 'GroupsController', 'delete', 'post', 'extraweb', 'master', 'uac', 'groups', 'delete', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(23, 'aaaa000', 'extraweb-master-uac-groups-remove', 'extraweb/master/uac/groups/remove', 'extraweb/master/uac/groups/remove', 'GroupsController', 'remove', 'post', 'extraweb', 'master', 'uac', 'groups', 'remove', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(24, 'aaaa000', 'extraweb-master-uac-menus-view', 'extraweb/master/uac/menus/view', 'extraweb/master/uac/menus/view', 'MenusController', 'view', 'get', 'extraweb', 'master', 'uac', 'menus', 'view', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(25, 'aaaa000', 'extraweb-master-uac-menus-get_list', 'extraweb/master/uac/menus/get_list', 'extraweb/master/uac/menus/get_list', 'MenusController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'menus', 'get_list', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(26, 'aaaa000', 'extraweb-master-uac-menus-edit', 'extraweb/master/uac/menus/edit', 'extraweb/master/uac/menus/edit', 'MenusController', 'edit', 'get', 'extraweb', 'master', 'uac', 'menus', 'edit', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(27, 'aaaa000', 'extraweb-master-uac-menus-update', 'extraweb/master/uac/menus/update', 'extraweb/master/uac/menus/update', 'MenusController', 'update', 'post', 'extraweb', 'master', 'uac', 'menus', 'update', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(28, 'aaaa000', 'extraweb-master-uac-menus-create', 'extraweb/master/uac/menus/create', 'extraweb/master/uac/menus/create', 'MenusController', 'create', 'get', 'extraweb', 'master', 'uac', 'menus', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(29, 'aaaa000', 'extraweb-master-uac-menus-insert', 'extraweb/master/uac/menus/insert', 'extraweb/master/uac/menus/insert', 'MenusController', 'insert', 'post', 'extraweb', 'master', 'uac', 'menus', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(30, 'aaaa000', 'extraweb-master-uac-menus-delete', 'extraweb/master/uac/menus/delete', 'extraweb/master/uac/menus/delete', 'MenusController', 'delete', 'post', 'extraweb', 'master', 'uac', 'menus', 'delete', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(31, 'aaaa000', 'extraweb-master-uac-menus-remove', 'extraweb/master/uac/menus/remove', 'extraweb/master/uac/menus/remove', 'MenusController', 'remove', 'post', 'extraweb', 'master', 'uac', 'menus', 'remove', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(32, 'aaaa000', 'extraweb-master-uac-permission-view', 'extraweb/master/uac/permissions/view', 'extraweb/master/uac/permissions/view', 'PermissionsController', 'view', 'get', 'extraweb', 'master', 'uac', 'permissions', 'view', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(33, 'aaaa000', 'extraweb-master-uac-permission-get_list', 'extraweb/master/uac/permissions/get_list', 'extraweb/master/uac/permissions/get_list', 'PermissionsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'permissions', 'get_list', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(34, 'aaaa000', 'extraweb-master-uac-permission-edit', 'extraweb/master/uac/permissions/edit', 'extraweb/master/uac/permissions/edit', 'PermissionsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'permissions', 'edit', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(35, 'aaaa000', 'extraweb-master-uac-permission-update', 'extraweb/master/uac/permissions/update', 'extraweb/master/uac/permissions/update', 'PermissionsController', 'update', 'post', 'extraweb', 'master', 'uac', 'permissions', 'update', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(36, 'aaaa000', 'extraweb-master-uac-permission-create', 'extraweb/master/uac/permissions/create', 'extraweb/master/uac/permissions/create', 'PermissionsController', 'create', 'get', 'extraweb', 'master', 'uac', 'permissions', 'create', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(37, 'aaaa000', 'extraweb-master-uac-permission-insert', 'extraweb/master/uac/permissions/insert', 'extraweb/master/uac/permissions/insert', 'PermissionsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'permissions', 'insert', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(38, 'aaaa000', 'extraweb-master-uac-permission-delete', 'extraweb/master/uac/permissions/delete', 'extraweb/master/uac/permissions/delete', 'PermissionsController', 'delete', 'post', 'extraweb', 'master', 'uac', 'permissions', 'delete', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(39, 'aaaa000', 'extraweb-master-uac-permission-remove', 'extraweb/master/uac/permissions/remove', 'extraweb/master/uac/permissions/remove', 'PermissionsController', 'remove', 'post', 'extraweb', 'master', 'uac', 'permissions', 'remove', 'null', '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
