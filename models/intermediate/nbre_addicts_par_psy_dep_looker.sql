SELECT
n_departement,
libelle_departement,
effectif_psychiatres,
nbre_addicts,
ROUND((nbre_addicts/effectif_psychiatres),0) as nbre_addicts_par_psychiatre
FROM {{ ref('nbre_addicts_et_psychiatres_departements') }}
ORDER BY n_departement ASC