import pandas as pd
import random


NOM_DE_LA_TABLE = "lieu"
NB_LIEU = 100

df_rue = pd.read_csv('rue.csv', sep=";", encoding='utf-8')
df_ville = pd.read_csv('ville.csv',encoding='latin-1', usecols=[3,8], header=None ,engine='python')

r = df_rue['rue']

v = df_ville[3]
cp = df_ville[8]


file = open(NOM_DE_LA_TABLE + ".txt", "w") #"x" si le fichier existe pas



for i in range(0, NB_ADRESSE): 
    n = random.randint(0, len(df_rue)-1)
    ville = v[n]
    codeP = cp[n]
    j = random.randint(1, 1200)
    file.write("INSERT INTO " + NOM_DE_LA_TABLE + " VALUES (" + str(i) + ",'" + ville + "', " + str(j) + ", '" + random.choice(r) + "', '" + codeP + "');\n")


file.close()