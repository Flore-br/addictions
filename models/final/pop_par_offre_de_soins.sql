SELECT 
n_departement,
libelle_departement,
type_etablissement,
nbre_etablissements,
ROUND ((pop/nbre_etablissements),0) as pop_per_etablissement,
nb_etablissement_per_dpt,
pop,
ROUND((pop/nb_etablissement_per_dpt),0) as avg_pop_per_etablissement
FROM {{ ref('join_offre_soins_pop') }}