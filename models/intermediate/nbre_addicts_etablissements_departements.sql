SELECT 
annee,
region_name,
departement_lower,
dept1,
type_etablissement,
nbre_etablissements,
nbre_addicts,
ROUND((nbre_addicts/nbre_etablissements),0) as nbre_addicts_par_etablissement
FROM {{ ref('re_join_etablissements') }}
LEFT JOIN {{ ref('nbre_addicts_departements') }}
ON re_join_etablissements.dept1 = nbre_addicts_departements.dept
WHERE dept1 IS NOT NULL
ORDER BY dept1, annee, type_etablissement ASC