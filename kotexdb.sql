-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla kotex.aplicaciones
CREATE TABLE IF NOT EXISTS `aplicaciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.aplicaciones: ~17 rows (aproximadamente)
INSERT INTO `aplicaciones` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
	(3, 'Indumentaria', 'indumentaria.png', NULL, NULL),
	(4, 'Guantes', 'guantes.png', NULL, NULL),
	(5, 'Fundas', 'fundas.png', NULL, NULL),
	(6, 'Uniformes', 'uniformes.png', NULL, NULL),
	(7, 'Sábanas ajustables', 'ropacama.png', NULL, NULL),
	(8, 'Trajes de baño', 'trajebaño.png', NULL, NULL),
	(10, 'Cubrepiletas', 'cubrepiletas.png', NULL, NULL),
	(11, 'Ropa de ñiños', 'ropañiños.png', NULL, NULL),
	(12, 'Ropa deportiva', 'indumentariadeportiva.png', NULL, NULL),
	(13, 'Ropa técnica', 'ropatecnica.png', NULL, NULL),
	(14, 'Cubrecolchones', '', NULL, NULL),
	(15, 'Agendas', 'agenda.png', NULL, NULL),
	(16, 'Ciclismo', 'ciclismo.png', NULL, NULL),
	(17, 'Futura máma', 'futuramama.png', NULL, NULL),
	(18, 'Ropa interior', 'ropainterior.png', NULL, NULL),
	(19, 'Marroquineria', 'marroquineria.png', NULL, NULL),
	(20, 'Ortopedia', '', NULL, NULL);

-- Volcando estructura para tabla kotex.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.cache: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.cache_locks: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.categorias: ~3 rows (aproximadamente)
INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Productos de linea', NULL, NULL),
	(2, 'Productos Especiales', NULL, NULL),
	(3, 'Productos destacados', NULL, NULL);

-- Volcando estructura para tabla kotex.categoriashome
CREATE TABLE IF NOT EXISTS `categoriashome` (
  `id` int(11) DEFAULT NULL,
  `orden` varchar(50) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `imagen` longtext DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla kotex.categoriashome: ~1 rows (aproximadamente)
INSERT INTO `categoriashome` (`id`, `orden`, `texto`, `imagen`, `updated_at`, `created_at`) VALUES
	(1, 'aa', 'productos', NULL, NULL, NULL);

-- Volcando estructura para tabla kotex.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla kotex.contacto: ~1 rows (aproximadamente)
INSERT INTO `contacto` (`id`, `direccion`, `email`, `facebook`, `telefono`, `instagram`, `whatsapp`, `updated_at`) VALUES
	(1, 'pepito', 'sadf', 'asdf', 'sadf', 'afsd', 'asdf', '2024-04-29 18:30:13');

-- Volcando estructura para tabla kotex.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.job_batches: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.logos
CREATE TABLE IF NOT EXISTS `logos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(50) NOT NULL DEFAULT '0',
  `imagen` varchar(50) NOT NULL DEFAULT '0',
  `updated_at` varchar(50) DEFAULT NULL,
  `Columna 5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla kotex.logos: ~1 rows (aproximadamente)
INSERT INTO `logos` (`id`, `logo`, `imagen`, `updated_at`, `Columna 5`) VALUES
	(4, 'Logo nav', '0', NULL, NULL),
	(5, 'Logo Foot', '0', NULL, NULL);

-- Volcando estructura para tabla kotex.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.migrations: ~13 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_04_18_174651_create_productos_table', 1),
	(5, '2024_04_18_175444_create_variaciones_table', 1),
	(6, '2024_04_18_175708_create_categorias_table', 1),
	(7, '2024_04_18_175736_create_medidas_table', 1),
	(8, '2024_04_18_180214_create_aplicaciones_table', 1),
	(9, '2024_04_18_180302_create_unidadesventa_table', 1),
	(10, '2024_04_18_181300_create_variacion_categoria_table', 1),
	(11, '2024_04_18_181443_create_variacion_medida_table', 1),
	(12, '2024_04_18_181632_create_variacion_aplicacion_table', 1),
	(13, '2024_04_18_181722_create_variacion_unidad_venta_table', 1);

-- Volcando estructura para tabla kotex.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla kotex.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.productos: ~8 rows (aproximadamente)
INSERT INTO `productos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Elásticos embutir', NULL, NULL),
	(3, 'Elásticos Negros', NULL, NULL),
	(4, 'Cordón sin alma', NULL, NULL),
	(5, 'Antideslizante', NULL, NULL),
	(6, 'Elástico con cordón', NULL, NULL),
	(7, 'Elástico PARTIDO CON 70-1', NULL, NULL),
	(8, 'Cintas rígidas', NULL, NULL),
	(9, 'Fajas Anchas', NULL, NULL);

-- Volcando estructura para tabla kotex.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.sessions: ~1 rows (aproximadamente)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('a7xS8pvQsab7JOxUHWSixBw5D2AmHlFvvjk1r01B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTdocFVtbkZEZDVlNXFBeDZET2tvMUJxb2lTREtPQkFUU0N3THFrTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvb2J0ZW5lckNvbnRhY3RvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1714419480);

-- Volcando estructura para tabla kotex.slidershome
CREATE TABLE IF NOT EXISTS `slidershome` (
  `id` int(11) NOT NULL DEFAULT 1,
  `orden` varchar(50) NOT NULL,
  `texto` longtext DEFAULT NULL,
  `imagen` varchar(400) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla kotex.slidershome: ~3 rows (aproximadamente)
INSERT INTO `slidershome` (`id`, `orden`, `texto`, `imagen`, `updated_at`, `created_at`) VALUES
	(1, 'aa', '<h1><font color="#ffffff">Fabricamos cintas </font></h1><h1><font color="#ffffff">elásticas para la industria en general</font></h1><h1><font color="#ffffff"><span style="font-family: Arial;"></span></font></h1><h1><font color="#ffffff"><span style="font-family: Arial;"></span></font></h1>', 'fotos/FqFsh8gHLzKSzeBX7aQVLzkAd3EpGQtmGEecFOcw.png', '2024-04-25 17:47:55', NULL),
	(2, 'ab', 'pepito', 'fotos/kewDWbg2w3lLLN4PhmnO6lHjy0QiaCRecFcqEtfG.png', '2024-04-25 18:49:10', NULL),
	(3, 'ac', NULL, NULL, NULL, NULL);

-- Volcando estructura para tabla kotex.suscripciones
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla kotex.suscripciones: ~3 rows (aproximadamente)
INSERT INTO `suscripciones` (`id`, `email`, `updated_at`, `created_at`) VALUES
	(NULL, 'nico@outllook.com', '2024-04-24 03:11:53', '2024-04-24 03:11:53'),
	(NULL, 'gtyt@outlook.com', '2024-04-24 03:36:16', '2024-04-24 03:36:16'),
	(NULL, 'pepito@hotmail.com', '2024-04-29 12:46:51', '2024-04-29 12:46:51');

-- Volcando estructura para tabla kotex.unidadesventa
CREATE TABLE IF NOT EXISTS `unidadesventa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unidad` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.unidadesventa: ~3 rows (aproximadamente)
INSERT INTO `unidadesventa` (`id`, `unidad`, `created_at`, `updated_at`) VALUES
	(1, 'Rollo', NULL, NULL),
	(2, 'Metro', NULL, NULL),
	(3, 'Carretel', NULL, NULL);

-- Volcando estructura para tabla kotex.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.usuarios: ~1 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `usuario`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(4, 'pablo', 'pablo@hotmail.com', NULL, '$2y$12$2y9fAfPjND/OBHiV8DXxVe.ML3cdIUWJIYblHyvhsZUzNeCEPDo2K', NULL, '2024-04-24 21:42:05', '2024-04-24 21:42:05');

-- Volcando estructura para tabla kotex.variaciones
CREATE TABLE IF NOT EXISTS `variaciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `producto_id` bigint(20) unsigned NOT NULL,
  `color` varchar(255) NOT NULL,
  `medida` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `imagen3` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variaciones_producto_id_foreign` (`producto_id`),
  CONSTRAINT `variaciones_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.variaciones: ~31 rows (aproximadamente)
INSERT INTO `variaciones` (`id`, `producto_id`, `color`, `medida`, `imagen`, `image2`, `imagen3`, `created_at`, `updated_at`) VALUES
	(4, 1, 'Blanco', '4 mm', '', '', '', NULL, NULL),
	(6, 1, 'Blanco', '6 mm', '', '', '', NULL, NULL),
	(7, 1, 'Blanco', '5 mm', '', '', '', NULL, NULL),
	(8, 1, 'Blanco', '7 mm', '', '', '', NULL, NULL),
	(9, 1, 'Blanco', '9 mm', '', '', '', NULL, NULL),
	(10, 1, 'Blanco', '10 mm', '', '', '', NULL, NULL),
	(11, 1, 'Blanco', '12 mm', '', '', '', NULL, NULL),
	(12, 1, 'Blanco', '15 mm', '', '', '', NULL, NULL),
	(13, 1, 'Blanco', '20 mm', '', '', '', NULL, NULL),
	(14, 1, 'Blanco', '25 mm', '', '', '', NULL, NULL),
	(15, 1, 'Blanco', '30 mm', '', '', '', NULL, NULL),
	(16, 1, 'Blanco', '35 mm', '', '', '', NULL, NULL),
	(17, 1, 'Blanco', '40 mm', '', '', '', NULL, NULL),
	(18, 1, 'Blanco', '50 mm', '', '', '', NULL, NULL),
	(19, 1, 'Blanco', '60 mm', '', '', '', NULL, NULL),
	(20, 1, 'Blanco', '70 mm', '', '', '', NULL, NULL),
	(21, 1, 'Blanco', '80 mm', '', '', '', NULL, NULL),
	(22, 3, 'Negro', '4 mm', '', '', '', NULL, NULL),
	(23, 3, 'Negro', '5 mm', '', '', '', NULL, NULL),
	(24, 3, 'Negro', '6 mm', '', '', '', NULL, NULL),
	(25, 4, 'Crudo', '6 mm', '', '', '', NULL, NULL),
	(26, 4, 'Negro', '6 mm', '', '', '', NULL, NULL),
	(27, 4, 'Colores', '6 mm', '', '', '', NULL, NULL),
	(28, 5, 'Negro con goma negra', '25 mm', '', '', '', NULL, NULL),
	(29, 5, 'Negro con goma blanca', '25 mm', '', '', '', NULL, NULL),
	(31, 5, 'Blanco con goma blanca', '25 mm', '', '', '', NULL, NULL),
	(32, 5, 'Negro con goma negra', '30 mm', '', '', '', NULL, NULL),
	(33, 6, 'Blanco', '30 mm', '', '', '', NULL, NULL),
	(34, 7, 'Crudo (blanco sublimable)', '22 mm', '', '', '', NULL, NULL),
	(35, 8, 'Varios', '', '', '', '', NULL, NULL),
	(36, 9, 'Negro', '100 mm', '', '', '', NULL, NULL);

-- Volcando estructura para tabla kotex.variacion_aplicacion
CREATE TABLE IF NOT EXISTS `variacion_aplicacion` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variacion_id` bigint(20) unsigned NOT NULL,
  `aplicacion_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variacion_aplicacion_variacion_id_foreign` (`variacion_id`),
  KEY `variacion_aplicacion_aplicacion_id_foreign` (`aplicacion_id`),
  CONSTRAINT `variacion_aplicacion_aplicacion_id_foreign` FOREIGN KEY (`aplicacion_id`) REFERENCES `aplicaciones` (`id`),
  CONSTRAINT `variacion_aplicacion_variacion_id_foreign` FOREIGN KEY (`variacion_id`) REFERENCES `variaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.variacion_aplicacion: ~93 rows (aproximadamente)
INSERT INTO `variacion_aplicacion` (`id`, `variacion_id`, `aplicacion_id`, `created_at`, `updated_at`) VALUES
	(4, 4, 3, NULL, NULL),
	(5, 4, 4, NULL, NULL),
	(6, 4, 5, NULL, NULL),
	(7, 6, 3, NULL, NULL),
	(8, 6, 4, NULL, NULL),
	(9, 6, 5, NULL, NULL),
	(10, 7, 3, NULL, NULL),
	(11, 7, 6, NULL, NULL),
	(12, 7, 7, NULL, NULL),
	(13, 8, 3, NULL, NULL),
	(14, 8, 8, NULL, NULL),
	(15, 8, 4, NULL, NULL),
	(17, 8, 7, NULL, NULL),
	(18, 8, 10, NULL, NULL),
	(19, 9, 3, NULL, NULL),
	(20, 9, 7, NULL, NULL),
	(21, 9, 10, NULL, NULL),
	(22, 10, 3, NULL, NULL),
	(23, 10, 11, NULL, NULL),
	(24, 10, 7, NULL, NULL),
	(25, 10, 5, NULL, NULL),
	(26, 11, 3, NULL, NULL),
	(27, 11, 8, NULL, NULL),
	(28, 11, 5, NULL, NULL),
	(29, 12, 3, NULL, NULL),
	(30, 12, 8, NULL, NULL),
	(31, 12, 12, NULL, NULL),
	(32, 13, 3, NULL, NULL),
	(33, 13, 8, NULL, NULL),
	(34, 13, 6, NULL, NULL),
	(35, 14, 3, NULL, NULL),
	(36, 14, 12, NULL, NULL),
	(37, 14, 10, NULL, NULL),
	(38, 15, 12, NULL, NULL),
	(39, 15, 8, NULL, NULL),
	(40, 15, 3, NULL, NULL),
	(41, 15, 6, NULL, NULL),
	(42, 15, 13, NULL, NULL),
	(43, 16, 3, NULL, NULL),
	(44, 16, 12, NULL, NULL),
	(45, 16, 14, NULL, NULL),
	(46, 17, 3, NULL, NULL),
	(47, 17, 12, NULL, NULL),
	(48, 17, 13, NULL, NULL),
	(49, 17, 6, NULL, NULL),
	(50, 18, 3, NULL, NULL),
	(51, 18, 12, NULL, NULL),
	(52, 19, 3, NULL, NULL),
	(53, 19, 12, NULL, NULL),
	(54, 19, 4, NULL, NULL),
	(55, 20, 3, NULL, NULL),
	(56, 20, 12, NULL, NULL),
	(57, 21, 3, NULL, NULL),
	(58, 21, 12, NULL, NULL),
	(59, 22, 3, NULL, NULL),
	(60, 22, 5, NULL, NULL),
	(61, 23, 3, NULL, NULL),
	(62, 23, 5, NULL, NULL),
	(63, 23, 15, NULL, NULL),
	(64, 23, 7, NULL, NULL),
	(65, 24, 3, NULL, NULL),
	(66, 24, 8, NULL, NULL),
	(67, 24, 15, NULL, NULL),
	(68, 24, 7, NULL, NULL),
	(69, 25, 3, NULL, NULL),
	(70, 25, 13, NULL, NULL),
	(71, 25, 6, NULL, NULL),
	(72, 26, 3, NULL, NULL),
	(73, 26, 13, NULL, NULL),
	(74, 26, 6, NULL, NULL),
	(75, 27, 3, NULL, NULL),
	(76, 27, 6, NULL, NULL),
	(77, 27, 13, NULL, NULL),
	(79, 28, 12, NULL, NULL),
	(80, 28, 13, NULL, NULL),
	(81, 28, 16, NULL, NULL),
	(82, 29, 12, NULL, NULL),
	(83, 29, 13, NULL, NULL),
	(86, 29, 16, NULL, NULL),
	(87, 31, 12, NULL, NULL),
	(89, 31, 13, NULL, NULL),
	(90, 31, 16, NULL, NULL),
	(92, 32, 12, NULL, NULL),
	(93, 32, 13, NULL, NULL),
	(95, 32, 16, NULL, NULL),
	(96, 33, 3, NULL, NULL),
	(97, 33, 12, NULL, NULL),
	(98, 33, 6, NULL, NULL),
	(99, 34, 13, NULL, NULL),
	(100, 34, 3, NULL, NULL),
	(101, 35, 3, NULL, NULL),
	(102, 36, 20, NULL, NULL),
	(103, 36, 20, NULL, NULL);

-- Volcando estructura para tabla kotex.variacion_categoria
CREATE TABLE IF NOT EXISTS `variacion_categoria` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variacion_id` bigint(20) unsigned NOT NULL,
  `categoria_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variacion_categoria_variacion_id_foreign` (`variacion_id`),
  KEY `variacion_categoria_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `variacion_categoria_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `variacion_categoria_variacion_id_foreign` FOREIGN KEY (`variacion_id`) REFERENCES `variaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.variacion_categoria: ~38 rows (aproximadamente)
INSERT INTO `variacion_categoria` (`id`, `variacion_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
	(1, 4, 1, NULL, NULL),
	(2, 6, 1, NULL, NULL),
	(3, 7, 1, NULL, NULL),
	(4, 8, 1, NULL, NULL),
	(5, 9, 1, NULL, NULL),
	(6, 10, 1, NULL, NULL),
	(7, 11, 1, NULL, NULL),
	(8, 12, 1, NULL, NULL),
	(9, 13, 1, NULL, NULL),
	(10, 14, 1, NULL, NULL),
	(11, 15, 1, NULL, NULL),
	(12, 16, 1, NULL, NULL),
	(13, 17, 1, NULL, NULL),
	(14, 18, 1, NULL, NULL),
	(15, 19, 1, NULL, NULL),
	(16, 20, 1, NULL, NULL),
	(17, 21, 1, NULL, NULL),
	(18, 22, 1, NULL, NULL),
	(19, 23, 1, NULL, NULL),
	(20, 24, 1, NULL, NULL),
	(21, 25, 2, NULL, NULL),
	(22, 26, 2, NULL, NULL),
	(23, 27, 2, NULL, NULL),
	(25, 27, 2, NULL, NULL),
	(26, 26, 3, NULL, NULL),
	(27, 25, 3, NULL, NULL),
	(28, 24, 3, NULL, NULL),
	(29, 27, 3, NULL, NULL),
	(30, 28, 1, NULL, NULL),
	(32, 29, 1, NULL, NULL),
	(35, 31, 1, NULL, NULL),
	(36, 32, 1, NULL, NULL),
	(37, 32, 3, NULL, NULL),
	(38, 33, 1, NULL, NULL),
	(39, 33, 3, NULL, NULL),
	(40, 34, 2, NULL, NULL),
	(42, 35, 2, NULL, NULL),
	(43, 36, 2, NULL, NULL);

-- Volcando estructura para tabla kotex.variacion_unidad_venta
CREATE TABLE IF NOT EXISTS `variacion_unidad_venta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variacion_id` bigint(20) unsigned NOT NULL,
  `unidad_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variacion_unidad_venta_variacion_id_foreign` (`variacion_id`),
  KEY `variacion_unidad_venta_unidad_id_foreign` (`unidad_id`),
  CONSTRAINT `variacion_unidad_venta_unidad_id_foreign` FOREIGN KEY (`unidad_id`) REFERENCES `unidadesventa` (`id`),
  CONSTRAINT `variacion_unidad_venta_variacion_id_foreign` FOREIGN KEY (`variacion_id`) REFERENCES `variaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kotex.variacion_unidad_venta: ~62 rows (aproximadamente)
INSERT INTO `variacion_unidad_venta` (`id`, `variacion_id`, `unidad_id`, `created_at`, `updated_at`) VALUES
	(1, 4, 1, NULL, NULL),
	(2, 4, 2, NULL, NULL),
	(3, 6, 1, NULL, NULL),
	(4, 6, 2, NULL, NULL),
	(5, 7, 1, NULL, NULL),
	(6, 7, 2, NULL, NULL),
	(7, 8, 2, NULL, NULL),
	(8, 8, 1, NULL, NULL),
	(9, 9, 2, NULL, NULL),
	(10, 9, 1, NULL, NULL),
	(11, 10, 2, NULL, NULL),
	(12, 10, 1, NULL, NULL),
	(13, 11, 2, NULL, NULL),
	(14, 11, 1, NULL, NULL),
	(15, 12, 2, NULL, NULL),
	(16, 12, 1, NULL, NULL),
	(17, 13, 2, NULL, NULL),
	(18, 13, 1, NULL, NULL),
	(19, 14, 2, NULL, NULL),
	(20, 14, 1, NULL, NULL),
	(21, 15, 2, NULL, NULL),
	(22, 15, 1, NULL, NULL),
	(23, 16, 2, NULL, NULL),
	(24, 16, 1, NULL, NULL),
	(25, 17, 2, NULL, NULL),
	(26, 17, 1, NULL, NULL),
	(27, 18, 2, NULL, NULL),
	(28, 18, 1, NULL, NULL),
	(29, 19, 2, NULL, NULL),
	(30, 19, 1, NULL, NULL),
	(31, 20, 2, NULL, NULL),
	(32, 20, 1, NULL, NULL),
	(33, 21, 2, NULL, NULL),
	(34, 21, 1, NULL, NULL),
	(35, 22, 2, NULL, NULL),
	(36, 22, 1, NULL, NULL),
	(37, 23, 2, NULL, NULL),
	(38, 23, 1, NULL, NULL),
	(39, 24, 2, NULL, NULL),
	(40, 24, 1, NULL, NULL),
	(41, 25, 2, NULL, NULL),
	(42, 25, 1, NULL, NULL),
	(43, 26, 2, NULL, NULL),
	(44, 26, 1, NULL, NULL),
	(45, 27, 2, NULL, NULL),
	(46, 27, 1, NULL, NULL),
	(47, 28, 2, NULL, NULL),
	(48, 28, 1, NULL, NULL),
	(49, 29, 2, NULL, NULL),
	(50, 29, 1, NULL, NULL),
	(51, 31, 2, NULL, NULL),
	(52, 31, 1, NULL, NULL),
	(53, 32, 1, NULL, NULL),
	(54, 32, 2, NULL, NULL),
	(55, 33, 1, NULL, NULL),
	(56, 33, 2, NULL, NULL),
	(58, 34, 1, NULL, NULL),
	(59, 34, 2, NULL, NULL),
	(60, 35, 1, NULL, NULL),
	(61, 35, 2, NULL, NULL),
	(62, 36, 1, NULL, NULL),
	(63, 36, 2, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
