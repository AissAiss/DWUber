drop table search;
drop table ride;
drop table user;
drop table adresse;
drop table dateC;
drop table driver;
drop table timeOfDay;
drop table district;


create table user
(
    id integer primary key,
    firstName varchar2(50),
    LastName varchar2(50),
    age integer
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

create table driver
(
    idDriver integer primary key,
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

 create table district
 (
    idDistrict integer primary key,
    codePostal integer,
    city varchar2(50),
    districtName varchar2(50),
    averageSalary integer,
    districtPopulation integer 
 );



create table search
(
    idDateSearch integer ,
    idTimeSearch integer ,
    idDistrict integer ,
    nbSearch integer,
    nbSearchSucc integer,
    nbSearchUnsucc integer,
    UnsuccNbSearch float(3), -- ratio de recherches non abouties par rapport au nombre de recherche
    SuccNbSearch float(3), -- ratio de recherches abouties par rapport au nombre de recherche
    nbDriver integer,
    nbFreeDriver integer,
    nbOccDriver integer,
    freeNbDriver float(3), -- ration chauffeurs libres/ nombvre de chauffeur
    OccNbDriver float(3), -- ration chauffeurs occupés/ nombvre de chauffeur
    AverageWaiting integer -- en minutes
);

create table ride
(
    idUser integer ,
    idDistrictDep integer ,
    idDistrictArr integer  ,
    idDate integer  ,
    idDriver integer  ,
    idOrderTime integer  ,
    idDepTime integer  ,
    idArrTime integer  ,
    price float,
    note integer,
    distance float,
    waintingTime integer,
    travelTime integer
);

alter table ride add foreign key(idUser) references user(id);
alter table ride add foreign key(idDistrictDep) references district(idDistrict);
alter table ride add foreign key(idDistrictArr) references district(idDistrict);
alter table ride add foreign key(idDate) references dateC(idDate);
alter table ride add foreign key(idDriver) references driver(idDriver);
alter table ride add foreign key(idOrderTime) references timeOfDay(idTime);
alter table ride add foreign key(idDepTime) references timeOfDay(idTime);
alter table ride add foreign key(idArrTime) references timeOfDay(idTime);


alter table search add foreign key(idDateSearch) references dateC(idDate);
alter table search add foreign key(idTimeSearch) references timeOfDay(idTime);
alter table search add foreign key(idDistrict) references district(idDistrict);