-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 01:51 PM
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
-- Database: `quizapplicationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `difficultylevel` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `category`, `difficultylevel`, `option1`, `option2`, `option3`, `option4`, `question_title`, `right_answer`) VALUES
(1, 'Java', 'Easy', 'int x = 5;', 'int x = \"5\";', 'String x = \"5\";', 'String x = 5;', 'Which of the following Java statements declares a variable x as an integer with a value of 5?\r\n', 'Option 1'),
(2, 'Python', 'Easy', 'x = 5', 'x == 5', 'x is 5', 'x == 5', 'Which of the following statements correctly assigns the value 5 to the variable x in Python?', 'Option 1'),
(3, 'Java', 'Medium', 'public static void main(String[] args) { }', 'public void main(String[] args) { }', ' public static int main(String[] args) { }', 'static void main(String[] args) { }', 'Which is the correct signature for the main method in a Java program?', 'Option 1'),
(4, 'Java', 'Hard', 'HashMap', 'ArrayList', 'LinkedList', 'HashSet', 'Which Java collection class provides an implementation of a hash table with no duplicate elements?', 'Option 4'),
(5, 'Python', 'Hard', '__init__()', ' __main__()', '__class__()', 'HashSet', 'Which special method in Python is used to initialize objects?', 'Option 1');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `title`) VALUES
(1, 'Quiz01'),
(2, 'Quiz02'),
(3, 'Quiz03');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `quiz_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`quiz_id`, `questions_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(2, 4),
(3, 2),
(3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD KEY `FKpmfvwer12y1nrjc0efm04dq16` (`questions_id`),
  ADD KEY `FKcgp9e1c6ww3t383aui4w8feae` (`quiz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `FKcgp9e1c6ww3t383aui4w8feae` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `FKpmfvwer12y1nrjc0efm04dq16` FOREIGN KEY (`questions_id`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
