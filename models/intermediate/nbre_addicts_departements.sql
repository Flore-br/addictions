SELECT
annee,
dept,
SUM(Ntop) as nbre_addicts
FROM projet-final-le-wagon-442809.bdd_projet.effectifs_clean_V3
GROUP BY dept, annee