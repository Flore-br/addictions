SELECT
region_name,
departement_lower as libelle_departement,
n_departement,
pop
FROM {{ ref('pop_dpt_2022_V2') }}
LEFT JOIN {{ ref('departements_clean') }}
ON pop_dpt_2022_V2.n_departement = departements_clean.dept1