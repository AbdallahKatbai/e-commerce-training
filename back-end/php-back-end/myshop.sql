SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+02:00";

CREATE DATABASE IF NOT EXISTS `my_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `my_shop`;

CREATE TABLE `users` (
    `user_id` int(11) NOT NULL,
    `name` varchar(45) NOT NULL,
    `user_status_id` int(11) NOT NULL,
    `user_status` varchar(45) NOT NULL,
    `section` varchar(45) DEFAULT NULL,
    `email` varchar(45) DEFAULT NULL,
    `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

TRUNCATE TABLE `users`;

INSERT INTO `users` (`user_id`, `name`, `user_status_id`, `user_status`, `email`, `phone_number`) VALUES
(1,'Ahmad', 0, 'manager', 'ahmed.manager@gmail.com', 47474756),
(2, 'Khaled', 'customer', '', 84769384),
(3, 'Lamia', 1, 'employee', 'shoes', 'lamia.employee@gmail.com', 57357907);



CREATE TABLE `sections` (
    `section_id` int(11) NOT NULL,
    `section_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

TRUNCATE TABLE `sections`;

INSERT INTO `sections` (`section_id`, `section_name`) VALUES
(1, `shirts`),
(2, `shoes`),
(3, `pants`);


CREATE TABLE `user_types`(
    `user_status_id` int(11) NOT NULL,
    `status_name` varchar(45) NOT NULL,
    `section_id` int(11) DEFAULT NULL,
    `section_name` varchar(45) DEFAULT NULL,
    `status_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

TRUNCATE TABLE `user_types`;

INSERT INTO `user_types` (`user_status_id`, `status_name`, `section_id`, `section_name`, `status_description`) VALUES
(0, 'head_manager', NULL, NULL,'the head of all sections'),
(1, 'shirts_manager', 1, 'shirts', 'the head of an individual section'),
(2, 'shoes_manager', 2, 'shoes', 'the head of an individual section'),
(3, 'pants_manager', 3, 'pants', 'the head of an individual section'),
(4, 'employee', 2, 'shoes', 'a worker');



CREATE TABLE `products`(
    `product_name` varchar(45) NOT NULL,
    `product_code_number` varchar(45) NOT NULL,
    `img` LONGBLOB DEFAULT '.\OIP.jpg',
    `product_description` varchar(45) DEFAULT NULL,
    `rating` float(2,1) DEFAULT NULL
) ENGINE-InnoDB DEFAULT CHARSET=utf8;

TRUNCATE TABLE `products`;

INSERT INTO `products` (`product_name`, `product_code_name`, `product_description`, `rating`) VALUES
('product name', 'fhfgj555', 'description description description description', 2.5),
('product name', 'fhfgj555', 'description description description description', 2.5),
('product name', 'fhfgj555', 'description description description description', 2.5),
('product name', 'fhfgj555', 'description description description description', 2.5);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

 ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_status_id`);

