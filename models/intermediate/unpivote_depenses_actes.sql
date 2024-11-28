SELECT 
    Rubrique, 
    PARSE_DATE('%Y', '2020') AS Annee,
    `y_2020` AS Depense, 
    CAST(NULL AS FLOAT64) AS Variation_Abs, 
    CAST(NULL AS FLOAT64) AS Variation_Pct
FROM {{ ref('stg_bdd_projet__Depenses_par_actes') }}

UNION ALL

SELECT 
    Rubrique, 
    PARSE_DATE('%Y', '2021') AS Annee,
    `y_2021` AS Depense, 
    variation_abs_2021_2020 AS Variation_Abs, 
    variation_pct_2021_2020 AS Variation_Pct
FROM {{ ref('stg_bdd_projet__Depenses_par_actes') }}

UNION ALL

SELECT 
    Rubrique, 
    PARSE_DATE('%Y', '2022') AS Annee,
    `y_2022` AS Depense, 
    variation_abs_2022_2021 AS Variation_Abs, 
    variation_pct_2022_2021 AS Variation_Pct
FROM {{ ref('stg_bdd_projet__Depenses_par_actes') }}
