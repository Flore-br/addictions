SELECT *
FROM {{ ref('etablissements_clean') }}
LEFT JOIN {{ ref('departements_clean') }}
USING (departement_lower)