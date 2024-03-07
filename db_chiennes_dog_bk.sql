-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_chiennes_dog
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_administradores`
--

DROP TABLE IF EXISTS `tb_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_administradores` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_administrador` varchar(50) NOT NULL,
  `apellido_administrador` varchar(50) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `correo_administrador` varchar(100) NOT NULL,
  `clave_administrador` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `correo_administrador` (`correo_administrador`),
  KEY `fk_admin_cargo` (`id_cargo`),
  CONSTRAINT `fk_admin_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tb_cargos` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administradores`
--

LOCK TABLES `tb_administradores` WRITE;
/*!40000 ALTER TABLE `tb_administradores` DISABLE KEYS */;
INSERT INTO `tb_administradores` VALUES (1,'Ana','Gómez',1,'ana.gomez@example.com','clave122','2024-03-07'),(2,'Carlos','Rodríguez',2,'carlos.rodriguez@example.com','clave456','2024-03-07'),(3,'Laura','Fernández',2,'laura.fernandez@example.com','clave789','2024-03-07'),(4,'Pedro','Martínez',1,'pedro.martinez@example.com','claveabc','2024-03-07'),(5,'Sofía','López',2,'sofia.lopez@example.com','clavedef','2024-03-07'),(6,'Juan','Sánchez',2,'juan.sanchez@example.com','claveghi','2024-03-07'),(7,'María','Pérez',1,'maria.perez@example.com','clavejkl','2024-03-07'),(8,'Javier','Hernández',2,'javier.hernandez@example.com','clavemno','2024-03-07'),(9,'Lucía','Díaz',2,'lucia.diaz@example.com','clavepqr','2024-03-07'),(10,'Miguel','Moreno',1,'miguel.moreno@example.com','clavestu','2024-03-07'),(11,'Paula','García',2,'paula.garcia@example.com','clavevwx','2024-03-07'),(12,'Alejandro','Lara',2,'alejandro.lara@example.com','claveyz','2024-03-07'),(13,'Valeria','Torres',1,'valeria.torres@example.com','clave122a','2024-03-07'),(14,'Diego','Ruiz',2,'diego.ruiz@example.com','clave456b','2024-03-07'),(15,'Camila','Ramírez',2,'camila.ramirez@example.com','clave789c','2024-03-07'),(16,'Mateo','Gutiérrez',1,'mateo.gutierrez@example.com','claveabcd','2024-03-07'),(17,'Isabella','Cruz',2,'isabella.cruz@example.com','clavedefg','2024-03-07'),(18,'Daniel','Ortega',2,'daniel.ortega@example.com','claveghij','2024-03-07'),(19,'Elena','Reyes',1,'elena.reyes@example.com','claveklmn','2024-03-07'),(20,'Adrián','Castillo',2,'adrian.castillo@example.com','clavemnop','2024-03-07'),(21,'Bianca','Núñez',2,'bianca.nunez@example.com','clavepqrst','2024-03-07'),(22,'Gabriel','Guerrero',1,'gabriel.guerrero@example.com','claveuvwxy','2024-03-07'),(23,'Sara','Mendoza',2,'sara.mendoza@example.com','clavez122','2024-03-07'),(24,'Matías','Silva',2,'matias.silva@example.com','clave456a','2024-03-07'),(25,'Olivia','Herrera',1,'olivia.herrera@example.com','clave789b','2024-03-07'),(26,'Leonardo','Santos',2,'leonardo.santos@example.com','claveabca','2024-03-07');
/*!40000 ALTER TABLE `tb_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cargos`
--

DROP TABLE IF EXISTS `tb_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cargos` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cargos`
--

LOCK TABLES `tb_cargos` WRITE;
/*!40000 ALTER TABLE `tb_cargos` DISABLE KEYS */;
INSERT INTO `tb_cargos` VALUES (1,'Administrador'),(2,'Inventariador');
/*!40000 ALTER TABLE `tb_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Alimentos'),(2,'Juguetes'),(3,'Ropa'),(4,'Cosméticos y peluquería'),(5,'Accesorios'),(6,'Descanso');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `dui_cliente` varchar(10) NOT NULL,
  `correo_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(9) NOT NULL,
  `nacimiento_cliente` date NOT NULL,
  `direccion_cliente` varchar(250) NOT NULL,
  `clave_cliente` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dui_cliente` (`dui_cliente`),
  UNIQUE KEY `correo_cliente` (`correo_cliente`),
  UNIQUE KEY `telefono_cliente` (`telefono_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Ana','Gómez','123456789','ana.gomez@example.com','111111111','1990-05-12','Calle 1, Ciudad','clave123','2024-03-07'),(2,'Carlos','Rodríguez','987654321','carlos.rodriguez@example.com','222222222','1988-08-18','Avenida 2, Villa','clave456','2024-03-07'),(3,'Laura','Fernández','456789012','laura.fernandez@example.com','333333333','1995-02-25','Calle 3, Pueblo','clave789','2024-03-07'),(4,'Pedro','Martínez','111222333','pedro.martinez@example.com','444444444','1992-07-30','Avenida 4, Ciudad','claveabc','2024-03-07'),(5,'Sofía','López','444555666','sofia.lopez@example.com','555555555','1987-12-05','Calle 5, Villa','clavedef','2024-03-07'),(6,'Juan','Sánchez','777888999','juan.sanchez@example.com','666666666','1998-10-15','Avenida 6, Pueblo','claveghi','2024-03-07'),(7,'María','Pérez','222333444','maria.perez@example.com','777777777','1984-04-20','Calle 7, Ciudad','clavejkl','2024-03-07'),(8,'Javier','Hernández','555666777','javier.hernandez@example.com','888888888','1993-09-08','Avenida 8, Villa','clavemno','2024-03-07'),(9,'Lucía','Díaz','888999000','lucia.diaz@example.com','999999999','1989-11-28','Calle 9, Pueblo','clavepqr','2024-03-07'),(10,'Miguel','Moreno','333444555','miguel.moreno@example.com','101010101','1996-01-03','Avenida 10, Ciudad','clavestu','2024-03-07'),(11,'Paula','García','000111222','paula.garcia@example.com','111122223','1991-06-14','Calle 11, Villa','clavevwx','2024-03-07'),(12,'Alejandro','Lara','666777888','alejandro.lara@example.com','222233334','1994-03-19','Avenida 12, Pueblo','claveyz','2024-03-07'),(13,'Valeria','Torres','111000999','valeria.torres@example.com','333344445','1986-08-22','Calle 13, Ciudad','clave123a','2024-03-07'),(14,'Diego','Ruiz','999888777','diego.ruiz@example.com','444455556','1997-04-07','Avenida 14, Villa','clave456b','2024-03-07'),(15,'Camila','Ramírez','222111000','camila.ramirez@example.com','555566667','1985-09-10','Calle 15, Pueblo','clave789c','2024-03-07'),(16,'Mateo','Gutiérrez','555444333','mateo.gutierrez@example.com','666677778','1990-12-25','Avenida 16, Ciudad','claveabcd','2024-03-07'),(17,'Isabella','Cruz','888777666','isabella.cruz@example.com','999988887','1995-02-02','Calle 17, Villa','clavedefg','2024-03-07'),(18,'Daniel','Ortega','911222333','daniel.ortega@example.com','123012301','1992-07-30','Avenida 18, Pueblo','claveghij','2024-03-07'),(19,'Elena','Reyes','644555666','elena.reyes@example.com','456123012','1987-04-15','Calle 19, Ciudad','claveklmn','2024-03-07'),(20,'Adrián','Castillo','177888999','adrian.castillo@example.com','789456123','1998-09-28','Avenida 20, Villa','clavemnop','2024-03-07'),(21,'Bianca','Núñez','282333444','bianca.nunez@example.com','012345678','1984-11-05','Calle 21, Pueblo','clavepqrst','2024-03-07'),(22,'Gabriel','Guerrero','565666777','gabriel.guerrero@example.com','234567890','1993-03-18','Avenida 22, Ciudad','claveuvwxy','2024-03-07'),(23,'Sara','Mendoza','888199000','sara.mendoza@example.com','345678901','1996-06-29','Calle 23, Villa','clavez123','2024-03-07'),(24,'Matías','Silva','111900999','matias.silva@example.com','456789012','1989-01-12','Avenida 24, Pueblo','clave456a','2024-03-07'),(25,'Olivia','Herrera','646777888','olivia.herrera@example.com','567890123','1994-08-25','Calle 25, Ciudad','clave789b','2024-03-07'),(26,'Leonardo','Santos','999788777','leonardo.santos@example.com','678901234','1985-02-08','Avenida 26, Villa','claveabca','2024-03-07');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalles_pedidos`
--

DROP TABLE IF EXISTS `tb_detalles_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalles_pedidos` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL CHECK (`cantidad_producto` >= 1),
  `precio_producto` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_pedido` (`id_pedido`),
  KEY `fk_detalle_producto` (`id_producto`),
  CONSTRAINT `fk_detalle_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id_pedido`),
  CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalles_pedidos`
--

LOCK TABLES `tb_detalles_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_detalles_pedidos` DISABLE KEYS */;
INSERT INTO `tb_detalles_pedidos` VALUES (1,1,1,2,29.99),(2,1,3,1,12.99),(3,2,2,3,19.99),(4,2,4,1,14.99),(5,3,5,2,25.99),(6,3,1,1,14.99),(7,4,3,3,39.99),(8,4,4,2,22.99),(9,5,2,1,9.99),(10,5,5,2,17.99),(11,6,1,3,32.99),(12,6,3,1,15.99),(13,7,4,2,19.99),(14,7,2,1,11.99),(15,8,5,3,28.99),(16,8,1,2,14.99),(17,9,2,1,9.99),(18,9,3,2,18.99),(19,10,4,3,29.99),(20,10,5,1,13.99),(21,11,1,2,23.99),(22,11,2,1,12.99),(23,12,3,3,35.99),(24,12,4,2,21.99),(25,13,5,1,11.99);
/*!40000 ALTER TABLE `tb_detalles_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_marcas`
--

DROP TABLE IF EXISTS `tb_marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(50) NOT NULL,
  `imagen_marca` varchar(255) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marcas`
--

LOCK TABLES `tb_marcas` WRITE;
/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
INSERT INTO `tb_marcas` VALUES (1,'Sumsu','imagen1.jpg'),(2,'Pedigree','imagen2.jpg'),(3,'Kong','imagen3.jpg'),(4,'Hill\'s Science Diet','imagen1.jpg'),(5,'Royal Canin','imagen2.jpg'),(6,'Blue Buffalo','imagen3.jpg'),(7,'Iams','imagen4.jpg'),(8,'Purina Pro Plan','imagen5.jpg'),(9,'Nutro','imagen6.jpg'),(10,'Merrick','imagen7.jpg'),(11,'Canidae','imagen8.jpg'),(12,'Wellness','imagen9.jpg'),(13,'Pedigree','imagen10.jpg'),(14,'Orijen','imagen11.jpg'),(15,'Monge','imagen12.jpg'),(16,'Acana','imagen13.jpg'),(17,'Natural Balance','imagen14.jpg'),(18,'Hill\'s Prescription Diet','imagen15.jpg'),(19,'Merrick Grain-Free','imagen16.jpg'),(20,'Holistic Select','imagen17.jpg'),(21,'Taste of the Wild','imagen18.jpg'),(22,'Canine Caviar','imagen19.jpg'),(23,'Wild Earth','imagen20.jpg'),(24,'Zignature','imagen21.jpg'),(25,'Fromm Family Foods','imagen22.jpg'),(26,'Nulo','imagen23.jpg'),(27,'Rachael Ray Nutrish','imagen24.jpg'),(28,'Petcurean','imagen25.jpg');
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `estado_pedido` enum('Entregado','Pendiente') NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  `direccion_pedido` varchar(250) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente` (`id_cliente`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
INSERT INTO `tb_pedidos` VALUES (1,1,'Entregado','2024-03-07','Calle Principal #123'),(2,2,'Pendiente','2024-03-07','Avenida Central #456'),(3,3,'Pendiente','2024-03-07','Calle Secundaria #789'),(4,4,'Entregado','2024-03-07','Avenida Norte #234'),(5,5,'Pendiente','2024-03-07','Calle Este #567'),(6,6,'Entregado','2024-03-07','Avenida Oeste #890'),(7,7,'Entregado','2024-03-07','Calle Principal #111'),(8,8,'Pendiente','2024-03-07','Avenida Central #222'),(9,9,'Entregado','2024-03-07','Calle Secundaria #333'),(10,10,'Pendiente','2024-03-07','Avenida Norte #444'),(11,11,'Entregado','2024-03-07','Calle Este #555'),(12,12,'Pendiente','2024-03-07','Avenida Oeste #666'),(13,13,'Entregado','2024-03-07','Calle Principal #777'),(14,14,'Pendiente','2024-03-07','Avenida Central #888'),(15,15,'Entregado','2024-03-07','Calle Secundaria #999'),(16,16,'Entregado','2024-03-07','Avenida Norte #1010'),(17,17,'Pendiente','2024-03-07','Calle Este #1212'),(18,18,'Entregado','2024-03-07','Avenida Oeste #1313'),(19,19,'Pendiente','2024-03-07','Calle Principal #1414'),(20,20,'Entregado','2024-03-07','Avenida Central #1515'),(21,21,'Pendiente','2024-03-07','Calle Secundaria #1616'),(22,22,'Entregado','2024-03-07','Avenida Norte #1717'),(23,23,'Pendiente','2024-03-07','Calle Este #1818'),(24,24,'Entregado','2024-03-07','Avenida Oeste #1919'),(25,25,'Entregado','2024-03-07','Calle Principal #2020');
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `descripcion_producto` varchar(250) DEFAULT NULL,
  `precio_producto` decimal(5,2) NOT NULL,
  `imagen_producto` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `existencia` int(11) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  `id_administrador` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_categoria` (`id_categoria`),
  KEY `fk_producto_marca` (`id_marca`),
  KEY `fk_producto_admin` (`id_administrador`),
  CONSTRAINT `fk_producto_admin` FOREIGN KEY (`id_administrador`) REFERENCES `tb_administradores` (`id_administrador`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`),
  CONSTRAINT `fk_producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `tb_marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,1,'Collar Ajustable para Perros',1,'Collar ajustable con hebilla resistente. Disponible en varios colores. Ideal para perros de todos los tamaños.',14.99,'imagen1.jpg',1,120,'2024-03-07',1),(2,2,'Juguete Pelota de Goma',2,'Pelota de goma resistente para juegos interactivos. Perfecta para masticar y mantener a tu perro activo y entretenido.',8.99,'imagen2.jpg',1,90,'2024-03-07',2),(3,3,'Snack Natural para Perros',3,'Deliciosos snacks naturales con ingredientes de alta calidad. Sin aditivos artificiales. Una opción saludable y sabrosa.',12.99,'imagen3.jpg',1,150,'2024-03-07',3),(4,4,'Arnés Acolchado para Paseos',1,'Arnés acolchado con cierre de clic para paseos cómodos. Diseño ergonómico para evitar tirones. Disponible en diferentes tallas.',19.99,'imagen4.jpg',1,80,'2024-03-07',1),(5,5,'Peluche de Juguete para Perros',2,'Peluche suave y divertido para horas de juego. Resistente y seguro para perros de todas las edades. Ideal para abrazar y masticar.',11.99,'imagen5.jpg',1,110,'2024-03-07',2),(6,6,'Comida Seca Premium',3,'Alimento seco premium con ingredientes seleccionados. Fórmula balanceada para satisfacer las necesidades nutricionales de tu perro. Disponible en diferentes sabores.',34.99,'imagen6.jpg',1,100,'2024-03-07',3),(7,1,'Chaleco de Seguridad Reflectante',1,'Chaleco reflectante para mayor visibilidad durante paseos nocturnos. Ajustable y cómodo. Garantiza la seguridad de tu perro en la oscuridad.',21.99,'imagen7.jpg',1,130,'2024-03-07',1),(8,2,'Juguete de Cuerda para Tirar',2,'Juguete de cuerda resistente para juegos de tirar. Fomenta la actividad física y fortalece la mandíbula. Apto para perros de todas las razas.',13.99,'imagen8.jpg',1,95,'2024-03-07',2),(9,3,'Galletas Naturales para Perros',3,'Galletas naturales horneadas con ingredientes saludables. Deliciosas y nutritivas como premios o snacks entre comidas.',9.49,'imagen9.jpg',1,120,'2024-03-07',3),(10,1,'Cama Ortopédica para Perros',1,'Cama ortopédica con memoria viscoelástica para el descanso óptimo de tu perro. Diseño lavable y duradero. Disponible en varios tamaños.',45.99,'imagen10.jpg',1,70,'2024-03-07',1),(11,1,'Pelota con Dispensador de Golosinas',2,'Pelota interactiva con compartimiento para golosinas. Estimula la mente y la destreza. Ideal para recompensas durante el juego.',16.99,'imagen11.jpg',1,85,'2024-03-07',2),(12,2,'Cepillo de Dientes para Perros',3,'Cepillo de dientes diseñado para la higiene dental de tu perro. Ayuda a prevenir problemas bucales y mantener un aliento fresco.',7.99,'imagen12.jpg',1,140,'2024-03-07',3),(13,3,'Comedero Antideslizante',1,'Comedero resistente y antideslizante para facilitar la alimentación. Diseño moderno y fácil de limpiar. Disponible en varios colores.',10.49,'imagen13.jpg',1,110,'2024-03-07',1),(14,4,'Juguete de Peluche con Sonido',2,'Peluche con sonido para una diversión extra. Suave y seguro para masticar. Perfecto para perros juguetones.',14.99,'imagen14.jpg',1,100,'2024-03-07',2),(15,5,'Kit de Cuidado y Aseo',3,'Kit completo de cuidado y aseo para perros. Incluye cepillo, champú, cortaúñas y más. Todo lo necesario para mantener a tu perro limpio y saludable.',27.99,'imagen15.jpg',1,120,'2024-03-07',3),(16,6,'Chaqueta de Invierno para Perros',1,'Chaqueta abrigada y resistente al agua para proteger a tu perro en invierno. Con forro térmico y cierre ajustable.',32.99,'imagen16.jpg',1,75,'2024-03-07',1),(17,1,'Juguete Dispensador de Golosinas',2,'Juguete interactivo que dispensa golosinas mientras juega. Estimula la actividad mental y física. Ideal para perros activos.',18.99,'imagen17.jpg',1,105,'2024-03-07',2),(18,1,'Bolso de Viaje para Perros',3,'Bolso de viaje cómodo y seguro para transportar a tu perro. Con ventilación y bolsillos adicionales. Perfecto para salidas y excursiones.',29.99,'imagen18.jpg',1,90,'2024-03-07',3),(19,1,'Correa de Entrenamiento',1,'Correa resistente con asa acolchada. Ideal para entrenamiento y paseos diarios. Ajustable para diferentes longitudes.',15.99,'imagen19.jpg',1,115,'2024-03-07',1),(20,4,'Juguete de Entrenamiento Inteligente',2,'Juguete interactivo que desafía la mente de tu perro. Dispensa golosinas y estimula el pensamiento.',17.99,'imagen47.jpg',1,105,'2024-03-07',2),(21,4,'Comida Húmeda Gourmet',3,'Comida húmeda gourmet con sabores exquisitos. Elaborada con ingredientes de alta calidad para satisfacer los paladares más exigentes.',22.99,'imagen48.jpg',1,90,'2024-03-07',3),(22,4,'Mochila para Perros Pequeños',1,'Mochila cómoda y segura para llevar a tu perro en tus aventuras. Adecuada para perros pequeños y medianos.',27.99,'imagen49.jpg',1,115,'2024-03-07',1),(23,5,'Juguete para Tiro y Jalón',2,'Juguete resistente para juegos de tiro y jalón. Fortalece los músculos y proporciona ejercicio divertido.',15.99,'imagen50.jpg',1,140,'2024-03-07',2),(24,1,'Collar Reflectante para Perros',1,'Collar ajustable con material reflectante para mayor visibilidad durante paseos nocturnos. Ideal para perros de todos los tamaños.',15.99,'imagen1.jpg',1,100,'2024-03-07',1),(25,2,'Juguete Masticable Dental',2,'Juguete interactivo diseñado para promover la salud dental de tu perro. Ayuda a prevenir la acumulación de placa y fortalece las encías.',12.99,'imagen2.jpg',1,150,'2024-03-07',2);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valoracion_productos`
--

DROP TABLE IF EXISTS `tb_valoracion_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valoracion_productos` (
  `id_vp` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `id_valoracion` int(11) NOT NULL,
  PRIMARY KEY (`id_vp`),
  KEY `fk_valo_valoracion` (`id_valoracion`),
  KEY `fk_valo_detalle` (`id_detalle`),
  CONSTRAINT `fk_valo_detalle` FOREIGN KEY (`id_detalle`) REFERENCES `tb_detalles_pedidos` (`id_detalle`),
  CONSTRAINT `fk_valo_valoracion` FOREIGN KEY (`id_valoracion`) REFERENCES `tb_valoraciones` (`id_valoracion`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valoracion_productos`
--

LOCK TABLES `tb_valoracion_productos` WRITE;
/*!40000 ALTER TABLE `tb_valoracion_productos` DISABLE KEYS */;
INSERT INTO `tb_valoracion_productos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25);
/*!40000 ALTER TABLE `tb_valoracion_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valoraciones`
--

DROP TABLE IF EXISTS `tb_valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valoraciones` (
  `id_valoracion` int(11) NOT NULL AUTO_INCREMENT,
  `calificacion_producto` int(11) NOT NULL,
  `fecha_valoracion` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_valoracion`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valoraciones`
--

LOCK TABLES `tb_valoraciones` WRITE;
/*!40000 ALTER TABLE `tb_valoraciones` DISABLE KEYS */;
INSERT INTO `tb_valoraciones` VALUES (1,4,'2024-03-07'),(2,5,'2024-03-07'),(3,3,'2024-03-07'),(4,4,'2024-03-07'),(5,2,'2024-03-07'),(6,5,'2024-03-07'),(7,4,'2024-03-07'),(8,3,'2024-03-07'),(9,5,'2024-03-07'),(10,4,'2024-03-07'),(11,3,'2024-03-07'),(12,5,'2024-03-07'),(13,4,'2024-03-07'),(14,2,'2024-03-07'),(15,4,'2024-03-07'),(16,5,'2024-03-07'),(17,3,'2024-03-07'),(18,4,'2024-03-07'),(19,3,'2024-03-07'),(20,5,'2024-03-07'),(21,4,'2024-03-07'),(22,4,'2024-03-07'),(23,5,'2024-03-07'),(24,3,'2024-03-07'),(25,4,'2024-03-07'),(26,2,'2024-03-07');
/*!40000 ALTER TABLE `tb_valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 13:25:33
