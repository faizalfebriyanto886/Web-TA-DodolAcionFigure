-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2021 at 05:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_TA_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 2, '361000', 'alga', 'luky', 'jalan jalan', 'psh', 'faizalfebriyanto886@gmail.com', '0812818236383', 'delivered', '2021-01-27 15:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'test', 'boneka', '120000', 'ini deskripsi', 'front-display-1.jpg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpg'),
(2, 'Venom', 'single', '250000', 'simbiot dalam film venom yang utamam', 'product5.jpg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpg'),
(3, 'levi attack on titan', 'single', '260000', 'levi adalah karakter yang baik di attack on titan', 'product9.jpeg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpeg'),
(4, 'inuyasha', 'single', '125000', 'wanita siluman pada anime inuyasa', 'product7.jpeg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpeg'),
(5, 'Iron man', 'single', '320000', 'armor Mark 233 di film iron man', 'produk4.jpg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpg'),
(6, 'one piece ', 'single', '238000', 'tokoh jahat dalam serial kartun one piece', 'product6.jpg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpg'),
(7, 'demon slayer', 'single', '1240000', 'salah satu tokoh di anime demon slayer', 'produk2.jpg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpg'),
(8, 'siluman Rubah', 'single', '430000', 'tidak diketahui karakter ini', 'product8.jpeg', '/opt/lampp/htdocs/e-commerce/uploads/', '.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'test', '120000', '3', 2, '2021-01-23 10:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin'),
(2, 'faizal', 'febri', 'lala', 'lala@gmail.com', 'lala', ''),
(3, 'puji', 'febrian', 'puji_febrian', 'puji@gmail.com', 'puji', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
