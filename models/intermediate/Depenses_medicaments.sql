WITH fusion as (SELECT
'2020' as annee,
classe_ephmra,
montant_rembours____2020 as montant
FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2020') }}
UNION ALL
SELECT
'2021' as annee,
classe_ephmra,
montant_rembours____2021 as montant
FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2021') }}
UNION ALL
SELECT
'2022' as annee,
classe_ephmra,
montant_rembours____2022 as montant
FROM {{ ref('stg_bdd_projet__Depenses medicaments_2022') }} ) 

SELECT *
FROM fusion

