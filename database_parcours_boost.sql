CREATE DATABASE parcours_boost;
USE parcours_boost

CREATE TABLE `position`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `parcours_id` INT UNSIGNED NOT NULL,
    `latitude` DECIMAL(7, 5) NOT NULL,
    `longitude` DECIMAL(7, 5) NOT NULL
);
CREATE TABLE `parcours`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `position` ADD CONSTRAINT `position_parcours_id_foreign` FOREIGN KEY(`parcours_id`) REFERENCES `parcours`(`id`);