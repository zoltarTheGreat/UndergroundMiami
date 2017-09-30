# UndergroundMiami
UndergroundMiami repo for Shellhacks hackathon 2017. Underground Miami art and music all at your fingertips.

## Code for table creation in database

```
CREATE TABLE `undermiami`.`venues` (
 `id` INT NOT NULL ,
 `name` TEXT NOT NULL ,
 `lat` DOUBLE NOT NULL ,
 `lon` DOUBLE NOT NULL ,
 `addr` CHAR NULL DEFAULT NULL ,
 `desc` TEXT NULL DEFAULT NULL ,
 `social_link` CHAR NULL DEFAULT NULL ,
 `image` LONGTEXT NULL DEFAULT NULL ,
 `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;


CREATE TABLE `undermiami`.`artists` (
 `id` INT NOT NULL ,
 `name` TEXT NOT NULL ,
 `genre` CHAR NOT NULL ,
 `spotify_id` CHAR NOT NULL DEFAULT '0' ,
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
 `venue` CHAR NOT NULL ,
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
```
