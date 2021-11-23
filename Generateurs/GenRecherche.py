# -*- coding: utf-8 -*-
"""
Created on Tue Nov 23 10:05:13 2021

@author: loicc
"""

import pandas as pd
import random


LIEU = "district"
TOD = "timeOfDay"
CHAUFFEUR = "driver"
DATE = "dateC"
UTILISATEUR = "userUber"
COURSE = "ride"
RECHERCHE = "search"

NB_DATE = 360
NB_TIME = 24*60
District = ["HOPITAUX-FACULTES", "MOSSON" ,"LES CEVENNES","PORT MARIANNE","MONTPELLIER" "CENTRE","CROIX D ARGENT","PRES D ARENE"]

Date = random.randint(0, NB_DATE)
Time = random.randint(0, NB_TIME)
district = random.randint(0,len(District))

NbDriver = random.randint(0, 50)
waiting = random.randint(60,120)
NbSearch = random.randint(0, 100)
NbSearchSucc = NbSearch - random.randint(0, NbSearch)
NbSearchUnSucc = NbSearch - NbSearchSucc
ratioUnSucc = NbSearchUnSucc/NbSearch
NbDriver = random.randint(0, 100)
freeDriver = NbDriver - random.randint(0, NbDriver)
ratioFreeDriver = freeDriver/NbDriver
waiting = random.gauss(40, 25)
if waiting < 2:
    waiting = 2
if waiting > 150:
    waiting = 150
    
file = open("GenAll" + ".txt", "w" )
file.write("INSERT INTO " + RECHERCHE + " VALUES (" + str(Date) + ", " + str(NB_TIME) + ", " + str(District) + "," + str(NbSearch) + "," + str(NbSearchSucc) + "," + str(NbSearchUnSucc) + "," + str(ratioUnSucc) + "," + str(1-ratioUnSucc) + "," + str(NbDriver) + "," + str(freeDriver) + "," + str(NbDriver-freeDriver) + "," + str(ratioFreeDriver) + "," + str(1-ratioFreeDriver) + "," + str(waiting) + ");\n")



file.close()

