-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 10:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elegantshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_image`, `admin_role`) VALUES
(1, 'Mohammad Alashram', 'mohammad.alashram.ma@gmail.com', '123456', 'img/admin_image/marc.jpg', 'superadmin'),
(2, 'Lara', 'lara@gmail.com', '123456', 'img/admin_image/avatar.jpg', 'admin'),
(3, 'Aya', 'aya@gmail.com', '123456', 'img/admin_image/cover.jpg', 'admin'),
(4, 'Hamzeh', 'hamzeh@gmail.com', '123456', 'img/admin_image/roma_san_pietro.jpg', 'admin'),
(5, 'Tala', 'tala@gmail.com', '123456', 'img/admin_image/my-life-journal-vD9Gb_H7RR8-unsplash.jpg', 'admin'),
(6, 'Dania', 'dania@gmail.com', '123456', 'img/admin_image/bokeh-2072271_1920.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` text NOT NULL,
  `category_tag` varchar(100) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `category_image_tag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `category_tag`, `sub_name`, `category_image_tag`) VALUES
(34, 'Women', 'img/category_imagewomen-large.jpg', 'New arrival ', '', ''),
(35, 'Men', 'img/category_imageman-large.jpg', 'Sale', '', ''),
(36, 'Kids', 'img/category_imagecategory_imageChild.jpg', 'Christmas', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(10) NOT NULL,
  `products_name` varchar(100) NOT NULL,
  `products_price` float NOT NULL,
  `products_sale` float NOT NULL,
  `product_quantity` int(10) NOT NULL,
  `product_total` float NOT NULL,
  `product_final_total` float NOT NULL,
  `user_id` int(10) NOT NULL,
  `checkout_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customermsg`
--

CREATE TABLE `customermsg` (
  `msg_id` int(11) NOT NULL,
  `msg_name` varchar(255) NOT NULL,
  `msg_email` varchar(255) NOT NULL,
  `msg_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(10) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_des` varchar(255) NOT NULL,
  `products_image` text NOT NULL,
  `products_price` double NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `category_tag` varchar(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `products_sale` float NOT NULL,
  `category_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `products_des`, `products_image`, `products_price`, `category_name`, `size_name`, `category_tag`, `sub_name`, `products_sale`, `category_id`, `sub_id`) VALUES
(49, 'Fashion women', 'The colour makes it perfect for summer or fall, take your pick! The chunky pattern makes it warm for winter as well!', 'img/product_image/Suede Boots, Fall Sweaters + More Deals To Check Out.jpg', 150, 'Women', 'small,medium,large,Xlarge', 'New arrival', 'clothes', 0, 0, 0),
(50, 'casual wear', 'Offering much warmth and comfort, this modern wool gray coat offers', 'img/product_image/3c9a0a9e127f1c3e20ef9f12c4afaa28.jpg', 120, 'Women', 'small,medium,large,Xlarge', 'New arrival', 'clothes', 0, 0, 0),
(51, 'Style Fashion', 'Trendy balloon sleeves add statement-making detail to this cable knit sweater with a rounded neckline and wide-cut cropped bodice.', 'img/product_image/Back To School Outfit Ideas on We Heart It.png', 100, 'Women', 'small,medium,large,Xlarge', 'Sale', 'clothes', 50, 0, 0),
(52, 'Sweater Burgundy', 'Slide into our Elsa Lace Up Sweater in Burgundy and be ready for anything the new autumn breeze will blow your way!', 'img/product_image/7.jpg', 180, 'Women', '', 'Sale', 'clothes', 50, 0, 0),
(53, 'Women Cute Christmas', 'Women Cute Christmas Sweater| Cartoon And Chevron Pattern Sweater', 'img/product_image/Grunge discovered by A on We Heart It.jpg', 150, 'Women', 'small,medium,large,Xlarge', 'Christmas', 'clothes', 0, 0, 0),
(54, 'Copper Watch', 'Copper is making a comeback, and were all about it.rose gold will be nothing but a distant memory to you', 'img/product_image/download (2).jpg', 70, 'Women', '', 'New arrival', 'Accessories', 0, 0, 0),
(55, 'WRAP WATCH', 'A vegan Boho bracelet wrap watch, in gray, brown and black!	', 'img/product_image/a (6).jpg', 120, 'Women', '', 'New arrival', 'Accessories', 0, 0, 0),
(56, 'Womens Watch', 'Visit our Etsy shop for more unique models from our new arrival of wooden watches and bow ties.', 'img/product_image/This item is unavailable _ Etsy.jpg', 100, 'Women', '', 'Sale', 'Accessories', 50, 0, 0),
(57, 'Vintage Cap', 'Material: COTTONMaterial: WoolDepartment Name: AdultGender: WOMENStyle: CasualItem', 'img/product_image/a (21).jpg', 70, 'Women', 'medium,large,Xlarge', 'New Arrival', 'Accessories', 0, 0, 0),
(59, 'Best Men casual outfits ', 'A crisp, large-scale logo fronts this pure-cotton crewneck t-shirt, knit with the softness that off-duty days call for.', 'img/product_image/5.jpg', 150, 'Men', 'small,medium,large,Xlarge', 'New arrival', 'clothes', 0, 0, 0),
(60, 'classically stylish', 'For the classically stylish dad: an entire Fathers Day outfit that says your e the best Start with the best Grant-Fit Sepia', 'img/product_image/20 combos de inspiração para a hora de se vestir.jpg', 150, 'Men', 'small,medium,large,Xlarge', 'New arrival', 'clothes', 0, 0, 0),
(61, 'Italian Classic', 'There isnt anything quite like summer style in Italy. Whenever I see pics from the June Pitti Uomo', 'img/product_image/Monday - 08_20_18 - MyCreativeLook.jpg', 120, 'Men', 'small,medium,large,Xlarge', 'Sale', 'clothes', 60, 0, 0),
(62, 'Style Coordinators', ' Lately Ive been inspired by European styles and brands. It is now trickling into casual wear', 'img/product_image/5 Insanely Cool Outfit Formulas To Help You Look Sharp.png', 170, 'Men', 'small,medium,large,Xlarge', 'Sale', 'clothes', 85, 0, 0),
(63, 'Stylish Coordinators', 'business casual combo inspiration white beckett simonon sneakers  blue jeans brown leather banded ', 'img/product_image/f26403797608cc58952e2860d26f44c1.jpg', 200, 'Men', 'small,medium,large,Xlarge', 'Christmas', 'clothes', 0, 0, 0),
(67, 'Mens Sunglasses', 'This is our most popular style of sunglasses. True to its original design, this pair of sunglasses is truly an iconic legend', 'img/product_image/755eff27-9f8b-4dc4-82a5-9d1dbc7ae192.jpg_600x800x80.jpg', 140, 'Men', '', 'Sale', 'Accessories', 70, 0, 0),
(70, 'Girls Floral Embroidered', 'Fabric: Polyester;Tulle,Comfortable,Skin-friendly. Design highlights:Embroidered', 'img/product_image/BTS imagine_ BTS Brothers.jpg', 120, 'Kids', 'small,medium,large', 'New arrival', 'Girl', 0, 0, 0),
(71, 'Girls Pinafore Dress', 'This burgundy color sunday pinafore girls dress is made of Italian velveteen (100% cotton)', 'img/product_image/b (21).jpg', 90, 'Kids', 'small,medium', 'Sale', 'Girl', 45, 0, 0),
(72, 'Cotton Warm Jacket', 'Outerwear Type: Down & Parkas Pattern Type: Letter Fabric Type: Knitted Filling: Cotton ', 'img/product_image/WordPress_com.png', 120, 'Kids', 'small,medium', 'Sale', 'Girl', 60, 0, 0),
(74, 'Lightweight Lounge Robe', 'Superbly soft with a relaxed fit and embroidered monogram, our lightweight lounge robe is perfect for days at home lounging, couch ', 'img/product_image/Life & Style.jpg', 245, 'Women', 'medium,large,Xlarge', 'Christmas', '', 0, 0, 0),
(75, 'Baby Christmas outfit', 'Perfect for those sweet sweet memories! Shell look back at those beautiful pictures', 'img/product_image/b (9).jpg', 70, 'Kids', 'small', 'Christmas', 'Girl', 0, 0, 0),
(76, 'Cute Toddler Boys', 'Department Name: ChildrenItem Type: SetsGender: BoysSleeve Style: REGULARSleeve ', 'img/product_image/boy.png', 120, 'Kids', 'small,medium', 'New arrival', 'Boy', 0, 0, 0),
(77, 'Cute Hoodies Vests', 'Style: ActiveItem  Type: zipperPattern Type: CartoonCollar: HoodedSleeve Style: REGULAROuterwear', 'img/product_image/boy2.png', 50, 'Kids', 'small,medium', 'New arrival', 'Boy', 0, 0, 0),
(79, ' new burns baby', ' hot 2020 autumn winter wanrm rompers new burns baby boy clothes ', 'img/product_image/Daily Deals For Moms.jpg', 90, 'Kids', 'small', 'Sale', 'Boy', 45, 0, 0),
(80, 'Baby Toddler Animal', '95%cotton,5%spandexBottom Type: PantClosure Type: Elastic, PulloverEmbellishment: Pocket', 'img/product_image/Baby.jpg', 50, 'Kids', 'small,medium', 'Christmas', 'Boy', 0, 0, 0),
(87, 'DOUBLE-FACED FAUX LEATHER JACKET', 'Jacket with notched lapel collar. Welt pockets on the hips. Contrast faux shearling interior. Asymmetric front zip fastening.', 'img/product_image/@searsbassano.jpg', 300, 'Men', 'medium,large,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(89, 'WATER-REPELLENT COAT', 'Coat with a high collar and long sleeves with sleeve tabs on the cuffs. Chest zip pocket and hip welt pockets. Inside pocket. Zip-up front hidden by a snap-button placket.', 'img/product_image/Wednesday - 02_20_19 - MyCreativeLook.jpg', 280, 'Men', 'small,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(90, 'LAMBSWOOL ROUND NECK SWEATER', 'Sweater made of spun lambswool. Featuring a round neckline, long sleeves and ribbed trims.  CHOOSE A SIZE', 'img/product_image/ds.jpg', 95, 'Men', 'small,medium,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(91, 'LAMBSWOOL ROUND NECK SWEATER', 'Sweater made of spun lambswool. Featuring a round neckline, long sleeves and ribbed trims.', 'img/product_image/Style _ Outdoor Fashion Style & Menswear News Blog _ SEIKK Magazine.jpg', 95, 'Men', 'medium,large,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(92, 'Turtle neck wool sweater', 'Wool mix fabric. Structured fabric. Turtleneck. Long sleeve. Cable knit finish.', 'img/product_image/How To Style Up Your Look At Budgeted Prices_.jpg', 75, 'Men', 'small,medium,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(93, 'Elko White  Striped Turtleneck Wool Sweater', 'Wash Separate from Other Clothes, Dry by Hanging.', 'img/product_image/New Winter Sweater (3 Colors).jpg', 75, 'Men', 'medium,Xlarge', 'Christmas', 'clothes', 0, 0, 0),
(94, 'MenTechnics Computer KnittedHooded', 'Elko Gray Slim Fit Striped Turtleneck Wool Sweater Christmas', 'img/product_image/Cashmere.jpg', 75, 'Men', '', 'Christmas', 'clothes', 0, 0, 0),
(95, 'CHRISTMAS Bodysuit and Animal Pants', '3-piece Baby MY 1ST CHRISTMAS Bodysuit and Animal Pants with Hat Set', 'img/product_image/3-piece Baby MY 1ST CHRISTMAS Bodysuit and Animal Pants with Hat Set.jpg', 55, 'Kids', 'medium,large,Xlarge', 'Christmas', 'Girl', 0, 0, 0),
(96, 'It never gets easier yoga Meditation Shirt', 'Heavily Meditated Shirt, Inspirational Shirt High quality yoga shirt for men and women. Made from bamboo and organic cotton. Eco friendly and fairly traded.', 'img/product_image/It never gets easier yoga Meditation Shirt, Yoga Shirt, Yoga T-Shirt, Yoga Lover Shirt, Heavily Meditated Shirt, Inspirational Shirt.jpg', 45, 'Kids', 'small,large,Xlarge', 'Christmas', 'Boy', 0, 0, 0),
(97, 'Daily Deals For Moms', '3-piece Baby Boy / Girl MY FIRST CHRISTMAS Christmas Bodysuit and Reindeer Pants with Hat Set', 'img/product_image/Daily Deals For Moms.jpg', 38, 'Kids', 'medium,large,Xlarge', 'Christmas', 'Boy', 0, 0, 0),
(98, 'Daily Deals For Moms', '4-piece Baby MY FIRST CHRISTMAS Bodysuit, Deer Pants and Hat with Headband Set', 'img/product_image/Daily Deals For Moms (1).jpg', 45, 'Kids', 'small,medium,Xlarge', 'Christmas', 'Boy', 0, 0, 0),
(99, ' MY FIRST CHRISTMAS', 'Baby / Toddler MY FIRST CHRISTMAS Elk Bodysuit and Striped Pants Set', 'img/product_image/Daily Deals For Moms (2).jpg', 42, 'Kids', 'medium,large,Xlarge', 'Christmas', 'Boy', 0, 0, 0),
(100, ' THE CUSTOM MOVEMENT', 'Behind The Scenes By fvshionhub THE CUSTOM MOVEMENT', 'img/product_image/Behind The Scenes By fvshionhub _ THE CUSTOM MOVEMENT.jpg', 95, 'Men', 'small,large,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(101, 'Nick Graham', 'hirt: Nick Graham // Pants: Calvin Klein // Sweater: Cambridge Dry Goods (similar) // Shoes: Paul Evans NY', 'img/product_image/Monday - 04_09_18 - MyCreativeLook.jpg', 320, 'Men', 'medium,large,Xlarge', 'New Arrival', 'clothes', 0, 0, 0),
(102, 'Ultimate Fun Classic Print', 'Reasons Why Plaid Is The Ultimate Fun Classic Print', 'img/product_image/MyCreativeLook.jpg', 329, 'Men', 'small,medium,large', 'New Arrival', 'clothes', 0, 0, 0),
(103, 'Lightweight Lounge Robe', 'Superbly soft with a relaxed fit and embroidered monogram, our lightweight lounge robe is perfect for days at home lounging, couch snuggling', 'img/product_image/Lightweight Lounge Robe.jpg', 120, 'Women', 'small,medium,large,Xlarge', 'Christmas', 'clothes', 0, 0, 0),
(107, 'Bag', 'Magic Mug', 'img/product_image/WhatsApp Image 2020-12-08 at 10.31.12 AM.jpeg', 300, 'Kids', 'large,Xlarge', 'Christmas', 'Girl', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_id`, `size_name`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large'),
(4, 'Xlarge');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `sub_id` int(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_image` text NOT NULL,
  `sub_tag` varchar(100) NOT NULL,
  `category_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sub_id`, `sub_name`, `sub_image`, `sub_tag`, `category_id`) VALUES
(28, 'clothes', '', '', ''),
(29, 'Accessories', '', '', ''),
(30, 'Girl', '', '', ''),
(31, 'Boy', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'MSI GF63 Thin Core i7 9th Gen', 'MSI4353', 'product-images/msi-laptop.jpeg', 1500.00),
(2, 'WD 1.5 TB Wired External Hard Disk Drive  (Black)', 'WD091', 'product-images/external-hardidisk.jpeg', 50.00),
(3, 'VERTIGO Running Shoes For Men  (Black)', 'LOTTO215', 'product-images/lotto-shoes.jpeg', 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_image` text NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_addres` varchar(100) NOT NULL,
  `user_phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_image`, `user_country`, `user_addres`, `user_phone`) VALUES
(2, 'Lara Test', 'Lara@gmail.com', '123456', 'img/user_image/avatar.jpg', '', '', ''),
(7, 'Mohammad', 'Mohammad@gmail.com', '123456', 'img/user_image/sidebar-3.jpg', 'Jordan', 'Jordan _ Amman Mecca St.60', '+962 (77 _ 5500 _ 555)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `customermsg`
--
ALTER TABLE `customermsg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customermsg`
--
ALTER TABLE `customermsg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
