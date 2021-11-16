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


drop table course;

create table course
(
    idUtilisateur integer primary key,
    idAddresseDep integer primary key,
    idAddresseArr integer primary key,
    idOrderDate integer primary key,
    idDepDate integer primary key,
    idArrDate integer primary key,
    idDriver integer primary key,
    idOrderTime integer primary key,
    idDepTime integer primary key,
    idArrTime integer primary key,
    prix float,
    note integer,
    disatance float
)

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