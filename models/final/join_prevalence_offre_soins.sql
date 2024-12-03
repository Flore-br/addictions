SELECT 
pops.n_departement,
pops.libelle_departement,
pops.type_etablissement,
pops.nbre_etablissements,
pops.pop_per_etablissement,
pops.nb_etablissement_per_dpt,
pops.avg_pop_per_etablissement,
pr.prev
FROM {{ ref('pop_par_offre_de_soins') }} as pops
JOIN {{ ref('prevalence_dpt') }} as pr
USING (n_departement)
ORDER BY n_departement