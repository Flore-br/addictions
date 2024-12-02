SELECT
*
FROM {{ ref('bdd_projet_effectifs_V3') }}
JOIN {{ ref('departements_clean') }} 
ON dept = dept1