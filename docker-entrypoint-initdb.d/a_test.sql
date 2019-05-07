CREATE DATABASE IF NOT EXISTS `test`;
USE `test`;

CREATE TABLE IF NOT EXISTS `test`.`messages`
(
  `id`        BIGINT(20) UNSIGNED NOT NULL auto_increment,
  `description`     VARCHAR(255) DEFAULT '',
  `message`       VARCHAR(3000) DEFAULT '',
  `timestamp` DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_test_message` (`description`, `message`)
) engine=innodb DEFAULT charset=utf8 COLLATE=utf8_unicode_ci;

