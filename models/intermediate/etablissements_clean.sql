SELECT
etalab_2,
nom,
numero_type,
type_1,
type_2,
#remplacer les caractères spéciaux dans la colonne départements
LOWER(REPLACE(REPLACE(departement,'é|è|ê','e'),'-', ' ')) as departement_lower
FROM `projet-final-le-wagon-442809.bdd_projet.offre_soins_cleaned`