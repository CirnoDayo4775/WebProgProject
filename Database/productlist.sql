-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 05:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marshalldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE `productlist` (
  `prodid` int(5) NOT NULL COMMENT 'ID ห้ามแก้',
  `prodName` varchar(40) NOT NULL COMMENT 'ชื่อสินค้า',
  `prodDPrice` decimal(10,0) NOT NULL COMMENT 'ราคาปกติ ใช้ราคานี้เป็นหลัก',
  `prodPrice` decimal(10,0) NOT NULL COMMENT 'ราคาที่ลดแล้ว ไม่ใส่ได้ จะใช้ราคาปกติแทน',
  `prodStock` int(10) NOT NULL DEFAULT -1 COMMENT 'สินค้าในคงคลัง หากมีไม่จำกัด ใส่ -1',
  `prodSold` int(10) NOT NULL COMMENT 'จำนวนที่ขายได้ ต้องใส่ข้อมูลเอง ไม่ต้องใส่ก็ได้',
  `prodColorVarient` tinyint(4) NOT NULL COMMENT 'จำนวนสี หากไม่ใช้ ปล่อยว่าง',
  `prodRating` decimal(10,0) NOT NULL COMMENT 'คะแนนรีวิว หากไม่ใช้ ปล่อยว่าง',
  `prodShowImg` varchar(30) NOT NULL COMMENT 'ชื่อรูปสินค้า ต้องกำหนดเอง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2 COMMENT='รายชื่อสินค้า';

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`prodid`, `prodName`, `prodDPrice`, `prodPrice`, `prodStock`, `prodSold`, `prodColorVarient`, `prodRating`, `prodShowImg`) VALUES
(1, 'NIKE COURT VISION MID', 2900, 2590, -1, 0, 0, 0, '1.jpg'),
(2, 'NIKE REACTGATO', 499, 0, -1, 0, 0, 0, '2.jpg'),
(3, 'NIKE RENEW ELEVATE', 2790, 0, -1, 0, 0, 0, '3.jpg'),
(4, 'NIKE AIR FORCE 1 LOW UNITY', 4800, 0, -1, 0, 0, 0, '4.jpg'),
(5, 'NIKE AIR MAX SYSTM', 3190, 2990, -1, 0, 0, 0, '5.jpg'),
(6, 'Balance FuelCell Two Wxy v3 CW3', 5990, 5800, -1, 0, 0, 0, '6.jpg'),
(7, 'Balance M1906R K Size', 6990, 6580, -1, 0, 0, 0, '7.jpg'),
(8, 'Adidas Street Check Cloudfoam Court Low ', 1990, 0, -1, 0, 0, 0, '8.jpg'),
(9, 'Balance M1906R ', 6500, 0, -1, 0, 0, 0, '9.jpg'),
(10, 'NIKE AIR MAX 95', 6990, 4490, -1, 0, 0, 0, '10.jpg'),
(11, 'Balance 550 NCD', 5500, 0, -1, 0, 0, 0, '11.jpg'),
(12, 'NIKE AIR MAX 95 SE', 4490, 0, -1, 0, 0, 0, '12.jpg'),
(13, 'NIKE GTS 97', 2500, 1790, -1, 0, 0, 0, '13.jpg'),
(14, 'NIKE AIR FORCE 1 MID REACT', 5400, 3990, -1, 0, 0, 0, '14.jpg'),
(15, 'NIKE AIR FORCE 1 LOW UNITY', 5400, 4150, -1, 0, 0, 0, '15.jpg'),
(16, 'NIKE DUNK HI RETRO PRM', 4300, 4150, -1, 0, 0, 0, '16.jpg'),
(17, 'Balance FuelCell Rebel v3 MFCXMB3 Men\'s ', 4300, 3990, -1, 0, 0, 0, '17.jpg'),
(18, 'Nike Zoom Fly 5 DM8968800 Men\'s Athletic', 4999, 0, -1, 0, 0, 0, '18.jpg'),
(19, 'ADIDAS RAPIDMOVE ADV TRAINER', 4300, 0, -1, 0, 0, 0, '19.jpg'),
(20, 'SUPERSTAR XLG SHOES', 4800, 0, -1, 0, 0, 0, '20.jpg'),
(21, 'ADIDAS TERREX CYPREX ULTRA ', 1040, 0, -1, 0, 0, 0, '21.jpg'),
(22, 'SKECHERS BURNS 2.0 - BERSERK', 1990, 1650, -1, 0, 0, 0, '22.jpg'),
(23, 'NEW BALANCE FUELCELL REBEL V4', 5400, 0, -1, 0, 0, 0, '23.jpg'),
(24, 'NEW BALANCE FRESH FOAM X 1080V13 2E ', 5900, 0, -1, 0, 0, 0, '24.jpg'),
(25, 'NIKE ASUNA 3', 1400, 0, -1, 0, 0, 0, '25.jpg'),
(27, 'NEW BALANCE FUELCELL REBEL V4', 5400, 0, -1, 0, 0, 0, '26.jpg'),
(28, 'NEW BALANCE FUELCELL REBEL V4', 1900, 0, -1, 0, 0, 0, '27.jpg'),
(29, 'ADIDAS GRAND COURT 2.0', 2500, 0, -1, 0, 0, 0, '28.jpg'),
(30, 'ADIDAS VL COURT BASE ', 1990, 0, -1, 0, 0, 0, '29.jpg'),
(31, 'ADIDAS RESPONSE', 2790, 2700, -1, 0, 0, 0, '30.jpg'),
(32, 'SKECHERS GO RUN 8™ - BIONIC', 4490, 2800, -1, 0, 0, 0, '31.jpg'),
(33, 'SKECHERS GO WALK MAX WALKER™ - RUBY ', 2990, 2542, -1, 0, 0, 0, '32.jpg'),
(34, 'SKECHERS HANDS FREE SLIP-INS®: MAX CUSHI', 3690, 3137, -1, 0, 0, 0, '33.jpg'),
(35, 'NEW BALANCE FRESH FOAM X 1080V13 ', 5990, 5900, -1, 0, 0, 0, '34.jpg'),
(36, 'ADIDAS SUPERNOVA RISE', 4700, 0, -1, 0, 0, 0, '35.jpg'),
(37, 'FILA ALL IN ONE ', 1990, 1790, -1, 0, 0, 0, '36.jpg'),
(38, 'FILA ALL IN ONE', 1790, 0, -1, 0, 0, 0, '37.jpg'),
(39, ' SKECHERS MAX CUSHIONING ARCH FIT® - DEL', 3690, 3137, -1, 0, 0, 0, '38.jpg'),
(40, 'SKECHERS MAX CUSHIONING ARCH FIT® - DELP', 3690, 3137, -1, 0, 0, 0, '39.jpg'),
(41, 'FILA SIGNATURE', 690, 0, -1, 0, 0, 0, '40.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`prodid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productlist`
--
ALTER TABLE `productlist`
  MODIFY `prodid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID ห้ามแก้', AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
