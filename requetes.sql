SELECT Pseudo,Email,DateInscription
FROM membre;

SELECT Titre,Genre,Studio
FROM jeux;

SELECT * FROM Tournois
WHERE NomTournois = 'Monopoly Challenge';

SELECT Membre.Pseudo, Tournois.NomTournois, Participation.Classement FROM Participation
JOIN Membre ON Participation.MembreId = Membre.MembreId
JOIN Tournois ON Participation.TournoisId = Tournois.TournoisId;

SELECT Membre.Pseudo, Abonnement.Type
FROM Abonnement
JOIN Membre ON Abonnement.MembreId = Membre.MembreId
WHERE Abonnement.Type = 'annuel';

SELECT Membre.Pseudo, Jeux.Titre, Jeux.Studio
FROM Emprunts
JOIN Membre ON Emprunts.MembreId = Membre.MembreId
JOIN jeux ON emprunts.JeuxId = jeux.jeuxid;

SELECT Membre.Pseudo, Abonnement.Type
FROM Membre
JOIN Abonnement ON Membre.MembreId = Abonnement.MembreId;

SELECT Membre.Pseudo, jeux.Titre
FROM emprunts
JOIN Membre ON emprunts.MembreId = Membre.MembreId
JOIN Jeux ON Emprunts.JeuxId = Jeux.JeuxId
WHERE emprunts.DatePrevue  >= CURDATE();



