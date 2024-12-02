SELECT * FROM {{ ref('nbre_addict_etablissement_2022') }}
UNION ALL
SELECT * FROM {{ ref('nbre_addicts_psy_2022') }}
ORDER BY n_departement, type_etablissement ASC