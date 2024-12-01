SELECT 
DATE(CONCAT(annee, '-01-01')) AS annee,
patho_niv3,
comorbidite,
libelle_comorbidite,
region,
dept,
ncomorb,
ntop AS npop,
proportion_comorb,
patho_niv2_comorb,
FROM {{ ref('stg_bdd_projet__Commorbidites') }}
WHERE patho_niv1 = "Maladies psychiatriques" AND patho_niv2 = "Troubles addictifs" AND patho_niv3 = "Troubles addictifs" AND annee > 2019