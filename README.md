# UndergroundMiami
UndergroundMiami repo for Shellhacks hackathon 2017. Underground Miami art and music all at your fingertips.

## Code for table creation in database

```
CREATE TABLE `undermiami`.`venues` (
 `id` INT NOT NULL ,
 `name` TEXT NOT NULL ,
 `lat` DOUBLE NOT NULL ,
 `lon` DOUBLE NOT NULL ,
 `addr` TEXT NULL DEFAULT NULL ,
 `desc` TEXT NULL DEFAULT NULL ,
 `social_link` TEXT NULL DEFAULT NULL ,
 `image` LONGTEXT NULL DEFAULT NULL ,
 `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;


CREATE TABLE `undermiami`.`artists` (
 `id` INT NOT NULL ,
 `name` TEXT NOT NULL ,
 `genre` TEXT NOT NULL ,
 `spotify_id` TEXT NULL DEFAULT NULL ,
 `links_set` TEXT NULL DEFAULT NULL ,
 `bio` TEXT NULL DEFAULT NULL ,
 `profile_pic` LONGTEXT NULL DEFAULT NULL ,
 `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;


CREATE TABLE `undermiami`.`shows` (
 `id` INT NOT NULL ,
 `name` TEXT NOT NULL ,
 `artists_set` TEXT NOT NULL ,
 `venue` TEXT NOT NULL ,
 `datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 `links` TEXT NULL DEFAULT NULL ,
 `teaser` LONGTEXT NULL DEFAULT NULL ,
 `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;


CREATE TABLE `undermiami`.`graffiti` (
 `id` INT NOT NULL ,
 `name` TEXT NULL DEFAULT NULL ,
 `artists_set` TEXT NULL DEFAULT NULL ,
 `photo` LONGTEXT NOT NULL ,
 `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `graffiti` (`id`, `name`, `artists_set`, `photo`, `created_at`, `updated_at`) VALUES ('1', 'dfafds', 'dog', 'aaamoto.png', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `artists` (`id`, `name`, `genre`, `spotify_id`, `links_set`, `bio`, `profile_pic`, `created_at`, `updated_at`) VALUES ('1', 'Hometown Losers', 'Pop Punk', '0', 'https://www.facebook.com/hometownlosers/', 'hhasf', 'HTL.jpg 	', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
```
