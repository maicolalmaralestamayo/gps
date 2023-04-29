-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2023 a las 03:31:47
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_gps`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `nombre`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'Wheat', 'Aut nihil est et earum reprehenderit.', '2023-04-24 04:22:59', '2023-04-24 04:22:59'),
(2, 'Peru', 'Autem ab similique et dolorum doloribus sint.', '2023-04-24 04:23:00', '2023-04-24 04:23:00'),
(3, 'DarkOliveGreen', 'Fuga aut molestiae voluptas minima cum.', '2023-04-24 04:23:00', '2023-04-24 04:23:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combustibles`
--

CREATE TABLE `combustibles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `combustibles`
--

INSERT INTO `combustibles` (`id`, `nombre`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'eveniet', 'Neque quasi illum animi ut consectetur dolor.', '2023-04-24 04:23:01', '2023-04-24 04:23:01'),
(2, 'consequuntur', 'Eos hic earum dolores ut a qui enim.', '2023-04-24 04:23:01', '2023-04-24 04:23:01'),
(3, 'dicta', 'Dolore sit sed non quo esse.', '2023-04-24 04:23:02', '2023-04-24 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordenadas`
--

CREATE TABLE `coordenadas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechahora` datetime NOT NULL DEFAULT '2023-04-24 00:00:00',
  `latitud` double NOT NULL DEFAULT 0,
  `longitud` double NOT NULL DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehiculo_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coordenadas`
--

INSERT INTO `coordenadas` (`id`, `fechahora`, `latitud`, `longitud`, `estado`, `observacion`, `created_at`, `updated_at`, `vehiculo_id`) VALUES
(1, '2023-04-04 14:56:29', 72.967213, -123.083658, 1, 'Autem autem quaerat id vero tenetur. Occaecati quia voluptatum deleniti molestiae. Rerum animi et dignissimos magni inventore dicta et.', '2023-04-24 04:23:10', '2023-04-24 04:23:10', 4),
(2, '2023-04-14 17:50:30', -16.61619, -1.08542, 1, 'A dolorum sed error. Sint porro quia eum earum nobis ex vel. Ut at et adipisci. Cumque omnis totam tenetur rerum quas earum officiis.', '2023-04-24 04:23:10', '2023-04-24 04:23:10', 9),
(3, '2023-04-17 14:20:34', 40.243047, 109.716043, 1, 'Illo voluptas ea quasi ipsum sapiente. Delectus ut voluptates accusantium nesciunt est aut quam. Qui rerum minus enim laborum. Consequatur magnam vitae neque doloribus vero adipisci.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 2),
(4, '2023-03-29 17:42:25', -71.545072, 13.098624, 1, 'Iste voluptatem odit quia unde vero nulla. Dolorum iure voluptatem magni quis laboriosam a quaerat. Rem id magnam non qui tempore sint autem.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 3),
(5, '2023-03-27 09:00:52', -28.333574, -20.613736, 1, 'Nihil nam ea cupiditate. Voluptates id fugit voluptate animi. Ea occaecati asperiores laborum ipsam in corporis et dolores. Est molestiae ut ratione quos. Quis unde aut ratione nemo dolores eum.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 2),
(6, '2023-04-18 12:57:44', -43.402089, -69.095813, 1, 'Sed impedit velit veritatis explicabo non. Asperiores error consequuntur officia. Impedit odio aut quod sunt quibusdam dolorum tenetur.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 7),
(7, '2023-04-12 06:05:53', 22.259427, -166.932699, 1, 'Aut enim quod blanditiis molestiae maxime et vitae iusto. Ipsa repellendus est cum. Consequatur aut est ipsum itaque et totam eaque nobis. Ut nobis sed ratione eum et debitis.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 3),
(8, '2023-04-10 18:55:40', 64.737678, 37.784379, 1, 'Occaecati commodi voluptatem sit voluptatem aperiam optio. Voluptatum recusandae consequuntur quisquam nulla perspiciatis ab. Et doloremque aut possimus vero libero neque cumque.', '2023-04-24 04:23:11', '2023-04-24 04:23:11', 2),
(9, '2023-04-12 12:43:08', -66.6473, -2.653744, 1, 'Voluptatem et qui asperiores repellendus rerum error. Sit doloribus minima ducimus dolorum qui deleniti. Distinctio quas repudiandae eum nihil beatae saepe expedita.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 7),
(10, '2023-04-14 18:03:52', -58.166134, 133.953643, 1, 'Deleniti sunt rerum quo ea rerum consequatur laboriosam. At atque repellat voluptatem est error quas. Ex voluptates nemo soluta. Consectetur culpa quia numquam molestiae sunt culpa.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 8),
(11, '2023-03-27 20:54:37', -88.997438, 127.010392, 1, 'Incidunt voluptatum minima et unde. Accusantium explicabo id ut sequi. Sunt autem ut et assumenda. Et repellendus repellat enim aspernatur.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 9),
(12, '2023-04-11 06:56:57', -47.647195, -54.103651, 1, 'Beatae nihil consequatur ea natus quam. Eos aut quam non neque sed dolore iusto. Quidem tempora et iure et. Fugit officia nihil possimus maxime ut quae repudiandae. Quia qui ullam consequatur ad.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 7),
(13, '2023-04-20 10:36:25', -29.54386, -1.758449, 1, 'Nostrum possimus quae sunt rerum architecto. Odio vel fugiat ut. Non aut praesentium sequi modi amet dolorem fugiat deserunt. Sequi atque repellat nam.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 1),
(14, '2023-04-13 08:59:34', 32.9756, 37.209646, 1, 'Officiis ut modi tempora neque quisquam dolorem quia. Laborum modi quis et voluptatem ut modi. Saepe consequuntur eligendi dolores dolorem perspiciatis.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 2),
(15, '2023-04-10 13:10:02', -33.667826, -54.177372, 1, 'Est est dolores eum earum atque aut consequatur. Reiciendis voluptatum eligendi quibusdam facere autem. Ut harum dolorum vero natus. Iure nemo non sit maxime. Dolor esse maiores reiciendis hic et.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 1),
(16, '2023-04-18 08:15:44', 74.751607, -154.309542, 1, 'Dolores perferendis animi perspiciatis quo quod. Totam recusandae eos aut magni dolor facere. Dicta quasi ut quaerat deleniti ex autem. Vero autem omnis aliquam adipisci voluptas sint et cumque.', '2023-04-24 04:23:12', '2023-04-24 04:23:12', 7),
(17, '2023-04-15 14:50:28', -28.359306, 105.616756, 1, 'Quas ipsa aut in ut quibusdam voluptatibus. Deserunt quia et ut sed velit earum. Ut at placeat dolorem quae. Et nulla quia laboriosam esse quidem praesentium.', '2023-04-24 04:23:13', '2023-04-24 04:23:13', 4),
(18, '2023-04-02 03:30:51', -49.070893, 41.062297, 1, 'Molestias doloremque aperiam maxime quisquam tempore et officia. Molestias ea quae aspernatur est molestiae.', '2023-04-24 04:23:13', '2023-04-24 04:23:13', 8),
(19, '2023-04-10 07:06:11', 50.731026, 133.736433, 1, 'Temporibus optio saepe sunt architecto qui. Blanditiis distinctio quis sit expedita sit tempore. Est earum ut autem. Qui ut et omnis quia dicta.', '2023-04-24 04:23:13', '2023-04-24 04:23:13', 2),
(20, '2023-04-05 10:29:48', 25.399757, 49.205214, 1, 'Fugiat quis doloremque aliquid excepturi dolores sed. Iste repudiandae cupiditate et earum asperiores veniam est. Necessitatibus aut dolorum possimus exercitationem ullam. Ea labore enim earum.', '2023-04-24 04:23:13', '2023-04-24 04:23:13', 10),
(21, '2023-04-15 17:54:05', 80.835744, 70.465325, 1, 'Dicta sunt quasi et cumque labore repellat accusamus rem. Accusantium ad numquam voluptas eius fuga. Odit neque debitis omnis.', '2023-04-24 04:23:13', '2023-04-24 04:23:13', 5),
(22, '2023-03-29 15:17:21', -36.03145, 111.305409, 1, 'Quam explicabo sint impedit repudiandae ullam. Nesciunt iusto quia ad eius facilis hic quos. Autem est quod a numquam qui.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 7),
(23, '2023-04-23 23:38:03', 46.161861, 44.20543, 1, 'Ad eum harum nesciunt voluptas provident magnam pariatur. Voluptatum mollitia voluptatibus aperiam minima aut consequatur. Rem nihil magnam distinctio et quia rerum.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 3),
(24, '2023-03-27 21:50:41', 73.050194, 58.206948, 1, 'Iure vel iste molestiae quia quidem ea eos. Dolorem illo adipisci numquam et voluptatem. Vitae aut fugiat ratione voluptatem.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 3),
(25, '2023-04-14 12:03:25', 32.167073, -26.945939, 1, 'Laboriosam et tempore similique dignissimos. Fugiat et ducimus ut nihil. Voluptate et esse ut explicabo qui alias officiis. Nobis magni eaque iste. Eligendi omnis quam molestiae laudantium et ut sit.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 5),
(26, '2023-03-25 20:34:06', -12.879262, -165.156824, 1, 'Libero at non quia sint aut aut. Dicta earum dolor blanditiis culpa reprehenderit. Illum est necessitatibus quos velit.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 8),
(27, '2023-04-07 03:13:01', 19.451088, -141.703366, 1, 'Mollitia dolores sit corporis molestiae mollitia voluptatem sed. Cum adipisci eius aliquam officia. Voluptatem saepe dolores aut quis. Error et natus molestias eaque aut voluptatem mollitia.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 10),
(28, '2023-04-16 10:55:28', 27.51958, -46.7938, 1, 'Iure architecto cupiditate unde explicabo itaque vitae vel. Odio in adipisci quam earum rerum eligendi ea. Inventore veritatis iure ab eveniet repellendus. Eveniet veniam laborum reiciendis est.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 4),
(29, '2023-03-29 11:25:24', 86.954248, 54.11414, 1, 'Neque doloribus consequatur repudiandae eveniet ut mollitia quia. Est reprehenderit temporibus qui modi aut eveniet dicta dolor. Sit nesciunt quisquam tenetur blanditiis quo voluptatum eum.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 5),
(30, '2023-04-06 06:57:05', 9.924346, 57.64143, 1, 'Vel tempora esse nobis exercitationem quia nam illum. Et natus voluptas provident quasi dolorem qui. Vel quos doloribus earum. Enim maxime recusandae unde voluptas voluptate.', '2023-04-24 04:23:14', '2023-04-24 04:23:14', 10),
(31, '2023-04-17 17:21:23', -40.00095, 97.000025, 1, 'Itaque voluptatem voluptas aliquam labore. Laborum non vel quia et ipsam ut beatae. Quam minus debitis quia odio facilis ut ipsum.', '2023-04-24 04:23:15', '2023-04-24 04:23:15', 8),
(32, '2023-03-26 16:28:59', 81.422377, -100.418728, 1, 'Consequuntur consequatur quo eligendi nisi sed optio sed. Quis consectetur sit dicta. Voluptatum ullam in est est molestiae ratione.', '2023-04-24 04:23:15', '2023-04-24 04:23:15', 10),
(33, '2023-03-24 17:16:26', 62.01446, -106.837933, 1, 'Tempora eos reprehenderit dolore laudantium facilis id aspernatur dolorem. Porro aut voluptates aliquid quas enim qui. Aliquid voluptas mollitia autem fuga illo reprehenderit nihil.', '2023-04-24 04:23:15', '2023-04-24 04:23:15', 4),
(34, '2023-04-14 13:02:28', 89.163424, 115.120818, 1, 'Inventore cupiditate est cumque. In similique nobis tenetur in temporibus. Dolore nulla ipsam reiciendis voluptatem. Corporis autem veniam fuga dolorem excepturi qui.', '2023-04-24 04:23:15', '2023-04-24 04:23:15', 3),
(35, '2023-03-28 14:11:53', 61.147296, -106.023079, 1, 'Omnis et voluptatem deserunt sed. Doloribus temporibus ratione et at aperiam inventore aut. Sit non est architecto ipsa veritatis ut corrupti.', '2023-04-24 04:23:15', '2023-04-24 04:23:15', 7),
(36, '2023-04-01 15:50:16', -64.41616, -55.91548, 1, 'Vel delectus et qui quas. Dicta consectetur et velit nostrum. Et corrupti voluptatem fugit est quam.', '2023-04-24 04:23:16', '2023-04-24 04:23:16', 5),
(37, '2023-04-02 13:02:55', 55.930048, 141.053894, 1, 'Nisi praesentium sunt saepe iste fugiat. Et ab saepe fugiat fugiat. Dolorem libero fuga velit quia. Sequi impedit excepturi pariatur aut vel.', '2023-04-24 04:23:16', '2023-04-24 04:23:16', 9),
(38, '2023-03-27 05:52:20', -58.029621, 29.7957, 1, 'Eum assumenda et vero praesentium ullam repellendus voluptatibus non. Reprehenderit sit occaecati nobis repellendus. Mollitia tempora temporibus itaque est cumque ex excepturi.', '2023-04-24 04:23:16', '2023-04-24 04:23:16', 10),
(39, '2023-03-25 15:01:56', -85.172588, -7.908627, 1, 'Porro aut sed tempore ducimus perspiciatis. Eos quisquam aut magnam blanditiis quae. Itaque saepe ipsam quisquam voluptatem nulla quaerat laudantium.', '2023-04-24 04:23:16', '2023-04-24 04:23:16', 8),
(40, '2023-04-16 12:48:37', -25.468578, -76.830804, 1, 'Omnis rem est nemo. Dolores fugiat dolor facilis esse quis. Fugit ipsum aut et perferendis voluptatem magni. Cupiditate labore sed vel rerum quia omnis.', '2023-04-24 04:23:16', '2023-04-24 04:23:16', 4),
(41, '2023-04-07 23:33:42', -33.760915, 157.018527, 1, 'Expedita iste minus autem cumque laboriosam ut. Architecto ut unde at et. Aliquam et harum est non non ut inventore. Blanditiis autem quae qui.', '2023-04-24 04:23:17', '2023-04-24 04:23:17', 5),
(42, '2023-03-27 03:54:01', 55.404814, -83.254751, 1, 'Placeat laudantium molestiae ea eius. Qui laboriosam molestiae ratione numquam. Iure laboriosam quidem aut dolore est laudantium assumenda. Ipsam quis et ullam ullam veritatis consequatur nulla sed.', '2023-04-24 04:23:17', '2023-04-24 04:23:17', 3),
(43, '2023-03-31 00:28:27', -45.566032, -74.397175, 1, 'Et perspiciatis dolor vitae autem molestias dolor et. Delectus fuga eos laudantium et adipisci consequatur et perspiciatis. Expedita quia magni rerum expedita pariatur et.', '2023-04-24 04:23:17', '2023-04-24 04:23:17', 8),
(44, '2023-03-29 04:22:36', -75.282867, 167.025801, 1, 'Dolorem error quia debitis beatae necessitatibus quae optio. Corporis nobis dolorum enim cum id harum. Dolorum qui dicta distinctio iusto asperiores. Doloribus libero architecto omnis natus vero.', '2023-04-24 04:23:17', '2023-04-24 04:23:17', 4),
(45, '2023-04-05 08:43:35', 65.239304, -23.142257, 1, 'Repellendus praesentium aut adipisci consequatur vitae non. Tempora placeat omnis deleniti aspernatur voluptatem alias. Quia et fuga in.', '2023-04-24 04:23:17', '2023-04-24 04:23:17', 1),
(46, '2023-04-09 12:09:01', -51.817058, -69.863522, 1, 'Et non aperiam optio quia accusantium dolores sit. Eos accusamus necessitatibus aliquid. In voluptatem possimus reprehenderit voluptatem velit aut inventore blanditiis.', '2023-04-24 04:23:18', '2023-04-24 04:23:18', 6),
(47, '2023-03-28 16:00:31', -5.468593, 93.02118, 1, 'Quia tempore architecto inventore aperiam laudantium ducimus tenetur. Ullam harum minus doloribus neque voluptas quas neque. Et consectetur omnis voluptatem facilis.', '2023-04-24 04:23:18', '2023-04-24 04:23:18', 5),
(48, '2023-04-17 03:21:16', -6.3028, -167.376584, 1, 'Ratione adipisci quia magni id. Et modi voluptates dolorem vitae autem. Consequatur aut inventore iure quis.', '2023-04-24 04:23:18', '2023-04-24 04:23:18', 5),
(49, '2023-04-01 09:54:38', 54.17222, -129.683801, 1, 'Velit delectus perspiciatis maxime assumenda voluptatum. Ex officia et qui ex asperiores. Et iure sequi ea.', '2023-04-24 04:23:18', '2023-04-24 04:23:18', 8),
(50, '2023-04-23 12:49:49', 46.580435, -97.411439, 1, 'Aut voluptatem minus facilis sunt. Nihil placeat ea aut consequatur vero nihil.', '2023-04-24 04:23:19', '2023-04-24 04:23:19', 8),
(51, '2023-04-19 16:27:52', 1.44517, 76.169118, 1, 'Omnis quia quae sit quibusdam. Asperiores nostrum est adipisci voluptatem recusandae consequatur ullam.', '2023-04-24 04:23:19', '2023-04-24 04:23:19', 7),
(52, '2023-04-02 02:42:07', 19.056981, -174.225837, 1, 'Inventore officiis ipsa deserunt vel in non harum. Sed consequatur quia quis dolor. Qui blanditiis id earum recusandae non. Nam exercitationem quo et voluptatibus a consequatur.', '2023-04-24 04:23:19', '2023-04-24 04:23:19', 5),
(53, '2023-04-15 21:33:18', 23.536032, 92.140204, 1, 'Quam fugiat illo nam illo ex minus. Porro atque laborum temporibus enim. Nihil non quod voluptatem neque aut alias.', '2023-04-24 04:23:19', '2023-04-24 04:23:19', 1),
(54, '2023-03-30 07:04:03', 1.183671, 7.222635, 1, 'Commodi voluptatem neque tempora qui. Asperiores rerum eaque nemo officia. Quaerat corporis eaque voluptate sit enim. Non sapiente qui expedita at placeat sapiente.', '2023-04-24 04:23:19', '2023-04-24 04:23:19', 3),
(55, '2023-03-29 23:46:56', 74.947211, -178.764964, 1, 'Non itaque quaerat recusandae maxime. Molestiae excepturi ipsum fuga distinctio labore at magnam. Iste magnam dolore similique quo. Voluptatem sit qui eos aut laudantium.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 6),
(56, '2023-03-25 00:05:33', 49.459903, -136.70598, 1, 'Et numquam quo reiciendis. Repudiandae molestiae quod optio quibusdam commodi unde amet. Ex consequatur quis doloribus dolor quam.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 7),
(57, '2023-04-16 05:24:24', 71.123489, 177.375297, 1, 'Soluta aliquam quis et quia perferendis doloribus. Dolorem corrupti officia ipsam ea quae quia. Est magni itaque optio odio aut dicta.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 6),
(58, '2023-04-06 09:33:30', -63.213744, -98.975866, 1, 'Eaque accusantium aliquam temporibus eum. Molestiae ipsam nulla vero deleniti doloribus ut.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 4),
(59, '2023-04-13 10:47:58', 32.861451, -53.889955, 1, 'Officia exercitationem facilis quam ut. Rem sint unde sunt eum et suscipit eaque eaque. Explicabo sed a eligendi nobis. Distinctio delectus voluptate perferendis quia in quibusdam.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 2),
(60, '2023-04-09 09:05:45', 4.264764, -156.58528, 1, 'Vitae nemo beatae hic. Molestias voluptates possimus qui.', '2023-04-24 04:23:20', '2023-04-24 04:23:20', 8),
(61, '2023-04-04 19:20:44', -66.409293, -137.699809, 1, 'Rerum fugiat ex aut harum. Magni quia ipsum reprehenderit doloribus sit. Quos ipsum expedita blanditiis vel.', '2023-04-24 04:23:21', '2023-04-24 04:23:21', 10),
(62, '2023-04-10 16:43:54', 9.640288, 18.627392, 1, 'Veniam alias dolorum numquam ab assumenda totam ut. Nam molestiae deleniti inventore rerum laudantium. Ducimus soluta iste sit.', '2023-04-24 04:23:21', '2023-04-24 04:23:21', 6),
(63, '2023-04-09 18:01:45', -21.33515, -135.96789, 1, 'Ipsum nam corrupti rerum ea ipsa iste. Officiis dolorem et assumenda optio quae aperiam magnam. Non temporibus aut optio culpa ipsam debitis. Veniam quibusdam nihil autem aut reiciendis.', '2023-04-24 04:23:21', '2023-04-24 04:23:21', 5),
(64, '2023-04-05 10:24:15', 71.128947, 121.251472, 1, 'Officia quo voluptas distinctio assumenda laboriosam. Non et omnis voluptatem aut quisquam. Dolores ut rem dicta doloremque voluptatibus voluptatem exercitationem.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 1),
(65, '2023-04-13 21:57:56', -64.282573, 142.461306, 1, 'Vitae atque recusandae officia minima a qui repellat explicabo. Eos et ut eum neque. Voluptatum distinctio illum architecto asperiores consequuntur. Consequatur placeat qui aut id aut.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 2),
(66, '2023-03-30 18:34:50', 48.257482, -106.935552, 1, 'Eum quaerat quas esse commodi quod. Totam iste rerum ab. Exercitationem tenetur in sint voluptate eligendi voluptas sapiente.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 8),
(67, '2023-03-28 09:55:21', -15.764219, -48.61382, 1, 'Et eaque magni delectus repellendus provident. Voluptatem id eum odio ratione autem eos. Molestiae dicta qui voluptate ut corporis. Dolor et nemo neque.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 1),
(68, '2023-03-28 05:19:25', -88.172053, -104.224395, 1, 'Quia voluptatum magnam dolores et cum aut. Voluptate fugiat placeat inventore voluptate voluptatem laboriosam labore ut. Reprehenderit ea in commodi aut sed. Quaerat qui et tempore sed est provident.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 2),
(69, '2023-03-24 03:25:00', 23.826917, 139.836868, 1, 'Et ad et voluptatum laboriosam et sunt. Sed ea ducimus impedit ut omnis. Voluptatum cum magni voluptate assumenda dolorem inventore.', '2023-04-24 04:23:22', '2023-04-24 04:23:22', 6),
(70, '2023-04-15 22:30:53', -44.119314, 105.410672, 1, 'Unde voluptates qui dolorem similique. Non at sit et sit dolor nemo. Et earum quo ut reiciendis rerum. Dolorem est velit sapiente officia pariatur aut qui.', '2023-04-24 04:23:23', '2023-04-24 04:23:23', 1),
(71, '2023-04-21 20:12:59', 9.992538, 149.603569, 1, 'Ipsa sed est qui rerum. Id ex et commodi. Modi repudiandae dignissimos eligendi dolor rem. Eos et illum voluptas et.', '2023-04-24 04:23:23', '2023-04-24 04:23:23', 6),
(72, '2023-03-29 05:40:25', -44.665093, -89.646863, 1, 'Qui omnis dolores voluptates corporis ut. Quibusdam totam sit dolores soluta laudantium sit quibusdam corrupti. Consequatur aut cum qui et.', '2023-04-24 04:23:23', '2023-04-24 04:23:23', 8),
(73, '2023-04-06 12:03:23', -60.094268, -63.555166, 1, 'Blanditiis sunt eum quis natus esse neque. Modi necessitatibus modi sed error. Eos id laboriosam magnam eveniet.', '2023-04-24 04:23:23', '2023-04-24 04:23:23', 8),
(74, '2023-04-02 16:34:04', 86.930637, 116.344885, 1, 'Omnis quos recusandae repellat corporis facilis reiciendis eum iste. Autem perferendis deleniti magni. Magnam voluptatibus id quasi quo. Deserunt perferendis doloremque quia.', '2023-04-24 04:23:24', '2023-04-24 04:23:24', 6),
(75, '2023-04-21 15:58:27', 73.194369, 160.788707, 1, 'Ratione minima voluptatum qui est modi. Magni praesentium unde saepe est officia vel ab. Veniam ex consequatur ratione aut facilis omnis.', '2023-04-24 04:23:24', '2023-04-24 04:23:24', 2),
(76, '2023-04-17 12:22:37', -4.566608, -111.16759, 1, 'Doloribus accusamus quia autem et provident odit. Veniam repudiandae dolorem aperiam voluptate. Eos quia rerum iure qui perspiciatis et.', '2023-04-24 04:23:24', '2023-04-24 04:23:24', 1),
(77, '2023-04-11 20:47:12', -82.13585, 114.768858, 1, 'Sequi aut aliquam quia neque laudantium et ipsam. Alias quo accusantium repellat enim et rem repellat.', '2023-04-24 04:23:24', '2023-04-24 04:23:24', 8),
(78, '2023-04-10 01:58:07', 46.276327, -141.777288, 1, 'Temporibus beatae cum dignissimos optio ducimus sint explicabo. Autem in et nam et omnis. Odio earum excepturi totam et dolorem accusantium consequatur. Hic ducimus enim aperiam placeat in occaecati.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 2),
(79, '2023-04-14 05:39:02', 16.979639, 154.656781, 1, 'Tempora eum quam maxime. Quo ipsum rerum voluptatem voluptatem eligendi. Mollitia ut quasi nesciunt neque.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 7),
(80, '2023-03-27 15:09:47', -40.490147, -9.495169, 1, 'Voluptates minus deserunt velit sit aut ratione. Deleniti recusandae nam asperiores sit est minima et at. Aspernatur molestias autem saepe quis.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 4),
(81, '2023-03-25 03:28:50', 68.256748, 96.954009, 1, 'Architecto omnis praesentium voluptatem ducimus. Omnis placeat odio amet numquam repudiandae dicta quibusdam. Consectetur tempore sunt perferendis tempora consequatur possimus.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 1),
(82, '2023-03-29 11:10:29', -70.138163, 92.112753, 1, 'Sint sed cum temporibus atque sit vel suscipit. Consequuntur reiciendis magnam voluptatem eaque. Veritatis saepe laborum eum veritatis. Ipsam ea voluptatibus nisi saepe dicta alias.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 2),
(83, '2023-04-03 21:21:13', 45.934925, -127.1977, 1, 'Non error omnis quia quia ex laborum sequi. Omnis omnis et quia nostrum non. Velit officia id non rerum et laboriosam. Cupiditate quo incidunt laboriosam magnam.', '2023-04-24 04:23:25', '2023-04-24 04:23:25', 3),
(84, '2023-04-19 08:06:55', 78.844962, -156.686719, 1, 'Fugit id consequuntur nihil voluptas. Nemo est ut sit unde. Voluptatibus vero eaque aut saepe harum. Quisquam quaerat porro quis nihil eum natus inventore pariatur.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 6),
(85, '2023-04-13 01:34:02', 79.860881, 125.757925, 1, 'Quas iusto vel adipisci rerum. Et ut sint illum commodi. Nulla distinctio veniam voluptas inventore quo est.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 9),
(86, '2023-03-31 07:32:08', -55.252533, -173.760849, 1, 'Doloribus et corrupti qui non. Non sint aperiam enim rerum et est ullam. Amet consectetur fugit modi.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 1),
(87, '2023-03-26 10:56:32', 62.409446, 84.807394, 1, 'Quaerat qui deserunt sunt voluptatibus. Doloremque et quidem nulla deleniti et ea delectus. Omnis et excepturi eveniet quo aut. Ipsa beatae sint voluptas voluptatem eos laudantium quae.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 3),
(88, '2023-04-05 05:21:28', 48.477151, 82.362971, 1, 'Reiciendis sed ipsum quidem eveniet praesentium vitae. Facere vel ut id enim ducimus. Et ullam vel reiciendis consectetur aspernatur.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 9),
(89, '2023-04-16 06:21:19', 20.152038, 161.34717, 1, 'Iure veritatis corrupti aspernatur eos. Eum ut dolor dolor eaque ut. Tenetur iure eos hic illo. Tempora et fugiat voluptatem id ipsa maiores ut.', '2023-04-24 04:23:26', '2023-04-24 04:23:26', 9),
(90, '2023-03-29 13:34:09', -70.405284, 28.389447, 1, 'Et ex explicabo blanditiis ipsum. Facere quam facilis et molestiae eligendi. Aut repellendus eos dolorum dolores temporibus.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 3),
(91, '2023-04-17 20:40:01', 14.966919, -168.028725, 1, 'Deleniti et fugiat voluptas. Modi voluptas rem sit aut ullam et ipsam. Iure ipsa in reiciendis harum.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 3),
(92, '2023-04-12 20:38:10', -68.535155, 13.704724, 1, 'Quia dolor omnis enim quae ut magnam esse. Aut repudiandae nesciunt ut aut non. Et quae maxime et incidunt ipsam maiores expedita.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 2),
(93, '2023-04-21 17:47:15', 72.066889, -60.381313, 1, 'Eum dolorum rerum ut tempora incidunt et ut. Sint hic est vero maiores. Ut voluptatem consequatur odio. Velit perferendis similique maiores voluptatem.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 1),
(94, '2023-04-01 22:51:38', -24.70846, 16.204466, 1, 'Earum quisquam beatae aperiam eos eum occaecati nulla animi. Natus velit consequuntur temporibus quia assumenda. Doloribus eius qui qui quidem. Corporis dolores sint facere magnam non illum commodi.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 7),
(95, '2023-04-05 23:10:04', 26.723224, -176.766733, 1, 'Laborum quaerat sit laborum officia fuga. Pariatur nobis neque sit est praesentium. Iste harum dolore et qui qui.', '2023-04-24 04:23:27', '2023-04-24 04:23:27', 2),
(96, '2023-04-12 09:01:13', 15.485297, -11.69488, 1, 'Eaque illum laborum quia voluptatibus eum sit. Similique consectetur ad laudantium asperiores. Est pariatur hic sit voluptate voluptatem dicta magnam. Beatae similique itaque quis recusandae impedit.', '2023-04-24 04:23:28', '2023-04-24 04:23:28', 7),
(97, '2023-04-18 14:19:40', -6.996305, 33.793443, 1, 'Et rerum quia porro ad velit distinctio. Sit amet sit aperiam amet. Inventore ut est dolore aliquam. Laboriosam sapiente natus vel.', '2023-04-24 04:23:28', '2023-04-24 04:23:28', 3),
(98, '2023-04-22 19:17:35', -2.819569, 80.038763, 1, 'Esse id unde et accusamus ullam. Cumque est facilis tempora rerum velit. Reiciendis nulla ipsam recusandae. Vero optio beatae est consequatur voluptatem vero magni.', '2023-04-24 04:23:28', '2023-04-24 04:23:28', 10),
(99, '2023-04-11 18:09:35', -30.218197, 46.734001, 1, 'Et repudiandae debitis quos dolore praesentium nemo cupiditate. Et quasi dolores veritatis eligendi. Officiis esse molestiae libero nam voluptas possimus.', '2023-04-24 04:23:29', '2023-04-24 04:23:29', 7),
(100, '2023-04-07 04:08:12', 39.503973, -121.983068, 1, 'Et dolor odit sequi. Autem quisquam quam in repudiandae libero vel est officiis. Quas dolorum reprehenderit enim ratione accusantium recusandae dolores ipsum.', '2023-04-24 04:23:29', '2023-04-24 04:23:29', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'Williamson-Shields', 'Est vel ut eos nemo consequatur nostrum.', '2023-04-24 04:23:03', '2023-04-24 04:23:03'),
(2, 'Macejkovic, Muller and Kertzmann', 'Non earum maiores molestias magnam rerum facilis.', '2023-04-24 04:23:04', '2023-04-24 04:23:04'),
(3, 'Abbott, Ankunding and Dietrich', 'Molestias saepe non quae neque explicabo.', '2023-04-24 04:23:06', '2023-04-24 04:23:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_28_162834_crear_tablas', 1),
(6, '2023_03_29_184009_crear_relaciones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misions`
--

CREATE TABLE `misions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `vehiculos` int(10) UNSIGNED DEFAULT NULL,
  `tiempo` decimal(8,2) UNSIGNED DEFAULT NULL,
  `inicio_planif` datetime DEFAULT NULL,
  `inicio_real` datetime DEFAULT NULL,
  `final_planif` datetime DEFAULT NULL,
  `final_real` datetime DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `misions`
--

INSERT INTO `misions` (`id`, `nombre`, `vehiculos`, `tiempo`, `inicio_planif`, `inicio_real`, `final_planif`, `final_real`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'Omnis odit excepturi amet facilis. Voluptatem architecto sapiente hic minus ab.', NULL, NULL, NULL, NULL, NULL, NULL, 'Voluptatem sed eaque dolorum omnis aut nemo quo.', '2023-04-24 04:23:09', '2023-04-24 04:23:09'),
(2, 'Quia quis doloribus cum. Alias cumque asperiores sequi. Sint et vel culpa earum enim laborum aut.', NULL, NULL, NULL, NULL, NULL, NULL, 'Reiciendis sit esse sequi totam.', '2023-04-24 04:23:09', '2023-04-24 04:23:09'),
(3, 'Corrupti velit tempora est sit. Rerum quis animi rerum facere. Sapiente voluptatem nam iste nihil.', NULL, NULL, NULL, NULL, NULL, NULL, 'Iste pariatur quas exercitationem est sit.', '2023-04-24 04:23:10', '2023-04-24 04:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `marca_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `observacion`, `created_at`, `updated_at`, `marca_id`) VALUES
(1, 'Turcotte-Flatley', 'Eaque ea quis qui aut.', '2023-04-24 04:23:03', '2023-04-24 04:23:03', 1),
(2, 'Smitham-Bednar', 'Aliquam quia nam fugit dolorum.', '2023-04-24 04:23:03', '2023-04-24 04:23:03', 1),
(3, 'Feest, Ortiz and Hartmann', 'Error ut blanditiis est ea.', '2023-04-24 04:23:04', '2023-04-24 04:23:04', 1),
(4, 'McDermott-Abbott', 'Neque et aut asperiores.', '2023-04-24 04:23:05', '2023-04-24 04:23:05', 2),
(5, 'Schneider-Harris', 'Deserunt et voluptas autem sit ut voluptas omnis.', '2023-04-24 04:23:05', '2023-04-24 04:23:05', 2),
(6, 'Cummerata-Yundt', 'Animi tempore eum dolor natus.', '2023-04-24 04:23:06', '2023-04-24 04:23:06', 2),
(7, 'Gorczany, Harvey and Bauch', 'Occaecati ipsam quasi eum mollitia aut.', '2023-04-24 04:23:06', '2023-04-24 04:23:06', 3),
(8, 'Beier, Lubowitz and Feil', 'Aspernatur aut aut nihil a. Aut est quod cumque.', '2023-04-24 04:23:06', '2023-04-24 04:23:06', 3),
(9, 'Kulas-Klein', 'Ex in architecto beatae.', '2023-04-24 04:23:06', '2023-04-24 04:23:06', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'ducimus', 'Doloremque est reiciendis nihil id quia.', '2023-04-24 04:23:00', '2023-04-24 04:23:00'),
(2, 'velit', 'Illo totam officia sunt.', '2023-04-24 04:23:00', '2023-04-24 04:23:00'),
(3, 'rem', 'Veritatis ipsam molestias voluptatem sint.', '2023-04-24 04:23:00', '2023-04-24 04:23:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula` varchar(7) DEFAULT NULL,
  `capacidad` decimal(8,2) UNSIGNED DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modelo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `combustible_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `matricula`, `capacidad`, `observacion`, `created_at`, `updated_at`, `modelo_id`, `color_id`, `combustible_id`, `tipo_id`) VALUES
(1, 'R885574', '81.00', 'Blanditiis deleniti explicabo ab optio.', '2023-04-24 04:23:06', '2023-04-24 04:23:06', 2, 2, 1, 3),
(2, 'D614318', '64.00', 'Tempora hic laboriosam in omnis.', '2023-04-24 04:23:07', '2023-04-24 04:23:07', 1, 3, 1, 3),
(3, 'K037591', '46.00', 'Et consequatur eaque qui.', '2023-04-24 04:23:07', '2023-04-24 04:23:07', 3, 1, 1, 1),
(4, 'K267581', '49.00', 'Cum dolor soluta iusto. Sit quia ab magni.', '2023-04-24 04:23:07', '2023-04-24 04:23:07', 3, 3, 2, 1),
(5, 'D881912', '22.00', 'Voluptas sunt corporis omnis impedit.', '2023-04-24 04:23:08', '2023-04-24 04:23:08', 3, 2, 1, 2),
(6, 'R019148', '37.00', 'Non non autem molestias nostrum quos.', '2023-04-24 04:23:08', '2023-04-24 04:23:08', 2, 1, 1, 3),
(7, 'R857583', '94.00', 'Quod est excepturi non odio non.', '2023-04-24 04:23:08', '2023-04-24 04:23:08', 1, 3, 3, 3),
(8, 'R585940', '98.00', 'Optio distinctio totam et commodi illo.', '2023-04-24 04:23:08', '2023-04-24 04:23:08', 2, 3, 3, 1),
(9, 'P318430', '71.00', 'Voluptatem nesciunt est provident.', '2023-04-24 04:23:08', '2023-04-24 04:23:08', 2, 1, 2, 1),
(10, 'K395769', '41.00', 'Sed necessitatibus perspiciatis magni.', '2023-04-24 04:23:09', '2023-04-24 04:23:09', 1, 2, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_nombre_unique` (`nombre`);

--
-- Indices de la tabla `combustibles`
--
ALTER TABLE `combustibles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combustibles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordenadas_vehiculo_id_foreign` (`vehiculo_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marcas_nombre_unique` (`nombre`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `misions`
--
ALTER TABLE `misions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modelos_nombre_unique` (`nombre`),
  ADD KEY `modelos_marca_id_foreign` (`marca_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipos_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehiculos_matricula_unique` (`matricula`),
  ADD KEY `vehiculos_modelo_id_foreign` (`modelo_id`),
  ADD KEY `vehiculos_color_id_foreign` (`color_id`),
  ADD KEY `vehiculos_combustible_id_foreign` (`combustible_id`),
  ADD KEY `vehiculos_tipo_id_foreign` (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `combustibles`
--
ALTER TABLE `combustibles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `misions`
--
ALTER TABLE `misions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD CONSTRAINT `coordenadas_vehiculo_id_foreign` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehiculos_combustible_id_foreign` FOREIGN KEY (`combustible_id`) REFERENCES `combustibles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehiculos_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehiculos_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
