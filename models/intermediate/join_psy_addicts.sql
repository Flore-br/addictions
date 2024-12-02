SELECT 
n_departement,
libelle_departement,
SUM (effectif_psychiatres) as nbre_psychiatres,
nbre_addicts
FROM {{ ref('nbre_psychiatres_2022_clean') }}
INNER JOIN {{ ref('nbre_addicts_departements_2022') }}
ON nbre_psychiatres_2022_clean.n_departement = nbre_addicts_departements_2022.dept
GROUP BY n_departement, libelle_departement, nbre_addicts
ORDER BY n_departement ASC