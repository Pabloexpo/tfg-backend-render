-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-05-2025 a las 11:40:34
-- Versión del servidor: 8.0.42-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ct_padel_2025`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int UNSIGNED NOT NULL,
  `equipo_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `equipo_jug_1` int UNSIGNED DEFAULT NULL,
  `equipo_jug_2` int UNSIGNED DEFAULT NULL,
  `equipo_estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipo_fec_creacion` date DEFAULT NULL,
  `equipo_fec_cese` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `equipo_nombre`, `equipo_jug_1`, `equipo_jug_2`, `equipo_estado`, `equipo_fec_creacion`, `equipo_fec_cese`) VALUES
(8, 'Equipo Ejemplo', 14, 15, 'activo', '2025-04-11', NULL),
(24, 'jueves 3', NULL, NULL, 'NO activo', '2025-04-24', '2025-04-24'),
(25, 'juebes 1111', NULL, NULL, 'NO activo', '2025-04-24', '2025-04-24'),
(26, 'juevbe¡e', NULL, NULL, 'NO activo', '2025-04-24', '2025-04-24'),
(27, 'zzzz', NULL, NULL, 'NO activo', '2025-04-24', '2025-04-24'),
(42, 'pablodddd', 32, NULL, 'activo', '2025-04-24', NULL),
(43, 'Gestora Arribas', 40, 41, 'activo', '2025-05-02', NULL),
(44, 'Madera y Solís', 42, 43, 'activo', '2025-05-02', NULL),
(45, 'Barrientos y Ulibarri e Hijo', 44, 45, 'activo', '2025-05-02', NULL),
(46, 'Benito, Lázaro y Mercado e Hija', 46, 47, 'activo', '2025-05-02', NULL),
(47, 'Air Polanco', 48, 49, 'activo', '2025-05-02', NULL),
(48, 'Padrón-Ruvalcaba', 50, 51, 'activo', '2025-05-02', NULL),
(49, 'Gastélum de Roca e Hijo', 52, 53, 'activo', '2025-05-02', NULL),
(50, 'Air Córdoba-Martín', 54, 55, 'activo', '2025-05-02', NULL),
(51, 'Villanueva-Carrera', 56, 57, 'activo', '2025-05-02', NULL),
(52, 'Centro Domínguez-Villalba', 58, 59, 'activo', '2025-05-02', NULL),
(53, 'Valencia de Alvarado SA', 60, 61, 'activo', '2025-05-02', NULL),
(54, 'Martineitors', 62, 64, 'activo', '2025-05-08', NULL),
(55, 'Manoleitors', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-13'),
(56, 'Usuarios Guías', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-13'),
(57, 'Molinenses 0', 65, NULL, 'activo', '2025-05-13', NULL),
(59, 'Molinenses0', 65, NULL, 'activo', '2025-05-13', NULL),
(61, 'Molinense0', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-13'),
(63, 'Getafenses', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-13'),
(65, 'Alumbrenyos', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-13'),
(66, 'alumbrenyis', NULL, NULL, 'NO activo', '2025-05-13', '2025-05-14'),
(67, 'alumbreños1', 66, 65, 'activo', '2025-05-14', NULL),
(68, 'Albertiños', 67, NULL, 'activo', '2025-05-14', NULL),
(69, 'Memorias técnicas', NULL, NULL, 'NO activo', '2025-05-15', '2025-05-15'),
(71, 'Memorias técnicas 2025', NULL, NULL, 'NO activo', '2025-05-15', '2025-05-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `mensaje_id` int UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`mensaje_id`, `nombre`, `email`, `mensaje`, `created_at`, `updated_at`) VALUES
(1, 'prueba1', 'administrador@pablotfg.com', 'pablotfg', NULL, NULL),
(2, 'Juan José Martínez', 'pabloexpops3@gmail.com', 'aa', NULL, NULL),
(3, 'Prueba Xappiens', 'prueba@prueba.com', 'hola', NULL, NULL),
(4, 'Pablo', 'prueba1mayo@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL),
(5, 'Manuel Manolo', 'manuel@gmail.com', 'Prueba del 08/05', NULL, NULL),
(6, 'Juan José Martínez', 'pabloexpops3@gmail.com', 'Hola prueba 13/05', NULL, NULL),
(7, 'Prueba', 'prueba@prueba.com', 'Mensaje de prueba', NULL, NULL),
(8, 'Prueba Manual usuario', 'manual@example.com', 'Hola esto es una prueba', NULL, NULL),
(9, 'Prueba memoria técnica', 'memoria@tecnica.com', 'prueba', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_04_10_161342_create_roles_table', 1),
(2, '2025_04_10_161416_create_pistas_table', 1),
(3, '2025_04_10_161427_create_personas_table', 1),
(4, '2025_04_10_161438_create_equipos_table', 1),
(5, '2025_04_10_161447_create_partidos_table', 1),
(6, '2025_04_10_161514_create_relationships_equipo_personas', 1),
(7, '2025_04_10_175347_create_personal_access_tokens_table', 2),
(8, '2025_04_10_185429_add_email_to_personas_table', 3),
(10, '2025_04_14_120320_create_messages_table', 5),
(13, '2025_04_12_084257_create_reservas_table', 6),
(14, '2025_04_21_165628_create_peticiones_cese_table', 7),
(15, '2025_04_24_181016_add_unique_to_equipo_nombre_in_equipos', 8),
(16, '2025_04_29_183352_add_arbitro_to_partidos_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `partido_id` int UNSIGNED NOT NULL,
  `partido_equ_1` int UNSIGNED DEFAULT NULL,
  `partido_equ_2` int UNSIGNED DEFAULT NULL,
  `partido_sets_equ_1` int DEFAULT NULL,
  `partido_sets_equ_2` int DEFAULT NULL,
  `partido_ganador` int UNSIGNED DEFAULT NULL,
  `partido_fecha` datetime DEFAULT NULL,
  `partido_pista` int UNSIGNED DEFAULT NULL,
  `partido_arbitro` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`partido_id`, `partido_equ_1`, `partido_equ_2`, `partido_sets_equ_1`, `partido_sets_equ_2`, `partido_ganador`, `partido_fecha`, `partido_pista`, `partido_arbitro`) VALUES
(14, 42, 8, 2, 3, 8, '2025-04-29 20:00:00', 3, 36),
(15, 8, 42, 3, 0, 8, '2025-04-24 12:00:00', 1, 37),
(16, 42, 8, 2, 3, 8, '2025-04-23 14:00:00', 2, 35),
(17, 42, 8, 2, 3, 8, '2025-05-02 14:00:00', 1, 36),
(18, 43, 49, 3, 0, 43, '2025-04-08 14:00:00', 3, 37),
(19, 43, 46, 3, 2, 43, '2025-04-04 12:00:00', 3, 36),
(20, 46, 44, 1, 3, 44, '2025-04-15 18:00:00', 4, 36),
(21, 43, 52, 3, 1, 43, '2025-03-31 12:00:00', 3, 37),
(24, 49, 46, 2, 3, 46, '2025-04-30 14:00:00', 4, 36),
(25, 49, 8, 2, 3, 8, '2025-02-19 20:00:00', 4, 36),
(26, 49, 50, 1, 3, 50, '2025-03-16 22:00:00', 4, 36),
(27, 49, 52, 3, 1, 49, '2025-04-26 18:00:00', 4, 36),
(28, 43, 49, 3, 2, 43, '2025-04-28 14:00:00', 1, 36),
(29, 43, 48, 1, 3, 48, '2025-04-01 14:00:00', 1, 36),
(30, 43, 52, 1, 3, 52, '2025-04-19 18:00:00', 1, 36),
(31, 43, 44, 3, 1, 43, '2025-04-24 18:00:00', 1, 36),
(32, 43, 50, 3, 1, 43, '2025-03-31 14:00:00', 1, 37),
(33, 43, 42, 3, 1, 43, '2025-02-26 14:00:00', 1, 36),
(34, 43, 44, 2, 3, 44, '2025-02-20 14:00:00', 1, 36),
(35, 43, 45, 3, 1, 43, '2025-02-11 20:00:00', 1, 37),
(36, 43, 46, 3, 0, 43, '2025-01-28 18:00:00', 1, 37),
(37, 43, 47, 2, 3, 47, '2025-01-14 20:00:00', 1, 36),
(38, 43, 49, 3, 1, 43, '2025-01-08 20:00:00', 1, 36),
(39, 43, 50, 3, 1, 43, '2024-12-07 16:00:00', 1, 36),
(40, 43, 51, 1, 3, 51, '2024-11-25 20:00:00', 1, 36),
(41, 43, 52, 3, 1, 43, '2025-04-28 18:00:00', 5, 36),
(42, 43, 53, 1, 3, 53, '2025-04-28 16:00:00', 9, 36),
(43, 43, 8, 2, 3, 8, '2025-04-28 18:00:00', 1, 37),
(44, 43, 44, 3, 1, 43, '2025-02-26 20:00:00', 2, 36),
(45, 43, 45, 3, 1, 43, '2025-03-07 12:00:00', 3, 36),
(46, 43, 46, 2, 3, 46, '2025-02-05 22:00:00', 4, 37),
(47, 43, 48, 1, 3, 48, '2025-04-13 22:00:00', 5, 36),
(48, 43, 53, 3, 0, 43, '2025-04-28 16:00:00', 8, 36),
(49, 44, 8, 3, 1, 44, '2025-04-28 22:00:00', 1, 36),
(50, 42, 8, 2, 3, 8, '2025-05-03 14:00:00', 1, 36),
(51, 44, 42, 2, 3, 42, '2025-02-12 16:00:00', 1, 37),
(52, 44, 43, 3, 1, 44, '2025-04-29 16:00:00', 2, 36),
(53, 44, 45, 2, 3, 45, '2025-02-28 20:00:00', 3, 37),
(54, 44, 46, 3, 1, 44, '2025-03-05 22:00:00', 4, 37),
(55, 44, 47, 3, 2, 44, '2025-03-05 16:00:00', 5, 36),
(56, 44, 48, 1, 3, 48, '2025-03-09 16:00:00', 6, 36),
(57, 44, 49, 2, 3, 49, '2025-03-11 20:00:00', 7, 36),
(58, 44, 50, 3, 1, 44, '2025-03-19 18:00:00', 8, 37),
(59, 44, 51, 1, 3, 51, '2025-03-12 20:00:00', 8, 37),
(60, 44, 53, 2, 3, 53, '2025-03-17 20:00:00', 9, 36),
(61, 45, 8, 3, 1, 45, '2025-03-12 20:00:00', 1, 37),
(62, 45, 42, 3, 2, 45, '2025-03-14 10:00:00', 2, 37),
(63, 45, 43, 3, 1, 45, '2025-03-16 20:00:00', 3, 37),
(64, 45, 44, 2, 3, 44, '2025-03-17 18:00:00', 4, 37),
(65, 45, 46, 3, 1, 45, '2025-02-12 20:00:00', 5, 37),
(66, 45, 48, 3, 1, 45, '2025-03-11 16:00:00', 6, 37),
(67, 45, 49, 1, 3, 49, '2025-03-10 20:00:00', 7, 36),
(68, 45, 50, 1, 3, 50, '2025-02-06 18:00:00', 8, 37),
(69, 45, 51, 3, 1, 45, '2025-03-17 18:00:00', 9, 36),
(70, 45, 53, 3, 1, 45, '2025-03-14 18:00:00', 9, 36),
(71, 43, 48, 3, 1, 43, '2025-05-08 20:00:00', 1, 36),
(72, 43, 54, 1, 3, 54, '2025-05-09 14:00:00', 1, 37),
(73, 49, 48, 2, 3, 48, '2025-04-15 12:00:00', 1, 37),
(74, 46, 54, 3, 1, 46, '2025-03-31 10:00:00', 2, 37),
(75, 46, 53, 1, 3, 53, '2025-04-01 10:00:00', 2, 37),
(76, 46, 52, 1, 3, 52, '2025-04-02 10:00:00', 2, 37),
(77, 67, 51, 3, 1, 67, '2025-05-12 14:00:00', 1, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Persona', 3, 'login_token', '9cb301e944aff2bdd5559aedbf6ee6149a949c6ca1f93bb44e196cdf8acb7025', '[\"*\"]', NULL, NULL, '2025-04-12 07:34:36', '2025-04-12 07:34:36'),
(2, 'App\\Models\\Persona', 3, 'login_token', '5655e36e1b6cdca74662ddfdb556b7c5e3e97181828dadb23cfce6e93652c527', '[\"*\"]', NULL, NULL, '2025-04-12 07:36:08', '2025-04-12 07:36:08'),
(3, 'App\\Models\\Persona', 3, 'login_token', 'eb3f89f21fdbf598b6a25c8d6b61c157a82e6cccefda8d4bc897e73d6ee2d1b5', '[\"*\"]', NULL, NULL, '2025-04-12 07:59:34', '2025-04-12 07:59:34'),
(4, 'App\\Models\\Persona', 3, 'login_token', '30e91f2cb5ab474b4c152e7b993b90569e3a600dc3f948021d518e29868db96c', '[\"*\"]', NULL, NULL, '2025-04-12 08:00:15', '2025-04-12 08:00:15'),
(5, 'App\\Models\\Persona', 3, 'login_token', '41984de9e6d823a102664e49b5aebed1baab9cec0dd94ffdfc35ed664176d8a2', '[\"*\"]', NULL, NULL, '2025-04-12 08:25:05', '2025-04-12 08:25:05'),
(13, 'App\\Models\\Persona', 3, 'login_token', '77b62486c9ed61954e1d8302252349405fb34b78322189bf251c644b25772bee', '[\"*\"]', NULL, NULL, '2025-04-12 09:03:07', '2025-04-12 09:03:07'),
(30, 'App\\Models\\Persona', 25, 'login_token', '55ded6d32feca3a488dc477e7af58324466133dd0b11acddc4a8733871c2b94e', '[\"*\"]', NULL, NULL, '2025-04-15 13:54:54', '2025-04-15 13:54:54'),
(33, 'App\\Models\\Persona', 28, 'login_token', '702250485041467f1210b3e88ca6f6dc194b9b800ec5434a34d14f7fd30de750', '[\"*\"]', NULL, NULL, '2025-04-15 14:14:05', '2025-04-15 14:14:05'),
(36, 'App\\Models\\Persona', 21, 'login_token', '789a730fbdacce82cacf67bb5e90c86fef7c12df55f84590597ad68f809a8471', '[\"*\"]', NULL, NULL, '2025-04-15 14:41:47', '2025-04-15 14:41:47'),
(37, 'App\\Models\\Persona', 21, 'login_token', '3d857e1f382a1ea7bc30877889402a6e7b488d04c40a5f227d61970ae897f58c', '[\"*\"]', NULL, NULL, '2025-04-15 15:06:54', '2025-04-15 15:06:54'),
(38, 'App\\Models\\Persona', 21, 'login_token', '6559cc7e2569a77d83d3febe9e6f2110a5eddc595c5253ee792d72a43c2c49a3', '[\"*\"]', NULL, NULL, '2025-04-15 15:07:58', '2025-04-15 15:07:58'),
(44, 'App\\Models\\Persona', 29, 'login_token', '9a97a5f5c6e33e688358654aa1e771c183d1f2e365842d174a84d162545d978a', '[\"*\"]', NULL, NULL, '2025-04-16 09:32:43', '2025-04-16 09:32:43'),
(48, 'App\\Models\\Persona', 30, 'login_token', '6bd22491b4b6a2956be93604c63fedc8396429088ec4978e182cccb3a560950b', '[\"*\"]', NULL, NULL, '2025-04-16 10:05:10', '2025-04-16 10:05:10'),
(52, 'App\\Models\\Persona', 31, 'login_token', '72e559bbdcbc07a515542e96e66af9596acd2f346cf49031aee623930d59be68', '[\"*\"]', NULL, NULL, '2025-04-16 10:08:14', '2025-04-16 10:08:14'),
(78, 'App\\Models\\Persona', 34, 'login_token', '2d1fb52a1c09a62a9370a8367579f10992af33e50c558082157b25aa18c35ffb', '[\"*\"]', NULL, NULL, '2025-04-16 13:51:08', '2025-04-16 13:51:08'),
(150, 'App\\Models\\Persona', 35, 'login_token', 'fa2a076a6c74a70a60b7b2f3f9f3f37b23f789547f116c3956ba9671be198346', '[\"*\"]', NULL, NULL, '2025-04-29 14:21:52', '2025-04-29 14:21:52'),
(152, 'App\\Models\\Persona', 36, 'login_token', 'ce46edb7bc332c67e23cee883b24497d3e91a4179b6311518ce659dd164da6c7', '[\"*\"]', NULL, NULL, '2025-04-29 14:29:26', '2025-04-29 14:29:26'),
(153, 'App\\Models\\Persona', 37, 'login_token', 'ae9c700bddc36e7cf68fbbdc7c581527c800ee3bb42c0d07455495d2177448fd', '[\"*\"]', NULL, NULL, '2025-04-29 14:30:02', '2025-04-29 14:30:02'),
(168, 'App\\Models\\Persona', 38, 'login_token', '3f81503c1afdac2ccc54dc637b5653ea5fc9661d20631e254fb3c377ff99939d', '[\"*\"]', NULL, NULL, '2025-04-30 11:44:45', '2025-04-30 11:44:45'),
(171, 'App\\Models\\Persona', 39, 'login_token', '12a93e1573b342454c773ef355646d296b5c1cba4252e8643f11363a835cd5f3', '[\"*\"]', NULL, NULL, '2025-04-30 13:10:03', '2025-04-30 13:10:03'),
(205, 'App\\Models\\Persona', 62, 'login_token', '8348ea3fb25406737fb48b549a6ff50afc5a04333a6c908f51a0f3af18b5bdfd', '[\"*\"]', NULL, NULL, '2025-05-08 07:43:51', '2025-05-08 07:43:51'),
(210, 'App\\Models\\Persona', 63, 'login_token', '99150000d9faa1692e5a12adf2e7995133825f92450ef7b6eff1ac9c069c8caa', '[\"*\"]', NULL, NULL, '2025-05-11 15:34:54', '2025-05-11 15:34:54'),
(239, 'App\\Models\\Persona', 65, 'login_token', 'f91d0fdf7d76f89c3062b85f783ddbc93474ac353477c58b1138de7a15702025', '[\"*\"]', NULL, NULL, '2025-05-13 15:14:11', '2025-05-13 15:14:11'),
(256, 'App\\Models\\Persona', 66, 'login_token', '6cb8ed05bc8f34610960675849735f54f5a485855a97d7915f30e1718db4980b', '[\"*\"]', NULL, NULL, '2025-05-13 16:45:57', '2025-05-13 16:45:57'),
(290, 'App\\Models\\Persona', 40, 'login_token', '8fe57a5afbdfb57fcf837edbf95c139e8e400329508ed5a0cb876260142c5a39', '[\"*\"]', NULL, NULL, '2025-05-18 09:38:26', '2025-05-18 09:38:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `persona_id` int UNSIGNED NOT NULL,
  `persona_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persona_equipo` int UNSIGNED DEFAULT NULL,
  `persona_rol` int UNSIGNED DEFAULT NULL,
  `persona_pwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persona_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`persona_id`, `persona_nombre`, `persona_equipo`, `persona_rol`, `persona_pwd`, `persona_email`) VALUES
(3, 'Administrador', NULL, 1, '$2y$12$Aj6CcGf8KvBGTJsogAfTjuM9WQNUAVCPvLJa2icMMwjxd1oYS9JWa', 'administrador@pablotfg.com'),
(14, 'Pablo', 8, 2, '$2y$12$qrvR9dkDavQfTBj2wa95X.Pjvj9jYYdlOL.JHQcELpSqPH17Ie9ny', 'jugador5@example.com'),
(15, 'Jugador 4', 8, 2, '$2y$12$cQ0u/ZUd2PZXjYnmY1RgfuIjVzJ3U2uO8pCstDzXQVpj1dm9tYp8e', 'jugador4@example.com'),
(31, 'Miguel', NULL, 2, '$2y$12$a4yj/8bBjqAF.qEiEpf4p.DKtmlz4RrZ8IxcfYzlxfPBDwoqObcGm', 'pruebamiercoles@gmail.com'),
(32, 'Pablo', 42, 2, '$2y$12$6WKVMwVd7RmiLIjPHrxSD.WXCRfwiOk6.9AECa8KYryCjQAj.TFRW', 'aaaa@gmail.com'),
(34, 'manuel', NULL, 2, '$2y$12$5MjkuHTr5lt.KCpG9TkxWexuLNO8oXXM9pAZ59ApF3Uit5r7GXVna', 'manuel@gmail.com'),
(35, 'Arbitro 1', NULL, 3, '$2y$12$IuZ6dFeDammHIHFqmFTtqOwm3YcklrnPz6JYb78JQdElfSdO6MSwe', 'arbitro@arbitro.com'),
(36, 'Arbitro 2', NULL, 3, '$2y$12$qRp6.lrCbAiN/4nmx7uk5edBdj/oET1mpuWzfaUHG/suajL1KSuMi', 'arbitro2@gmail.com'),
(37, 'Arbitro  3', NULL, 3, '$2y$12$rYlAYSTipX6tKK.sdslHR.4/3lBj8J9Sm.ZS6X0asiiT9s9RLzyea', 'arbitro3@gmail.com'),
(40, 'Rosa Gómez', 43, 2, '$2y$12$kXcACIs3qnIvGDiXYOirHu0Oawv7TVDklNkmFyxclACjqKp3glIyS', 'rosa.gomez@example.com'),
(41, 'Purificación Aguilar', 43, 2, '$2y$12$0doL3FGci.1wtmXUb.Lg3uzemDwQPYvDfai8.GJCppp4EZ6pld6he', 'purificacion.aguilar@example.com'),
(42, 'John Medina', 44, 2, '$2y$12$MkFr1eYiiYyIpboA9ij7mefqCsetIj6Y.wa8u3ZvUyLMu/2H6OjIq', 'john.medina@example.com'),
(43, 'Raquel Esteban', 44, 2, '$2y$12$NRosoxGiXrj3t/qYCrhn7eRvi6yDXjl12.cfRmAGgJtZW9ILWHvje', 'raquel.esteban@example.com'),
(44, 'Aitor Hernández', 45, 2, '$2y$12$BcByDR7oZhqLzhspR8VnYuMXWV4NrVuPE20LzvNCM56a6d30x3QlC', 'aitor.hernandez@example.com'),
(45, 'Emilia Cortes', 45, 2, '$2y$12$nzs18YDQ5vWBkGmGaQDRiu4EFBzUBBQtXLXlwc1K/K8vuJRNe7Z2q', 'emilia.cortes@example.com'),
(46, 'Belén Alonso', 46, 2, '$2y$12$6hN3hsXOXOaDrXuR0a0wouYvBcC8RmQpq.raZUusYBxwLkq/YqGcO', 'belen.alonso@example.com'),
(47, 'Xavier Pastor', 46, 2, '$2y$12$vIwCNTD1qWmlXQvDRgChBuRMQyiYFCimcASn4F9sIEyGD3yNGToeO', 'xavier.pastor@example.com'),
(48, 'José Cruz', 47, 2, '$2y$12$0l6fkfjQ6cRzze3DZ90UqOcG8hLccM4i1io.onJKBj2c55hXjewAu', 'jose.cruz@example.com'),
(49, 'Ismael Vidal', 47, 2, '$2y$12$KnzMS/qnGIJRgqyZ7kmLH.yrMr5bxYVpg8vOyCit9ddU3bGwxt.ku', 'ismael.vidal@example.com'),
(50, 'Ramon Campos', 48, 2, '$2y$12$cRTeHXaX82c/XqCQNgjCw.mQsVrGRklhDlJjUt.10QU7pB4vGPh4S', 'ramon.campos@example.com'),
(51, 'Rosario Bravo', 48, 2, '$2y$12$hpzKyrJOjQF7BlDMZhdig.t4858XJ2zudbMId.UxnFVCqAToQ4NAi', 'rosario.bravo@example.com'),
(52, 'Gema Gallego', 49, 2, '$2y$12$hdLM3qkaZgJv2T1eOzLDP.HAxn6lXKaRqUarYNfwzuTudjuSy/0v2', 'gema.gallego@example.com'),
(53, 'Aurora Romero', 49, 2, '$2y$12$IRT0tj6vxY/pYJ8PsQypwOV8yw/AFWnh1HV6pJaFBl.sx3XrxfNTK', 'aurora.romero@example.com'),
(54, 'Inmaculada Cano', 50, 2, '$2y$12$3x2xnXwdcelSh8EAJgyOy.9lcn2pbD7aU0IXHn95SQ92SthRfM6Q6', 'inmaculada.cano@example.com'),
(55, 'Inés Carrasco', 50, 2, '$2y$12$wN1dgBUd1sDlfKfM9J1Ko.DD.jVDjvH5HruAXYvXt/3oy67BQgRJe', 'ines.carrasco@example.com'),
(56, 'Angela Moya', 51, 2, '$2y$12$aIMvRWHkGx9eC2agMNFpSOrou558Gh1ziBbjTHoNbwpYgLJqbAmqC', 'angela.moya@example.com'),
(57, 'Félix Castillo', 51, 2, '$2y$12$tkKbQwi/iEYiL0TBG0bchuUMtfzb4K4MXWXHFbQBumzZc01D59/9u', 'felix.castillo@example.com'),
(58, 'Sonia Jiménez', 52, 2, '$2y$12$gdfRHUl914Jv9ruDwVkO1.kOihTwUmkLhfzaUK/vSIgEupLXPdlQ6', 'sonia.jimenez@example.com'),
(59, 'Montserrat Alonso', 52, 2, '$2y$12$lOVC6gv2jTVnWQdw9T1OMelKA3ciC2NlBlmWCQVd68P1LxeE2WgDK', 'montserrat.alonso@example.com'),
(60, 'Alicia Iglesias', 53, 2, '$2y$12$UqoCrV/VL.8bBlBlRJ7jKeyQ9.iUrXXaKt2fSubHSCReQSha5AtHm', 'alicia.iglesias@example.com'),
(61, 'Amparo Mora', 53, 2, '$2y$12$3DFL3M5v1bgxHQsoifs.WeBKYMZhv2wD39C1UKfNGy..xy6Fi//bG', 'amparo.mora@example.com'),
(62, 'Manuel Martín', 54, 2, '$2y$12$MbRdaiPmFf.b/4Rd5ZAb4uDozNEqzrDEaJSKDGLzYVWL6q9kMd7cS', 'manuel.martin2@example.com'),
(63, 'Manolo Manolin', NULL, 2, '$2y$12$j2wUdhDgGjqk6k2x1hZMheODfxNgRQqoWcmMNjE.f9rgdMmNG8BNK', 'manolo@example.com'),
(64, 'Benito Villamarín', 54, 2, '$2y$12$UmCByzTzJsvMbkO5DveuE.k8Xx04h/pFYlrsIvWTtkoejHfL5SS1y', 'benito@example.com'),
(65, 'Ester Fernández Moya', 67, 2, '$2y$12$CvX6s/W5qwaAXMQ7mbnYAeualJyQdurIVsTgidzPMCAhb.5uxTTNK', 'ester_fdez@example.com'),
(66, 'Jorge Expósito', 67, 2, '$2y$12$ojZP98QIL0GVoS.AfAOpAuUWZTb2meqYMdcgNw322D7Lt/IXdCK6O', 'jorge@example.com'),
(67, 'Alberto Dantés', 68, 2, '$2y$12$tKoksgBSXg8gCUYjT0LGRexeBn1MyFbFplsunPlnmbyXBdZjy5F1G', 'alberto@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticiones_cese`
--

CREATE TABLE `peticiones_cese` (
  `peticion_id` int UNSIGNED NOT NULL,
  `peticion_equipo` int UNSIGNED DEFAULT NULL,
  `peticion_causa` text COLLATE utf8mb4_unicode_ci,
  `peticion_estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peticiones_cese`
--

INSERT INTO `peticiones_cese` (`peticion_id`, `peticion_equipo`, `peticion_causa`, `peticion_estado`) VALUES
(2, NULL, 'No me gusta el equipo', 'Aceptada'),
(14, NULL, 'patata1', 'Aceptada'),
(15, NULL, 'PATATA 3', 'Aceptada'),
(18, 26, 'aaaaa', 'Aceptada'),
(19, 27, 'aasss', 'Aceptada'),
(20, NULL, 'aaaa', 'Aceptada'),
(21, NULL, 'kk', 'Aceptada'),
(22, 42, '´´', 'Rechazada'),
(23, 42, 'SABADO 26', 'Rechazada'),
(24, 42, 'Prueba de cese a 30 de abril', 'Rechazada'),
(25, 42, 'Petición de de abandono de 1 de mayo', NULL),
(26, 43, 'lofff', 'Rechazada'),
(27, 43, 'prueba 08/05', 'Rechazada'),
(28, 55, 'Prueba abandono de equipo en los Manoleitors', 'Aceptada'),
(29, 56, 'prueba', 'Aceptada'),
(30, 61, 'si', 'Aceptada'),
(31, 63, 'si', 'Aceptada'),
(32, 65, 'hola', 'Aceptada'),
(33, 66, 'prueba 14/05', 'Aceptada'),
(34, 69, '15/05', 'Aceptada'),
(35, 71, '15/05', 'Aceptada'),
(36, 67, 'Motivo de petición en memoria técnica', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pistas`
--

CREATE TABLE `pistas` (
  `pista_id` int UNSIGNED NOT NULL,
  `pista_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pista_localidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pista_cp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pista_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pista_descripcion` text COLLATE utf8mb4_unicode_ci,
  `pista_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pistas`
--

INSERT INTO `pistas` (`pista_id`, `pista_nombre`, `pista_localidad`, `pista_cp`, `pista_foto`, `pista_descripcion`, `pista_telefono`) VALUES
(1, 'Pabellón Central (Wssell de Guimbarda)', 'Cartagena', '30204', 'http://deportes.cartagena.es/gestion/images/1/239422.jpg', '- Pista polideportiva interior - Gimnasio polivalente - Sala de Musculación - Sala de Danza. - Sala de Ciclo - Sala de Artes Marciales - Galería de Tiro con Arco. - Pistas de tenis. - Frontón. - Pista de Padel. - Pista polideportiva exterior. - Pista de Bolos Cartageneros.', '968 12 88 00 Ext: 7602'),
(2, 'Pabellón La Palma', 'La Palma', '30593', 'http://deportes.cartagena.es/gestion/images/1/240151.JPG', '- Pista polideportiva interior - Pista de Padel', '620259037'),
(3, 'Piscina Municipal La Aljorra', 'La Aljorra', '30390', 'http://deportes.cartagena.es/gestion/images/1/240183.jpg', '- Vaso de natación 25m - Jacuzzi - Pistas de Padel - Gimnasio polivalente', '968164380'),
(4, 'Polideportivo Rafael García', 'Pozo Estrecho', '30594', 'http://deportes.cartagena.es/gestion/images/1/240190.jpg', '- Campo de fútbol de césped - Campo de albero fútbol 7 - Pistas de Tenis - Pistas de padel - Cuerda de Atletismo 400m - Pistas polideportivas exterior', '968556357'),
(5, 'Municipal \'El Secante\' Alumbres', 'Alumbres', '30351', 'http://deportes.cartagena.es/gestion/images/1/239855.jpg', '- Superficie de terreno de juego: campo de césped artificial F-11 Otros equipamientos: Campo de tierra de albero F-5 y pista de padel.  ', '669 100 727'),
(6, 'Ciudad Deportiva Gómez Meseguer', 'Polígono Industrial Cabezo Beaza', '30353', 'http://deportes.cartagena.es/gestion/images/1/239538.jpg', '- Superficie de terreno de juego: campo de césped natural F-11, campo de césped artificial F-11 F-8 F-5 Otros equipamientos: Gimnasio, sala multiusos deportiva, sala de formación y pistas de padel.', '968 52 76 17'),
(7, 'Campo Municipal López Belmonte', NULL, '30202', 'http://deportes.cartagena.es/gestion/images/1/239605.jpg', '- Superficie de terreno de juego: campo de cesped artificial F-11 F-8 Otros equipamientos: Pistas de padel y pista de petanca', '676969372 / 617672965'),
(8, 'Complejo Deportivo Playa Paraíso', 'Urb. Playa Paraíso', '30370', 'http://deportes.cartagena.es/gestion/images/1/239858.jpg', '- Superficie de terreno de juego: Cesped artificial F-8 Otros equipamientos: Pistas de padel, tenis, voleyplaya, gimnasio y sala multiusos deportiva. Aula de formación. Almacén y salida de vehículos náuticos.', '968337314 / 675954085'),
(9, 'Polideportivo Municipal Nueva Cartagena', 'Nueva Cartagena', '30310', 'http://deportes.cartagena.es/gestion/images/1/239614.jpg', '- Superficie de terreno de juego: Césped artificial F-5 F-11  Otros equipamientos: Pista de indoor, padel y baloncesto', '968126556 / 690179972');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `reserva_id` int UNSIGNED NOT NULL,
  `reserva_pista` int UNSIGNED DEFAULT NULL,
  `reserva_equipo1` int UNSIGNED DEFAULT NULL,
  `reserva_equipo2` int UNSIGNED DEFAULT NULL,
  `reserva_fecha` datetime NOT NULL,
  `reserva_finalizada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`reserva_id`, `reserva_pista`, `reserva_equipo1`, `reserva_equipo2`, `reserva_fecha`, `reserva_finalizada`) VALUES
(4, 1, NULL, NULL, '2025-12-10 10:00:00', 0),
(8, 1, NULL, NULL, '2025-04-22 12:00:00', 0),
(10, 1, NULL, NULL, '2025-04-22 18:00:00', 0),
(11, 5, NULL, NULL, '2025-04-22 14:00:00', 0),
(13, 1, 8, 42, '2025-04-24 12:00:00', 1),
(14, 2, 42, 8, '2025-04-23 14:00:00', 1),
(15, 1, 42, 8, '2025-05-03 14:00:00', 1),
(16, 1, 42, 8, '2025-05-02 14:00:00', 1),
(17, 3, 42, 8, '2025-04-29 20:00:00', 1),
(18, 3, 43, 49, '2025-04-08 14:00:00', 1),
(19, 3, 43, 46, '2025-04-04 12:00:00', 1),
(20, 3, 43, 52, '2025-03-31 12:00:00', 1),
(21, 4, 46, 44, '2025-04-15 18:00:00', 1),
(22, 8, 46, 47, '2025-04-28 20:00:00', 1),
(23, 5, 46, 51, '2025-04-29 14:00:00', 1),
(24, 4, 49, 46, '2025-04-30 14:00:00', 1),
(25, 4, 49, 8, '2025-02-19 20:00:00', 1),
(26, 4, 49, 50, '2025-03-16 22:00:00', 1),
(27, 4, 49, 52, '2025-04-26 18:00:00', 1),
(28, 1, 43, 49, '2025-04-28 14:00:00', 1),
(29, 1, 43, 52, '2025-04-19 18:00:00', 1),
(30, 1, 43, 48, '2025-04-01 14:00:00', 1),
(31, 1, 43, 44, '2025-04-24 18:00:00', 1),
(32, 1, 43, 50, '2025-03-31 14:00:00', 1),
(33, 1, 43, 42, '2025-02-26 14:00:00', 1),
(34, 1, 43, 44, '2025-02-20 14:00:00', 1),
(35, 1, 43, 45, '2025-02-11 20:00:00', 1),
(36, 1, 43, 46, '2025-01-28 18:00:00', 1),
(37, 1, 43, 47, '2025-01-14 20:00:00', 1),
(38, 1, 43, 49, '2025-01-08 20:00:00', 1),
(39, 1, 43, 50, '2024-12-07 16:00:00', 1),
(40, 1, 43, 51, '2024-11-25 20:00:00', 1),
(41, 5, 43, 52, '2025-04-28 18:00:00', 1),
(42, 9, 43, 53, '2025-04-28 16:00:00', 1),
(43, 1, 43, 8, '2025-04-28 18:00:00', 1),
(44, 2, 43, 44, '2025-02-26 20:00:00', 1),
(45, 3, 43, 45, '2025-03-07 12:00:00', 1),
(46, 4, 43, 46, '2025-02-05 22:00:00', 1),
(47, 5, 43, 48, '2025-04-13 22:00:00', 1),
(48, 7, 43, 52, '2025-05-20 18:00:00', 1),
(49, 8, 43, 53, '2025-04-28 16:00:00', 1),
(50, 1, 44, 8, '2025-04-28 22:00:00', 1),
(51, 1, 44, 42, '2025-02-12 16:00:00', 1),
(52, 2, 44, 43, '2025-04-29 16:00:00', 1),
(53, 3, 44, 45, '2025-02-28 20:00:00', 1),
(54, 4, 44, 46, '2025-03-05 22:00:00', 1),
(55, 5, 44, 47, '2025-03-05 16:00:00', 1),
(56, 6, 44, 48, '2025-03-09 16:00:00', 1),
(57, 7, 44, 49, '2025-03-11 20:00:00', 1),
(58, 8, 44, 50, '2025-03-19 18:00:00', 1),
(59, 8, 44, 51, '2025-03-12 20:00:00', 1),
(60, 9, 44, 53, '2025-03-17 20:00:00', 1),
(61, 1, 45, 8, '2025-03-12 20:00:00', 1),
(62, 2, 45, 42, '2025-03-14 10:00:00', 1),
(63, 3, 45, 43, '2025-03-16 20:00:00', 1),
(64, 4, 45, 44, '2025-03-17 18:00:00', 1),
(65, 5, 45, 46, '2025-02-12 20:00:00', 1),
(66, 6, 45, 48, '2025-03-11 16:00:00', 1),
(67, 7, 45, 49, '2025-03-10 20:00:00', 1),
(68, 8, 45, 50, '2025-02-06 18:00:00', 1),
(69, 9, 45, 51, '2025-03-17 18:00:00', 1),
(70, 9, 45, 53, '2025-03-14 18:00:00', 1),
(71, 2, 43, 52, '2025-05-31 18:00:00', 1),
(72, 3, 43, 51, '2025-05-26 18:00:00', 1),
(73, 6, 43, 53, '2025-05-26 16:00:00', 1),
(74, 6, 43, 53, '2025-05-26 20:00:00', 1),
(75, 6, 43, 53, '2025-05-26 20:00:00', 1),
(76, 6, 43, 51, '2025-05-14 16:00:00', 1),
(77, 6, 43, 51, '2025-05-27 16:00:00', 1),
(78, 2, 43, 51, '2025-05-20 16:00:00', 1),
(79, 2, 43, 51, '2025-05-10 16:00:00', 1),
(80, 1, 43, 48, '2025-05-08 20:00:00', 1),
(81, 1, 43, 54, '2025-05-09 14:00:00', 1),
(82, 1, 43, 52, '2025-05-20 16:00:00', 0),
(83, 1, 43, 52, '2025-05-20 16:00:00', 1),
(84, 3, 43, 51, '2025-05-28 16:00:00', 0),
(85, 3, 49, 51, '2025-05-20 14:00:00', 0),
(86, 1, 49, 48, '2025-04-15 12:00:00', 1),
(87, 3, 43, 54, '2025-05-20 10:00:00', 0),
(88, 3, 43, 54, '2025-06-19 10:00:00', 0),
(89, 3, 44, 53, '2025-06-19 12:00:00', 0),
(90, 3, 45, 51, '2025-06-19 14:00:00', 0),
(91, 2, 45, 54, '2025-06-20 10:00:00', 0),
(92, 2, 46, 53, '2025-06-20 18:00:00', 0),
(93, 2, 46, 47, '2025-06-18 14:00:00', 0),
(94, 2, 46, 54, '2025-03-31 10:00:00', 1),
(95, 2, 46, 53, '2025-04-01 10:00:00', 1),
(96, 2, 46, 52, '2025-04-02 10:00:00', 1),
(97, 2, 43, 54, '2025-06-19 20:00:00', 0),
(98, 2, 43, 50, '2025-06-21 16:00:00', 0),
(99, 3, 55, 48, '2025-05-15 18:00:00', 0),
(100, 2, 54, 46, '2025-06-22 20:00:00', 0),
(101, 1, 67, 51, '2025-05-12 14:00:00', 1),
(102, 2, 43, 54, '2025-06-16 18:00:00', 0),
(103, 4, 43, 44, '2025-04-28 16:00:00', 0),
(104, 2, 67, 53, '2025-05-17 16:00:00', 0),
(105, 2, 67, 53, '2025-05-18 16:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int UNSIGNED NOT NULL,
  `rol_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `rol_nombre`) VALUES
(1, 'administrador'),
(2, 'jugador'),
(3, 'arbitro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`),
  ADD UNIQUE KEY `equipos_equipo_nombre_unique` (`equipo_nombre`),
  ADD KEY `equipos_equipo_jug_1_foreign` (`equipo_jug_1`),
  ADD KEY `equipos_equipo_jug_2_foreign` (`equipo_jug_2`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`mensaje_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`partido_id`),
  ADD KEY `partidos_partido_equ_1_foreign` (`partido_equ_1`),
  ADD KEY `partidos_partido_equ_2_foreign` (`partido_equ_2`),
  ADD KEY `partidos_partido_ganador_foreign` (`partido_ganador`),
  ADD KEY `partidos_partido_pista_foreign` (`partido_pista`),
  ADD KEY `partidos_partido_arbitro_foreign` (`partido_arbitro`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`persona_id`),
  ADD UNIQUE KEY `personas_persona_email_unique` (`persona_email`),
  ADD KEY `personas_persona_rol_foreign` (`persona_rol`),
  ADD KEY `personas_persona_equipo_foreign` (`persona_equipo`);

--
-- Indices de la tabla `peticiones_cese`
--
ALTER TABLE `peticiones_cese`
  ADD PRIMARY KEY (`peticion_id`),
  ADD KEY `peticiones_cese_peticion_equipo_foreign` (`peticion_equipo`);

--
-- Indices de la tabla `pistas`
--
ALTER TABLE `pistas`
  ADD PRIMARY KEY (`pista_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`reserva_id`),
  ADD KEY `reservas_reserva_pista_foreign` (`reserva_pista`),
  ADD KEY `reservas_reserva_equipo1_foreign` (`reserva_equipo1`),
  ADD KEY `reservas_reserva_equipo2_foreign` (`reserva_equipo2`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `equipo_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `mensaje_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `partido_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `persona_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `peticiones_cese`
--
ALTER TABLE `peticiones_cese`
  MODIFY `peticion_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `pistas`
--
ALTER TABLE `pistas`
  MODIFY `pista_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `reserva_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_equipo_jug_1_foreign` FOREIGN KEY (`equipo_jug_1`) REFERENCES `personas` (`persona_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipos_equipo_jug_2_foreign` FOREIGN KEY (`equipo_jug_2`) REFERENCES `personas` (`persona_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_partido_arbitro_foreign` FOREIGN KEY (`partido_arbitro`) REFERENCES `personas` (`persona_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `partidos_partido_equ_1_foreign` FOREIGN KEY (`partido_equ_1`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `partidos_partido_equ_2_foreign` FOREIGN KEY (`partido_equ_2`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `partidos_partido_ganador_foreign` FOREIGN KEY (`partido_ganador`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `partidos_partido_pista_foreign` FOREIGN KEY (`partido_pista`) REFERENCES `pistas` (`pista_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_persona_equipo_foreign` FOREIGN KEY (`persona_equipo`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `personas_persona_rol_foreign` FOREIGN KEY (`persona_rol`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `peticiones_cese`
--
ALTER TABLE `peticiones_cese`
  ADD CONSTRAINT `peticiones_cese_peticion_equipo_foreign` FOREIGN KEY (`peticion_equipo`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_reserva_equipo1_foreign` FOREIGN KEY (`reserva_equipo1`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reservas_reserva_equipo2_foreign` FOREIGN KEY (`reserva_equipo2`) REFERENCES `equipos` (`equipo_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reservas_reserva_pista_foreign` FOREIGN KEY (`reserva_pista`) REFERENCES `pistas` (`pista_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
