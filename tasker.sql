-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2020 a las 16:37:20
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tasker`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `id_proyectos` int(11) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `id_proyectos`, `categoria`) VALUES
(1, 19, 'Categoria'),
(2, 19, 'Categoria'),
(3, 19, 'Categoria'),
(4, 19, 'Categoria'),
(5, 19, 'Categoria'),
(6, 19, 'Categoria'),
(7, 19, 'Categoria'),
(8, 19, 'Categoria'),
(9, 19, 'Categoria'),
(10, 19, 'Categoria'),
(11, 19, 'Categoria'),
(12, 19, 'Categoria'),
(13, 19, 'Categoria'),
(14, 19, 'Categoria'),
(15, 19, 'Categoria'),
(16, 19, 'Categoria'),
(17, 19, 'Categoria'),
(18, 19, 'Categoria'),
(19, 19, 'Categoria'),
(20, 19, 'Categoria'),
(21, 19, 'Categoria'),
(22, 19, 'Categoria'),
(23, 19, 'Categoria'),
(24, 19, 'Categoria'),
(25, 19, 'Categoria'),
(26, 19, 'Categoria'),
(27, 19, 'Categoria'),
(28, 19, 'Categoria'),
(29, 19, 'Categoria'),
(30, 19, 'Categoria'),
(31, 19, 'Categoria'),
(32, 19, 'Categoria'),
(33, 19, 'Categoria'),
(34, 19, 'Categoria'),
(35, 19, 'Categoria'),
(36, 19, 'Categoria'),
(37, 19, 'Categoria'),
(38, 19, 'Categoria'),
(39, 19, 'Categoria'),
(40, 19, 'Categoria'),
(41, 19, 'Categoria'),
(42, 19, 'Categoria'),
(43, 19, 'Categoria'),
(44, 19, 'Categoria'),
(45, 19, 'Categoria'),
(46, 19, 'Categoria'),
(47, 19, 'Categoria'),
(48, 19, 'Categoria'),
(49, 19, 'Categoria'),
(50, 19, 'Categoria'),
(51, 19, 'Categoria'),
(52, 19, 'Categoria'),
(53, 19, 'Categoria'),
(54, 19, 'Categoria'),
(55, 19, 'Categoria'),
(56, 19, 'Categoria'),
(57, 19, 'Categoria'),
(58, 19, 'Categoria'),
(59, 19, 'Categoria'),
(60, 19, 'Categoria'),
(61, 19, 'Categoria'),
(62, 19, 'Categoria'),
(63, 19, 'Categoria'),
(64, 19, 'Categoria'),
(65, 19, 'Categoria'),
(66, 19, 'Categoria'),
(67, 19, 'Categoria'),
(68, 19, 'Categoria'),
(69, 19, 'Categoria'),
(70, 19, 'Categoria'),
(71, 19, 'Categoria'),
(72, 19, 'Categoria'),
(73, 19, 'Categoria'),
(74, 19, 'Categoria'),
(75, 19, 'Categoria'),
(76, 19, 'Categoria'),
(77, 19, 'Categoria'),
(78, 19, 'Categoria'),
(79, 19, 'Categoria'),
(80, 19, 'Categoria'),
(81, 19, 'Categoria'),
(82, 19, 'Categoria'),
(83, 19, 'Categoria'),
(84, 19, 'Categoria'),
(85, 19, 'Categoria'),
(86, 19, 'Categoria'),
(87, 19, 'Categoria'),
(88, 19, 'Categoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre`, `url`, `createdAt`, `updatedAt`) VALUES
(16, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'ASD', 'aSD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'asdpmasdmasda movido', 'asdpmasdmasda-movido', '2020-03-08 18:45:29', '2020-03-08 18:45:29'),
(24, 'sadknalsndkansd najlna ljfnlsdnfl j aljsd', 'sadknalsndkansd-najlna-ljfnlsdnfl-j-aljsd', '2020-03-08 19:12:44', '2020-03-08 19:12:44'),
(25, 'APAPAPAPPAP PAPSDPASDIANSD AS', 'apapapappap-papsdpasdiansd-as', '2020-03-08 19:13:01', '2020-03-08 19:13:01'),
(26, 'QUieres pollo o pico y pala', 'quieres-pollo-o-pico-y-pala-BbxBNK8a', '2020-03-08 19:19:11', '2020-03-08 19:19:11'),
(27, 'vjio lsdflmsldmflsd adam', 'vjio-lsdflmsldmflsd-adam-QLh4_sjd', '2020-03-08 19:25:42', '2020-03-08 19:25:42'),
(28, 'Pica polllo sin yaroa', 'pica-polllo-sin-yaroa-3CvYodak', '2020-03-08 19:46:21', '2020-03-08 19:46:21'),
(29, 'Pollo con fritos', 'pollo-con-fritos-h_F9_yIN', '2020-03-08 19:56:20', '2020-03-08 19:56:20'),
(30, 'sadasd asdasd', 'sadasd-asdasd-CPscj4pS', '2020-03-08 19:58:03', '2020-03-08 19:58:03'),
(31, 'probando 1 2 3 4', 'probando-1-2-3-4-zcs6IR32', '2020-03-08 19:59:22', '2020-03-08 19:59:22'),
(32, 'asdasd asda sd asd', 'asdasd-asda-sd-asd-ogUJs3-d', '2020-03-08 19:59:37', '2020-03-08 19:59:37'),
(33, '&lt;Manolo cabeza huevo&gt;', 'andltmanolo-cabeza-huevoandgt-nN3Wfdqi', '2020-03-08 20:01:45', '2020-03-08 20:01:45'),
(34, 'Samatao paco', 'samatao-paco-cxOqpfF9', '2020-03-08 20:02:01', '2020-03-08 20:02:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
