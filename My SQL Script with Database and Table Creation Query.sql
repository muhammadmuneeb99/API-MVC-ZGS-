CREATE DATABASE `testdemo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `topodibatsman` (
  `id` int NOT NULL,
  `batsManName` varchar(45) NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(1,'Imran Tahir', 10);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(2,'M Morkel', 9);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(3,'TA Boult', 8);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(4,'TG Southee', 7);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(5,'CJ Anderson', 6);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(6,'Wahab Riaz', 5);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(7,'JH Davey', 4);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(8,'UT Yadav', 3);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(9,'Babar Azam', 1);
INSERT INTO `testdemo`.`topodibatsman` (`id`, `batsManName`, `Rating`) VALUES(10,'Virat Kohli', 2);




CREATE TABLE `topodiwickettaker` (
  `id` int NOT NULL,
  `PlayerName` varchar(45) NOT NULL,
  `NumberOfWickets` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(1,'Imran Tahir', 109);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(2,'M Morkel', 99);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(3,'TA Boult', 81);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(4,'TG Southee', 78);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(5,'CJ Anderson', 96);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(6,'Wahab Riaz', 189);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(7,'JH Davey', 45);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(8,'UT Yadav', 39);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(9,'Muhammad Amir', 190);
INSERT INTO `testdemo`.`topodiwickettaker` (`id`, `PlayerName`, `NumberOfWickets`) VALUES(10,'Shaheen Afridi', 200);
