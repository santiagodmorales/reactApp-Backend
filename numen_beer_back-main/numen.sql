-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-09-2022 a las 21:25:19
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `numen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrousels`
--

DROP TABLE IF EXISTS `carrousels`;
CREATE TABLE IF NOT EXISTS `carrousels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrousels`
--

INSERT INTO `carrousels` (`id`, `title`, `image`, `phrase`, `createdAt`, `updatedAt`) VALUES
(1, 'cerveza', 'uploads/d005041e-a706-4f00-a89d-b3dc07529923', '“La cerveza es siempre la respuesta, hasta que olvides la pregunta“.', '2022-09-13 17:22:24', '2022-09-13 17:22:25'),
(2, 'Homero Cerveza', 'uploads/e50a3cc3-dbfd-4d52-a8ff-5302ca790b50', '“La cerveza es la maldita mejor bebida del mundo“.', '2022-09-13 17:24:27', '2022-09-13 17:24:27'),
(3, 'cerveza', 'uploads/98a4e92c-25b0-47d1-936f-b1e6beb9a1df', '“La cerveza es la prueba de que Dios nos ama y quiere que seamos felices“.', '2022-09-13 17:30:12', '2022-09-13 17:30:13'),
(4, 'cerveza', 'uploads/3ae49d0e-2ea5-49e6-a8e8-41b15e718e86', '“No existe algo como una mala cerveza. Sólo que algunas saben mejor que otras“.', '2022-09-13 17:30:43', '2022-09-13 17:30:44'),
(5, 'cerveza y picada', 'uploads/1ed890b3-72ee-4788-900d-e598f64b293c', '“La cerveza es ese amor de verano que te acompaña todo el año“.', '2022-09-13 17:31:22', '2022-09-13 17:31:22'),
(6, 'cerveza en choop', 'uploads/a3486347-92b2-403a-a1ad-df96a6c7a633', '“Quien inventó la cerveza, fue un hombre sabio“.', '2022-09-13 17:31:54', '2022-09-13 17:31:54'),
(7, 'brindis', 'uploads/a154dfed-2480-4581-8be3-a41d04e7800d', '“La mejor cerveza del mundo es la que está ahora mismo en mi mano“.', '2022-09-13 17:32:27', '2022-09-13 17:32:27'),
(8, 'fabrica de cerveza', 'uploads/fa4d6e09-1cb0-4501-afc9-32ae7e489167', '“La cervecería es la mejor farmacia“.', '2022-09-13 17:32:56', '2022-09-13 17:33:00'),
(9, 'cerveza', 'uploads/d17c0d2b-3542-4ea3-9e11-f084149b565f', '“La cerveza alegra, mientras que el agua solo moja“.', '2022-09-13 17:33:26', '2022-09-13 17:33:30'),
(10, 'malta cerveza', 'uploads/40b23892-72f8-479e-a528-533021c21432', '“Todos tenemos que creer en algo: creo que pronto tomaré una cerveza“.', '2022-09-13 17:34:07', '2022-09-13 17:34:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `firstName`, `lastName`, `phone`, `email`, `message`, `createdAt`, `updatedAt`) VALUES
(5, 'Gonzalo', 'Galarza', '0264155093292', 'galarza.hys@gmail.com', 'Mensaje de prueba 5', '2022-09-10 21:39:02', '2022-09-10 21:39:02'),
(6, 'Gonzalo', 'Galarza', '0264155093292', 'galarza.hys@gmail.com', 'Prueba 13/09, y los caracteres\n', '2022-09-13 20:41:34', '2022-09-13 20:41:34'),
(7, 'Gonzalo', 'Galarza', '0264155093292', 'galarza.hys@gmail.com', 'mensaje con german', '2022-09-13 21:11:49', '2022-09-13 21:11:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodata`
--

DROP TABLE IF EXISTS `prodata`;
CREATE TABLE IF NOT EXISTS `prodata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prodata`
--

INSERT INTO `prodata` (`id`, `name`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(7, 'Blonde Ale', 'Típico estilo para los que se están iniciando en la cerveza artesanal. De cuerpo medio liviano a medio, de color amarillo claro a dorado. Alcohol 4,5% - Amargor 18 IBU.', 'PILSNER', '2022-09-12 23:05:58', '2022-09-12 23:05:58'),
(8, 'Golden Ale', 'Clásica Ale dorada inglesa, balanceada hacia el lúpulo, muy refrescante.\r\nAlcohol 4,9% - Amargor 26 IBU.', 'PILSNER', '2022-09-13 01:35:06', '2022-09-13 01:35:06'),
(9, 'Irish Ale', 'Es una cerveza roja, influenciada por el éxito de las cervezas escocesas, está orientada hacia la malta como sabor principal, con una dulzura inicial y una sequedad tostada en el gusto final. Cuerpo medio bajo a medio, de color ámbar a cobre rojizo profundo.\r\nAlcohol 4,7% - Amargor 23 IBU', 'RAUCH', '2022-09-13 01:36:00', '2022-09-13 01:36:00'),
(10, 'American Pale Ale', 'Es una adaptación Americana de la English Pale Ale, refrescante, lupulada, balanceada, pero menos amarga que una ipa. Aroma a típicos lúpulos americanos, de color dorado ámbar.\r\nAlcohol 5,3% - Amargor 30 IBU.', 'BARLEY', '2022-09-13 01:36:52', '2022-09-13 01:36:52'),
(11, 'Red IPA', 'Cerveza americana con adición de maltas caramelos oscuras, dándole un leve dulzor, más caramelo y un balance de frutas oscuras. Las características de maltas y lúpulos se deben combinar y resaltar, no chocar.\r\nAlcohol 6,1% - Amargor 46 IBU.', 'IPA', '2022-09-13 01:37:22', '2022-09-13 01:37:22'),
(12, 'American Stout', 'Adaptación americana de la cerveza Stout. De aroma moderado a fuerte, con sabor a maltas tostadas, café o chocolate amargo.\r\nAlcohol 4,5% - Amargor 25 IBU.', 'RAUCH', '2022-09-13 01:38:09', '2022-09-13 01:38:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prods`
--

DROP TABLE IF EXISTS `prods`;
CREATE TABLE IF NOT EXISTS `prods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `packaging` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text,
  `image` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prods`
--

INSERT INTO `prods` (`id`, `name`, `packaging`, `category`, `stock`, `price`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(3, 'Red IPA', '700 ml', 'Cervezas', 10, 230, 'Cerveza americana con adición de maltas caramelos oscuras, dándole un leve dulzor, más caramelo y un balance de frutas oscuras.\r\nIBU: 6.5 ABV: 6.8%', 'uploads/57a26faa-f122-4796-b529-a70c7966bec7', '2022-08-30 16:26:08', '2022-09-12 13:01:25'),
(4, 'Golden Ale', '700 ml', 'Cervezas', 39, 230, 'Clásica Ale dorada inglesa, balanceada hacia el lúpulo, muy refrescante. IBU: 35 ABV: 4.2%', 'uploads/2a958cf4-8b76-4629-866b-2a188b6c0203', '2022-08-30 16:33:04', '2022-09-13 21:14:54'),
(5, 'Numen Porter', '700 ml', 'Cervezas', 68, 280, 'Caracterizada por su color oscuro, que va del marrón rojizo al negro, y por un sabor intenso. IBU: 65 ABV: 4.8%', 'uploads/62841ff5-f487-4203-b92b-b141123023f2', '2022-08-30 16:36:15', '2022-09-13 21:14:54'),
(7, 'Blonde Ale', '700 ml', 'Cervezas', 50, 250, 'Típico estilo para los que se están iniciando en la cerveza artesanal. De cuerpo medio liviano a medio, de color amarillo claro a dorado.\r\nIBU: 35 ABV: 4.8%', 'uploads/b7ac0de9-a9bd-4069-bc06-e814675a4158', '2022-09-12 13:37:53', '2022-09-12 13:37:54'),
(8, 'Flavour Pack', '3 x 700 ml - Varios sabores', 'Cervezas', 20, 650, 'Pack de 3 sabores diferentes a elección. ', 'uploads/ce31d20f-07c6-4ada-a278-5f4b0fd56ffc', '2022-09-12 13:42:20', '2022-09-12 13:42:20'),
(9, 'Destapador de Pared', 'Metálico - Varios Colores', 'Bazar', 99, 180, 'Accesorio metálico de amurar. Incluye tarugos y tornillos de fijación.\r\n', 'uploads/5656c4fc-75dd-4ad4-95d7-99ce3cb9a5a1', '2022-09-12 13:49:00', '2022-09-13 21:14:54'),
(10, 'Juego de Pintas', 'Pack x 6 un', 'Bazar', 20, 900, 'Juego de pintas x 6 un c/Logo de Numen Beer', 'uploads/f1d40035-15e5-443c-87b0-bbe0ff485031', '2022-09-12 14:07:00', '2022-09-12 14:07:01'),
(11, 'Vaso Munich', 'Capacidad 300 ml ', 'Bazar', 99, 120, 'Vaso tipo Munich para cervezas tipo Blonde y Golden', 'uploads/cc3212a2-e288-4b9d-a96f-e2fdaa254ec2', '2022-09-12 14:08:45', '2022-09-13 20:36:44'),
(12, 'Copa Dublin', 'Capacidad 300 ml ', 'Bazar', 80, 180, 'Copa tipo Dublin. Ideal para cervezas IPA y APA', 'uploads/76f1bd13-8d8d-45cb-a749-d56d1efc24a4', '2022-09-12 14:10:00', '2022-09-12 14:12:10'),
(13, 'Copa London', 'Capacidad 500 ml ', 'Bazar', 60, 130, 'Copa tipo London, ideal para cervezas con cuerpo y con alto grado de alcohol', 'uploads/f123a170-0245-4263-bc53-fcd68f551733', '2022-09-12 14:14:22', '2022-09-12 14:14:22'),
(14, 'Mini Choppera', 'Capacidad 4 litros', 'Chopperas', 5, 19990, 'Mini Choppera de 4 litros para ser recargada. Presurizable con CO2', 'uploads/5a3c22ef-81f9-4faa-9194-0ce5e6054af5', '2022-09-12 14:16:26', '2022-09-13 20:36:44'),
(15, 'Dispenser manual', 'Capacidad 3 litros', 'Chopperas', 20, 5990, 'Dispenser de cerveza manual con contenedor de hielo para mantener la cerveza a una temperatura adecuada. Incluye Pack de vasos de regalo.', 'uploads/e6cdcad1-bf19-4256-9ceb-4bae367d9d8d', '2022-09-12 14:17:55', '2022-09-12 14:17:55'),
(17, 'Producto de Tarjeta Gift', '6 x 330ml', 'cervezas', 15, 1200, 'Cajón de madera con 6 porrones de cervezas (variedad a elección), con destapador y porta vasos incluidos.', 'uploads/0946ec1a-6d12-419a-a116-73acc0f3dca1', '2022-09-13 04:36:42', '2022-09-13 04:36:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200921211634-create-user.js'),
('20220728133933-create-contacts.js'),
('20220830123912-create-prod.js'),
('20220912005353-create-prodata.js'),
('20220913130832-create-carrousel.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `image`, `roleId`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'Numen', 'admin@numen-beer.com', '$2b$10$gLFOWHSoY9uxw4XUUYsKo.iPfB0uGNTwmcBCA3KGbfSpLNLBEUYt.', 'Logo NB.png', 1, NULL, '2022-09-05 23:31:55', '2022-09-05 23:31:55'),
(4, 'Lucas', 'Trento', 'lucastrento86@gmail.com', '$2b$10$MGI6ToP8hMu/7Jcl9kbpIetzV0ksoM8lnSHlW5.OXg2t6EahZkC3W', NULL, NULL, NULL, '2022-09-13 20:35:08', '2022-09-13 20:35:08'),
(5, 'German', 'Garcia', '21german.garcia@gmail.com', '$2b$10$PEqShMDYKaS6u7nJeB1y3uH3SFSPIZwmuSW5qozG635n2u2HewQkG', NULL, NULL, NULL, '2022-09-13 21:12:55', '2022-09-13 21:12:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
