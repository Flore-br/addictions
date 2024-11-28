SELECT 
secteur,
departement,
COUNT(libelle) AS nb_etablissement
FROM projet-final-le-wagon-442809.bdd_projet.universities
GROUP BY secteur, departement

