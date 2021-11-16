drop table utilisateur;
drop table adresse;
drop table dateC;
drop table chauffeur;
drop table timeOfDay;

create table utilisateur
(
    id integer primary key,
    firstName varchar2(50),
    LastName varchar2(50),
    dateBirth date
);


create table adresse
(
    idAdresse integer primary key,
    city varchar2(50),
    street varchar2(50),
    nb integer
);

create table dateC
(
    idDate integer primary key,
    dateC date,
    fullDateDesc varchar(50),
    dayOfWeek varchar2(50),
    monthC varchar2(50),
    yearC varchar2(50),
    monthC varchar2(50),
    fiscalYearMonth varchar2(50),
    holiday boolean,
    weekday boolean


);

create table chauffeur
(
    idChauffeur integer primary key,
    firstName varchar2(50),
    LastName varchar2(50),

);

create table timeOfDay
(
    idTime integer primary key,
    timeD varchar2(50),
    hour integer,
    minute integer,
    sec integer,
    AMPM varchar2(2)
    /* C'est quoi shift ? */
);

drop table recherche;

create table recherche
(
    idUtilisateur integer primary key,
    idAddresseDep integer primary key,
    idAddresseArr integer primary key,
    idDateRecherche integer primary key,
    idTimeSearch integer primary key,
    nbRechercheNA integer,
    RechComm float,
    nbTaxiLibre integer
)

alter table recherche add foreign key(idUtilisateur) references utilisateur(id);
alter table recherche add foreign key(idAddresseDep) references adresse(idAdresse);
alter table recherche add foreign key(idAddresseArr) references adresse(idAdresse);
alter table recherche add foreign key(idDateRecherche) references dateC(idDate);
alter table recherche add foreign key(idTimeSearch) references timeOfDay(idTime);