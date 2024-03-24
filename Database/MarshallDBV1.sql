-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 04:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
CREATE DATABASE IF NOT EXISTS `marshalldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_thai_520_w2;
USE `marshalldb`;

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
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`prodid`);

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
-- AUTO_INCREMENT for table `productlist`
--
ALTER TABLE `productlist`
  MODIFY `prodid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID ห้ามแก้';

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `idNo` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID ผู้ใช้ เพิ่มค่าเอง ห้ามแก้', AUTO_INCREMENT=42;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Dumping data for table `pma__column_info`
--

INSERT INTO `pma__column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`, `input_transformation`, `input_transformation_options`) VALUES
(1, 'marshalldb', 'userdata', 'imgName', '', '', '', '', 'Input/Image_JPEG_Upload.php', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Dumping data for table `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[{\"db\":\"marshalldb\",\"table\":\"userdata\"},{\"db\":\"marshalldb\",\"table\":\"productlist\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"marshalldb\",\"table\":\"userdata\"},{\"db\":\"marshalldb\",\"table\":\"productlist\"},{\"db\":\"ecomdemo\",\"table\":\"products\"},{\"db\":\"ecomtest\",\"table\":\"products\"},{\"db\":\"ecomtest\",\"table\":\"users\"},{\"db\":\"ecomtest\",\"table\":\"optiongroups\"},{\"db\":\"ecomtest\",\"table\":\"member\"},{\"db\":\"ecomtest\",\"table\":\"productoptions\"},{\"db\":\"ecomtest\",\"table\":\"productcategories\"},{\"db\":\"ecomtest\",\"table\":\"orders\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-22 03:09:18', '{\"Console\\/Mode\":\"collapse\",\"DefaultConnectionCollation\":\"utf8mb4_thai_520_w2\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
