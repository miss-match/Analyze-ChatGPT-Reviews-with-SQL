-- missmatch.reviews definition

CREATE TABLE `reviews` (
  `reviewId` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `score` int NOT NULL DEFAULT '0',
  `thumbsUpCount` int DEFAULT NULL,
  `reviewCreatedVersion` varchar(255) NOT NULL,
  `at` date NOT NULL,
  `userId` varchar(10) NOT NULL,
  PRIMARY KEY (`reviewId`),
  KEY `fk_userId` (`userId`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `reviews_score_chk` CHECK ((`score` between 0 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- missmatch.users definition

CREATE TABLE `users` (
  `userId` varchar(10) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `age` int DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  CONSTRAINT `users_age_chk` CHECK ((`age` >= 0)),
  CONSTRAINT `users_gender_chk` CHECK ((`gender` in (_utf8mb4'F',_utf8mb4'M'))),
  CONSTRAINT `users_userName_chk` CHECK ((not(regexp_like(`userName`,_utf8mb4'[0-9]'))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;