import pandas as pd
import random


def is_Holiday(m,d):
    if d > 20 and month == 12 :
        return 1
    if d < 3 and month == 1 :
        return 1
    if d > 1 and d < 16 and month == 8:
        return 1
    return 0

def is_Week(j):
    if j <= 4 :
        return 1
    return 0

def is_AMPM(h):
    if h < 12:
        return "AM"
    return "PM"
        



LIEU = "district"
TOD = "timeOfDay"
CHAUFFEUR = "driver"
DATE = "dateC"
UTILISATEUR = "userUber"
COURSE = "ride"
RECHERCHE = "search"

df_prenom = pd.read_csv('prenoms.csv', sep=";", encoding='latin-1')
df_nom = pd.read_csv('noms.csv', sep=",", encoding='latin-1')

prenom = df_prenom['prenom']
nom = df_nom['patronyme']


df_rue = pd.read_csv('rue.csv', sep=";", encoding='utf-8')
df_ville = pd.read_csv('ville.csv',encoding='latin-1', usecols=[3,8], header=None ,engine='python')

r = df_rue['rue']

v = df_ville[3]
cp = df_ville[8]
rue = df_rue['rue']

file = open("GenAll" + ".txt", "w") 
#Si waiting > 60, recherche non aboutie
file.write("-- Génération de recherches non abouties \n")
dayofWeek = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
monthOfYear = ["Janvier", "Fevrier", "Mars", "Avril", "Mai", "Juin", "Juillet", "Aout", "Septembre", "Octobre", "Novembre", "Decembre"]
nbRNAjours = random.randint(0, 50)
compteurId = 0
holiday = 0 # = 1 si vacances, Uniquement noel et début Aout
week = 0 # = 1 si week end

for j in range(0,7):
    if j == 6:
        nbRNAjours = round(random.gauss(150, 20))
    for i in range(0, nbRNAjours):
        compteurId = compteurId +1
        NbDriver = random.randint(0, 50)
        waiting = random.randint(60,120)
        file.write("INSERT INTO " + RECHERCHE + " VALUES (" + str(compteurId) + ", " + str(compteurId) + ", " + str(compteurId) + "," + str(NbDriver) + "," + str(0) + "," + str(NbDriver) + "," + str(0) + "," + str(1) + "," + str(waiting) + ");\n")
        Revenu = random.randint(1200, 10000)
        Population = round(random.gauss(100, 50))
        n = random.randint(0, len(df_rue)-1)
        ville = v[n]
        codeP = cp[n]
        file.write("INSERT INTO " + LIEU + " VALUES (" + str(compteurId) + ", '" + codeP + "','" + ville + "', '" + random.choice(r) + "','" + str(Revenu) + "','" + str(Population) + "');\n")
        month = random.randint(1, 12)
        day = random.randint(1, 31)
        if month == 2 and day > 29:
            day = 28
        
        date = "TO_DATE('"+str(day)+"-"+str(month)+"-2020','DD-MM-YYYY')"
        
        file.write("INSERT INTO " + DATE + " VALUES (" + str(compteurId) + ", '" + date + "','"+ "null" +"','" + dayofWeek[j] + "','" + monthOfYear[month-1] + "','" + "2020" + "'," + str(is_Holiday(month, day))+ "," + str(is_Week(j))+ ");\n")
        h = random.randint(0, 23)
        m = random.randint(0, 59)
        s = random.randint(0, 59)
        file.write("INSERT INTO " + TOD + " VALUES (" + str(compteurId) + ",'"+ "null" +"'," + str(h) + "," + str(m) + "," + str(s) + "," + is_AMPM(h) + ");\n")























file.close()

























