
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `form_list` (
  `id` int(30) NOT NULL,
  `form_code` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `fname` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--

INSERT INTO `form_list` (`id`, `form_code`, `title`, `description`, `fname`, `date_created`, `date_updated`) VALUES
(3, '8003173069', 'Sample 102', 'This is only a sample Form', '8003173069.html', '2021-06-14 08:19:09', NULL);



CREATE TABLE `responses` (
  `id` int(30) NOT NULL,
  `rl_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `responses` (`id`, `rl_id`, `meta_field`, `meta_value`) VALUES
(1, 1, '0', 'adasd'),
(2, 1, '1', 'Enter Option,Enter Option'),
(10, 13, '0', 'Choice 2, Choice 3'),
(11, 13, '1', 'Option 1'),
(12, 13, '3', 'Sample Answer'),
(13, 13, '2', 'burger.png');



CREATE TABLE `response_list` (
  `id` int(30) NOT NULL,
  `form_code` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `response_list` (`id`, `form_code`, `date_created`) VALUES
(13, '8003173069', '2021-06-14 09:19:00');


ALTER TABLE `form_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `response_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `form_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `responses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `response_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;
