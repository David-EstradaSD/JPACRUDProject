-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema chessmatchesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `chessmatchesdb` ;

-- -----------------------------------------------------
-- Schema chessmatchesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chessmatchesdb` DEFAULT CHARACTER SET utf8 ;
USE `chessmatchesdb` ;

-- -----------------------------------------------------
-- Table `chess_match`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `chess_match` ;

CREATE TABLE IF NOT EXISTS `chess_match` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `black_pieces` VARCHAR(75) NOT NULL,
  `white_pieces` VARCHAR(75) NOT NULL,
  `winner` VARCHAR(50) NOT NULL,
  `opening` VARCHAR(100) NOT NULL,
  `result` VARCHAR(50) NOT NULL,
  `date` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS chessdbuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'chessdbuser'@'localhost' IDENTIFIED BY 'chessdbuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'chessdbuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `chess_match`
-- -----------------------------------------------------
START TRANSACTION;
USE `chessmatchesdb`;
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (1, 'Sipke Ernst', 'Magnus Carlsen', 'white', 'Caro-Kann Defense: Classical', 'checkmate', '2004-01-24');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (2, 'Garry Kasparov', 'Veselin Topalov', 'white', 'Pirc Defense: Main Line', 'resignation', '1999-07-01');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (3, 'David Bronstein', 'Boris Spassky', 'white', 'King\'s Gambit Accepted: Modern Defense ', 'resignation', '1960-12-09');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (4, 'AlphaZero (Computer)', 'Stockfish (Computer)', 'white', 'Queen\'s Indian Defense', 'resignation', '2018-12-06');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (5, 'Anatoly Karpov', 'Igor V Ivanov', 'white', 'Sicilian Defense: Kan Variation ', 'resignation', '1979-09-08');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (6, 'Fabiano Caruana', 'Maxime Vachier-Lagrave', 'black', 'English Opening: Four Knights', 'timeout', '2018-04-07');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (7, 'Bobby Fischer', 'Robert E Byrne', 'black', 'King\'s Indian Defense', 'checkmate', '1963-01-06');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (8, 'Dmitry Andreikin', 'Hikaru Nakamura', 'white', 'King\'s Gambit Accepted', 'timeout', '2010-11-18');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (9, 'Anatoly Karpov', 'Garry Kasparov', 'white', 'Ruy Lopez: Morphy Defense', 'resignation', '1990-03-18');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (10, 'Vishy Anand', 'Sergey Karjakin ', 'black', 'Sicilian Defense: Najdorf', 'resignation', '2006-01-14');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (11, 'Maxime Vachier-Lagrave', 'Robert Fontaine', 'black', 'Dutch Defense: Leningrad', 'timeout', '2007-08-23');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (12, 'Mikhail Tal', 'Birbrager Isaak', 'black', 'Benoni Defense: Modern', 'timeout', '1953-06-23');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (13, 'Boris Spassky', 'Bent Larsen', 'black', 'Nimzowitsch-Larsen Attack', 'resignation', '1970-02-24');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (14, 'Vassily Ivanchuk', 'Sergey Karjakin', 'white', 'Sicilian Defense: Scheveningen', 'timeout', '2008-03-18');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (15, 'Georg Salwe', 'Akiba Rubinstein', 'white', 'Tarrasch Defense: Two Knights', 'resignation', '1908-07-07');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (16, 'Judit Polgar', 'Alexei Shirov', 'black', 'Sicilian Defense: Taimanov Variation', 'resignation', '1994-04-06');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (17, 'Hans-Joachim Hecht', 'Mikhail Tal', 'white', 'Queen\'s Indian Defense: Kasparov Variaton', 'timeout', '1962-06-04');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (18, 'Savielly Tartakower', 'Jose Raul Capablanca', 'white', 'Dutch Defense: Classical Variation', 'resignation', '1924-05-09');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (19, 'Hikaru Nakamura', 'Boris Gelfand', 'black', 'King\'s Indian Defense: Orthodox, Modern', 'timeout', '2010-01-09');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (20, 'Boris Gelfand', 'Dmitry Jakovenko', 'draw', 'Sicilian Defense: Najdorf Variation', 'draw', '2015-05-24');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (21, 'Gyula Sax', 'Anatoly Karpov', 'white', 'Sicilian Defense: Keres Attack', 'resignation', '1984-06-18');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (22, 'Marc Esserman', 'Loek van Wely', 'white', 'Sicilian Defense: Smith-Morra Accepted', 'resignation', '2011-08-04');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (23, 'Vishy Anand', 'Levon Aronian', 'black', 'Semi-Slav Defense: Main Line, Meran Variation', 'resignation', '2013-01-15');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (24, 'Magnus Carlsen', 'Vishy Anand', 'draw', 'Grunfeld Defense: Exchange Variation', 'draw', '2014-11-08');
INSERT INTO `chess_match` (`id`, `black_pieces`, `white_pieces`, `winner`, `opening`, `result`, `date`) VALUES (25, 'Vishy Anand', 'Magnus Carlsen', 'white', 'Ruy Lopez: Berlin Defense', 'resignation', '2014-11-23');

COMMIT;

