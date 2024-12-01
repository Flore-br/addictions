SELECT 
*,
DATE(CONCAT(annee, '-01-01')) AS date_date
FROM {{ ref('stg_bdd_projet__Commorbidites') }}
WHERE patho_niv1 = "Maladies psychiatriques" AND patho_niv2 = "Troubles addictifs" AND patho_niv3 = "Troubles addictifs"