-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.37 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para diccionario_lsm
CREATE DATABASE IF NOT EXISTS `diccionario_lsm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diccionario_lsm`;

-- Volcando estructura para tabla diccionario_lsm.alphabet
CREATE TABLE IF NOT EXISTS `alphabet` (
  `letra` char(1) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla diccionario_lsm.alphabet: ~27 rows (aproximadamente)
DELETE FROM `alphabet`;
INSERT INTO `alphabet` (`letra`, `descripcion`, `imagen`, `id`) VALUES
	('A', 'Con la mano cerrada, se muestran las uñas y se estira el dedo pulgar hacia un lado. La palma mira al frente.', 'img/A.png', 1),
	('B', 'Los dedos índice, medio, anular y meñique se estiran bien unidos y el pulgar se dobla hacia la palma, la cual mira al frente.', 'img/B.png', 2),
	('C', 'Los dedos índice, medio, anular y meñique se mantienen bien unidos y en posición cóncava; el pulgar también se pone en esa posición. La palma mira a un lado.', 'img/C.png', 3),
	('D', 'Los dedos medio, anular, meñique y pulgar se unen por las puntas y el dedo índice se estira. La palma mira al frente.', 'img/D.png', 4),
	('E', 'Se doblan los dedos completamente y se muestran las uñas. La palma mira al frente.', 'img/E.png', 5),
	('F', 'Con la mano abierta y los dedos bien unidos, se dobla el índice hasta que su parte lateral toque la yema del pulgar. La palma mira al frente.', 'img/F.png', 6),
	('G', 'Se cierra la mano y los dedos índice y pulgar se estiran. La palma mira hacia usted.', 'img/G.png', 7),
	('H', 'Con la mano cerrada y los dedos índice y medio bien estirados y unidos, se extiende el dedo pulgar señalando hacia arriba. La palma mira hacia usted.', 'img/H.png', 8),
	('I', 'Con la mano cerrada, el dedo meñique se estira señalando hacia arriba. La palma se pone de lado.', 'img/I.png', 9),
	('J', 'Con la mano cerrada, el dedo meñique bien estirado señalando hacia arriba y la palma a un lado dibuja una j en el aire.', 'img/J.png', 10),
	('K', 'Se cierra la mano con los dedos índice, medio y pulgar estirados. La yema del pulgar se pone entre el índice y el medio. Se mueve la muñeca hacia arriba.', 'img/K.png', 11),
	('L', 'Con la mano cerrada y los dedos índice y pulgar estirados, se forma una L. La palma mira al frente.', 'img/L.png', 12),
	('M', 'Con la mano cerrada, se ponen los dedos índice, medio y anular sobre el pulgar.', 'img/M.png', 13),
	('N', 'Con la mano cerrada, se ponen los dedos índice y medio sobre el pulgar. Se mueve la muñeca a los lados.', 'img/N.png', 14),
	('Ñ', 'Con la mano cerrada, se ponen los dedos índice y medio sobre el pulgar. Se mueve la muñeca a los lados.', 'img/Ñ.png', 15),
	('O', 'Con la mano se forma una letra o. Todos los dedos se tocan por las puntas.', 'img/O.png', 16),
	('P', 'Con la mano cerrada y los dedos índice, medio y pulgar estirados, se pone la yema del pulgar entre el índice y el medio.', 'img/P.png', 17),
	('Q', 'Con la mano cerrada, se ponen los dedos índice y pulgar en posición de garra. La palma mira hacia abajo, y se mueve la muñeca a los lados.', 'img/Q.png', 18),
	('R', 'Con la mano cerrada, se estiran y entrelazan los dedos índice y medio. La palma mira al frente.', 'img/R.png', 19),
	('S', 'Con la mano cerrada, se pone el pulgar sobre los otros dedos. La palma mira al frente.', 'img/S.png', 20),
	('T', 'Con la mano cerrada, el pulgar se pone entre el índice y el medio. La palma mira al frente.', 'img/T.png', 21),
	('U', 'Con la mano cerrada, se estiran los dedos índice y medio unidos. La palma mira al frente.', 'img/U.png', 22),
	('V', 'Con la mano cerrada, se estiran los dedos índice y medio separados. La palma mira al frente.', 'img/V.png', 23),
	('W', 'Con la mano cerrada, se estiran los dedos índice, medio y anular separados. La palma mira al frente.', 'img/W.png', 24),
	('X', 'Con la mano cerrada, el índice y el pulgar en posición de garra y la palma dirigida a un lado, se realiza un movimiento al frente y de regreso.', 'img/X.png', 25),
	('Y', 'Con la mano cerrada, se estira el meñique y el pulgar. La palma mira hacia usted.', 'img/Y.png', 26),
	('Z', 'Con la mano cerrada, el dedo índice estirado y la palma al frente, se dibuja una letra Z en el aire.', 'img/Z.png', 27);

-- Volcando estructura para tabla diccionario_lsm.historial_busqueda
CREATE TABLE IF NOT EXISTS `historial_busqueda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `palabra` varchar(255) NOT NULL,
  `fecha_busqueda` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla diccionario_lsm.historial_busqueda: ~6 rows (aproximadamente)
DELETE FROM `historial_busqueda`;
INSERT INTO `historial_busqueda` (`id`, `palabra`, `fecha_busqueda`) VALUES
	(17, 'b', '2024-07-25 16:13:11'),
	(18, 'invierno', '2024-07-25 16:13:36'),
	(19, 'abeja', '2024-07-26 03:33:19'),
	(20, 'a', '2024-08-05 23:50:51'),
	(21, 'jamon', '2024-08-06 14:07:27'),
	(22, 'ostion', '2024-08-15 01:47:37');

-- Volcando estructura para tabla diccionario_lsm.senas
CREATE TABLE IF NOT EXISTS `senas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `palabra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla diccionario_lsm.senas: ~77 rows (aproximadamente)
DELETE FROM `senas`;
INSERT INTO `senas` (`id`, `palabra`, `descripcion`, `imagen`) VALUES
	(1, 'Abeja', 'Con los dedos índice y medio sobre los labios, se hace un movimiento hacia abajo. Luego se hace una v con movimiento hacia los lados.', 'img/abeja.png'),
	(2, 'Abril', 'Se hace una letra a, y se mueve en círculo alrededor de la oreja.', 'img/abril.png'),
	(3, 'Agosto', 'Se hace una letra a, y se rota la muñeca a los lados.', 'img/agosto.png'),
	(4, 'Águila', 'Se colocan el índice y el pulgar en posición de garra sobre la boca, tocándola con el dorso de la mano, y se hace un movimiento hacia adelante y atrás.', 'img/aguila.png'),
	(5, 'Buenas Noches', 'Se coloca una letra b sobre el corazón, y se mueve al frente. Luego se coloca una g sobre la frente, y se mueve hacia abajo', 'img/buenasnoches.png'),
	(6, 'Buenas Tardes', 'Se coloca una letra b sobre el corazón, y se mueve al frente. Luego se coloca una t sobre el antebrazo, y se mueve en línea recta hacia usted.', 'img/buenastardes.png'),
	(7, 'Buenos Dias', 'Se coloca una letra b sobre el corazón, y se mueve al frente. Luego se hace una d, y se mueve en medio círculo hacia un lado', 'img/buenosdias.png'),
	(8, 'Búho', 'Se unen por la punta los índices y pulgares de cada mano y se colocan alrededor de los ojos.', 'img/buho.png'),
	(9, 'Burro', 'Se hace una letra b, y se coloca en la parte lateral de la cabeza, tocándola con la muñeca. Luego se realiza un movimiento hacia adelante y atrás, sin separarse.', 'img/burro.png'),
	(10, 'Caballo', 'Se hace una letra d, y se coloca en la parte lateral de la frente. Se realiza un movimiento de muñeca hacia adelante y atrás sin separarse.', 'img/caballo.png'),
	(11, 'Cabra', 'Se abre la mano con la palma al frente y se realiza un movimiento de medio círculo, hasta colocar la muñeca sobre la frente. Luego se hace un capullo sobre la barba, y se mueve un poco hacia abajo.', 'img/cabra.png'),
	(12, 'Cacahuate', 'Con una mano se rodea el dedo índice de la otra, y se desliza la yema del pulgar varias veces.', 'img/cacahuate.png'),
	(13, 'Calabaza', 'Se colocan las manos abiertas en posición cóncava, una frente a la otra, simulando sostener una calabaza. Luego, se colocan los dedos índices y medios en posición de garra, cruzados sobre los hombros.', 'img/calabaza.png'),
	(14, 'Coliflor', 'Se colocan las manos en posición cóncava, una sobre la otra, sin tocarse.', 'img/coliflor.png'),
	(15, 'Delfín', 'Con la mano abierta en posición vertical, se realiza un movimiento hacia arriba y hacia abajo en forma ondulatoria.', 'img/delfin.png'),
	(16, 'Diablo', 'Se coloca la mano cerrada, con el índice y el meñique estirados, al lado de la frente, y se hace vibrar en su lugar.', 'img/diablo.png'),
	(17, 'Diciembre', 'Se hace una letra d, y se rota la muñeca a los lados.', 'img/diciembre.png'),
	(18, 'Domingo', 'Se hace una letra d, y se mueve en círculo.', 'img/domingo.png'),
	(19, 'Elefante', 'Con la mano abierta colocada por la muñeca a la altura de la nariz, se realiza un movimiento hacia abajo y al frente, simulando la trompa de un elefante.', 'img/elefante.png'),
	(20, 'Elote', 'Se coloca una letra b sobre los labios, tocándolos con la parte lateral del índice, y se desliza a un lado, girando la mano al mismo tiempo.', 'img/elote.png'),
	(21, 'Enero', 'Se hace una letra e, y se rota la muñeca a los lados.', 'img/enero.png'),
	(22, 'Febrero', 'Se hace una letra f, y se rota la muñeca a los lados.', 'img/febrero.png'),
	(23, 'Flamenco', 'Con el índice y el pulgar estirados y unidos por las yemas, colocados a la altura de la boca, se mueve el cuerpo hacia adelante y atrás, varias veces.', 'img/flamenco.png'),
	(24, 'Foca', 'Con los brazos a los lados del cuerpo, se levantan las manos, y se realiza un movimiento a los lados, imitando la forma de caminar de la foca.', 'img/foca.png'),
	(25, 'Gato', 'Se coloca la mano abierta en posición de garra sobre la mejilla, y se recorre hacia atrás.', 'img/gato.png'),
	(26, 'Gorila', 'Se colocan las manos a la altura del pecho, y lo golpean en forma alternada varias veces.', 'img/gorila.png'),
	(27, 'Hipopótamo', 'Se hace una letra c con ambas manos colocadas a la altura de la boca, y se realiza un movimiento de medio círculo hacia adelante.', 'img/hipopotamo.png'),
	(28, 'Hormiga', 'Se hace una letra v, y se coloca, por el dorso, sobre la frente. Luego se hace un movimiento alternado de los dedos hacia adelante y atrás.', 'img/hormiga.png'),
	(29, 'Iglesia', 'Se juntan las puntas de los dedos índices, y se hacen vibrar en su lugar.', 'img/iglesia.png'),
	(30, 'Iguana', 'Con la yema del dedo medio se toca la barbilla varias veces. Luego se hace un número 4, colocado por la muñeca sobre el dorso del brazo, y se recorre hacia arriba.', 'img/iguana.png'),
	(31, 'Invierno', 'Se simula que se coloca una bufanda sobre el hombro. Luego se hace una f con ambas manos, y se hacen vibrar en su lugar como temblando de frío.', 'img/invierno.png'),
	(32, 'Jamon', 'Se hace una letra c sobre la palma de la otra mano en posición vertical. Se realiza un movimiento hacia el frente y abajo, como rebanando jamón.', 'img/Jamon.png'),
	(33, 'Jirafa', 'Se estiran el índice y el meñique, mientras las yemas del medio, anular y pulgar se unen. El codo de este brazo se coloca sobre la palma de la otra mano.', 'img/jirafa.png'),
	(34, 'Jueves', 'Se hace una letra j, y se mueve en círculo', 'img/jueves.png'),
	(35, 'Julio', 'Se hace una letra i con el pulgar y el índice estirados, y se rota la muñeca a los lados.', 'img/julio.png'),
	(36, 'Junio', 'Se hace una letra i, y se rota la muñeca a los lados.', 'img/junio.png'),
	(37, 'Leon', 'Se coloca la mano en posición de garra sobre la cabeza, y se realiza un movimiento hacia abajo, rodeando la cara.', 'img/leon.png'),
	(38, 'Llave(abrir)', 'Con la mano cerrada se realiza un movimiento rotatorio de muñeca hacia los lados, simulando abrir una puerta.', 'img/llaveA.png'),
	(39, 'Llave(cerrar con)', 'Se coloca la mano cerrada sobre la palma de la otra mano, y se realiza un movimiento rotatorio de muñeca hacia los lados.', 'img/llaveC.png'),
	(40, 'Lunes', 'Se hace una letra l, y se mueve en círculo.', 'img/lunes.png'),
	(41, 'Martes', 'Se hace una letra l con el dedo medio estirado, y se mueve en círculo.', 'img/martes.png'),
	(42, 'Marzo', 'Se hace una letra m, y se mueve en círculo alrededor de la oreja.', 'img/marzo.png'),
	(43, 'Mayo', 'Se hace una letra m, y se rota la muñeca a los lados.', 'img/mayo.png'),
	(44, 'Miercoles', 'Se hace una letra l con los dedos medio, anular y meñique estirados, y se mueve en círculo.', 'img/miercoles.png'),
	(45, 'Mono', 'Se hace una letra m con ambas manos colocadas a la altura del pecho, y se realiza un movimiento simultáneo hacia los lados, varias veces.', 'img/mono.png'),
	(46, 'Murciélago', 'Se hace una letra r sobre la mejilla, y se realiza un movimiento a un lado. Luego se hace la m con ambas manos y vibran en su lugar.', 'img/murcielago.png'),
	(47, 'Niño', 'Se colocan los dedos índice, medio y pulgar, unidos por las yemas, en la parte central de la barbilla, y la golpean ligeramente.', 'img/niño.png'),
	(48, 'Novia', 'El índice y el pulgar se tocan por la punta, y se mueven ligeramente a los lados varias veces. Luego se desliza el índice sobre la mejilla hacia abajo.', 'img/novia.png'),
	(49, 'Noviembre', 'Se hace una letra n, y se rota la muñeca a los lados.', 'img/noviembre.png'),
	(50, 'Octubre', 'Se hace una letra o, y se rota la muñeca a los lados.', 'img/octubre.png'),
	(51, 'Oso', 'Se colocan las puntas de los dedos alrededor de la nariz, y se realiza un movimiento vibratorio en su lugar.', 'img/oso.png'),
	(52, 'Ostión', 'Se colocan los dedos índice y medio estirados sobre la palma de la otra mano, y se realiza un movimiento hacia el frente, simulando que se abre la concha de un ostión.', 'img/ostion.png'),
	(53, 'Otoño', 'Se coloca la mano abierta, representando un árbol. Luego se simula con los pulgares e índices las hojas que caen del árbol.', 'img/otoño.png'),
	(54, 'Perro', 'Los dedos índice, medio y pulgar se tocan con las yemas, y se realiza un movimiento de chasquido, simulando llamar a un perro.', 'img/perro.png'),
	(55, 'Pez', 'Con la mano abierta y los dedos unidos, se realiza un movimiento ondulatorio hacia adelante.', 'img/pez.png'),
	(56, 'Primavera', 'Se hace capullo en ambas manos, y se mueven hacia arriba mientras se van abriendo.', 'img/primavera.png'),
	(57, 'Quesadilla', 'Con las palmas abiertas hacia arriba, tocándose por los meñiques, se hace un movimiento simultáneo de unir las palmas, simulando cerrar una quesadilla.', 'img/quesadilla.png'),
	(58, 'Queso', 'Con la yema del dedo medio se toca el dorso de la otra mano, y se realiza un movimiento corto hacia abajo.', 'img/queso.png'),
	(59, 'Rana', 'Con la yema del dedo medio se toca la barba.', 'img/rana.png'),
	(60, 'Rinoceronte', 'Se coloca una letra i sobre la nariz, simulando el cuerno de un rinoceronte.', 'img/rinoceronte.png'),
	(61, 'Sabado', 'Se hace una letra s, y se mueve en círculo.', 'img/sabado.png'),
	(62, 'Sapo', 'Con la yema del dedo medio se toca la barba varias veces.', 'img/sapo.png'),
	(63, 'Septiembre', 'Se hace una letra s, y se rota la muñeca a los lados.', 'img/septiembre.png'),
	(64, 'Tiburón', 'Con la mano abierta, se realiza un movimiento hacia un lado, y se hace expresión de pánico.', 'img/tiburon.png'),
	(65, 'Tigre', 'Con la mano abierta en posición de garra, se coloca sobre la mejilla y se mueve hacia atrás.', 'img/tigre.png'),
	(66, 'Uno', 'Se estira el índice con la palma al frente.', 'img/uno.png'),
	(67, 'Uva', 'Se colocan los dedos índice y pulgar con las yemas frente a frente sobre el ojo.', 'img/uva.png'),
	(68, 'Vaca', 'Se coloca la mano en posición de garra sobre la cabeza y se realiza un movimiento hacia adelante y atrás.', 'img/vaca.png'),
	(69, 'Venado', 'Se colocan los dedos índice y medio estirados a los lados de la frente, tocándola con las puntas de los pulgares, y se mueven al mismo tiempo hacia arriba, separándos.', 'img/venado.png'),
	(70, 'Verano', 'Con el dedo índice estirado se recorre la frente a un lado, como quitándose el sudor', 'img/verano.png'),
	(71, 'Viernes', 'Se hace una letra v, y se mueve en círculo', 'img/viernes.png'),
	(72, 'Whisky', 'Se hace una letra w sobre la mejilla, y se realiza un movimiento circular en su lugar.', 'img/whisky.png'),
	(73, 'Xalapa', 'Se hace una letra x, y se mueve en ondas hacia abajo, hasta colocarse sobre la palma de la otra mano.', 'img/xalapa.png'),
	(74, 'Yo', 'Se coloca una letra y sobre el pecho.', 'img/yo.png'),
	(75, 'Yogur', 'Se hace una letra y, con ella se roza el dorso de la otra mano.', 'img/yogur.png'),
	(76, 'Zorrillo', 'Se hace una letra z y se mueve hacia adelante y atrás varias veces.', 'img/zorrillo.png'),
	(77, 'Zorro', 'Con la mano abierta en posición de garra, se coloca sobre la mejilla y se mueve hacia atrás.', 'img/zorro.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
