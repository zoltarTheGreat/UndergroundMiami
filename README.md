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
 `previewimage` LONGTEXT NULL DEFAULT NULL ,
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


INSERT INTO `venues` (`id`, `name`, `lat`, `lon`, `addr`, `desc`, `social_link`, `image`, `created_at`, `updated_at`) VALUES ('1', 'Churchhills Pub', '25.8262506', '-80.19170070000001', '5501 Northeast 2nd Avenue,Miami,FL,33127, Miami, FL 33127, United States', 'Since 1979 we have been your place for food, concerts, and sports! We are an 18 and over venue. Valid ID is required for entry. Outside drinks and food are not permitted. All bags are subject to search upon entry. Don’t drive drunk. Call a cab or use a car service like Uber or Lyft.', 'http://www.churchillspub.com/', 'CH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `datetime`, `links`, `teaser`,`previewimage`, `created_at`, `updated_at`) VALUES ('1', 'Oogie-Boogie @ The Fish House', 'Harvey\r\nStay For Tonight\r\nCommon Luck \r\nHometown Losers\r\nTopTier \r\nHappy Hour ', 'Fish House', CURRENT_TIMESTAMP, 'webcal://www.facebook.com/ical/u.php?uid=1797888139&key=AQAqMoTsFUxULFV4', 'Entrance is \r\n$7 if alone/no costume\r\n$5 if you\'re in a costume \r\n\r\n\r\nITS EP RELEASE TIME SONNNN\r\n\r\n\r\nCatch TopTier and Hometown Losers as they join forces to release their EP\'s at the same time! \r\nLet\'s pack this back room, invite your friends and family this is all ages!','OB@FH.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
```
