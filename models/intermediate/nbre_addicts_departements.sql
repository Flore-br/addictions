SELECT
annee,
dept,
SUM(Ntop) as nbre_addicts
FROM {{ ref('bdd_projet_effectifs_V3') }}
GROUP BY dept, annee