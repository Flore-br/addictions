SELECT 
n_departement,
libelle_departement,
SUM (effectif_psychiatres) as effectif_psychiatres,
nbre_addicts
FROM {{ ref('join_psy_addicts') }}
GROUP BY n_departement, libelle_departement, nbre_addicts