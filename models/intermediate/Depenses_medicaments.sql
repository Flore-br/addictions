SELECT
*
FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2020') }}
UNION ALL
SELECT
*
FROM {{ ref('stg_bdd_projet__Depenses_medicaments_2021') }}
UNION ALL
SELECT
*
FROM {{ ref('stg_bdd_projet__Depenses medicaments_2022') }}