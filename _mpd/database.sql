-- MySQL Script generated by MySQL Workbench
-- 08/06/16 22:21:08
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema simple_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `simple_db` ;

-- -----------------------------------------------------
-- Schema simple_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `simple_db` DEFAULT CHARACTER SET utf8 ;
USE `simple_db` ;

-- -----------------------------------------------------
-- Table `simple_db`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `simple_db`.`users` ;

CREATE TABLE IF NOT EXISTS `simple_db`.`users` (
  `users_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(64) NOT NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` TIMESTAMP NULL,
  PRIMARY KEY (`users_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
