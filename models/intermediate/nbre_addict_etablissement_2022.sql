SELECT 
departement_lower as libelle_departement,
dept1 as n_departement,
type_etablissement,
nbre_etablissements,
nbre_addicts,
nbre_addicts_par_etablissement
FROM {{ ref('nbre_addicts_etablissements_departements') }}
WHERE annee = '2022-01-01'