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

, aggrega AS (
SELECT 
intitule_departement, 
MAX(CAST(total_pop AS INTEGER)) AS total_popu, 
COUNT(type_equipement) AS count_equipement
FROM cleaned_version
GROUP BY intitule_departement
)

,join_sport AS (
SELECT *
FROM {{ ref('clean_sport') }}
INNER JOIN aggrega
ON intitule_departement = nom_departement
)

, count_installations AS (
SELECT 
intitule_departement,
total_popu,
count_equipement,
COUNT(nom_equipement) AS count_instal_sportive
FROM join_sport
GROUP BY intitule_departement, total_popu, count_equipement
) 

, sum_equipements AS (
SELECT 
intitule_departement,
total_popu,
count_equipement,
count_instal_sportive,
SUM(count_instal_sportive + count_equipement) AS total_equipements
FROM count_installations
GROUP BY intitule_departement, total_popu, count_equipement, count_instal_sportive
) 

SELECT 
intitule_departement,
total_popu,
count_equipement,
count_instal_sportive,
total_equipements, 
(total_popu/total_equipements) AS ratio_equipement_popu
FROM sum_equipements

