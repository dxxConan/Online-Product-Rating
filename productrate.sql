-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 29, 2016 at 02:17 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `productrate`
--
CREATE DATABASE IF NOT EXISTS `productrate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `productrate`;
-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `caID` int(6) NOT NULL,
  `caName` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`caID`, `caName`) VALUES
(5, 'clothes'),
(2, 'computers'),
(1, 'electronics'),
(4, 'software'),
(3, 'videogames');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comID` int(6) NOT NULL,
  `uID` int(6) NOT NULL,
  `productID` int(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` date DEFAULT NULL,
  `numlikes` int(11) NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2359 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comID`, `uID`, `productID`, `content`, `time`, `numlikes`, `ratings`) VALUES
(2348, 18, 21, 'Very good!', '2016-03-28', 2, 5),
(2349, 18, 23, 'Not bad!', '2016-03-28', 3, 4),
(2350, 18, 25, 'Poor!', '2016-03-28', 0, 2),
(2351, 18, 32, 'Good!', '2016-03-28', 1, 4),
(2352, 18, 30, 'Poor!', '2016-03-28', 0, 1),
(2353, 18, 40, 'Very good!', '2016-03-28', 2, 5),
(2354, 18, 42, 'Not bad!', '2016-03-28', 0, 3),
(2355, 18, 13, 'Very good!', '2016-03-28', 1, 5),
(2356, 18, 20, 'Poor!', '2016-03-28', 0, 2),
(2357, 18, 53, 'Very good!', '2016-03-28', 2, 5),
(2358, 18, 52, 'Poor!', '2016-03-28', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyID` int(6) NOT NULL,
  `aName` varchar(20) NOT NULL,
  `website` varchar(30) NOT NULL,
  `aNation` varchar(10) NOT NULL,
  `founded` date NOT NULL,
  `ainfo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyID`, `aName`, `website`, `aNation`, `founded`, `ainfo`) VALUES
(1, 'Dell', 'www.dell.com', 'USA', '1984-02-01', 'Dell Inc. is an American privately owned multinational computer technology company based in Round Ro'),
(2, 'Apple', 'www.apple.com', 'USA', '1976-04-01', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, t'),
(3, 'Sony', 'http://www.sony.net/', 'Japen', '1946-05-07', 'Sony Corporation. is a Japanese multinational conglomerate corporation headquartered in K?nan Minato'),
(4, 'Nike', 'http://www.nike.com/', 'USA', '1964-01-25', 'Nike, Inc. is an American multinational corporation that is engaged in the design, development, manu'),
(5, 'Adidas', 'http://www.adidas-group.com/', 'Germany', '1949-08-18', 'Adidas AG is a German multinational corporation that designs and manufactures sports shoes, clothing'),
(6, 'Microsoft', 'https://www.microsoft.com/', 'USA', '1975-04-04', 'Microsoft Corporation is an American multinational technology company headquartered in Redmond, Wash');

-- --------------------------------------------------------

--
-- Table structure for table `mcate`
--

CREATE TABLE `mcate` (
  `caID` int(10) NOT NULL,
  `productID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcate`
--

INSERT INTO `mcate` (`caID`, `productID`) VALUES
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(5, 54);

-- --------------------------------------------------------

--
-- Table structure for table `mcompany`
--

CREATE TABLE `mcompany` (
  `companyID` int(6) NOT NULL,
  `productID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcompany`
--

INSERT INTO `mcompany` (`companyID`, `productID`) VALUES
(3, 11),
(3, 12),
(3, 13),
(2, 14),
(2, 20),
(2, 21),
(2, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(3, 30),
(3, 31),
(6, 32),
(6, 33),
(2, 40),
(3, 41),
(6, 42),
(6, 43),
(4, 50),
(4, 51),
(5, 52),
(4, 53),
(4, 54);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(6) NOT NULL,
  `productName` varchar(60) NOT NULL,
  `price` double NOT NULL,
  `mrates` float NOT NULL,
  `origin` varchar(100) NOT NULL,
  `mnation` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `price`, `mrates`, `origin`, `mnation`) VALUES
(11, 'SONY Portable wireless server WG-C20 V', 86.14, 0, 'Japan', 'Japan'),
(12, 'Sony Portable HD Mobile Projector', 344.13, 0, 'Japan', 'Japan'),
(13, 'Sony Xperia Z2 10.1 inch Tablet', 494.9, 10, 'Japan', 'Japan'),
(14, 'Apple iPad Air 2 MH0W2LL/A', 405.99, 0, 'USA', 'USA'),
(20, 'Apple Ipod Nano', 149, 4, 'USA', 'USA'),
(21, 'MacBook Pro', 1399.99, 10, 'USA', 'USA'),
(22, 'MacBook', 1199.99, 0, 'USA', 'USA'),
(23, 'Dell Inspiron', 1199, 8, 'USA', 'USA'),
(24, 'Dell XPS13 Ultrabook Computer ', 849, 0, 'USA', 'USA'),
(25, 'Dell Inspiron 3000', 356, 4, 'USA', 'USA'),
(26, 'Dell 5559 Laptop', 749, 0, 'USA', 'USA'),
(30, 'Astro Boy: The Video Game - Sony PSP', 20, 2, 'Japan', 'Japan'),
(31, 'Cabela Dangerous Hunts Ultimate Challenge - Sony PSP', 44.99, 0, 'Japan', 'Japan'),
(32, 'Minecraft', 17.99, 8, 'USA', 'USA'),
(33, 'Minecraft: Story Mode - Season Disc - Xbox 360', 26.88, 0, 'USA', 'USA'),
(40, 'Apple Logic Studio [OLD VERSION]', 200, 10, 'USA', 'USA'),
(41, 'Sony Movie Studio 11', 15, 0, 'USA', 'USA'),
(42, 'Microsoft Office Home and Student 2016 | PC Download', 139, 6, 'USA', 'USA'),
(43, 'Windows 7 Professional SP1 64bit', 42.74, 0, 'USA', 'USA'),
(50, 'Nike 519501 Dri-Fit Fly Short 2.0', 34, 0, 'USA', 'USA'),
(51, 'Nike Men Dri-Fit KOBE Respond Elite Basketball Hoodie-Noble ', 83.21, 0, 'USA', 'USA'),
(52, 'adidas Performance Men Basketball All World Sleeveless Tee', 20, 4, 'China', 'China'),
(53, 'Nike Men Long Sleeve Legend Dri Fit Tee', 30, 10, 'USA', 'USA'),
(54, 'Men Nike KO Hoodie 3.0', 35, 0, 'Colin Trevorrow', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uID` int(6) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `psword` varchar(9) NOT NULL,
  `email` varchar(60) NOT NULL,
  `datebirth` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uID`, `uname`, `psword`, `email`, `datebirth`) VALUES
(1, 'queenie', '12345abcd', '12345@qq.com', '2015-06-01'),
(4, 'rick', '12345abcd', 'hmh1992@hotmail.com', '2012-02-08'),
(16, 'all', '13294u123', '12685@qq.com', '2012-02-08'),
(17, 'allen', '12345qwer', 'freemeteor@gmail.com', '2012-02-08'),
(18, 'Dexiang', 'asd123456', 'xdx@utdallas.edu', '1991-09-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`caID`),
  ADD UNIQUE KEY `caName_2` (`caName`),
  ADD UNIQUE KEY `caName_5` (`caName`),
  ADD KEY `caID` (`caID`),
  ADD KEY `caID_2` (`caID`),
  ADD KEY `caID_3` (`caID`),
  ADD KEY `caID_4` (`caID`),
  ADD KEY `caName` (`caName`),
  ADD KEY `caName_3` (`caName`),
  ADD KEY `caName_4` (`caName`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comID`,`uID`,`productID`),
  ADD KEY `fk1` (`uID`),
  ADD KEY `fk2` (`productID`),
  ADD KEY `ratings` (`ratings`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyID`),
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `mcate`
--
ALTER TABLE `mcate`
  ADD PRIMARY KEY (`caID`,`productID`),
  ADD KEY `caID` (`caID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `mcompany`
--
ALTER TABLE `mcompany`
  ADD PRIMARY KEY (`companyID`,`productID`),
  ADD KEY `fk4` (`productID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productName` (`productName`),
  ADD KEY `productID` (`productID`),
  ADD KEY `productID_2` (`productID`),
  ADD KEY `productID_3` (`productID`),
  ADD KEY `mrates` (`mrates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `name` (`uname`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uid` (`uID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `caID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2359;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcate`
--
ALTER TABLE `mcate`
  ADD CONSTRAINT `k11` FOREIGN KEY (`caID`) REFERENCES `category` (`caID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `k12` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcompany`
--
ALTER TABLE `mcompany`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `Authors`
--

CREATE TABLE `Authors` (
  `Author_id` varchar(10) DEFAULT NULL,
  `Author_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authors`
--

INSERT INTO `Authors` (`Author_id`, `Author_Name`) VALUES
('A', 'Giada De Laurentiis'),
('B', 'J K. Rowling'),
('C1', 'James McGovern'),
('C2', 'Per Bothner'),
('C3', 'Kurt Cagle'),
('C4', 'James Linn'),
('C5', 'Vaidyanathan Nagarajan'),
('D', 'Erik T. Ray');

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--

CREATE TABLE `Book` (
  `Book_id` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book`
--

INSERT INTO `Book` (`Book_id`, `title`, `year`, `price`, `category`) VALUES
(1, 'Everyday Italian', 2005, 30, 'cooking'),
(2, 'Harry Potter', 2005, 29.99, 'children'),
(3, 'XQuery Kick Start', 2003, 49.99, 'web'),
(4, 'Learning XML', 2003, 39.95, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `Book-Authors`
--

CREATE TABLE `Book-Authors` (
  `Book_id` int(11) DEFAULT NULL,
  `Author_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book-Authors`
--

INSERT INTO `Book-Authors` (`Book_id`, `Author_id`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C1'),
(3, 'C2'),
(3, 'C3'),
(3, 'C4'),
(3, 'C5'),
(4, 'D');
