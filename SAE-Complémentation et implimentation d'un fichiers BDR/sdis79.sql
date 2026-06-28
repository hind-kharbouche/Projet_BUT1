CREATE TABLE grade(
   codeGrade VARCHAR(50),
   libGrade VARCHAR(50) NOT NULL,
   PRIMARY KEY(codeGrade)
)ENGINE=INNODB;

CREATE TABLE fonction(
   codeFonction VARCHAR(50),
   libFonction VARCHAR(50) NOT NULL,
   PRIMARY KEY(codeFonction)
)ENGINE=INNODB;

CREATE TABLE caserne(
   codeCaserne VARCHAR(50),
   libCaserne VARCHAR(50),
   PRIMARY KEY(codeCaserne)
)ENGINE=INNODB;

CREATE TABLE volontaire(
   matricule VARCHAR(50),
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   dateNaissance DATE NOT NULL,
   employeur VARCHAR(50),
   rue VARCHAR(50),
   cp VARCHAR(50),
   ville VARCHAR(50),
   tel VARCHAR(50),
   mail VARCHAR(250),
   PRIMARY KEY(matricule)
)ENGINE=INNODB;

CREATE TABLE situation(
   refSituation VARCHAR(50),
   libSituation VARCHAR(200) NOT NULL,
   PRIMARY KEY(refSituation)
)ENGINE=INNODB;

CREATE TABLE Typeengin(
   codeTypeEngin VARCHAR(50),
   libTypeEngin VARCHAR(50) NOT NULL,
   PRIMARY KEY(codeTypeEngin)
)ENGINE=INNODB;

CREATE TABLE DateObtention1(
   dateaffectation1 DATE,
   PRIMARY KEY(dateaffectation1)
)ENGINE=INNODB;

CREATE TABLE DateObtention(
   dateaffectation DATE,
   PRIMARY KEY(dateaffectation)
)ENGINE=INNODB;

CREATE TABLE pompier(
   matricule INT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   dateNaissance DATE NOT NULL,
   sexe VARCHAR(50) NOT NULL,
   telephone VARCHAR(50) NOT NULL,
   numBIP INT NOT NULL,
   dateEmbauche DATE NULL,
   dernierIndice VARCHAR(50),
   codeGrade VARCHAR(50),
   PRIMARY KEY(matricule),
   FOREIGN KEY(codeGrade) REFERENCES grade(codeGrade)
)ENGINE=INNODB;

CREATE TABLE engin(
   codeTypeEngin VARCHAR(50),
   numOrdre BIGINT,
   codeCaserne VARCHAR(50) NOT NULL,
   PRIMARY KEY(codeTypeEngin, numOrdre),
   FOREIGN KEY(codeTypeEngin) REFERENCES Typeengin(codeTypeEngin),
   FOREIGN KEY(codeCaserne) REFERENCES caserne(codeCaserne)
)ENGINE=INNODB;

CREATE TABLE mobiliser_moyens_humains(
   codeTypeEngin VARCHAR(50),
   numOrdre BIGINT,
   codeTypeEngin_1 VARCHAR(50),
   nbPompiers INT NOT NULL,
   PRIMARY KEY(codeTypeEngin, numOrdre, codeTypeEngin_1),
   FOREIGN KEY(codeTypeEngin, numOrdre) REFERENCES engin(codeTypeEngin, numOrdre),
   FOREIGN KEY(codeTypeEngin_1) REFERENCES Typeengin(codeTypeEngin)
)ENGINE=INNODB;

CREATE TABLE affectation(
   matricule INT,
   codeCaserne VARCHAR(50),
   dateaffectation DATE,
   PRIMARY KEY(matricule, codeCaserne, dateaffectation),
   FOREIGN KEY(matricule) REFERENCES pompier(matricule),
   FOREIGN KEY(codeCaserne) REFERENCES caserne(codeCaserne),
   FOREIGN KEY(dateaffectation) REFERENCES DateObtention(dateaffectation)
)ENGINE=INNODB;

CREATE TABLE affectation1(
   codeCaserne VARCHAR(50),
   matricule VARCHAR(50),
   dateaffectation1 DATE,
   PRIMARY KEY(codeCaserne, matricule, dateaffectation1),
   FOREIGN KEY(codeCaserne) REFERENCES caserne(codeCaserne),
   FOREIGN KEY(matricule) REFERENCES volontaire(matricule),
   FOREIGN KEY(dateaffectation1) REFERENCES DateObtention1(dateaffectation1)
)ENGINE=INNODB;


CREATE TABLE habilitation(
   codeFonction VARCHAR(50),
   matricule VARCHAR(50),
   dateObtention1 DATE,
   PRIMARY KEY(codeFonction, matricule),
   FOREIGN KEY(codeFonction) REFERENCES fonction(codeFonction),
   FOREIGN KEY(matricule) REFERENCES volontaire(matricule)
)ENGINE=INNODB;

CREATE TABLE habilitation1(
   matricule INT,
   codeFonction VARCHAR(50),
   dateObtention DATE,
   PRIMARY KEY(matricule, codeFonction),
   FOREIGN KEY(matricule) REFERENCES pompier(matricule),
   FOREIGN KEY(codeFonction) REFERENCES fonction(codeFonction)
)ENGINE=INNODB;

CREATE TABLE Engin1(
   refSituation VARCHAR(50),
   codeTypeEngin VARCHAR(50),
   PRIMARY KEY(refSituation, codeTypeEngin),
   FOREIGN KEY(refSituation) REFERENCES situation(refSituation),
   FOREIGN KEY(codeTypeEngin) REFERENCES Typeengin(codeTypeEngin)
)ENGINE=INNODB;
