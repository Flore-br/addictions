SELECT
LOWER(REPLACE(REPLACE(REPLACE(departement, 'ô', 'o'),'è','e'),'é','e')) as departement,
COUNT(libelle_geographique) as nbre_equipements_culturels
FROM {{ ref('stg_bdd_projet__equipements_culturels_france') }}
WHERE departement NOT IN ("france", "etranger", "polynésie française", "saint-barthélemy", "saint-martin")
GROUP BY departement
ORDER BY departement ASC
