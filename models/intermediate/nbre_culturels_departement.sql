SELECT
N_departement,
COUNT(libelle_geographique) as nbre_equipements_culturels
FROM {{ ref('stg_bdd_projet__equipements_culturels_france') }}
GROUP BY N_departement
ORDER BY N_departement ASC