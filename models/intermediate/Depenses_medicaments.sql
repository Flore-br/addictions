
    SELECT
        DATE(2022, 1, 1) AS annee,
        classe_ephmra,
        montant_rembours____2022 AS montant
    FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2022') }}
