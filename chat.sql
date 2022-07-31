-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2019 at 08:01 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(255) NOT NULL,
  `uname` varchar(255) COLLATE utf8_bin NOT NULL,
  `touser` varchar(255) COLLATE utf8_bin NOT NULL,
  `msg` varchar(255) COLLATE utf8_bin NOT NULL,
  `pubat` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `uname`, `touser`, `msg`, `pubat`) VALUES
(34, 'el2t', 'pub', 'هاى', ''),
(35, 'sara', 'pub', 'هاي', ''),
(36, 'el2t', 'pub', 'كيفك ساره', ''),
(37, 'sara', 'pub', 'الحمد لله', ''),
(38, 'el2t', 'pub', 'تعالى خاص', ''),
(39, 'sara', 'el2t', 'فينك', ''),
(40, 'el2t', 'sara', 'هنا', ''),
(41, 'el2t', 'sara', 'كل شىء تمام', ''),
(42, 'sara', 'el2t', 'تماام', ''),
(43, 'el2t', 'sara', 'هذه تجربه عمليه للسيكربت', ''),
(44, 'sara', 'el2t', 'نعم افهمك', ''),
(45, 'el2t', 'sara', 'تابعو الشرح فى الفيديو التالى', ''),
(46, 'el2t', 'sara', 'قناة القط لينكس', ''),
(47, 'sara', 'el2t', 'وااو', ''),
(48, 'sara', 'el2t', 'لللللل', ''),
(49, 'sara', 'el2t', 'ىىىىى', ''),
(50, 'sara', 'el2t', 'كككك', ''),
(51, 'sara', 'el2t', 'ؤؤؤؤ', ''),
(52, 'sara', 'ahmed', 'قفففف', ''),
(53, 'sara', 'ahmed', 'غغغغغ', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `pic` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `pic`) VALUES
(1, 'el2t', 'el2t', 'el2t@does.ga', 'pic/cat.jpg'),
(2, 'mmmm', 'mmmm', 'mmm@mmm.com', 'https://3.bp.blogspot.com/-SKj7FPxcT2A/WE28fBaA76I/AAAAAAAAAPE/yv0kvnviQJgNVOiwk-Q_7gv3m35lm3NZwCLcB/s640/facebook-boy-dp-1.jpg'),
(3, 'mohamed', 'mohamed', 'memsbaba@gmail.com', 'https://i.pinimg.com/736x/a0/23/2d/a0232d23bda4e8f0387912766091a1bf.jpg?b=t'),
(4, 'ahmed', 'ahmed', 'ahmed@ahmed.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa17nsO4yIk_RgtJDUGLsRv8TI_RJmhTQKtzh9XuKPmSz5ASXn'),
(5, 'sara', 'sara', 's@d.com', 'https://i0.wp.com/tricksmaze.com/wp-content/uploads/2017/04/Stylish-Girls-Profile-Pictures-8.jpg?resize=466%2C604&ssl=1');

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE `user_online` (
  `session` char(100) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`session`, `time`, `user`) VALUES
('urtanvn6asq6344o7f1403bqu3', 1550871812, 'ahmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
