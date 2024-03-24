-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 08:05 PM
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
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `idNo` int(5) NOT NULL COMMENT 'ID ผู้ใช้ เพิ่มค่าเอง ห้ามแก้',
  `username` varchar(10) NOT NULL COMMENT 'Username ตั้งเองได้ แก้ไม่ได้',
  `password` varchar(15) NOT NULL COMMENT 'Password ตั้งเองได้ แก้ได้',
  `userFirstName` varchar(20) NOT NULL COMMENT 'ชื่อต้น ตั้งเองได้ แก้ได้',
  `UserLastName` varchar(20) NOT NULL COMMENT 'นามสกุล ตั้งเองได้ แก้ได้',
  `imgName` varchar(30) NOT NULL COMMENT 'รูปภาพ ตั้งเองไม่ได้ แก้ได้',
  `isAdmin` int(5) NOT NULL DEFAULT 0 COMMENT 'หากเป็นบัญชีแอดมินเพจ ให้เปลี่ยนค่าช่องนี้เป็น 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2 COMMENT='รายชื่อผู้ใช้รวมทั้งแอดมิน';

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`idNo`, `username`, `password`, `userFirstName`, `UserLastName`, `imgName`, `isAdmin`) VALUES
(1, 'addmin', '1234', 'Tester', 'V01', 'addmin.png', 1),
(2, 'lisa', '5678', 'Lalisa ', 'Manoban', 'lisa.jpg', 0),
(3, 'Rose', '0910', 'Chae Young', 'Park', 'rose.jpg', 0),
(4, 'Jennie ', '1112', 'Jennie ', 'Kim', 'jennie.jpg', 0),
(5, 'Jisoo', '1314', 'Ji Soo', 'Kim ', 'jisoo.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`idNo`),
  ADD UNIQUE KEY `username` (`username`);
ALTER TABLE `userdata` ADD FULLTEXT KEY `imgName` (`imgName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `idNo` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID ผู้ใช้ เพิ่มค่าเอง ห้ามแก้', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
