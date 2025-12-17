-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2025 at 01:20 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldata`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `location`) VALUES
(1, 'Cardiology', 'Building A - Floor 2'),
(2, 'Neurology', 'Building B - Floor 3'),
(3, 'Pediatrics', 'Building A - Floor 1'),
(4, 'Orthopedics', 'Building C - Floor 2'),
(5, 'Emergency', 'Ground Floor'),
(6, 'Dermatology', 'Building D - Floor 1'),
(7, 'Radiology', 'Building B - Floor 1');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(18) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `full_name`, `email`, `phone_number`, `specialization`, `address`, `department_id`) VALUES
(1, 'Dr. Ahmed Benali', 'ahmed1@hospital.com', '+212600000001', 'Cardiologist', 'Casablanca', 1),
(2, 'Dr. Youssef Idrissi', 'youssef2@hospital.com', '+212600000002', 'Cardiologist', 'Rabat', 1),
(3, 'Dr. Samir El Amrani', 'samir3@hospital.com', '+212600000003', 'Cardiologist', 'Fes', 1),
(4, 'Dr. Sara Ait Lahcen', 'sara4@hospital.com', '+212600000004', 'Neurologist', 'Khouribga', 2),
(5, 'Dr. Imane Zahra', 'imane5@hospital.com', '+212600000005', 'Neurologist', 'Agadir', 2),
(6, 'Dr. Karim Bennis', 'karim6@hospital.com', '+212600000006', 'Neurologist', 'Oujda', 2),
(7, 'Dr. Salma Ouahbi', 'salma7@hospital.com', '+212600000007', 'Pediatrician', 'Marrakech', 3),
(8, 'Dr. Hamza El Fassi', 'hamza8@hospital.com', '+212600000008', 'Pediatrician', 'Rabat', 3),
(9, 'Dr. Lina Chafik', 'lina9@hospital.com', '+212600000009', 'Pediatrician', 'Casablanca', 3),
(10, 'Dr. Omar Alaoui', 'omar10@hospital.com', '+212600000010', 'Orthopedic Surgeon', 'Fes', 4),
(11, 'Dr. Rachid Naciri', 'rachid11@hospital.com', '+212600000011', 'Orthopedic Surgeon', 'Tangier', 4),
(12, 'Dr. Hicham Sbai', 'hicham12@hospital.com', '+212600000012', 'Orthopedic Surgeon', 'Agadir', 4),
(13, 'Dr. Hassan Mouline', 'hassan13@hospital.com', '+212600000013', 'Emergency Doctor', 'Khouribga', 5),
(14, 'Dr. Nadia Zayani', 'nadia14@hospital.com', '+212600000014', 'Emergency Doctor', 'Casablanca', 5),
(15, 'Dr. Anass Rifi', 'anass15@hospital.com', '+212600000015', 'Emergency Doctor', 'Rabat', 5),
(16, 'Dr. Meryem Bouchra', 'meryem16@hospital.com', '+212600000016', 'Dermatologist', 'Meknes', 6),
(17, 'Dr. Younes Slaoui', 'younes17@hospital.com', '+212600000017', 'Dermatologist', 'Kenitra', 6),
(18, 'Dr. Ilham Rahmani', 'ilham18@hospital.com', '+212600000018', 'Dermatologist', 'Tetouan', 6),
(19, 'Dr. Adil Toumi', 'adil19@hospital.com', '+212600000019', 'Radiologist', 'Fes', 7),
(20, 'Dr. Sofia El Khatib', 'sofia20@hospital.com', '+212600000020', 'Radiologist', 'Casablanca', 7),
(21, 'Dr. Amin Jalal', 'amin21@hospital.com', '+212600000021', 'Cardiologist', 'Rabat', 1),
(22, 'Dr. Noura Hamdi', 'noura22@hospital.com', '+212600000022', 'Neurologist', 'Agadir', 2),
(23, 'Dr. Walid Amine', 'walid23@hospital.com', '+212600000023', 'Pediatrician', 'Oujda', 3),
(24, 'Dr. Ismail Karimi', 'ismail24@hospital.com', '+212600000024', 'Orthopedic Surgeon', 'Fes', 4),
(25, 'Dr. Soukaina Raji', 'soukaina25@hospital.com', '+212600000025', 'Emergency Doctor', 'Casablanca', 5),
(26, 'Dr. Ayoub Zrida', 'ayoub26@hospital.com', '+212600000026', 'Dermatologist', 'Rabat', 6),
(27, 'Dr. Ghita Lahlou', 'ghita27@hospital.com', '+212600000027', 'Radiologist', 'Marrakech', 7),
(28, 'Dr. Khalid Benomar', 'khalid28@hospital.com', '+212600000028', 'Cardiologist', 'Tangier', 1),
(29, 'Dr. Hajar Azzouzi', 'hajar29@hospital.com', '+212600000029', 'Neurologist', 'Meknes', 2),
(30, 'Dr. Bilal Chraibi', 'bilal30@hospital.com', '+212600000030', 'Pediatrician', 'Kenitra', 3),
(31, 'Dr. Zakaria Mounir', 'zakaria31@hospital.com', '+212600000031', 'Orthopedic Surgeon', 'Agadir', 4),
(32, 'Dr. Rania Messaoudi', 'rania32@hospital.com', '+212600000032', 'Emergency Doctor', 'Oujda', 5),
(33, 'Dr. Yassir Kabbaj', 'yassir33@hospital.com', '+212600000033', 'Dermatologist', 'Fes', 6),
(34, 'Dr. Salim Daoudi', 'salim34@hospital.com', '+212600000034', 'Radiologist', 'Rabat', 7),
(35, 'Dr. Amal Benchekroun', 'amal35@hospital.com', '+212600000035', 'Cardiologist', 'Casablanca', 1),
(36, 'Dr. Othmane Rkik', 'othmane36@hospital.com', '+212600000036', 'Neurologist', 'Khouribga', 2),
(37, 'Dr. Ilyas Nouri', 'ilyas37@hospital.com', '+212600000037', 'Pediatrician', 'Agadir', 3);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `phone_number` varchar(18) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `full_name`, `email`, `gender`, `phone_number`, `date_of_birth`, `address`) VALUES
(1, 'Amine Raji', 'amine.raji@gmail.com', 'Male', '+212610111222', '1996-03-15', 'Casablanca, Morocco'),
(2, 'Hajar El Idrissi', 'hajar.idrissi@gmail.com', 'Female', '+212620333444', '2001-07-09', 'Rabat, Morocco'),
(3, 'Yassine Boulahcen', 'yassine.boulahcen@gmail.com', 'Male', '+212630555666', '1994-12-21', 'Meknes, Morocco'),
(4, 'Meriem Saidi', 'meriem.saidi@gmail.com', 'Female', '+212640777888', '1999-05-30', 'Fes, Morocco'),
(5, 'Hamza Kabbaj', 'hamza.kabbaj@gmail.com', 'Male', '+212650999000', '1997-08-18', 'Tangier, Morocco'),
(6, 'Zineb Alaoui', 'zineb.alaoui@gmail.com', 'Female', '+212661222333', '2002-01-11', 'Tetouan, Morocco'),
(7, 'Reda Choukri', 'reda.choukri@gmail.com', 'Male', '+212671444555', '1995-10-03', 'Agadir, Morocco'),
(8, 'Aya Moutawakil', 'aya.moutawakil@gmail.com', 'Female', '+212681666777', '2000-06-24', 'Safi, Morocco'),
(9, 'Soufiane Amrani', 'soufiane.amrani@gmail.com', 'Male', '+212691888999', '1993-02-14', 'El Jadida, Morocco'),
(10, 'Houda Bennis', 'houda.bennis@gmail.com', 'Female', '+212602111444', '1998-09-07', 'Nador, Morocco'),
(11, 'Adil Zrara', 'adil.zrara@gmail.com', 'Male', '+212612333555', '1996-11-19', 'Ouarzazate, Morocco'),
(12, 'Chaimae Ouali', 'chaimae.ouali@gmail.com', 'Female', '+212622444666', '2001-04-28', 'Laayoune, Morocco'),
(13, 'Karim El Fassi', 'karim.elfassi@gmail.com', 'Male', '+212632555777', '1992-07-12', 'Chefchaouen, Morocco'),
(14, 'Fatima Zahra Hilali', 'fzh.hilali@gmail.com', 'Female', '+212642666888', '1999-12-01', 'Taza, Morocco'),
(15, 'Mehdi Naciri', 'mehdi.naciri@gmail.com', 'Male', '+212652777999', '1997-03-08', 'Settat, Morocco'),
(16, 'Ikram Azzouzi', 'ikram.azzouzi@gmail.com', 'Female', '+212662888111', '2003-05-16', 'Khouribga, Morocco'),
(17, 'Walid Belkadi', 'walid.belkadi@gmail.com', 'Male', '+212672999222', '1994-08-27', 'Mohammedia, Morocco'),
(18, 'Sanaa Laaroussi', 'sanaa.laaroussi@gmail.com', 'Female', '+212683111333', '2000-10-05', 'Azrou, Morocco'),
(19, 'Othmane Berrada', 'othmane.berrada@gmail.com', 'Male', '+212693222444', '1995-01-22', 'Ifrane, Morocco'),
(20, 'Rania Khatib', 'rania.khatib@gmail.com', 'Female', '+212604333555', '2002-06-13', 'Berkane, Morocco'),
(21, 'Mustapha El Kadi', 'mustapha.elkadi@gmail.com', 'Male', '+212615444888', '1989-02-10', 'Casablanca, Morocco'),
(22, 'Asmaa Rifi', 'asmaa.rifi@gmail.com', 'Female', '+212625333999', '1997-07-04', 'Al Hoceima, Morocco'),
(23, 'Rachid Oukili', 'rachid.oukili@gmail.com', 'Male', '+212635222111', '1993-11-16', 'Marrakech, Morocco'),
(24, 'Samira Boudra', 'samira.boudra@gmail.com', 'Female', '+212645111222', '2001-01-29', 'Rabat, Morocco'),
(25, 'Nabil Cherkaoui', 'nabil.cherkaoui@gmail.com', 'Male', '+212655999888', '1990-06-18', 'Settat, Morocco'),
(26, 'Hind Mernissi', 'hind.mernissi@gmail.com', 'Female', '+212665888777', '1998-09-02', 'Fes, Morocco'),
(27, 'Ayoub Lazrak', 'ayoub.lazrak@gmail.com', 'Male', '+212675777666', '2003-04-25', 'Tiznit, Morocco'),
(28, 'Salma Kabbaj', 'salma.kabbaj@gmail.com', 'Female', '+212685666555', '1996-12-13', 'Tangier, Morocco'),
(29, 'Driss Ait Lahcen', 'driss.aitlahcen@gmail.com', 'Male', '+212695555444', '1992-08-07', 'Taroudant, Morocco'),
(30, 'Nadia Fadili', 'nadia.fadili@gmail.com', 'Female', '+212606444333', '1999-03-21', 'Oujda, Morocco'),
(31, 'Younes Chraibi', 'younes.chraibi@gmail.com', 'Male', '+212616333222', '1995-10-09', 'Kenitra, Morocco'),
(32, 'Kawtar Benaissa', 'kawtar.benaissa@gmail.com', 'Female', '+212626222111', '2002-02-14', 'Sale, Morocco'),
(33, 'Abdelilah Loukili', 'abdelilah.loukili@gmail.com', 'Male', '+212636111000', '1988-05-30', 'Temara, Morocco'),
(34, 'Imane Rmili', 'imane.rmili@gmail.com', 'Female', '+212646000999', '1997-11-06', 'Beni Mellal, Morocco'),
(35, 'Said El Hachimi', 'said.elhachimi@gmail.com', 'Male', '+212656999000', '1991-01-17', 'Essaouira, Morocco'),
(36, 'Rim Aouini', 'rim.aouini@gmail.com', 'Female', '+212666888000', '2000-07-23', 'Larache, Morocco'),
(37, 'Hamid Taoufik', 'hamid.taoufik@gmail.com', 'Male', '+212676777000', '1994-04-03', 'Sidi Bennour, Morocco'),
(38, 'Zakia Bennis', 'zakia.bennis@gmail.com', 'Female', '+212686666000', '1998-12-28', 'Berrechid, Morocco'),
(39, 'Anwar Mejjati', 'anwar.mejjati@gmail.com', 'Male', '+212696555000', '1993-06-11', 'Guelmim, Morocco'),
(40, 'Lina El Ouali', 'lina.elouali@gmail.com', 'Other', '+212607444000', '2004-09-19', 'Dakhla, Morocco'),
(41, 'Kamal Benjelloun', 'kamal.benjelloun@gmail.com', 'Male', '+212618111999', '1987-03-05', 'Casablanca, Morocco'),
(42, 'Siham El Ghali', 'siham.elghali@gmail.com', 'Female', '+212628222888', '1996-06-14', 'Rabat, Morocco'),
(43, 'Mouad Lahlou', 'mouad.lahlou@gmail.com', 'Male', '+212638333777', '2001-09-26', 'Meknes, Morocco'),
(44, 'Najat Bousfiha', 'najat.bousfiha@gmail.com', 'Female', '+212648444666', '1994-01-18', 'Fes, Morocco'),
(45, 'Ismail Ziani', 'ismail.ziani@gmail.com', 'Male', '+212658555444', '1999-07-11', 'Oujda, Morocco'),
(46, 'Wafae El Hajjami', 'wafae.elhajjami@gmail.com', 'Female', '+212668666333', '2003-12-02', 'Kenitra, Morocco'),
(47, 'Youness Bahri', 'youness.bahri@gmail.com', 'Male', '+212678777222', '1992-04-09', 'Tetouan, Morocco'),
(48, 'Malak Achour', 'malak.achour@gmail.com', 'Female', '+212688888111', '2000-08-27', 'El Jadida, Morocco'),
(49, 'Rida Skalli', 'rida.skalli@gmail.com', 'Male', '+212699999000', '1995-10-16', 'Agadir, Morocco'),
(50, 'Houda Lahlafi', 'houda.lahlafi@gmail.com', 'Female', '+212601234567', '1998-05-30', 'Safi, Morocco'),
(51, 'Zakaria Oubaha', 'zakaria.oubaha@gmail.com', 'Male', '+212611345678', '2002-02-06', 'Khouribga, Morocco'),
(52, 'Ilham Chentouf', 'ilham.chentouf@gmail.com', 'Female', '+212621456789', '1996-11-22', 'Azemmour, Morocco'),
(53, 'Badr Souissi', 'badr.souissi@gmail.com', 'Male', '+212631567890', '1991-06-01', 'Temara, Morocco'),
(54, 'Sanaa Zahir', 'sanaa.zahir@gmail.com', 'Female', '+212641678901', '1999-09-13', 'Berkane, Morocco'),
(55, 'Yahya Moutaouakil', 'yahya.moutaouakil@gmail.com', 'Male', '+212651789012', '2004-01-25', 'Taourirt, Morocco'),
(56, 'Khadija Benomar', 'khadija.benomar@gmail.com', 'Female', '+212661890123', '1993-03-19', 'Sefrou, Morocco'),
(57, 'Adnane Chami', 'adnane.chami@gmail.com', 'Male', '+212671901234', '1997-08-08', 'Youssoufia, Morocco'),
(58, 'Mouna Ait Taleb', 'mouna.aittaleb@gmail.com', 'Female', '+212681012345', '2001-12-17', 'Zagora, Morocco'),
(59, 'Hicham Belghazi', 'hicham.belghazi@gmail.com', 'Male', '+212691123456', '1989-04-28', 'Khemisset, Morocco'),
(60, 'Racha Amani', 'racha.amani@gmail.com', 'Other', '+212602234567', '2003-07-06', 'Midelt, Morocco'),
(61, 'Abderrahmane Fikri', 'abderrahmane.fikri@gmail.com', 'Male', '+212613111888', '1986-02-22', 'Casablanca, Morocco'),
(62, 'Soumaya Belhaj', 'soumaya.belhaj@gmail.com', 'Female', '+212623222777', '1997-06-10', 'Rabat, Morocco'),
(63, 'Mohcine El Mahdi', 'mohcine.elmahdi@gmail.com', 'Male', '+212633333666', '1993-09-14', 'Marrakech, Morocco'),
(64, 'Nour El Houda Benslimane', 'nour.benslimane@gmail.com', 'Female', '+212643444555', '2001-01-03', 'Fes, Morocco'),
(65, 'Ayoub Zemmouri', 'ayoub.zemmouri@gmail.com', 'Male', '+212653555444', '1999-04-27', 'Agadir, Morocco'),
(66, 'Salma El Khatib', 'salma.elkhatib@gmail.com', 'Female', '+212663666333', '2002-11-18', 'Kenitra, Morocco'),
(67, 'Oussama Rifi', 'oussama.rifi@gmail.com', 'Male', '+212673777222', '1995-07-09', 'Al Hoceima, Morocco'),
(68, 'Kawtar Slaoui', 'kawtar.slaoui@gmail.com', 'Female', '+212683888111', '1998-03-25', 'Sale, Morocco'),
(69, 'Anouar Bouchikhi', 'anouar.bouchikhi@gmail.com', 'Male', '+212693999000', '1991-12-01', 'Settat, Morocco'),
(70, 'Lamiae El Kouri', 'lamiae.elkouri@gmail.com', 'Female', '+212604111999', '2000-08-13', 'El Jadida, Morocco'),
(71, 'Yassir Ouazzani', 'yassir.ouazzani@gmail.com', 'Male', '+212614222888', '1989-05-16', 'Meknes, Morocco'),
(72, 'Fatima Zahra Ounahi', 'fz.ounahi@gmail.com', 'Female', '+212624333777', '1996-02-07', 'Taza, Morocco'),
(73, 'Simo Belarbi', 'simo.belarbi@gmail.com', 'Male', '+212634444666', '2003-10-29', 'Khouribga, Morocco'),
(74, 'Imane Touhami', 'imane.touhami@gmail.com', 'Female', '+212644555555', '1994-01-20', 'Beni Mellal, Morocco'),
(75, 'Hamza Boulahfa', 'hamza.boulahfa@gmail.com', 'Male', '+212654666444', '1997-09-04', 'Larache, Morocco'),
(76, 'Sanaa Harrak', 'sanaa.harrak@gmail.com', 'Female', '+212664777333', '2001-06-15', 'Taounate, Morocco'),
(77, 'Mehdi Ait Hammou', 'mehdi.aithammou@gmail.com', 'Male', '+212674888222', '1992-11-27', 'Ouarzazate, Morocco'),
(78, 'Rania El Fadili', 'rania.elfadili@gmail.com', 'Female', '+212684999111', '1999-04-08', 'Sidi Slimane, Morocco'),
(79, 'Bilal Chentir', 'bilal.chentir@gmail.com', 'Male', '+212695111000', '1988-07-30', 'Gourrama, Morocco'),
(80, 'Yasmine Rmili', 'yasmine.rmili@gmail.com', 'Other', '+212605222999', '2004-12-12', 'Boujdour, Morocco'),
(81, 'Younes El Hani', 'younes.elhani@gmail.com', 'Male', '+212610001111', '1991-02-14', 'Casablanca, Morocco'),
(82, 'Asmae Tazi', 'asmae.tazi@gmail.com', 'Female', '+212620002222', '1998-07-06', 'Rabat, Morocco'),
(83, 'Hamza El Ouazzani', 'hamza.elouazzani@gmail.com', 'Male', '+212630003333', '1995-10-19', 'Fes, Morocco'),
(84, 'Meryem Berrada', 'meryem.berrada@gmail.com', 'Female', '+212640004444', '2001-01-08', 'Meknes, Morocco'),
(85, 'Said Laghmouchi', 'said.laghmouchi@gmail.com', 'Male', '+212650005555', '1987-05-23', 'Agadir, Morocco'),
(86, 'Houda Ait Lahcen', 'houda.aitlahcen@gmail.com', 'Female', '+212660006666', '1999-09-14', 'Taroudant, Morocco'),
(87, 'Adil Malki', 'adil.malki@gmail.com', 'Male', '+212670007777', '1993-03-11', 'Settat, Morocco'),
(88, 'Khadija Chafai', 'khadija.chafai@gmail.com', 'Female', '+212680008888', '2002-12-02', 'Kenitra, Morocco'),
(89, 'Walid Ouhssain', 'walid.ouhssain@gmail.com', 'Male', '+212690009999', '1990-08-27', 'El Jadida, Morocco'),
(90, 'Nisrine Ziani', 'nisrine.ziani@gmail.com', 'Female', '+212601010101', '1997-04-18', 'Oujda, Morocco'),
(91, 'Yahya Boufous', 'yahya.boufous@gmail.com', 'Male', '+212611020202', '2003-06-30', 'Khouribga, Morocco'),
(92, 'Salma Loukili', 'salma.loukili@gmail.com', 'Female', '+212621030303', '1996-11-09', 'Beni Mellal, Morocco'),
(93, 'Ismail Rkain', 'ismail.rkain@gmail.com', 'Male', '+212631040404', '1992-01-17', 'Taza, Morocco'),
(94, 'Imane Zaghba', 'imane.zaghba@gmail.com', 'Female', '+212641050505', '1999-10-04', 'Azrou, Morocco'),
(95, 'Hicham Boudiaf', 'hicham.boudiaf@gmail.com', 'Male', '+212651060606', '1988-07-22', 'Temara, Morocco'),
(96, 'Rania El Mokhtar', 'rania.elmokhtar@gmail.com', 'Female', '+212661070707', '2001-03-29', 'Sefrou, Morocco'),
(97, 'Anass Belhaj', 'anass.belhaj@gmail.com', 'Male', '+212671080808', '1994-09-12', 'Larache, Morocco'),
(98, 'Ikram Azzouzi', 'ikram.azzouzi2@gmail.com', 'Female', '+212681090909', '1998-02-26', 'Berrechid, Morocco'),
(99, 'Reda Amzil', 'reda.amzil@gmail.com', 'Male', '+212691101010', '1991-12-05', 'Zagora, Morocco'),
(100, 'Chaimae Bennis', 'chaimae.bennis@gmail.com', 'Female', '+212602111111', '2000-05-16', 'Midelt, Morocco'),
(101, 'Ayoub Naji', 'ayoub.naji@gmail.com', 'Male', '+212612121212', '1997-08-21', 'Youssoufia, Morocco'),
(102, 'Fatima Zahra Chami', 'fz.chami@gmail.com', 'Female', '+212622131313', '1995-01-30', 'Sidi Bennour, Morocco'),
(103, 'Mehdi Laaroussi', 'mehdi.laaroussi@gmail.com', 'Male', '+212632141414', '1992-06-07', 'Khemisset, Morocco'),
(104, 'Sanaa Oubaha', 'sanaa.oubaha@gmail.com', 'Female', '+212642151515', '2002-09-18', 'Taourirt, Morocco'),
(105, 'Omar El Hachimi', 'omar.elhachimi@gmail.com', 'Male', '+212652161616', '1989-04-03', 'Essaouira, Morocco'),
(106, 'Malika Raji', 'malika.raji@gmail.com', 'Female', '+212662171717', '1996-12-14', 'Guelmim, Morocco'),
(107, 'Bilal Chafik', 'bilal.chafik@gmail.com', 'Male', '+212672181818', '1993-07-28', 'Mohammedia, Morocco'),
(108, 'Hajar Bennani', 'hajar.bennani@gmail.com', 'Female', '+212682191919', '1999-11-06', 'Chefchaouen, Morocco'),
(109, 'Soufiane Toumi', 'soufiane.toumi@gmail.com', 'Male', '+212692202020', '1990-02-19', 'Tiznit, Morocco'),
(110, 'Loubna Fadili', 'loubna.fadili@gmail.com', 'Female', '+212603212121', '2003-08-25', 'Dakhla, Morocco'),
(111, 'Karim Skalli', 'karim.skalli@gmail.com', 'Male', '+212613222222', '1994-10-10', 'Ifrane, Morocco'),
(112, 'Mouna El Idrissi', 'mouna.elidrissi@gmail.com', 'Female', '+212623232323', '1998-06-04', 'Sale, Morocco'),
(113, 'Hamid Benomar', 'hamid.benomar@gmail.com', 'Male', '+212633242424', '1986-01-15', 'Azilal, Morocco'),
(114, 'Sara Ait Omar', 'sara.aitomar@gmail.com', 'Female', '+212643252525', '2001-09-01', 'Tinghir, Morocco'),
(115, 'Rachid Taibi', 'rachid.taibi@gmail.com', 'Male', '+212653262626', '1992-05-20', 'Boulemane, Morocco'),
(116, 'Nawal Ouardi', 'nawal.ouardi@gmail.com', 'Female', '+212663272727', '1997-03-08', 'Jerada, Morocco'),
(117, 'Yassine Kabbaj', 'yassine.kabbaj@gmail.com', 'Male', '+212673282828', '1995-12-11', 'Oued Zem, Morocco'),
(118, 'Ilham Meftah', 'ilham.meftah@gmail.com', 'Female', '+212683292929', '1999-07-24', 'Fquih Ben Salah, Morocco'),
(119, 'Brahim Amghar', 'brahim.amghar@gmail.com', 'Male', '+212693303030', '1988-11-02', 'Ait Melloul, Morocco'),
(120, 'Nada El Mansouri', 'nada.elmansouri@gmail.com', 'Female', '+212604313131', '2004-04-17', 'Smara, Morocco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_department` (`department_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
