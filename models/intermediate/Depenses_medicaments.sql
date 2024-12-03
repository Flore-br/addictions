WITH fusion AS (
    SELECT
        DATE(2020, 1, 1) AS annee,
        classe_ephmra,
        montant_rembours____2020 AS montant
    FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2020') }}
    UNION ALL
    SELECT
        DATE(2021, 1, 1) AS annee,
        classe_ephmra,
        montant_rembours____2021 AS montant
    FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2021') }}
    UNION ALL
    SELECT
        DATE(2022, 1, 1) AS annee,
        classe_ephmra,
        montant_rembours____2022 AS montant
    FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2022') }}
)
SELECT *
FROM fusion


