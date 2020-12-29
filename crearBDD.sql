-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2020 at 08:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SI_ejecutable`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `codCodigo` int(11) NOT NULL,
  `codTipo` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`codCodigo`, `codTipo`) VALUES
(3222, '512x'),
(1234, '513x'),
(5658, '51xx'),
(8547, '55xx');

-- --------------------------------------------------------

--
-- Table structure for table `devolucion`
--

CREATE TABLE `devolucion` (
  `codDevolucion` varchar(12) NOT NULL,
  `codRegistra` varchar(8) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `montoTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devolucion`
--

INSERT INTO `devolucion` (`codDevolucion`, `codRegistra`, `fecha`, `cantidad`, `montoTotal`) VALUES
('1234', '23423', '0000-00-00 00:00:00', 8, 3000),
('2323', '11122', '0000-00-00 00:00:00', 3, 5000),
('3444', '23123', '0000-00-00 00:00:00', 2, 6000),
('4432', '43344', '0000-00-00 00:00:00', 9, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `motivo`
--

CREATE TABLE `motivo` (
  `codMotivo` varchar(4) NOT NULL,
  `opcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motivo`
--

INSERT INTO `motivo` (`codMotivo`, `opcion`) VALUES
('115x', 'Robo'),
('133x', 'Accidente'),
('444x', 'Accidente'),
('484x', 'Robo');

-- --------------------------------------------------------

--
-- Table structure for table `perdida`
--

CREATE TABLE `perdida` (
  `codPerdida` varchar(12) NOT NULL,
  `codMotivo` varchar(4) DEFAULT NULL,
  `montoTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perdida`
--

INSERT INTO `perdida` (`codPerdida`, `codMotivo`, `montoTotal`) VALUES
('12442', '133x', 4),
('32211', '484x', 9),
('55444', '444x', 5),
('55552', '115x', 3);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `codProducto` varchar(20) NOT NULL,
  `categoria` varchar(8) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `promocionBool` varchar(2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`codProducto`, `categoria`, `nombre`, `precio`, `promocionBool`, `stock`) VALUES
('512145', 'snacks', 'chocman', 600, '1', 15),
('525258', 'snacks', 'serrano', 400, '0', 15),
('525555', 'snacks', 'super8', 150, '1', 15),
('688585', 'snacks', 'chubi', 300, '0', 15);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `rut` varchar(8) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`rut`, `nombre`, `direccion`, `telefono`) VALUES
('44445184', 'Pepsi', 'NewYork3211', 845515514),
('51548488', 'CocaCola', 'Estado2332', 322555255),
('56565656', 'Costa', 'SanFelin21332', 885456616),
('56565888', 'Fruna', 'SanDiego2341', 252555555);

-- --------------------------------------------------------

--
-- Table structure for table `proveeTiene`
--

CREATE TABLE `proveeTiene` (
  `codProvee` varchar(8) NOT NULL,
  `rutProveedor` varchar(8) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveeTiene`
--

INSERT INTO `proveeTiene` (`codProvee`, `rutProveedor`, `fecha`) VALUES
('5858585', '51548488', '0000-00-00 00:00:00'),
('6565568', '56565656', '0000-00-00 00:00:00'),
('7554547', '44445184', '0000-00-00 00:00:00'),
('7555771', '56565888', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `puedePoseer`
--

CREATE TABLE `puedePoseer` (
  `detPerdida` varchar(8) NOT NULL,
  `codProducto` varchar(20) DEFAULT NULL,
  `codRegPerdida` varchar(8) DEFAULT NULL,
  `cantidadProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puedePoseer`
--

INSERT INTO `puedePoseer` (`detPerdida`, `codProducto`, `codRegPerdida`, `cantidadProducto`) VALUES
('4444X4', '525555', '254555', 20),
('44X145', '512145', '485111', 20),
('98898X', '688585', '657565', 20),
('X122X1', '525258', '212222', 20);

-- --------------------------------------------------------

--
-- Table structure for table `registra`
--

CREATE TABLE `registra` (
  `codRegistra` varchar(8) NOT NULL,
  `codProducto` varchar(20) DEFAULT NULL,
  `cantidadProducto` int(11) DEFAULT NULL,
  `devolBool` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registra`
--

INSERT INTO `registra` (`codRegistra`, `codProducto`, `cantidadProducto`, `devolBool`) VALUES
('11122', '512145', 32, b'1'),
('23123', '525555', 20, b'0'),
('23423', '525258', 5, b'1'),
('43344', '688585', 14, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `registroPerdida`
--

CREATE TABLE `registroPerdida` (
  `codRegPerdida` varchar(8) NOT NULL,
  `codPerdida` varchar(12) DEFAULT NULL,
  `fechaPerdida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registroPerdida`
--

INSERT INTO `registroPerdida` (`codRegPerdida`, `codPerdida`, `fechaPerdida`) VALUES
('212222', '32211', '0000-00-00 00:00:00'),
('254555', '12442', '0000-00-00 00:00:00'),
('485111', '55552', '0000-00-00 00:00:00'),
('657565', '55444', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registroProvee`
--

CREATE TABLE `registroProvee` (
  `codRegProvee` varchar(8) NOT NULL,
  `codProducto` varchar(20) DEFAULT NULL,
  `codProvee` varchar(8) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioCompra` int(11) DEFAULT NULL,
  `precioDetalle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registroProvee`
--

INSERT INTO `registroProvee` (`codRegProvee`, `codProducto`, `codProvee`, `cantidad`, `precioCompra`, `precioDetalle`) VALUES
('1452', '688585', '7555771', 20, 55000, 20000),
('2222', '525258', '6565568', 20, 55000, 20000),
('2354', '525555', '5858585', 20, 55000, 20000),
('4445', '512145', '7554547', 20, 55000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `registroVenta`
--

CREATE TABLE `registroVenta` (
  `codRegVenta` varchar(8) NOT NULL,
  `codVenta` varchar(20) DEFAULT NULL,
  `fechaVenta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registroVenta`
--

INSERT INTO `registroVenta` (`codRegVenta`, `codVenta`, `fechaVenta`) VALUES
('123', '1233455', '0000-00-00 00:00:00'),
('232', '5454554', '0000-00-00 00:00:00'),
('233', '1155444', '0000-00-00 00:00:00'),
('321', '4343444', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `codTipo` varchar(4) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`codTipo`, `descripcion`) VALUES
('512x', 'jugo de naranja'),
('513x', 'bebida alcholica de 52 grados'),
('51xx', 'jugo de naranja light'),
('55xx', 'leche entera');

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `codVenta` varchar(20) NOT NULL,
  `montoTotal` int(11) DEFAULT NULL,
  `descu` int(11) DEFAULT NULL,
  `descTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`codVenta`, `montoTotal`, `descu`, `descTotal`) VALUES
('1155444', 25000, 5, 2000),
('1233455', 5000, 10, 3200),
('4343444', 10000, 0, 0),
('5454554', 15000, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCodigo`),
  ADD KEY `codTipo` (`codTipo`);

--
-- Indexes for table `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`codDevolucion`),
  ADD KEY `codRegistra` (`codRegistra`);

--
-- Indexes for table `motivo`
--
ALTER TABLE `motivo`
  ADD PRIMARY KEY (`codMotivo`);

--
-- Indexes for table `perdida`
--
ALTER TABLE `perdida`
  ADD PRIMARY KEY (`codPerdida`),
  ADD KEY `codMotivo` (`codMotivo`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codProducto`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`rut`);

--
-- Indexes for table `proveeTiene`
--
ALTER TABLE `proveeTiene`
  ADD PRIMARY KEY (`codProvee`),
  ADD KEY `rutProveedor` (`rutProveedor`);

--
-- Indexes for table `puedePoseer`
--
ALTER TABLE `puedePoseer`
  ADD PRIMARY KEY (`detPerdida`),
  ADD KEY `codProducto` (`codProducto`),
  ADD KEY `codRegPerdida` (`codRegPerdida`);

--
-- Indexes for table `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`codRegistra`),
  ADD KEY `codProducto` (`codProducto`);

--
-- Indexes for table `registroPerdida`
--
ALTER TABLE `registroPerdida`
  ADD PRIMARY KEY (`codRegPerdida`),
  ADD KEY `codPerdida` (`codPerdida`);

--
-- Indexes for table `registroProvee`
--
ALTER TABLE `registroProvee`
  ADD PRIMARY KEY (`codRegProvee`),
  ADD KEY `codProducto` (`codProducto`),
  ADD KEY `codProvee` (`codProvee`);

--
-- Indexes for table `registroVenta`
--
ALTER TABLE `registroVenta`
  ADD PRIMARY KEY (`codRegVenta`),
  ADD KEY `codVenta` (`codVenta`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codTipo`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`codVenta`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`codTipo`) REFERENCES `tipo` (`codTipo`);

--
-- Constraints for table `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`codRegistra`) REFERENCES `registra` (`codRegistra`);

--
-- Constraints for table `perdida`
--
ALTER TABLE `perdida`
  ADD CONSTRAINT `perdida_ibfk_1` FOREIGN KEY (`codMotivo`) REFERENCES `motivo` (`codMotivo`);

--
-- Constraints for table `proveeTiene`
--
ALTER TABLE `proveeTiene`
  ADD CONSTRAINT `proveeTiene_ibfk_1` FOREIGN KEY (`rutProveedor`) REFERENCES `proveedor` (`rut`);

--
-- Constraints for table `puedePoseer`
--
ALTER TABLE `puedePoseer`
  ADD CONSTRAINT `puedePoseer_ibfk_1` FOREIGN KEY (`codProducto`) REFERENCES `producto` (`codProducto`),
  ADD CONSTRAINT `puedePoseer_ibfk_2` FOREIGN KEY (`codRegPerdida`) REFERENCES `registroPerdida` (`codRegPerdida`);

--
-- Constraints for table `registra`
--
ALTER TABLE `registra`
  ADD CONSTRAINT `registra_ibfk_1` FOREIGN KEY (`codProducto`) REFERENCES `producto` (`codProducto`);

--
-- Constraints for table `registroPerdida`
--
ALTER TABLE `registroPerdida`
  ADD CONSTRAINT `registroPerdida_ibfk_1` FOREIGN KEY (`codPerdida`) REFERENCES `perdida` (`codPerdida`);

--
-- Constraints for table `registroProvee`
--
ALTER TABLE `registroProvee`
  ADD CONSTRAINT `registroProvee_ibfk_1` FOREIGN KEY (`codProducto`) REFERENCES `producto` (`codProducto`),
  ADD CONSTRAINT `registroProvee_ibfk_2` FOREIGN KEY (`codProvee`) REFERENCES `proveeTiene` (`codProvee`);

--
-- Constraints for table `registroVenta`
--
ALTER TABLE `registroVenta`
  ADD CONSTRAINT `registroVenta_ibfk_1` FOREIGN KEY (`codVenta`) REFERENCES `venta` (`codVenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
