-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2026 at 05:20 AM
-- Server version: 11.4.10-MariaDB-cll-lve-log
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chaiymxl_cycg`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blogs`
--

CREATE TABLE `Blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Blogs`
--

INSERT INTO `Blogs` (`id`, `title`, `content`, `image`, `categoryId`, `position`, `createdAt`, `updatedAt`) VALUES
(10, 'Why every board needs a strategic partner: The power of board level advisories', '<h1 class=\"ql-align-center\"><strong><a href=\"Hello My name\" rel=\"noopener noreferrer\" target=\"_blank\">Hello My name</a></strong></h1><p><br></p><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><a href=\"https://google.com\" rel=\"noopener noreferrer\" target=\"_blank\">Introduction</a></li></ol><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">In today\'s rapidly evolving business ecosystem, governance alone is no longer sufficient. Boards are under immense pressure to navigate uncertainty, address disruptive market forces, and deliver long-term stakeholder value. To meet these demands, boards require more than oversight—they need strategic partnership.</span></p><h2><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgb(255, 255, 255);\">The Shift from Governance to Vision</span></h2><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">Traditionally, the role of the board has been focused on fiduciary responsibilities, compliance, and governance frameworks. While these remain foundational, the challenges of the modern marketplace demand a broader, more visionary approach. Boards must now serve as strategic stewards—proactively shaping the future, not just preserving the present.</span></p><p><em style=\"background-color: rgba(20, 20, 20, 0.95); color: rgb(235, 235, 235);\">Enter: Board-Level Advisories</em></p><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">Strategic board advisories are not consultants in the traditional sense—they are embedded partners who provide high-level insight, foresight, and directional clarity. These advisors bring a mix of deep industry expertise, macroeconomic perspective, and real-world boardroom experience to inform critical decisions.</span></p><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">At CYCG, we recognise this shift and empower leadership with the tools, insights, and strategies needed to confidently chart their course forward.</span></p><h2><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgb(255, 255, 255);\">How CYCG Creates Impact at the Board Level</span></h2><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">CYCG doesn\'t just advise—we partner. Our board-level engagements are designed to:</span></p><p><br></p><h2><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgb(255, 255, 255);\">The Future Belongs to Boards That Think Forward</span></h2><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">In an environment where ambiguity is the only constant, the boards that thrive are those who embrace change, invite outside perspective, and build strategic partnerships that unlock foresight and fuel innovation.</span></p><h2><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgb(255, 255, 255);\">Conclusion</span></h2><p><span style=\"background-color: rgba(20, 20, 20, 0.95); color: rgba(235, 235, 235, 0.6);\">It\'s no longer enough for boards to govern—they must lead. With CYCG as a strategic partner at the table, boards can transcend conventional roles, mitigate risk with intelligence, and drive transformative impact in a complex world.</span></p>', '1771945557332.png', 6, 2, '2026-02-19 09:13:00', '2026-02-25 09:40:07'),
(11, 'ABCD', '<p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Boards today need more than governance—they need vision. CYCG empowers directors with strategic guidance to lead confidently, manage risk, and drive impact in a complex world.</span></p><p><br></p><h1>Introduction</h1><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">In today\'s rapidly evolving business ecosystem, governance alone is no longer sufficient. Boards are under immense pressure to navigate uncertainty, address disruptive market forces, and deliver long-term stakeholder value. To meet these demands, boards require more than oversight—they need strategic partnership.</span></p><p><br></p><h1><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">The Shift from Governance to Vision</span></h1><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Traditionally, the role of the board has been focused on fiduciary responsibilities, compliance, and governance frameworks. While these remain foundational, the challenges of the modern marketplace demand a broader, more visionary approach. Boards must now serve as strategic stewards—proactively shaping the future, not just preserving the present.</span></p><p><em style=\"color: rgb(235, 235, 235); background-color: rgba(20, 20, 20, 0.95);\">Enter: Board-Level Advisories</em></p><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Strategic board advisories are not consultants in the traditional sense—they are embedded partners who provide high-level insight, foresight, and directional clarity. These advisors bring a mix of deep industry expertise, macroeconomic perspective, and real-world boardroom experience to inform critical decisions.</span></p><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">At CYCG, we recognise this shift and empower leadership with the tools, insights, and strategies needed to confidently chart their course forward.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">How CYCG Creates Impact at the Board Level</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">CYCG doesn\'t just advise—we partner. Our board-level engagements are designed to:</span></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Deliver Strategic Clarity:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> We help boards identify blind spots, unlock growth opportunities, and align long-term goals with actionable roadmaps.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Navigate Complexity:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> From geopolitical risks to digital disruption, we provide context-driven analysis to inform resilient decision-making.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Strengthen Leadership Confidence:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> Through trusted counsel and informed foresight, we reinforce boardroom agility and executive alignment.</span></li></ol><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">The Future Belongs to Boards That Think Forward</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">In an environment where ambiguity is the only constant, the boards that thrive are those who embrace change, invite outside perspective, and build strategic partnerships that unlock foresight and fuel innovation.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">Conclusion</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">It\'s no longer enough for boards to govern—they must lead. With CYCG as a strategic partner at the table, boards can transcend conventional roles, mitigate risk with intelligence, and drive transformative impact in a complex world.</span></p>', '1771945630298.png', 6, 3, '2026-02-20 13:05:13', '2026-02-25 09:43:17'),
(12, 'Why every board needs a strategic partner: The power of board level advisories', '<p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Boards today need more than governance—they need vision. CYCG empowers directors with strategic guidance to lead confidently, manage risk, and drive impact in a complex world.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">Introduction</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">In today\'s rapidly evolving business ecosystem, governance alone is no longer sufficient. Boards are under immense pressure to navigate uncertainty, address disruptive market forces, and deliver long-term stakeholder value. To meet these demands, boards require more than oversight—they need strategic partnership.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">The Shift from Governance to Vision</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Traditionally, the role of the board has been focused on fiduciary responsibilities, compliance, and governance frameworks. While these remain foundational, the challenges of the modern marketplace demand a broader, more visionary approach. Boards must now serve as strategic stewards—proactively shaping the future, not just preserving the present.</span></p><p><em style=\"color: rgb(235, 235, 235); background-color: rgba(20, 20, 20, 0.95);\">Enter: Board-Level Advisories</em></p><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Strategic board advisories are not consultants in the traditional sense—they are embedded partners who provide high-level insight, foresight, and directional clarity. These advisors bring a mix of deep industry expertise, macroeconomic perspective, and real-world boardroom experience to inform critical decisions.</span></p><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">At CYCG, we recognise this shift and empower leadership with the tools, insights, and strategies needed to confidently chart their course forward.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">How CYCG Creates Impact at the Board Level</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">CYCG doesn\'t just advise—we partner. Our board-level engagements are designed to:</span></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Deliver Strategic Clarity:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> We help boards identify blind spots, unlock growth opportunities, and align long-term goals with actionable roadmaps.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Navigate Complexity:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> From geopolitical risks to digital disruption, we provide context-driven analysis to inform resilient decision-making.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">Strengthen Leadership Confidence:</strong><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\"> Through trusted counsel and informed foresight, we reinforce boardroom agility and executive alignment.</span></li></ol><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">The Future Belongs to Boards That Think Forward</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">In an environment where ambiguity is the only constant, the boards that thrive are those who embrace change, invite outside perspective, and build strategic partnerships that unlock foresight and fuel innovation.</span></p><p><br></p><h2><span style=\"color: rgb(255, 255, 255); background-color: rgba(20, 20, 20, 0.95);\">Conclusion</span></h2><p><span style=\"color: rgba(235, 235, 235, 0.6); background-color: rgba(20, 20, 20, 0.95);\">It\'s no longer enough for boards to govern—they must lead. With CYCG as a strategic partner at the table, boards can transcend conventional roles, mitigate risk with intelligence, and drive transformative impact in a complex world.</span></p>', '1771592889836.webp', 6, 4, '2026-02-20 13:08:09', '2026-02-25 09:40:07'),
(14, 'ERP Bytes', '<p>Sure ? I can do that — what topic do you want the blog to be about?</p><p>For example</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Technology (AI, Web Development, Cybersecurity)</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><em>Health &amp; Fitness</em></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Travel</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Finance &amp; Investing</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Gaming</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Business &amp; Startups</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Personal Development</li><li data-list=\"bullet\" class=\"ql-align-center\"><span class=\"ql-ui\" contenteditable=\"false\"></span><a href=\"https://link.com\" rel=\"noopener noreferrer\" target=\"_blank\">name </a></li><li data-list=\"bullet\" class=\"ql-align-center\"><span class=\"ql-ui\" contenteditable=\"false\"></span>email contact</li></ol><h1>Tell me:</h1><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Topic</strong></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Target audience</strong> (beginners, professionals, students, etc.)</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Word count</strong> (e.g., 800, 1500, 2500 words)</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Tone</strong> (professional, casual, SEO-optimized, storytelling, etc.)</li></ol><p>Or if you prefer, I can choose a trending topic and write a complete SEO-optimized blog post for you. ?</p>', '1771914896715.png', 12, 1, '2026-02-24 06:34:56', '2026-02-25 09:40:06'),
(16, 'test', '<p>test					</p>', '1772790948709.png', 10, 1, '2026-03-06 09:55:48', '2026-03-06 09:55:48'),
(17, 'test1', '<p>this is for the test 		</p>', '1772791059401.jpg', 7, 1, '2026-03-06 09:57:39', '2026-03-06 09:57:39'),
(18, 'test1', '<p>this is for the test</p>', '1772791395975.jpg', 7, 1, '2026-03-06 10:03:15', '2026-03-06 10:03:15'),
(19, 'test2 ', '<p>test 2	</p>', '1772793434241.png', 7, 1, '2026-03-06 10:37:14', '2026-03-06 10:37:14'),
(24, 'check.....', '<p><br></p><p><strong>checked.....</strong></p>', NULL, 7, 1, '2026-03-06 11:28:29', '2026-03-06 11:28:29'),
(25, 'ssssss', '<p>sssssss</p>', '1772797560711.png', 7, 1, '2026-03-06 11:46:00', '2026-03-06 11:46:00'),
(26, 'changes', '<p>changes</p>', '1772799134967.jpg', 6, 1, '2026-03-06 12:12:14', '2026-03-06 12:12:14'),
(27, 'qqqq', '<p>qqqqq</p>', '1772799894507.jpg', 7, 1, '2026-03-06 12:24:54', '2026-03-06 12:24:54'),
(28, 'title', '<p>title	</p>', '1772874330971.png', 6, 1, '2026-03-07 09:05:31', '2026-03-07 09:05:31'),
(29, 'check2a', '<p>check2a</p>', '1772875865101.png', 6, 1, '2026-03-07 09:31:05', '2026-03-07 09:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `createdAt`, `updatedAt`, `position`) VALUES
(6, 'Workforce Development', '2026-02-19 09:01:17', '2026-02-25 10:49:58', 3),
(7, 'Enterprise Risk & Compliance', '2026-02-19 09:01:32', '2026-02-25 10:49:58', 2),
(8, 'Organizational Strategy', '2026-02-19 09:01:42', '2026-02-25 10:49:58', 6),
(9, 'Project Management', '2026-02-19 09:01:53', '2026-02-25 10:49:58', 5),
(10, 'Board Services', '2026-02-19 09:02:22', '2026-02-25 10:49:58', 1),
(12, 'ERP Development', '2026-02-24 06:32:41', '2026-02-25 10:49:58', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Contacts`
--

CREATE TABLE `Contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Contacts`
--

INSERT INTO `Contacts` (`id`, `name`, `email`, `subject`, `message`, `createdAt`, `updatedAt`) VALUES
(1, 'Abhinav', 'abhinav@gmail.com', 'AAA', 'AAAAAAA', '2026-02-25 07:11:36', '2026-02-25 07:11:36'),
(2, 'Abhinav sngh', 'abhinavasas@gmail.com', 'AAAasas', 'AAAAAAAasasas', '2026-02-25 07:11:53', '2026-02-25 07:11:53'),
(3, 'Neha', 'chatgptversion79@gmail.com', 'note', 'hey', '2026-02-25 07:26:06', '2026-02-25 07:26:06'),
(4, 'Chatgpt Version', 'chatgptversion79@gmail.com', 'note', 'ddd', '2026-02-25 07:38:33', '2026-02-25 07:38:33'),
(5, 'Komale', 'chatgptversion79@gmail.com', 'abcddddddd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nI recently visited your website and wanted to reach out regarding a few questions about your services. \nFirst of all, I really appreciate the clean design and smooth user experience.\n\nHowever, I noticed a few things that I would like clarification on. \nFor example, I wasn’t completely sure how the pricing tiers differ in terms of long-term support and scalability. \nIt would be helpful if you could provide more detailed documentation or perhaps a comparison guide.\n\nAdditionally, I am currently working on a large-scale project that requires integration with multiple APIs, \nreal-time data synchronization, and advanced user authentication mechanisms. \nSecurity and performance are very important for this project, especially since we expect high traffic volume \nduring peak hours.\n\nAnother question I have relates to customization options. \nIs it possible to fully customize the UI components, including animations, themes, \nand dynamic content rendering based on user roles? \nWe are aiming for a modern, responsive, and mobile-first interface.\n\nWe are also planning to scale internationally in the next 12–18 months, \nso multi-language support and regional compliance are essential. \nCould you please provide information about localization support and data protection standards?\n\nFurthermore, I would appreciate details about your roadmap for upcoming features. \nAre there any major updates planned in the near future that might impact long-term development decisions?\n\nPlease feel free to contact me via email or phone if a detailed discussion would be more appropriate. \nI am available during standard business hours and would be happy to schedule a meeting.\n\nLooking forward to your response.\n\nBest regards,  \nJohn Doe', '2026-02-25 09:10:50', '2026-02-25 09:10:50'),
(6, 'Chaitanya rana', 'chaitnayarana@gmail.com', 'Sbject', 'Test', '2026-02-25 11:44:57', '2026-02-25 11:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20260216072737-create-categories.js'),
('20260216072758-create-blogs.js'),
('20260224094159-add-position-to-categories.js'),
('20260225000000-create-contacts.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blogs`
--
ALTER TABLE `Blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Contacts`
--
ALTER TABLE `Contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blogs`
--
ALTER TABLE `Blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Contacts`
--
ALTER TABLE `Contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Blogs`
--
ALTER TABLE `Blogs`
  ADD CONSTRAINT `Blogs_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `Categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
