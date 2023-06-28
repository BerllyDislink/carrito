-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 23-01-2023 a las 18:21:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujeres', 'Ropar para dama', 'women.jpg'),
(2, 'Hombres', 'Ropa para hombre', 'men.jpg'),
(3, 'Niños', 'Ropa para niños', 'children.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `pais`, `company`, `direccion`, `departamento`, `cp`, `id_venta`) VALUES
(1, '8', 'florhuila ', 'la granja', 'cordoba', '230001', 18),
(2, '1', '', '', '', '', 24),
(3, '3', 'sas', 'fdd', 'sas', '212', 25),
(4, '1', '', '', '', '', 30),
(5, '8', 'jasaj', 'jsaks', 'jksajks', '2132', 31),
(6, '1', '', '', '', '', 32),
(7, '1', '', '', '', '', 33),
(8, '1', '', '', '', '', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`) VALUES
(1, 'Televisor Samsung', 'Televisor de pantalla oled de 55 pulgadas', 2200000, 'televisor bd.jpg', 30, 1),
(2, 'Nevera LG', 'Nevera LG cero escarcha mantiene tus productos frescos con bajo consumo de electricidad.', 1500000, 'nevera lgbd.webp', 10, 2),
(3, 'Lavadora MABE', 'Lavadora con cuatro velocidades, secadora incluida y bajo consumo de agua.', 1100000, 'lavadorabd.webp', 23, 3),
(4, 'Estufa Ao', 'Estufa Ao de 4 puestos, hecha de acero inoxidable, la mejor opción para estufas a bajo costo.', 800000, 'estufa aobd.jpg', 21, 4),
(5, 'Televisor Lg', 'Televisor de 55 pulgadas LG Led UHD 4k Smart tv', 2500000, 'televisor lgbd.webp', 9, 1),
(6, 'Estufa Haceb', 'Estufa Haceb con lo mejor de la tecnología de nuestra empresa es una estufa económica con cuatro puestos donde puedes hacer las mejores comidas.', 1100000, 'estufa hacebbd.webp', 20, 4),
(7, 'Lavadora LG', 'Lavadora LG la mejor del mercado, con secadora incluida, gracias a su sistema de centrifugado la ropa está seca en pocas horas', 1700000, 'Lavadora lgbd.jpg', 12, 3),
(8, 'Nevera Challenger', 'El modelo no frost 249 ltc es uno de los mejores modelos de neveras del mercado gracias a su poco consumo de electricidad y su gran capacidad de mantener fresca la comida', 200000, 'nevera challengerbd.webp', 25, 2),
(9, 'Microondas Challenger', 'Horno de 31 litros, cuenta con varios ciclos dependiendo del tipo de comida que desee cocinar o calentar en el', 310000, 'horno challengerbd.webp', 11, 5),
(10, 'Microondas Kalley', 'Horno Kalley modelo 21tuas es uno de los mejores microondas que se pueden encontrar en el mercado económico gracias a su poco consumo de electricidad. ', 190000, 'horno kalley.webp', 4, 5),
(11, 'Producto 0', 'Esta es la descripcion', 5873950, 'televisor bd.jpg', 25, 1),
(12, 'Producto 1', 'Esta es la descripcion', 17079140, 'televisor bd.jpg', 80, 1),
(13, 'Producto 2', 'Esta es la descripcion', 19490241, 'televisor bd.jpg', 36, 1),
(14, 'Producto 3', 'Esta es la descripcion', 21763961, 'televisor bd.jpg', 36, 1),
(15, 'Producto 4', 'Esta es la descripcion', 11776074, 'televisor bd.jpg', 3, 1),
(16, 'Producto 5', 'Esta es la descripcion', 4695249, 'televisor bd.jpg', 62, 1),
(17, 'Producto 6', 'Esta es la descripcion', 10448801, 'televisor bd.jpg', 51, 1),
(18, 'Producto 7', 'Esta es la descripcion', 20433050, 'televisor bd.jpg', 90, 1),
(19, 'Producto 8', 'Esta es la descripcion', 9632447, 'televisor bd.jpg', 94, 1),
(20, 'Producto 9', 'Esta es la descripcion', 3256597, 'televisor bd.jpg', 56, 1),
(21, 'Producto 10', 'Esta es la descripcion', 1506373, 'televisor bd.jpg', 33, 1),
(22, 'Producto 11', 'Esta es la descripcion', 22943299, 'televisor bd.jpg', 45, 1),
(23, 'Producto 12', 'Esta es la descripcion', 21806835, 'televisor bd.jpg', 83, 1),
(24, 'Producto 13', 'Esta es la descripcion', 21627246, 'televisor bd.jpg', 84, 1),
(25, 'Producto 14', 'Esta es la descripcion', 9063973, 'televisor bd.jpg', 15, 1),
(26, 'Producto 15', 'Esta es la descripcion', 14347090, 'televisor bd.jpg', 8, 1),
(27, 'Producto 16', 'Esta es la descripcion', 16974552, 'televisor bd.jpg', 2, 1),
(28, 'Producto 17', 'Esta es la descripcion', 10793489, 'televisor bd.jpg', 19, 1),
(29, 'Producto 18', 'Esta es la descripcion', 14666131, 'televisor bd.jpg', 62, 1),
(30, 'Producto 19', 'Esta es la descripcion', 3417477, 'televisor bd.jpg', 3, 1),
(31, 'Producto 20', 'Esta es la descripcion', 1558521, 'televisor bd.jpg', 65, 1),
(32, 'Producto 21', 'Esta es la descripcion', 20019989, 'televisor bd.jpg', 98, 1),
(33, 'Producto 22', 'Esta es la descripcion', 11493476, 'televisor bd.jpg', 7, 1),
(34, 'Producto 23', 'Esta es la descripcion', 9472848, 'televisor bd.jpg', 52, 1),
(35, 'Producto 24', 'Esta es la descripcion', 20025773, 'televisor bd.jpg', 96, 1),
(36, 'Producto 25', 'Esta es la descripcion', 17954918, 'televisor bd.jpg', 4, 1),
(37, 'Producto 26', 'Esta es la descripcion', 5637545, 'televisor bd.jpg', 35, 1),
(38, 'Producto 27', 'Esta es la descripcion', 1703096, 'televisor bd.jpg', 10, 1),
(39, 'Producto 28', 'Esta es la descripcion', 12329335, 'televisor bd.jpg', 27, 1),
(40, 'Producto 29', 'Esta es la descripcion', 17947924, 'televisor bd.jpg', 21, 1),
(41, 'Producto 30', 'Esta es la descripcion', 19016971, 'televisor bd.jpg', 3, 1),
(42, 'Producto 31', 'Esta es la descripcion', 568313, 'televisor bd.jpg', 14, 1),
(43, 'Producto 32', 'Esta es la descripcion', 774562, 'televisor bd.jpg', 50, 1),
(44, 'Producto 33', 'Esta es la descripcion', 17090383, 'televisor bd.jpg', 51, 1),
(45, 'Producto 34', 'Esta es la descripcion', 14369451, 'televisor bd.jpg', 63, 1),
(46, 'Producto 35', 'Esta es la descripcion', 21850544, 'televisor bd.jpg', 85, 1),
(47, 'Producto 36', 'Esta es la descripcion', 20573030, 'televisor bd.jpg', 34, 1),
(48, 'Producto 37', 'Esta es la descripcion', 20685601, 'televisor bd.jpg', 53, 1),
(49, 'Producto 38', 'Esta es la descripcion', 532334, 'televisor bd.jpg', 89, 1),
(50, 'Producto 39', 'Esta es la descripcion', 2770010, 'televisor bd.jpg', 8, 1),
(51, 'Producto 40', 'Esta es la descripcion', 16014217, 'televisor bd.jpg', 38, 1),
(52, 'Producto 41', 'Esta es la descripcion', 529020, 'televisor bd.jpg', 75, 1),
(53, 'Producto 42', 'Esta es la descripcion', 11300783, 'televisor bd.jpg', 84, 1),
(54, 'Producto 43', 'Esta es la descripcion', 13157318, 'televisor bd.jpg', 49, 1),
(55, 'Producto 44', 'Esta es la descripcion', 20776973, 'televisor bd.jpg', 51, 1),
(56, 'Producto 45', 'Esta es la descripcion', 10372794, 'televisor bd.jpg', 15, 1),
(57, 'Producto 46', 'Esta es la descripcion', 17050295, 'televisor bd.jpg', 35, 1),
(58, 'Producto 47', 'Esta es la descripcion', 20002646, 'televisor bd.jpg', 96, 1),
(59, 'Producto 48', 'Esta es la descripcion', 3172825, 'televisor bd.jpg', 67, 1),
(60, 'Producto 49', 'Esta es la descripcion', 8718748, 'televisor bd.jpg', 21, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(1, 3, 4, 7, 800000, 5600000),
(2, 3, 10, 1, 190000, 190000),
(3, 4, 6, 1, 1100000, 1100000),
(4, 4, 2, 2, 1500000, 3000000),
(5, 5, 6, 1, 1100000, 1100000),
(6, 5, 2, 2, 1500000, 3000000),
(7, 6, 6, 1, 1100000, 1100000),
(8, 6, 2, 2, 1500000, 3000000),
(9, 7, 6, 1, 1100000, 1100000),
(10, 7, 2, 2, 1500000, 3000000),
(11, 8, 6, 1, 1100000, 1100000),
(12, 8, 2, 2, 1500000, 3000000),
(13, 9, 6, 1, 1100000, 1100000),
(14, 9, 2, 2, 1500000, 3000000),
(15, 10, 6, 1, 1100000, 1100000),
(16, 10, 2, 2, 1500000, 3000000),
(17, 11, 6, 1, 1100000, 1100000),
(18, 11, 2, 2, 1500000, 3000000),
(19, 12, 6, 1, 1100000, 1100000),
(20, 12, 2, 2, 1500000, 3000000),
(21, 13, 6, 1, 1100000, 1100000),
(22, 13, 2, 2, 1500000, 3000000),
(23, 14, 6, 1, 1100000, 1100000),
(24, 14, 2, 2, 1500000, 3000000),
(25, 15, 6, 1, 1100000, 1100000),
(26, 15, 2, 2, 1500000, 3000000),
(27, 16, 6, 1, 1100000, 1100000),
(28, 16, 2, 2, 1500000, 3000000),
(29, 17, 6, 1, 1100000, 1100000),
(30, 17, 2, 2, 1500000, 3000000),
(31, 18, 6, 1, 1100000, 1100000),
(32, 18, 2, 2, 1500000, 3000000),
(33, 19, 10, 4, 190000, 760000),
(34, 20, 10, 4, 190000, 760000),
(35, 21, 10, 4, 190000, 760000),
(36, 22, 10, 4, 190000, 760000),
(37, 23, 10, 4, 190000, 760000),
(38, 24, 10, 4, 190000, 760000),
(39, 25, 9, 1, 310000, 310000),
(40, 26, 10, 1, 190000, 190000),
(41, 27, 10, 1, 190000, 190000),
(42, 28, 10, 1, 190000, 190000),
(43, 29, 10, 1, 190000, 190000),
(44, 30, 10, 1, 190000, 190000),
(45, 31, 5, 3, 2500000, 7500000),
(46, 32, 2, 1, 1500000, 1500000),
(47, 33, 9, 1, 310000, 310000),
(48, 34, 2, 2, 1500000, 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(1, 'jose ortiz', '312121021', 'jose@asjak', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(2, 'jose ortiz', '312121021', 'jose@asjak', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(3, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(4, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(5, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(6, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(7, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(8, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(9, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(10, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(11, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(12, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(13, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(14, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(15, 'jose ortiz', '312121021', 'jose@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(16, 'ramon en ruedas', '232132', 'joseosa', '2c2c177ca5e1470b316df078584c19aca064089f', '', ''),
(17, 'ramon en ruedas', '232132', 'joseosa', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(18, 'ramon en ruedas', '232132', 'joseosa', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(19, 'ramon en ruedas', '232132', 'joseosa', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(20, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(21, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(22, 'sas sasa', '432', 'sas', '12e0a2cb991679090c760ac5272d35408e454311', '', ''),
(23, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(24, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(25, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(26, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(27, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(28, 'ramon en ruedas', '323121', 'asjaks', '61bb3c02af8ece11f145a1a95de43043faad7d7f', '', ''),
(29, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(30, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', ''),
(31, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`) VALUES
(1, 1, 5790000, '2023-01-22 08:01:06'),
(2, 1, 5790000, '2023-01-22 08:01:02'),
(3, 1, 5790000, '2023-01-22 08:01:51'),
(4, 1, 4100000, '2023-01-22 11:01:39'),
(5, 2, 4100000, '2023-01-22 11:01:44'),
(6, 3, 4100000, '2023-01-22 11:01:00'),
(7, 4, 4100000, '2023-01-22 11:01:02'),
(8, 5, 4100000, '2023-01-22 11:01:13'),
(9, 6, 4100000, '2023-01-22 11:01:31'),
(10, 7, 4100000, '2023-01-22 11:01:41'),
(11, 8, 4100000, '2023-01-22 11:01:51'),
(12, 9, 4100000, '2023-01-22 11:01:42'),
(13, 10, 4100000, '2023-01-22 11:01:51'),
(14, 11, 4100000, '2023-01-22 11:01:54'),
(15, 12, 4100000, '2023-01-22 11:01:18'),
(16, 13, 4100000, '2023-01-22 11:01:20'),
(17, 14, 4100000, '2023-01-22 11:01:54'),
(18, 15, 4100000, '2023-01-22 11:01:08'),
(19, 16, 760000, '2023-01-22 11:01:52'),
(20, 17, 760000, '2023-01-22 11:01:19'),
(21, 18, 760000, '2023-01-22 11:01:02'),
(22, 19, 760000, '2023-01-22 11:01:03'),
(23, 20, 760000, '2023-01-22 11:01:06'),
(24, 21, 760000, '2023-01-22 11:01:25'),
(25, 22, 310000, '2023-01-22 11:01:48'),
(26, 23, 190000, '2023-01-22 11:01:28'),
(27, 24, 190000, '2023-01-22 11:01:56'),
(28, 25, 190000, '2023-01-22 11:01:30'),
(29, 26, 190000, '2023-01-22 11:01:33'),
(30, 27, 190000, '2023-01-22 11:01:02'),
(31, 28, 7500000, '2023-01-22 11:01:18'),
(32, 29, 1500000, '2023-01-22 11:01:06'),
(33, 30, 310000, '2023-01-22 11:01:23'),
(34, 31, 3000000, '2023-01-22 11:01:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
