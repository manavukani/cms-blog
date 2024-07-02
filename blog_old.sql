-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 10:35 AM
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
-- Database: `blog_old`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` text NOT NULL,
  `admin` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` tinyint(2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `cat_id`, `title`, `content`, `tag`, `admin`, `status`, `rate`, `image`, `date`) VALUES
(41, 1, 'The Future of Web3 Development in 2024', 'As we move further into 2024, Web3 development continues to evolve at a rapid pace. From decentralized applications to blockchain integration, developers are embracing new technologies to create more secure, transparent, and user-centric web experiences. This article explores the latest trends and their impact on the industry.', 'Web3, Blockchain, Trends2024', 'admin', 1, 1, 'future_web3dev.png', '2024-07-01 08:09:52'),
(42, 25, 'Python in Data Science: What\'s New and Exciting in 2024', 'Python remains one of the most popular programming languages for data science in 2024, with continuous improvements and new libraries. This article dives into the latest updates in Python 3.12 and discusses how they\'re shaping the future of data analysis, machine learning, and AI.', 'Python, DataScience, AI', 'admin', 1, 1, 'python_datascience_2024.png', '2024-07-01 08:20:08'),
(43, 22, 'The Rise of Green Tech: Sustainable Innovations in 2024', 'As environmental concerns take center stage, the tech industry is responding with innovative green solutions. From energy-efficient data centers to biodegradable electronics, this article explores how technology is becoming more sustainable in 2024.', 'GreenTech, Sustainability, Innovation', 'eco_expert', 1, 0, 'green_tech.jpg', '2024-07-01 08:27:28'),
(44, 23, 'Quantum Computing: Revolutionizing Cybersecurity in 2024', 'With quantum computers becoming more powerful, cybersecurity faces new challenges and opportunities. This article discusses how quantum-resistant algorithms are being implemented and what it means for the future of digital privacy and security.', 'QuantumComputing, Cybersecurity, Innovation', 'admin', 1, 1, '480340.webp', '2024-07-01 08:28:52'),
(45, 3, 'The Impact of AI/ML on Content Creation in 2024', 'Artificial Intelligence and Machine Learning are revolutionizing how we create and consume content. From AI-generated articles to ML-powered personalized video content, this piece explores the ethical implications and practical applications of AI/ML in content creation as of 2024.', 'AI, ML, ContentCreation, DigitalMedia', 'ai_writer', 1, 1, 'ai_ml_content.jpg', '2024-07-01 19:38:12'),
(48, 5, 'Cloud Computing in 2024: New Features and Performance Improvements', 'Cloud computing continues to evolve, with 2024 bringing exciting new features and significant performance enhancements. This article delves into the latest updates in cloud technologies and how they\'re impacting businesses and development practices.', 'CloudComputing, Technology, Innovation', 'cloud_expert', 1, 1, 'cloud_computing_2024.jpg', '2024-07-01 23:12:41'),
(49, 21, 'Blockchain Beyond Cryptocurrency: Business Applications in 2024', 'While often associated with cryptocurrency, blockchain technology is finding diverse applications in business. This article explores how companies are leveraging blockchain for supply chain management, smart contracts, and more in 2024.', 'Blockchain, Business, Innovation', 'blockchain_analyst', 1, 1, 'blockchain_business.jpeg', '2024-07-02 08:38:22'),
(51, 20, 'The Evolution of IoT: Top 10 Innovations of 2024', 'The Internet of Things continues to push the boundaries of technology. From smart cities to advanced wearables, this article ranks the top 10 IoT innovations that are shaping our interconnected world in 2024.', 'IoT, Technology, Innovation', 'tech_reviewer', 1, 0, 'iot_innovations_2024.jpg', '2024-07-02 02:35:06'),
(52, 24, 'AR/VR in the Workplace: Trends and Challenges in 2024', 'Augmented and Virtual Reality have transformed how we work, and their evolution continues in 2024. This article examines the latest trends, technological advancements, and challenges affecting AR/VR adoption in various industries.', 'AR, VR, FutureOfWork, Technology', 'admin', 1, 0, '106784.jpg', '2024-07-02 09:36:29'),
(53, 26, 'What is post-quantum cryptography and why is it important?', 'Whether you work in the tech field or not, it’s likely that you’ve increasingly heard of quantum computing.&nbsp;&nbsp;As with any emerging technology, along with all the possibilities there are also potential risks. We’ll be unpacking these latest developments, what it means for the digital identity market, and what Thales is doing in response.&nbsp;&nbsp;&nbsp;In this blog we’ll be giving an introduction to quantum computing, and what this means for security and cryptography.&nbsp;&nbsp;What is quantum computing?&nbsp;&nbsp;Quantum computing is a type of computing that uses quantum mechanics to perform calculations much quicker than traditional computers.&nbsp;&nbsp;By using quantum algorithms, these computers can perform calculations that are faster than classical computers for certain types of problems, such as those involving prime factorization or optimization.&nbsp;Think of it like a maze. A classical computer solves the maze by exploring each path one at a time until it finds the right one. A quantum computer can explore all possible paths at once, which means it can solve the maze much faster.&nbsp;&nbsp;As a relatively new and rapidly developing field of technology, there are still challenges to overcome before it has practical applications. However, quantum computing possesses the potential to revolutionize the way our digital infrastructures are secured.&nbsp;What security risks does quantum computing carry?&nbsp;&nbsp;As with any new technology, as well as rewards there are also risks. Because quantum computers can solve certain problems that classical computers can’t, it could potentially break many of the cryptographic systems we use today.&nbsp;&nbsp;&nbsp;Quantum computing poses a potential risk to&nbsp;digital identities&nbsp;due to its ability to break traditional encryption methods that are commonly used to protect sensitive data, including personal and financial information.&nbsp;The majority of encryption methods rely on the difficulty of factoring large numbers into their prime factors. However, quantum computers can perform certain calculations much faster than classical computers, including factoring large numbers using&nbsp;Shor’s algorithm. This means that quantum computers could potentially break widely-used encryption algorithms like RSA and Elliptic Curve Cryptography (ECC), rendering digital identities vulnerable to theft, fraud and exploitation.&nbsp;&nbsp;Additionally, quantum computers could also be used to ease the finding of collisions in  the hash functions that are used to create and authenticate&nbsp;digital signatures, thus allowing to impersonate legitimate digital identities&nbsp;&nbsp;The rapid development of quantum computing represents a challenge to the security of digital identities, and new methods of encryption and authentication may need to be developed to keep pace.&nbsp;&nbsp;What is post quantum cryptography, and how can it help?&nbsp;&nbsp;Post-quantum cryptography (also known as quantum-resistant cryptography) is a type of cryptography that aims to develop new cryptographic algorithms that are resistant to attacks by quantum computers.&nbsp;&nbsp;Post-quantum cryptography aims to develop new cryptographic algorithms that are secure against attacks from both classical and quantum computers. These algorithms typically rely on different mathematical problems that are believed to be hard to solve, even for quantum computers. For example, some post-quantum cryptographic algorithms are based on lattice-based cryptography, code-based cryptography, or multivariate cryptography.&nbsp;As quantum computing technology continues to evolve, post-quantum cryptography is becoming increasingly important in securing sensitive data and communications. Governments, financial institutions, and other organizations are actively exploring and investing in post-quantum cryptographic solutions to ensure that their sensitive data and communications remain secure in the face of quantum computing attacks.', 'cryptography, encryption, quantum', 'admin', 1, 0, '218562.jpg', '2024-07-02 07:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `create_time`, `admin_name`) VALUES
(23, 'Web Development', 1, '2024-07-02 07:55:52', 'admin'),
(24, 'AI/ML', 1, '2024-07-02 07:55:57', 'admin'),
(25, 'Blockchain', 1, '2024-07-02 07:56:02', 'admin'),
(26, 'Quantum', 1, '2024-07-02 07:56:08', 'admin'),
(27, 'Cybersecurity', 0, '2024-07-02 07:56:18', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(5) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `subject`, `phone`, `message`, `status`, `date`) VALUES
(3, 'ee', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'm vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:48:27'),
(4, 'ee', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'm vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:49:15'),
(7, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'al blog for handcrafted, cameramade photography content, fashion styles from ind', 0, '2020-08-13 13:57:26'),
(8, 'Anisur Rahman Shahin', 's@gmail.com', 'How we help?', '+8801754100439', 'te urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:59:53'),
(9, 'Anisur Rahman Shahin', 's@gmail.com', 'How we help?', '+8801754100439', 'te urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 14:00:00'),
(11, 'coder shahin', 'arshahin625@gmail.com', 'Pre-Sale Question', '01994439594', 'Etiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-13 14:03:12'),
(12, 'Asikur Rahman Shawon', 'k@gmail.com', 'Who we are', '01754100439', 'How we help?\r\n\r\nEtiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 14:36:59'),
(14, 'shahin', 'k@gmail.com', 'Tech Blog is a technology blog', '+8801754100439', 'Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.<h1>hfhfhf</h1>\"rrrrr][\"', 0, '2020-08-14 03:11:18'),
(15, 'AR Shahin', 'mdshahinmije@yahoo.com', 'How we help?', '01994439594', 'ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.   \r\n                        \r\n                              \r\n                        ', 2, '2020-08-14 03:50:58'),
(16, 'AR Shahin', 'mdshahinmije@yahoo.com', 'How we help?', '01994439594', 'ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.   \r\n                        \r\n                              \r\n                        ', 2, '2020-08-14 03:52:18'),
(17, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 2, '2020-08-14 03:58:33'),
(18, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-14 03:59:11'),
(19, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-14 03:59:28'),
(20, 'Anisur Rahman Shahin', 'mdshahinmije96@gmail.com', 'How we help?', '+8801754100439', 'lp?\r\n\r\nEtiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 2, '2020-08-14 05:36:10'),
(21, 'Asik Newaz Sabbir', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'Pre-Sale Question\r\n\r\nFusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.', 2, '2020-08-15 11:34:34'),
(22, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'demo', '+8801754100439', 'this is demo mail', 2, '2020-08-15 14:45:38'),
(23, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'gg', 2, '2020-08-15 14:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(2) NOT NULL,
  `email_id` int(2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `reply` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `email_id`, `user`, `reply`, `date`) VALUES
(1, 17, 'admin', 'ffff', '2020-08-14 05:22:05'),
(2, 17, 'admin', 'ccc', '2020-08-14 05:25:39'),
(3, 17, 'admin', 'dddaaa', '2020-08-14 05:26:34'),
(4, 16, 'admin', 'ok done', '2020-08-14 05:28:35'),
(5, 15, 'admin', 'g', '2020-08-14 05:32:46'),
(6, 20, 'admin', 'ok done', '2020-08-14 05:36:26'),
(7, 20, 'admin', 'ok done', '2020-08-14 14:13:51'),
(8, 21, 'asik', 'ok ', '2020-08-15 14:26:53'),
(9, 25, 'admin', 'this id demo reply', '2020-08-15 15:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(2) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `postdisplay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `logo`, `title`, `footer`, `postdisplay`) VALUES
(1, 'logo.png', 'Blog website', '2024 © Developed by : ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `footerlink` varchar(255) NOT NULL,
  `footertxt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `instagram`, `linkedin`, `github`, `footerlink`, `footertxt`) VALUES
(1, 'https://www.linkedin.com/in/manavukani/', 'https://twitter.com/manavukani', 'https://instagram.com/manavukani/', 'https://www.linkedin.com/in/manavukani/', 'https://www.github.com/manavukani/', 'https://www.linkedin.com/in/manavukani/', 'Manav Ukani');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `role` tinyint(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `image`, `bio`, `role`, `date`) VALUES
(6, 'Manav Ukani', '', 'admin', 'admin@admin.com', '123456', '716065.jpg', 'HELLO WORLD!!', 1, '2020-08-14 14:36:53'),
(10, '', '', 'manav', 'personal@manav.com', '123', '', '', 2, '2024-07-02 07:54:30'),
(11, '', '', 'elon', 'elon@tesla.com', 'elon123', '', '', 2, '2024-07-02 07:54:55'),
(12, '', '', 'satoshi', 'satoshi@btc.com', '123', '', '', 2, '2024-07-02 07:55:08'),
(13, '', '', 'newuser', 'new@dummy.com', '123', '', '', 2, '2024-07-02 08:32:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
