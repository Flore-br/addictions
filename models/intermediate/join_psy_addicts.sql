SELECT 
n_departement,
libelle_departement,
secteur_conventionnel,
effectif_psychiatres,
nbre_addicts
FROM {{ ref('nbre_psychiatres_clean') }}
INNER JOIN {{ ref('nbre_addicts_departements_2022') }}
ON nbre_psychiatres_clean.n_departement = nbre_addicts_departements_2022.dept
ORDER BY n_departement ASC
