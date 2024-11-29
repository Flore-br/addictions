WITH equipements_pop AS (
SELECT
*
FROM {{ ref('stg_bdd_projet__pop_france_2023') }}
INNER JOIN {{ ref('stg_bdd_projet__equipements_culturels_france') }} 
ON intitule_departement = departement
)

,cleaned_version AS (
SELECT 
    intitule_departement,
    total_pop,
    type_equipement,
    region, 
FROM equipements_pop
)

SELECT 
intitule_departement, 
MAX(CAST(total_pop AS INTEGER)) AS total_popu, 
COUNT(type_equipement) AS count_equipement
FROM cleaned_version
GROUP BY intitule_departement