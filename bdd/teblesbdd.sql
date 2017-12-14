-- Création de la table Membre
CREATE TABLE Membre
(
 membre_id    integer,
 pseudo     	varchar(25) NOT NULL,
 pass   	Varchar(25) NOT NULL,
 mail          Varchar(100) DEFAULT NULL,
 CONSTRAINT PK_Membre PRIMARY KEY (membre_id));

 -- Création tables Site, Secteur et voie
CREATE TABLE Site
(
 site_id   integer,
 membre_id integer,
 nomsite varchar(100) NOT NULL,
 departement  varchar(100) NOT NULL,
 typesite varchar(100) NOT NULL,
 hauteurmin integer,
 hauteurmax integer,
 CONSTRAINT CK_Site_type CHECK (typesite IN ('Falaise', 'Bloc')),
 CONSTRAINT PK_Site PRIMARY KEY(site_id),
 CONSTRAINT "FK_Site_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT

);

CREATE TABLE Secteur
(
 secteur_id   integer,
 site_id integer,
 nomsecteur  varchar(100) NOT NULL,
 CONSTRAINT PK_Secteur PRIMARY KEY(secteur_id),
 CONSTRAINT "FK_Secteur_site_id" FOREIGN KEY (site_id) REFERENCES Site (site_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE Voie
(
 voie_id   integer,
 secteur_id integer,
 nomvoie  varchar(100) NOT NULL,
 cotation varchar(2) NOT NULL,
 relais integer NOT NULL,
 CONSTRAINT PK_Voie PRIMARY KEY(voie_id),
 CONSTRAINT "FK_Voie_secteur_id" FOREIGN KEY (secteur_id) REFERENCES Secteur (secteur_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);


-- Création des tables pour les commentaires sur les sites, les secteurs et les voies
CREATE TABLE CommentaireSite
(
membre_id integer,
site_id integer,
commsite varchar(10000) NOT NULL,
date DATE NOT NULL,
CONSTRAINT PK_CommentaireSite PRIMARY KEY (membre_id,site_id,date),
CONSTRAINT "FK_CommentaireSite_site_id" FOREIGN KEY (site_id) REFERENCES Site (site_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_CommentaireSite_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE CommentaireSecteur
(
membre_id integer,
secteur_id integer,
commsecteur varchar(10000) NOT NULL,
date DATE NOT NULL,
CONSTRAINT PK_CommentaireSecteur PRIMARY KEY (membre_id,secteur_id,date),
CONSTRAINT "FK_CommentaireSecteur_secteur_id" FOREIGN KEY (secteur_id) REFERENCES Secteur (secteur_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_CommentaireSecteur_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE CommentaireVoie
(
membre_id integer,
voie_id integer,
comvoie varchar(10000) NOT NULL,
date DATE NOT NULL,
CONSTRAINT PK_CommentaireVoie PRIMARY KEY (membre_id,voie_id,date),
CONSTRAINT "FK_CommentaireVoie_voie_id" FOREIGN KEY (voie_id) REFERENCES Voie (voie_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_CommentaireVoie_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);


-- Création table pour les Topos
CREATE TABLE Topos
(
topos_id integer,
site_id integer,
membre_id integer,
titre varchar(100) NOT NULL,
auteur varchar(100) NOT NULL,
annee integer NOT NULL,
CONSTRAINT PK_Topos PRIMARY KEY (topos_id),
CONSTRAINT "FK_Topos_site_id" FOREIGN KEY (site_id) REFERENCES Site (site_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_Topos_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE Emprunt
(
membre_id integer,
topos_id integer,
dateemprunt DATE NOT NULL,
dateretour DATE NOT NULL,
CONSTRAINT PK_Emprunt PRIMARY KEY (membre_id,topos_id,dateemprunt),
CONSTRAINT "FK_Emprunt_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_Emprunt_topos_id" FOREIGN KEY (topos_id) REFERENCES Topos (topos_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE CommentaireTopos
(
membre_id integer,
topos_id integer,
commtopos varchar(10000) NOT NULL,
date DATE NOT NULL,
CONSTRAINT PK_CommentaireTopos PRIMARY KEY (membre_id,topos_id,date),
CONSTRAINT "FK_CommentaireTopos_topos_id" FOREIGN KEY (topos_id) REFERENCES Topos (topos_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
CONSTRAINT "FK_CommentaireTopos_membre_id" FOREIGN KEY (membre_id) REFERENCES Membre (membre_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);