import pandas as pd
import random

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

ville = df_ville[3]
cp = df_ville[8]


file = open("GenAll" + ".txt", "x") #"x" si le fichier existe pas

file.close()