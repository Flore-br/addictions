SELECT *
FROM {{ ref('join_prevalence_offre_soins') }}
WHERE type_etablissement = 'associatif'