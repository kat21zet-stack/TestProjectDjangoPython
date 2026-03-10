-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 10 2026 г., 12:30
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nasa_agency`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add source', 7, 'add_source'),
(26, 'Can change source', 7, 'change_source'),
(27, 'Can delete source', 7, 'delete_source'),
(28, 'Can view source', 7, 'view_source'),
(29, 'Can add thumbnail', 8, 'add_thumbnail'),
(30, 'Can change thumbnail', 8, 'change_thumbnail'),
(31, 'Can delete thumbnail', 8, 'delete_thumbnail'),
(32, 'Can view thumbnail', 8, 'view_thumbnail'),
(33, 'Can add thumbnail dimensions', 9, 'add_thumbnaildimensions'),
(34, 'Can change thumbnail dimensions', 9, 'change_thumbnaildimensions'),
(35, 'Can delete thumbnail dimensions', 9, 'delete_thumbnaildimensions'),
(36, 'Can view thumbnail dimensions', 9, 'view_thumbnaildimensions'),
(37, 'Can add clipboard', 10, 'add_clipboard'),
(38, 'Can change clipboard', 10, 'change_clipboard'),
(39, 'Can delete clipboard', 10, 'delete_clipboard'),
(40, 'Can view clipboard', 10, 'view_clipboard'),
(41, 'Can add clipboard item', 11, 'add_clipboarditem'),
(42, 'Can change clipboard item', 11, 'change_clipboarditem'),
(43, 'Can delete clipboard item', 11, 'delete_clipboarditem'),
(44, 'Can view clipboard item', 11, 'view_clipboarditem'),
(45, 'Can add file', 12, 'add_file'),
(46, 'Can change file', 12, 'change_file'),
(47, 'Can delete file', 12, 'delete_file'),
(48, 'Can view file', 12, 'view_file'),
(49, 'Can add Folder', 13, 'add_folder'),
(50, 'Can change Folder', 13, 'change_folder'),
(51, 'Can delete Folder', 13, 'delete_folder'),
(52, 'Can view Folder', 13, 'view_folder'),
(53, 'Can use directory listing', 13, 'can_use_directory_listing'),
(54, 'Can add folder permission', 14, 'add_folderpermission'),
(55, 'Can change folder permission', 14, 'change_folderpermission'),
(56, 'Can delete folder permission', 14, 'delete_folderpermission'),
(57, 'Can view folder permission', 14, 'view_folderpermission'),
(58, 'Can add image', 15, 'add_image'),
(59, 'Can change image', 15, 'change_image'),
(60, 'Can delete image', 15, 'delete_image'),
(61, 'Can view image', 15, 'view_image'),
(62, 'Can add thumbnail option', 16, 'add_thumbnailoption'),
(63, 'Can change thumbnail option', 16, 'change_thumbnailoption'),
(64, 'Can delete thumbnail option', 16, 'delete_thumbnailoption'),
(65, 'Can view thumbnail option', 16, 'view_thumbnailoption'),
(66, 'Can add Слайд', 17, 'add_slide'),
(67, 'Can change Слайд', 17, 'change_slide'),
(68, 'Can delete Слайд', 17, 'delete_slide'),
(69, 'Can view Слайд', 17, 'view_slide');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$I5lpGOH6ngGbQcb5XwgFVf$zor+eb9t2ncVE4Ae3xoHdCdaVQvwy+XB2XTHP78dBto=', '2026-03-10 07:37:27.923733', 1, 'Admin', '', '', 'admin@mail.ru', 1, 1, '2026-03-10 07:37:10.298661');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `core_slide`
--

CREATE TABLE `core_slide` (
  `id` bigint NOT NULL,
  `title` varchar(200) NOT NULL,
  `order` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `image_id` int DEFAULT NULL
) ;

--
-- Дамп данных таблицы `core_slide`
--

INSERT INTO `core_slide` (`id`, `title`, `order`, `is_active`, `created_at`, `image_id`) VALUES
(1, '1', 1, 1, '2026-03-10 07:47:08.742377', 1),
(6, '2', 2, 1, '2026-03-10 09:05:48.190945', 7),
(7, '3', 3, 1, '2026-03-10 09:05:55.639423', 6),
(8, '4', 4, 1, '2026-03-10 09:06:02.658856', 8),
(9, '5', 5, 1, '2026-03-10 09:06:09.445530', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-03-10 07:47:08.743410', '1', '1', 1, '[{\"added\": {}}]', 17, 1),
(2, '2026-03-10 07:47:15.649515', '2', '2', 1, '[{\"added\": {}}]', 17, 1),
(3, '2026-03-10 07:47:23.293303', '3', '3', 1, '[{\"added\": {}}]', 17, 1),
(4, '2026-03-10 07:47:31.071794', '4', '4', 1, '[{\"added\": {}}]', 17, 1),
(5, '2026-03-10 07:47:37.341293', '5', '5', 1, '[{\"added\": {}}]', 17, 1),
(6, '2026-03-10 09:05:40.792062', '2', '2', 3, '', 17, 1),
(7, '2026-03-10 09:05:40.797136', '3', '3', 3, '', 17, 1),
(8, '2026-03-10 09:05:40.800359', '4', '4', 3, '', 17, 1),
(9, '2026-03-10 09:05:40.803815', '5', '5', 3, '', 17, 1),
(10, '2026-03-10 09:05:48.190945', '6', '2', 1, '[{\"added\": {}}]', 17, 1),
(11, '2026-03-10 09:05:55.639423', '7', '3', 1, '[{\"added\": {}}]', 17, 1),
(12, '2026-03-10 09:06:02.660024', '8', '4', 1, '[{\"added\": {}}]', 17, 1),
(13, '2026-03-10 09:06:09.445530', '9', '5', 1, '[{\"added\": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'core', 'slide'),
(7, 'easy_thumbnails', 'source'),
(8, 'easy_thumbnails', 'thumbnail'),
(9, 'easy_thumbnails', 'thumbnaildimensions'),
(10, 'filer', 'clipboard'),
(11, 'filer', 'clipboarditem'),
(12, 'filer', 'file'),
(13, 'filer', 'folder'),
(14, 'filer', 'folderpermission'),
(15, 'filer', 'image'),
(16, 'filer', 'thumbnailoption'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-03-10 07:29:51.755782'),
(2, 'auth', '0001_initial', '2026-03-10 07:29:52.836720'),
(3, 'admin', '0001_initial', '2026-03-10 07:29:53.073837'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-03-10 07:29:53.089843'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-03-10 07:29:53.089843'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-03-10 07:29:53.264141'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-03-10 07:29:53.375078'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-03-10 07:29:53.501269'),
(9, 'auth', '0004_alter_user_username_opts', '2026-03-10 07:29:53.501269'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-03-10 07:29:53.595645'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-03-10 07:29:53.595645'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-03-10 07:29:53.611286'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-03-10 07:29:53.706285'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-03-10 07:29:53.817917'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-03-10 07:29:53.928367'),
(16, 'auth', '0011_update_proxy_permissions', '2026-03-10 07:29:53.928367'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-03-10 07:29:54.023651'),
(18, 'filer', '0001_initial', '2026-03-10 07:29:55.639733'),
(19, 'core', '0001_initial', '2026-03-10 07:29:55.829088'),
(20, 'easy_thumbnails', '0001_initial', '2026-03-10 07:29:56.131180'),
(21, 'easy_thumbnails', '0002_thumbnaildimensions', '2026-03-10 07:29:56.273355'),
(22, 'filer', '0002_auto_20150606_2003', '2026-03-10 07:29:56.289304'),
(23, 'filer', '0003_thumbnailoption', '2026-03-10 07:29:56.321117'),
(24, 'filer', '0004_auto_20160328_1434', '2026-03-10 07:29:56.431520'),
(25, 'filer', '0005_auto_20160623_1425', '2026-03-10 07:29:56.447655'),
(26, 'filer', '0006_auto_20160623_1627', '2026-03-10 07:29:56.558881'),
(27, 'filer', '0007_auto_20161016_1055', '2026-03-10 07:29:56.574645'),
(28, 'filer', '0008_auto_20171117_1313', '2026-03-10 07:29:56.590290'),
(29, 'filer', '0009_auto_20171220_1635', '2026-03-10 07:29:56.717561'),
(30, 'filer', '0010_auto_20180414_2058', '2026-03-10 07:29:56.717561'),
(31, 'filer', '0011_auto_20190418_0137', '2026-03-10 07:29:56.924521'),
(32, 'filer', '0012_file_mime_type', '2026-03-10 07:29:56.971569'),
(33, 'filer', '0013_image_width_height_to_float', '2026-03-10 07:29:57.162242'),
(34, 'filer', '0014_folder_permission_choices', '2026-03-10 07:29:57.196266'),
(35, 'filer', '0015_alter_file_owner_alter_file_polymorphic_ctype_and_more', '2026-03-10 07:29:57.226236'),
(36, 'filer', '0016_alter_folder_index_together_remove_folder_level_and_more', '2026-03-10 07:29:57.660709'),
(37, 'filer', '0017_image__transparent', '2026-03-10 07:29:57.708303'),
(38, 'sessions', '0001_initial', '2026-03-10 07:29:57.771365');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1hdxoaztvjr981sbnpdt1avemfakdcqd', '.eJxVjkEOwiAURO_C2hCovxRcuu8ZyAc-FiUlKe3KeHdpwkK382Ze5s0sHvtij0qbTYHdmGSX38yhf9F6gvDE9VG4L-u-JcfPCu-08rkEyvfe_RMsWJe2RnJaDuCkj0io_DgZUkjBTwr0EB1GDdKMIxEY4egqQIMOABTRGKVFk8aUmy9j3W0sOfTD8vMFB6NBfw:1vzt2T:7D_tM3DhptjGg8Gj1b-PYgmC6GN2yGs-lLua6MLK0ME', '2026-03-24 09:06:05.740496');

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_source`
--

CREATE TABLE `easy_thumbnails_source` (
  `id` int NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `easy_thumbnails_source`
--

INSERT INTO `easy_thumbnails_source` (`id`, `storage_hash`, `name`, `modified`) VALUES
(1, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750/mask_group.png', '2026-03-10 07:48:00.887493'),
(2, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f/mask_group.png', '2026-03-10 07:48:00.935694'),
(3, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6/mask_group.png', '2026-03-10 07:48:00.964748'),
(4, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74/mask_group.png', '2026-03-10 07:48:00.992342'),
(5, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e/mask_group.png', '2026-03-10 07:48:01.019273'),
(6, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28/picture_2.png', '2026-03-10 09:06:13.603977'),
(7, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39/picture_1.png', '2026-03-10 09:06:13.587154'),
(8, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84/picture_3.png', '2026-03-10 09:06:13.619092'),
(9, '52617e6399d6f38ea9cbf527bf430616', 'filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491/picture.png', '2026-03-10 09:06:13.637499');

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_thumbnail`
--

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `easy_thumbnails_thumbnail`
--

INSERT INTO `easy_thumbnails_thumbnail` (`id`, `storage_hash`, `name`, `modified`, `source_id`) VALUES
(1, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 07:46:20.093325', 1),
(2, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__40x40_crop_subsampling-2.png', '2026-03-10 07:56:57.532504', 1),
(3, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 07:46:23.499228', 2),
(4, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__40x40_crop_subsampling-2.png', '2026-03-10 07:56:57.529140', 2),
(5, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 07:46:26.610348', 3),
(6, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__40x40_crop_subsampling-2.png', '2026-03-10 07:56:57.525128', 3),
(7, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 07:46:29.057814', 4),
(8, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__40x40_crop_subsampling-2.png', '2026-03-10 07:56:57.530456', 4),
(9, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 07:46:31.093228', 5),
(10, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__40x40_crop_subsampling-2.png', '2026-03-10 07:56:57.534652', 5),
(11, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__80x80_crop_subsampling-2.png', '2026-03-10 07:47:00.906439', 1),
(12, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__160x160_crop_subsampling-2.png', '2026-03-10 07:47:06.445619', 1),
(13, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__80x60_crop_subsampling-2.png', '2026-03-10 07:47:08.788126', 1),
(14, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__80x80_crop_subsampling-2.png', '2026-03-10 07:47:13.009999', 2),
(15, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__80x60_crop_subsampling-2.png', '2026-03-10 07:47:15.691346', 2),
(16, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__80x80_crop_subsampling-2.png', '2026-03-10 07:47:19.712413', 3),
(17, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__160x160_crop_subsampling-2.png', '2026-03-10 07:47:21.741935', 3),
(18, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__80x60_crop_subsampling-2.png', '2026-03-10 07:47:23.369692', 3),
(19, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__80x80_crop_subsampling-2.png', '2026-03-10 07:47:28.797713', 4),
(20, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__80x60_crop_subsampling-2.png', '2026-03-10 07:47:31.119126', 4),
(21, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__80x80_crop_subsampling-2.png', '2026-03-10 07:47:34.594145', 5),
(22, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__80x60_crop_subsampling-2.png', '2026-03-10 07:47:37.389669', 5),
(23, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__800x500_crop_subsampling-2.png', '2026-03-10 07:48:00.399642', 1),
(24, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__800x500_crop_subsampling-2.png', '2026-03-10 07:48:00.512124', 2),
(25, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__800x500_crop_subsampling-2.png', '2026-03-10 07:48:00.631962', 3),
(26, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__800x500_crop_subsampling-2.png', '2026-03-10 07:48:00.749481', 4),
(27, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__800x500_crop_subsampling-2.png', '2026-03-10 07:48:00.863494', 5),
(28, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750\\mask_group.png__120x80_crop_subsampling-2.png', '2026-03-10 07:48:00.892404', 1),
(29, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f\\mask_group.png__120x80_crop_subsampling-2.png', '2026-03-10 07:48:00.941544', 2),
(30, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6\\mask_group.png__120x80_crop_subsampling-2.png', '2026-03-10 07:48:00.968778', 3),
(31, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74\\mask_group.png__120x80_crop_subsampling-2.png', '2026-03-10 07:48:00.995773', 4),
(32, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e\\mask_group.png__120x80_crop_subsampling-2.png', '2026-03-10 07:48:01.022539', 5),
(33, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 09:05:26.001135', 7),
(34, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 09:05:26.005009', 8),
(35, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 09:05:26.005009', 6),
(36, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__180x180_crop_subsampling-2_upscale.png', '2026-03-10 09:05:26.061183', 9),
(37, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__40x40_crop_subsampling-2.png', '2026-03-10 09:05:58.957596', 6),
(38, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__40x40_crop_subsampling-2.png', '2026-03-10 09:06:05.813535', 8),
(39, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__40x40_crop_subsampling-2.png', '2026-03-10 09:05:26.205704', 9),
(40, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__40x40_crop_subsampling-2.png', '2026-03-10 09:05:52.404813', 7),
(41, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__80x80_crop_subsampling-2.png', '2026-03-10 09:05:45.642944', 7),
(42, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__80x60_crop_subsampling-2.png', '2026-03-10 09:05:48.251623', 7),
(43, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__80x80_crop_subsampling-2.png', '2026-03-10 09:05:53.909777', 6),
(44, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__80x60_crop_subsampling-2.png', '2026-03-10 09:05:55.673819', 6),
(45, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__80x80_crop_subsampling-2.png', '2026-03-10 09:06:00.395120', 8),
(46, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__80x60_crop_subsampling-2.png', '2026-03-10 09:06:02.695502', 8),
(47, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__80x80_crop_subsampling-2.png', '2026-03-10 09:06:06.839246', 9),
(48, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__80x60_crop_subsampling-2.png', '2026-03-10 09:06:09.482483', 9),
(49, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__800x500_crop_subsampling-2.png', '2026-03-10 09:06:13.497903', 7),
(50, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__800x500_crop_subsampling-2.png', '2026-03-10 09:06:13.525175', 6),
(51, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__800x500_crop_subsampling-2.png', '2026-03-10 09:06:13.549574', 8),
(52, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__800x500_crop_subsampling-2.png', '2026-03-10 09:06:13.573547', 9),
(53, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39\\picture_1.png__120x80_crop_subsampling-2.png', '2026-03-10 09:06:13.590671', 7),
(54, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28\\picture_2.png__120x80_crop_subsampling-2.png', '2026-03-10 09:06:13.606986', 6),
(55, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84\\picture_3.png__120x80_crop_subsampling-2.png', '2026-03-10 09:06:13.623106', 8),
(56, '52617e6399d6f38ea9cbf527bf430616', 'filer_public_thumbnails\\filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491\\picture.png__120x80_crop_subsampling-2.png', '2026-03-10 09:06:13.643585', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int NOT NULL,
  `thumbnail_id` int NOT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_clipboard`
--

CREATE TABLE `filer_clipboard` (
  `id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `filer_clipboard`
--

INSERT INTO `filer_clipboard` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_clipboarditem`
--

CREATE TABLE `filer_clipboarditem` (
  `id` int NOT NULL,
  `clipboard_id` int NOT NULL,
  `file_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_file`
--

CREATE TABLE `filer_file` (
  `id` int NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `polymorphic_ctype_id` int DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `filer_file`
--

INSERT INTO `filer_file` (`id`, `file`, `_file_size`, `sha1`, `has_all_mandatory_data`, `original_filename`, `name`, `description`, `uploaded_at`, `modified_at`, `is_public`, `folder_id`, `owner_id`, `polymorphic_ctype_id`, `mime_type`) VALUES
(1, 'filer_public/3a/a6/3aa63861-64bc-4245-aab6-ea2143925750/mask_group.png', 196800, '7fa33f8f04e0bd552ac77b48881a4794b25594ff', 0, 'Mask group.png', '', NULL, '2026-03-10 07:46:20.006181', '2026-03-10 07:46:20.006181', 1, 1, 1, 15, 'image/png'),
(2, 'filer_public/30/06/30066442-cee3-4e89-9a10-a15deefa534f/mask_group.png', 196800, '7fa33f8f04e0bd552ac77b48881a4794b25594ff', 0, 'Mask group.png', '', NULL, '2026-03-10 07:46:23.454707', '2026-03-10 07:46:23.454707', 1, 1, 1, 15, 'image/png'),
(3, 'filer_public/35/b1/35b17558-1a11-4803-bc6b-fad50455fac6/mask_group.png', 196800, '7fa33f8f04e0bd552ac77b48881a4794b25594ff', 0, 'Mask group.png', '', NULL, '2026-03-10 07:46:26.567517', '2026-03-10 07:46:26.567517', 1, 1, 1, 15, 'image/png'),
(4, 'filer_public/60/eb/60eb2baf-5e03-4bb3-a8b4-60aaaf585d74/mask_group.png', 196800, '7fa33f8f04e0bd552ac77b48881a4794b25594ff', 0, 'Mask group.png', '', NULL, '2026-03-10 07:46:29.010053', '2026-03-10 07:46:29.010053', 1, 1, 1, 15, 'image/png'),
(5, 'filer_public/23/e8/23e8fbe7-d68d-4c53-83a4-c477bcbf356e/mask_group.png', 196800, '7fa33f8f04e0bd552ac77b48881a4794b25594ff', 0, 'Mask group.png', '', NULL, '2026-03-10 07:46:31.046006', '2026-03-10 07:46:31.046006', 1, 1, 1, 15, 'image/png'),
(6, 'filer_public/3e/58/3e58f7ff-5765-4e53-a37f-09a34fa3aa28/picture_2.png', 36900, '569e2ccc401e5edbe1d7e719c959d7dabeabb9bf', 0, 'Picture (2).png', '', NULL, '2026-03-10 09:05:25.885355', '2026-03-10 09:05:25.885355', 1, 1, 1, 15, 'image/png'),
(7, 'filer_public/14/f7/14f7132b-a9d1-4d2d-812f-769bfe636d39/picture_1.png', 31065, 'd6146ecebadee752c324ebb38d6a1c2151a664ba', 0, 'Picture (1).png', '', NULL, '2026-03-10 09:05:25.885355', '2026-03-10 09:05:25.885355', 1, 1, 1, 15, 'image/png'),
(8, 'filer_public/2d/9c/2d9cf3fb-ff78-4b39-a86f-5f09c80caa84/picture_3.png', 56489, 'ce6e28b635e5372f491b50cf5271f47ff8b4df54', 0, 'Picture (3).png', '', NULL, '2026-03-10 09:05:25.886361', '2026-03-10 09:05:25.886361', 1, 1, 1, 15, 'image/png'),
(9, 'filer_public/3b/e9/3be9bcdd-4361-4931-9ceb-e5cc3d94d491/picture.png', 46001, '276db55ab319a8ae7220a83bd700ceed10ca4266', 0, 'Picture.png', '', NULL, '2026-03-10 09:05:26.021965', '2026-03-10 09:05:26.021965', 1, 1, 1, 15, 'image/png');

-- --------------------------------------------------------

--
-- Структура таблицы `filer_folder`
--

CREATE TABLE `filer_folder` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `owner_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `filer_folder`
--

INSERT INTO `filer_folder` (`id`, `name`, `uploaded_at`, `created_at`, `modified_at`, `owner_id`, `parent_id`) VALUES
(1, 'слайдеры', '2026-03-10 07:46:12.755591', '2026-03-10 07:46:12.755591', '2026-03-10 07:46:12.755591', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_folderpermission`
--

CREATE TABLE `filer_folderpermission` (
  `id` int NOT NULL,
  `type` smallint NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint DEFAULT NULL,
  `can_read` smallint DEFAULT NULL,
  `can_add_children` smallint DEFAULT NULL,
  `folder_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `filer_image`
--

CREATE TABLE `filer_image` (
  `file_ptr_id` int NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  `_transparent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `filer_image`
--

INSERT INTO `filer_image` (`file_ptr_id`, `_height`, `_width`, `date_taken`, `default_alt_text`, `default_caption`, `author`, `must_always_publish_author_credit`, `must_always_publish_copyright`, `subject_location`, `_transparent`) VALUES
(1, 530, 945, '2026-03-10 07:46:19.999057', NULL, NULL, NULL, 0, 0, '', 1),
(2, 530, 945, '2026-03-10 07:46:23.449239', NULL, NULL, NULL, 0, 0, '', 1),
(3, 530, 945, '2026-03-10 07:46:26.564105', NULL, NULL, NULL, 0, 0, '', 1),
(4, 530, 945, '2026-03-10 07:46:29.004843', NULL, NULL, NULL, 0, 0, '', 1),
(5, 530, 945, '2026-03-10 07:46:31.039262', NULL, NULL, NULL, 0, 0, '', 1),
(6, 165, 165, '2026-03-10 09:05:25.844725', NULL, NULL, NULL, 0, 0, '', 1),
(7, 165, 165, '2026-03-10 09:05:25.844725', NULL, NULL, NULL, 0, 0, '', 1),
(8, 165, 165, '2026-03-10 09:05:25.843721', NULL, NULL, NULL, 0, 0, '', 1),
(9, 165, 165, '2026-03-10 09:05:26.018950', NULL, NULL, NULL, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `filer_thumbnailoption`
--

CREATE TABLE `filer_thumbnailoption` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `core_slide`
--
ALTER TABLE `core_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_slide_order_048fbaef` (`order`),
  ADD KEY `core_slide_image_id_115f53c2` (`image_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_name_5fe0edc6` (`name`);

--
-- Индексы таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`);

--
-- Индексы таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Индексы таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  ADD KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`);

--
-- Индексы таблицы `filer_file`
--
ALTER TABLE `filer_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  ADD KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`);

--
-- Индексы таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  ADD KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`);

--
-- Индексы таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  ADD KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  ADD KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `filer_image`
--
ALTER TABLE `filer_image`
  ADD PRIMARY KEY (`file_ptr_id`);

--
-- Индексы таблицы `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `core_slide`
--
ALTER TABLE `core_slide`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_file`
--
ALTER TABLE `filer_file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `filer_thumbnailoption`
--
ALTER TABLE `filer_thumbnailoption`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_slide`
--
ALTER TABLE `core_slide`
  ADD CONSTRAINT `core_slide_image_id_115f53c2_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Ограничения внешнего ключа таблицы `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_clipboard`
--
ALTER TABLE `filer_clipboard`
  ADD CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_clipboarditem`
--
ALTER TABLE `filer_clipboarditem`
  ADD CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  ADD CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_file`
--
ALTER TABLE `filer_file`
  ADD CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_folder`
--
ALTER TABLE `filer_folder`
  ADD CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_folderpermission`
--
ALTER TABLE `filer_folderpermission`
  ADD CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  ADD CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `filer_image`
--
ALTER TABLE `filer_image`
  ADD CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
