SELECT 
date,
departement,
type_etablissement,
SUM(nb_total_inscrits) AS nb_of_students
FROM projet-final-le-wagon-442809.bdd_projet.etudes_supp
GROUP BY date, departement, type_etablissement