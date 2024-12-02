SELECT
n_departement,
libelle_departement,
nbre_psychiatres,
nbre_addicts,
ROUND((nbre_addicts/nbre_psychiatres),0) as nbre_addicts_par_psychiatre
FROM {{ ref('join_psy_addicts') }}
ORDER BY n_departement ASC