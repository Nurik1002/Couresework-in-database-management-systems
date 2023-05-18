SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `Gipermarket` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin;
USE `Gipermarket`;

CREATE TABLE `gipermarket` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `e_site` varchar(45) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `region` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_num` varchar(45) NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `director` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `phone_num` int UNSIGNED NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `phone_num` int UNSIGNED NOT NULL,
  `email` varchar(45) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `departament` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `position` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `salary` REAL UNSIGNED NOT NULL,
  `departament_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `phone_num` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `position_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `price` float NOT NULL,
  `size` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `manufacturing_company` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `date_of_manufacture` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `sertifikat` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` TEXT COLLATE utf8mb3_bin DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `product_customer` (
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `service` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

CREATE TABLE `warehause` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `sigimi` int UNSIGNED NOT NULL,
  `region` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `gipermarket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

ALTER TABLE `gipermarket`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

ALTER TABLE `director`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `departament`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`departament_id`) REFERENCES `departament` (`id`);

ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

ALTER TABLE `product_customer`
	ADD FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

ALTER TABLE `warehause`
  ADD PRIMARY KEY (`id`),
  ADD FOREIGN KEY (`gipermarket_id`) REFERENCES `gipermarket` (`id`);

COMMIT;
