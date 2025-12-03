
CREATE TABLE jeux (
  `jeuxid` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Titre` varchar(50),
  `Studio` varchar(50),
  `DateSortie` date,
  `Genre` varchar(100)
) 

INSERT INTO jeux (`Titre`, `Studio`, `DateSortie`, `Genre`) VALUES
('Monopoly', 'Hasbro', '1995-01-01', 'Board Game'),
('FIFA 24', 'EA Sports', '2024-09-29', 'Sport'),
('Chess Master', 'Ubisoft', '2010-05-12', 'Strategy');

CREATE TABLE membre (
  `MembreId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Pseudo` varchar(100),
  `Email` varchar(100),
  `DateInscription` datetime
) 

INSERT INTO membre (`Pseudo`, `Email`, `DateInscription`) VALUES
('khalid', 'elhaf@gmail.com', '2025-12-03 16:14:59'),
('omar', 'omar@gmail.com', '2025-12-03 16:26:20'),
('hasan', 'hasan@gmail.com', '2025-12-03 16:26:20'),
('imad', 'imad@gmail.com', '2025-12-03 16:26:20');

CREATE TABLE abonnement (
  `AbonnementId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Type` varchar(50),
  `DateDebut` datetime,
  `DateFin` datetime,
  `MembreId` INT NOT NULL ,
  FOREIGN KEY (MembreId) REFERENCES membre(MembreId)
) 

INSERT INTO abonnement ( `Type`, `MembreId`) VALUES
( 'mensuel',1),
('annuel',1),
('mensuel',2),
('mensuel',3),
('annuel',3),
('annuel',2);

CREATE TABLE `tournois` (
  `TournoisId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomTournois` varchar(100),
  `DateTournois` date,
  `recompenses` varchar(100),
  `jeuxid` INT NOT NULL
) 

INSERT INTO tournois (`NomTournois`, `DateTournois`, `recompenses`, `jeuxid`) VALUES
('Monopoly Challenge', '2025-03-10', '500 DH', 1),
('FIFA Winter Cup', '2025-01-25', 'PS5 Controller', 2),
('Tournoi E', '2025-12-10', '100 DH', 3);

CREATE TABLE emprunts (
  `EmpruntId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `DateEmprunte` date,
  `DatePrevue` date,
  `JeuxId` INT NOT NULL,
  `MembreId` INT NOT null,
  FOREIGN KEY(MembreId) REFERENCES membre(MembreId),
  FOREIGN KEY(jeuxid) REFERENCES jeux(jeuxid)
) 

INSERT INTO emprunts (`DateEmprunte`, `DatePrevue`, `JeuxId`, `MembreId`) VALUES
('2025-12-01', '2025-12-08', 1, 1),
('2025-12-02', '2025-12-09', 2, 2),
('2025-12-03', '2025-12-10', 3, 1);

CREATE TABLE participation (
  `ParticipationId` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Score` varchar(100),
  `Classement` varchar(100),
  `MembreId` INT NOT NULL,
  `TournoisId` INT NOT NULL,
  FOREIGN KEY(MembreId) REFERENCES membre(MembreId),
  FOREIGN KEY(TournoisId) REFERENCES tournois(TournoisId)
) 

INSERT INTO participation (`Score`, `Classement`, `MembreId`, `TournoisId`) VALUES
('100', '1', 1, 1),
('80', '2', 2, 1),
('90', '1', 1, 2);



