-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2016 at 10:53 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerec`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `user_email`, `ip`, `product_id`) VALUES
(1, 2, 'ashyamkhan@gmail.com', '127.0.0.1', 4),
(2, 1, 'ashyamkhan@gmail.com', '127.0.0.1', 11),
(3, 1, 'ashyamkhan@gmail.com', '127.0.0.1', 5),
(4, 1, 'ashyamkhan@gmail.com', '127.0.0.1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Tshirts'),
(2, 'Shirts'),
(3, 'Jeans'),
(4, 'Jackets'),
(5, 'Trousers');

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `request_sent` varchar(244) DEFAULT NULL,
  `receive_request` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`id`, `request_sent`, `receive_request`, `status`) VALUES
(12, 'himmat@gmail.com', 4, 1),
(14, 'defuzed@gmail.com', 4, 1),
(15, 'ashyamkhan@gmail.com', 7, 1),
(16, 'root@gmail.com', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `multiple_image` text,
  `stock` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `posted_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `price`, `image`, `multiple_image`, `stock`, `description`, `views`, `posted_date`) VALUES
(3, 'B Tshirts', 1, 550, 'c.jpg', 'd.jpg,g.jpg', 100, 'Good product to buy', 43, '0000-00-00'),
(4, 'C Tshirts', 1, 600, 'c.jpg', 'c.jpg,h.jpg', 100, 'Good product to buy', 60, '0000-00-00'),
(5, 'E sTshirts', 1, 1000, 'h.jpg', 'h.jpg,b.jpg', 100, 'Good product to buy', 107, '0000-00-00'),
(6, ' B Jeans', 3, 1200, 'e.jpg', 'e.jpg,f.jpg', 2101, 'Good product to buy', 9, '0000-00-00'),
(7, 'F shirt', 1, 120, 'd.jpg', 'd.jpg,h.jpg', 120, 'Good product to buy', 30, '0000-00-00'),
(8, 'Tshirts Only', 1, 120, 'c.jpg', 'c.jpg,d.jpg', 120, 'Good product to buy', 15, '0000-00-00'),
(9, 'Tshirts Medium ', 1, 120, 'c.jpg', 'd.jpg,h.jpg', 120, 'Good product to buy', 1, '0000-00-00'),
(10, 'Jackets', 4, 15000, 'j.jpg', 'j.jpg,j1.jpg', 120, 'Jacket is best', 6, '0000-00-00'),
(11, 'Jacket B', 4, 10000, 'j2.jpg', 'j2.jpg,j1.jpg,j.jpg', 1212, 'jacket is in black color', 8, '0000-00-00'),
(31, 'njknkln', 1, 8098, 'b.jpg', 'a.jpg', 9890, 'jkonmlkm', 0, '0000-00-00'),
(32, 'red chief', 1, 1200, 'new.jpg', 'delete.png', 123, 'klnmlkn', 0, '0000-00-00'),
(33, 'red', 1, 131, 'dd.jpg', 'dd.jpg', 123, 'sss', 0, '0000-00-00'),
(34, 'ad', 1, 12, 'dd.jpg', 'a.jpg', 1, 'nlknlk', 0, '0000-00-00'),
(35, 'as', 1, 12, 'new.jpg', 'x.png', 12, 'cdssfd', 0, '0000-00-00'),
(36, 'asaa', 1, 122, 'new.jpg', 'vector_brush_k_logo.png', 111, 'fdfs', 0, '0000-00-00'),
(37, 'ff', 1, 23, 'dd.jpg', 'vector_brush_k_logo.png', 12, 'rfg', 0, '0000-00-00'),
(38, 'sss', 1, 221, 'dd.jpg', 'new.jpg', 32312, 'cxdas', 0, '0000-00-00'),
(39, 'hkj', 1, 64564, 'dd.jpg', 'a.jpg', 132, 'bjbkj', 0, '0000-00-00'),
(40, 'nknlk', 1, 2132, 'dd.jpg', 'a.jpg', 54654, 'bvjhbnj', 4, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `address` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `placed` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `quantity`, `price`, `subtotal`, `order_date`, `address`, `pincode`, `user_email`, `placed`, `status`) VALUES
(23, 3, 1, 550, 550, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(24, 2, 2, 1000, 2000, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(25, 3, 1, 550, 550, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(26, 2, 2, 1000, 2000, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(27, 4, 1, 600, 600, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(28, 4, 1, 600, 600, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(29, 4, 1, 600, 600, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(30, 4, 1, 600, 600, '2016-10-07 05:50:40', 'dfajb', 1321321, 'root@gmail.com', 0, 1),
(31, 4, 1, 600, 600, '2016-10-07 05:50:40', 'amroha', 244221, 'root@gmail.com', 0, 1),
(32, 4, 1, 600, 600, '2016-10-07 05:50:40', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 1),
(33, 11, 1, 10000, 10000, '2016-10-07 05:50:40', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 1),
(34, 4, 1, 600, 600, '2016-10-07 06:08:33', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(35, 11, 1, 10000, 10000, '2016-10-07 06:09:35', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(36, 5, 1, 1000, 1000, '2016-10-07 06:09:38', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(37, 4, 2, 600, 1200, '2016-10-07 06:18:47', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(38, 11, 1, 10000, 10000, '2016-10-07 06:18:49', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(39, 5, 1, 1000, 1000, '2016-10-07 06:18:46', 'asmroja', 244221, 'ashyamkhan@gmail.com', 0, 1),
(40, 4, 2, 600, 1200, '2016-10-08 07:58:04', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 0),
(41, 11, 1, 10000, 10000, '2016-10-08 07:58:04', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 0),
(42, 5, 1, 1000, 1000, '2016-10-08 07:58:04', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 0),
(43, 3, 1, 550, 550, '2016-10-08 07:58:04', 'amroha', 244221, 'ashyamkhan@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `rating`, `message`, `product_id`) VALUES
(27, 5, 'this is the good product to buy', 7),
(28, 5, 'this is the good product to buy', 7),
(29, 3, 'good product', 7),
(30, 1, 'hibnkj', 7),
(31, 3, ',;,;dggdf', 40),
(32, 3, ',;,;dggdf', 40),
(33, 2, 'pollling', 7),
(34, 1, 'himmat', 7),
(35, 3, 'fdfdgf', 7),
(36, 3, 'fdfdgf', 7),
(37, 3, 'fdfdgf', 7),
(38, 4, 'good to buy', 8),
(39, 5, 'jkbjkbkj', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_pincode` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_email`, `user_address`, `user_pincode`, `user_mobile`) VALUES
(4, 'ashyam', 'ashyam', 'ashyamkhan@gmail.com', 'amroha', '244221', '9898989898'),
(5, 'root', 'root', 'root@gmail.com', 'delhi', '255411', '8989898989'),
(6, 'himmat', 'himmat', 'himmat@gmail.com', 'delhi', '12563', '5566446655'),
(7, 'defuzed', 'defuzed', 'defuzed@gmail.com', 'delhi', '123456', '1234567891');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
