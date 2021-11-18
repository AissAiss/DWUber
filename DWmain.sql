drop table recherche;
drop table course;
drop table utilisateur;
drop table adresse;
drop table dateC;
drop table chauffeur;
drop table timeOfDay;
drop table lieu;


create table utilisateur
(
    id integer primary key,
    firstName varchar2(50),
    LastName varchar2(50),
    age integer
);


create table adresse
(
    idAdresse integer primary key,
    nb integer,
    street varchar2(50),
    codeP integer,
    city varchar2(50)
);

create table dateC
(
    idDate integer primary key,
    dateCourante date,
    fullDateDesc varchar(50),
    dayOfWeek varchar2(50),
    monthC varchar2(50),
    yearC varchar2(50),
    fiscalYearMonth varchar2(50),
    holiday integer,
    weekdayC integer
);

create table chauffeur
(
    idChauffeur integer primary key,
    firstName varchar2(50),
    lastName varchar2(50)
);

create table timeOfDay
(
    idTime integer primary key,
    timeD varchar2(50),
    hour integer,
    minute integer,
    sec integer,
    AMPM varchar2(2)
);
 create table lieu
 (
     idLieu integer primary key,
     ville varchar2(50),
     region varchar2(50),
     revenuMoyen integer,
    populationQuartier integer 
 );



create table course
(
    idUtilisateur integer ,
    idAddresseDep integer ,
    idAddresseArr integer  ,
    idOrderDate integer  ,
    idDepDate integer  ,
    idArrDate integer  ,
    idDriver integer  ,
    idOrderTime integer  ,
    idDepTime integer  ,
    idArrTime integer  ,
    prix float,
    note integer,
    disatance float
);

create table recherche
(
    idDateRecherche integer ,
    idTimeSearch integer ,
    idQuartier integer ,
    nbRecherche integer,
    nbRechercheNA integer,
    nbRechercheA integer,
    ratioRechRechNA float(3),
    nbTaxiLibres integer,
    nbTaxiOccupes integer,
    tempsAttenteMoyen integer
);

alter table course add foreign key(idUtilisateur) references utilisateur(id);
alter table course add foreign key(idAddresseDep) references adresse(idAdresse);
alter table course add foreign key(idAddresseArr) references adresse(idAdresse);
alter table course add foreign key(idOrderDate) references dateC(idDate);
alter table course add foreign key(idDepDate) references dateC(idDate);
alter table course add foreign key(idArrDate) references dateC(idDate);
alter table course add foreign key(idDriver) references chauffeur(idChauffeur);
alter table course add foreign key(idOrderTime) references timeOfDay(idTime);
alter table course add foreign key(idDepTime) references timeOfDay(idTime);
alter table course add foreign key(idArrTime) references timeOfDay(idTime);


alter table recherche add foreign key(idDateRecherche) references dateC(idDate);
alter table recherche add foreign key(idTimeSearch) references timeOfDay(idTime);
alter table recherche add foreign key(idQuartier) references timeOfDay(idTime);