import pandas as pd
import random


        

# Tables de la base

LIEU = "district"
TOD = "timeOfDay"
CHAUFFEUR = "driver"
DATE = "dateC"
UTILISATEUR = "userUber"
COURSE = "ride"
RECHERCHE = "search"

#Données dans les CSV

NOMBRE_DE_USER = 5000
NOMBRE_DE_DRIVER = 250

NB_DATE = 360
NB_TIME = 24

file = open("GenAll" + ".txt", "w") 

        #GENERATION DES RECHERCHE NON ABOUTIES

#Si waiting > 60, recherche non aboutie




    #GENERATION DES COURSES
nbRNAjours = random.randint(50, 150)
userCompteur = 0
courseCompteur = 0
lieuCompteur = compteurId
timeCompteur = compteurId
driverCompteur = 0

for j in range(0,7):
    if j == 6:
        nbRNAjours = round(random.randint(20, 80))
    for i in range(0, nbRNAjours):
        
        NbDriver = random.randint(0, 50)
        waiting = random.randint(60,120)
        
        Revenu = random.randint(1200, 10000)
        Population = round(random.gauss(100, 50))
        n = random.randint(0, len(df_rue)-1)
        ville = v[n]
        codeP = cp[n]
        month = random.randint(1, 12)
        day = random.randint(1, 31)
        if month == 2 and day > 29:
            day = 28
        
        note = random.randrange(1, 5,0.5)
        distance = random.gauss(40, 5)
        if distance <= 2:
            distance = 3
        time = random.gauss(50, 25)
        if time < 5:
            time = 5
        if time > 150:
            time = 150
        price = (distance*2) + 6 + (time * 1)
        wainting = random.gauss(20, 10)
        if waiting < 1:
            waiting = 1
        if waiting > 59:
            waiting = 59
            
        idDistrictDep = random.randint(0, 6)
        idDistrictArr = random.randint(0, 6)
        idDate = random.randint(0, NB_DATE)
        idDriver =random.randint(0, NOMBRE_DE_DRIVER)
        idUser =random.randint(0, NOMBRE_DE_USER)
        idOrderTime = random.randint(0, NB_TIME-10)
        idDepTime = random.randint(idOrderTime, NB_TIME-5)
        idArrTime   = random.randint(idDepTime, NB_TIME)
        
        #Faire insert to Course
        
        
        file.write("INSERT INTO " + COURSE + " VALUES (" + str(i) + ", " + str(idDistrictDep) + ", " + str(idDistrictArr) + "," + str(compteurId) + "," + str(driverCompteur) + "," + str(timeCompteur) + "," + str(timeCompteur+1) + "," + str(timeCompteur+2) + "," + str(0) + "," + str(NbDriver) + "," + str(0) + "," + str(1) + "," + str(waiting) + ");\n")
        compteurId = compteurId + 1
        userCompteur = userCompteur + 1
        courseCompteur = courseCompteur + 1
        lieuCompteur = lieuCompteur +2
        timeCompteur = timeCompteur+3
        driverCompteur = driverCompteur +1















file.close()

























