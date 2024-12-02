SELECT
libelle_departement,
n_departement,
'psychiatre' as type_etablissement,
nbre_psychiatres,
nbre_addicts,
nbre_addicts_par_psychiatre
FROM {{ ref('nbre_addicts_par_psy_dep_looker') }}