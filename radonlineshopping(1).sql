-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 01:57 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radonlineshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'NIKE'),
(2, 'VANS'),
(3, 'SUPER DRY'),
(4, 'ADIDAS'),
(5, 'TED BAKER'),
(6, 'UNIQLO'),
(7, 'POLO'),
(8, 'CROCODILE '),
(9, 'ZARA');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `size`) VALUES
(3, 22, '::1', 4, 1, ''),
(5, 1, '::1', 3, 3, ''),
(6, 32, '::1', -1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'SHOES FOR WOMEN'),
(2, 'LADIES WEAR'),
(3, 'MEN\'S WEAR'),
(4, 'FACE'),
(5, 'SHOES FOR MEN'),
(6, 'CAPS & HAT'),
(7, 'BAGS');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'NIKE AIR FORCE', 200, 'SPORT SHOE FOR WOMEN', 's1.jpg', 'SPORT SHOE,WOMEN'),
(2, 1, 1, 'NIKE RUNNING AIR MAX', 2500, 'LIMITED EDITION ', 's2.jpg', 'WOMEN SHOE'),
(3, 1, 1, 'NIKE FREE RUN', 1000, 'NEW ARRIVAL ', 's3.jpg', 'SPORT SHOE'),
(4, 1, 4, 'ORIGINAL ADIDAS', 2000, 'NEW ARRIVAL', 's5.jpg', 'SPORT SHOE, ADIDAS'),
(5, 1, 4, 'ADIDAS ORIGINAL EQT', 10000, 'YOUNG NEW GENERATION', 's4.jpg', 'SPORT SHOE, ADIDAS'),
(6, 1, 4, 'WHITE STAN SMITH', 350, 'ADIDAS ORIGINAL', 's6.jpg', 'SPORT SHOE, ADIDAS'),
(7, 1, 2, 'VANS OLD SKOOL', 2000, 'RED', 's7.jpg', 'VANS ORIGINAL'),
(8, 1, 2, 'VANS CLASSIC', 400, 'For WOmen', 's8.jpg', 'WOMEN SHOE'),
(9, 1, 2, 'VANS OLD SKOOL', 200, 'HEELS', 's9.jpg', 'WOMEN SHOE'),
(10, 2, 9, 'FLORAL PRINT LONG LINE', 60, 'DRESS', 'w1.jpg', 'white dress '),
(11, 2, 6, 'VERO MODA CHECK', 120, 'dress', 'w2.jpg', 'white dress cloths'),
(12, 2, 6, 'PLUSH FAUX FUR MAXI', 60, 'ladies casual summer two colors pleted', 'w3.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'ZARA FULL SHOULDER KNIT', 90, 'girls dress', 'w4.jpg', 'girl dress'),
(14, 2, 9, 'WAREHOUSE FRILL SLEEVE', 120, 'girl dress', 'w5.jpg', 'ladies cloths girl'),
(15, 2, 4, 'HU CORAL SWEATSHIRT', 100, 'girl dress', 'w6.jpg', 'ladies wears dress girl'),
(16, 3, 7, 'POLO RAPH LAUREN LONDON', 300, 'Shirt In Slim Fit White', 'm1.jpg', 'white shirt'),
(17, 3, 8, 'NEW LOOK POPLIN SHIRT', 350, 'Shirt In Light Blue In Regular Fit', 'M2.jpg', 'gents wear cloths'),
(19, 3, 6, 'MENNANCE REVERSE SHIRT', 90, 'new arrival', 'm3.jpg', 'gents'),
(20, 3, 8, 'MENNANCE OVERSIZED T-SHIRT', 70, 'SHIRT', 'm4.jpg', 'gents '),
(21, 3, 8, 'LACOSTE SPORT POLO', 120, 'Shirt In White', 'm5.jpg', 't shirt white'),
(22, 4, 0, 'WINKY LUX BALM', 50, 'lip balm', 't1.jpg', 'make up'),
(23, 4, 0, 'ARDELL LASHES', 30, 'EYE', 't2.jpg', 'cosmetics'),
(24, 4, 0, 'PIXI EYE BRIGHTER', 90, 'pixi', 't3.jpg', 'cosmetics'),
(25, 4, 0, 'TAN LUXE HYDRA MOUSSE', 100, 'OK', 't4.jpg', 'skin care'),
(26, 4, 0, 'TAN LUXE THE GLOSS', 60, 'nbk', 't5.jpg', 'cosmetics'),
(27, 6, 1, 'NIKE HERITAGE 86 CAP', 690, 'original nike', 'c2.jpg', 'cap'),
(32, 5, 4, 'ADIDAS NMD', 250, 'SPORT SHOE', 'a1.jpg', 'man shoe'),
(33, 5, 4, 'CAMPUS TRAINER', 350, 'CAMPUS TRAINER', 'a2.jpg', 'ADIDAS'),
(34, 5, 4, 'SUPER STAR WITE', 1000, 'ADIDAS SUPER STAR', 'a3.jpg', 'adidas'),
(35, 5, 1, 'NIKE FLYKNIT', 1000, 'FLYKNIT', 'a4.jpg', 'Shoes'),
(36, 5, 1, 'NIKE AIR FORCE', 1500, 'WHITE', 'a5.jpg', 'nike man shoe training white'),
(37, 5, 1, 'COMMAND TRAINER BLUE', 150, 'LED TV', 'a6.jpg', 'SHOE SPORT'),
(38, 5, 3, 'SUPERDRY POOL SLIDES', 350, 'SLIDES AND CASUAL', 'a7.jpg', 'SUPER  DRY WHITE SANDAL'),
(39, 5, 3, 'POOL SLIDE IN CAMO', 60, 'SLIDE CAMO', 'a8.jpg', 'super dry '),
(40, 2, 6, 'UNIQLO HIGH WAIST', 320, 'DRESS', 'w7.jpg', 'ladies wear'),
(45, 5, 3, 'SUPER DRY FLIP FLOP', 50, '0', 'a9.jpg', 'super dry'),
(46, 6, 4, 'TREFOIL CAP IN BLACK', 300, '', 'c1.jpg', 'adidas Originals Trefoil Cap In Black BK7277'),
(47, 2, 6, 'ZARA STRIPE WOVEN', 99, 'pants', 'w8.jpg', 'ladies wear'),
(48, 2, 6, 'UNIQLO HOODIE', 120, 'HOODIE', 'w9.jpg', 'ladies WEAR'),
(49, 3, 6, 'LEE HALF ZIP HOODIE', 120, 'HOODIE FOR AUTUMN', 'm6.jpg', 'gents'),
(50, 6, 1, 'NIKE METAL SWOOSH BEANIE', 120, 'HATS', 'c3.jpg', 'gents'),
(51, 6, 4, 'TREFOIL CAP IN GREEN', 120, 'CAP', 'c4.jpg', 'gents'),
(52, 6, 4, 'TREFOIL CAP IN RED', 120, 'CAP', 'c5.jpg', 'gents'),
(53, 6, 3, 'SUPERDRY LINEMAN CAP', 120, 'CAP', 'c6.jpg', 'gents'),
(54, 6, 4, 'TREFOIL BEANIE IN ORANGE', 50, 'hat', 'c7.jpg', 'gents'),
(55, 6, 2, 'VANS MILFORD BEANIE', 60, 'hat', 'c8.jpg', 'gents'),
(56, 6, 2, 'VANS CLASSIC PATCH TRUCKER', 100, 'CAP', 'c9.jpg', 'gents'),
(57, 7, 6, 'BACKPACK IN STRIPED FAUX', 170, 'BAGS', 'b1.jpg', 'unisex'),
(58, 7, 5, 'VELVET WITH FLORAL', 170, 'BAGS', 'b2.jpg', 'WOMEN ONLY'),
(59, 7, 4, 'X FARM JADIM SHOPPER', 30, 'BAGS', 'b3.jpg', 'WOMEN ONLY'),
(60, 7, 5, 'TED BAKER AMELIEE', 1000, 'BAGS', 'b4.jpg', 'WOMEN ONLY'),
(61, 7, 5, 'TED BAKER LARGE ICON', 1000, 'BAGS', 'b5.jpg', 'WOMEN ONLY'),
(62, 7, 5, 'EMBOSSED MESSENGER BAG', 1000, 'BAGS', 'b6.jpg', 'MAN ONLY'),
(63, 7, 5, 'BACKPACK SEATA', 1200, 'BAGS', 'b7.jpg', 'MAN AND GIRL ONLY'),
(64, 7, 3, 'BACKPACK SEATA', 500, 'BAGS', 'b8.jpg', 'MAN ONLY'),
(65, 7, 4, 'GRAPHIC BACKPACK', 500, 'BAGS', 'b9.jpg', 'MAN AND WOMEN '),
(66, 4, 0, 'MAYBELLINE X GIGI HADID', 70, 'nbk', 't6.jpg', 'cosmetics'),
(67, 4, 0, 'JACK BLACK TRAVEL ESSENTIAL', 130, 'nbk', 't7.jpg', 'cosmetics'),
(68, 4, 0, 'UPROAR SHAVE FOAM 100ML', 60, 'nbk', 't8.jpg', 'cosmetics'),
(69, 4, 0, 'BARRY M LIGHT CONCEALER', 50, 'OK', 't9.jpg', 'skin care');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'hidayah', 'ahmad', 'tinierv@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'fdfdf', 'sdfdsfd'),
(4, 'hidayyah', 'ahmad', 'tinierx@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1234567890', 'sfsd', 'dsas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
