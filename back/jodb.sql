-- Database: `jodb`

-- Table structure for table `admins`
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- Insert data for table `admins`
INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$10$s/Gf2WUM1dKo6tNtr3ZVQObFPsg7UADDIXouAR0heJPasMRKE6CkW');

-- Similar structure for other tables (athleteepreuves, athletes, epreuves, pays, paysepreuves, sports)...

-- Note: Adjust AUTO_INCREMENT values as needed.

-- Commit the changes
COMMIT;
