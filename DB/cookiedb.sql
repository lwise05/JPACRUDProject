-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cookiedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cookiedb` ;

-- -----------------------------------------------------
-- Schema cookiedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cookiedb` DEFAULT CHARACTER SET utf8 ;
USE `cookiedb` ;

-- -----------------------------------------------------
-- Table `cookie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cookie` ;

CREATE TABLE IF NOT EXISTS `cookie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `rating` VARCHAR(45) NULL,
  `calories` INT NULL,
  `cookie_image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS cookieconsumer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'cookieconsumer'@'localhost' IDENTIFIED BY 'cookieconsumer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'cookieconsumer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cookie`
-- -----------------------------------------------------
START TRANSACTION;
USE `cookiedb`;
INSERT INTO `cookie` (`id`, `name`, `description`, `rating`, `calories`, `cookie_image_url`) VALUES (1, 'Milk Chocolate Chip', 'Classic chocolate chip cookie with milk chocolate chips.', 'Great', 730, 'https://crumbl.video/cdn-cgi/image/width=200,format=auto,quality=80/https://crumbl.video/a5479faa-b292-4f8b-b35a-393fa7ebff3c_MilkChocolateChip_OverheadAerial_NoShadow_TECH.png');
INSERT INTO `cookie` (`id`, `name`, `description`, `rating`, `calories`, `cookie_image_url`) VALUES (2, 'Holiday Confetti', 'A warm vanilla sugar cookie bursting with red & green holiday sprinkles.', 'Good', 610, 'https://crumbl.video/cdn-cgi/image/width=200,quality=80/https://crumbl.video/2d3338b0-a902-47e2-9023-ea851c7ce1a5_HolidayConfetti_OverheadAerial_NoShadow_TECH.png');
INSERT INTO `cookie` (`id`, `name`, `description`, `rating`, `calories`, `cookie_image_url`) VALUES (3, 'Cranberry White Chip', 'A buttery cookie containing a symphonic mix of vanilla, dried cranberries, and white chips.', 'Bad', 680, 'https://crumbl.video/cdn-cgi/image/width=200,format=auto,quality=80/https://crumbl.video/032b4656-307b-4a95-aef9-27e4929ee67f_CranberryWhiteChip_OverheadAerial_NoShadow_TECH.png');
INSERT INTO `cookie` (`id`, `name`, `description`, `rating`, `calories`, `cookie_image_url`) VALUES (4, 'Snickerdoodle', 'A classic vanilla sugar cookie rolled in a sparkly cinnamon sugar coating.', 'Bad', 630, 'https://crumbl.video/cdn-cgi/image/width=200,format=auto,quality=80/https://crumbl.video/59e8277d-8802-4371-a35a-25e31e3fc747_Snickerdoodle_OverheadAerial_NoShadow_TECH.png');
INSERT INTO `cookie` (`id`, `name`, `description`, `rating`, `calories`, `cookie_image_url`) VALUES (5, 'Galaxy Brownie', 'A brownie cookie smothered in a warm fudge glaze and sprinkled with rainbow candy bits.', 'Great', 670, 'https://crumbl.video/cdn-cgi/image/width=200,format=auto,quality=80/https://crumbl.video/34db56ce-e73b-4027-8ddf-596cafed9a66_GalaxyBrownie_OverheadAerial_NoShadow_TECH.png');

COMMIT;

