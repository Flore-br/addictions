Select *
FROM {{ ref('culture_et_population') }}
JOIN {{ ref('For_mapping') }}
ON departement = intitule_departement