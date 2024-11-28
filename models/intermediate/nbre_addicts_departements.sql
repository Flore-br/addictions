SELECT
annee,
dept,
SUM(Ntop) as nbre_addicts
FROM {{ ref('stg_bdd_projet__effectifs') }}
GROUP BY dept, annee