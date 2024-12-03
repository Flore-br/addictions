SELECT 
popsoins.n_departement,
depclean.departement_lower as libelle_departement_departement,
popsoins.avg_pop_per_etablissement
FROM {{ ref('pop_par_offre_de_soins') }} as popsoins
LEFT JOIN {{ ref('departements_clean') }} as depclean
ON popsoins.n_departement = depclean.dept1
GROUP BY popsoins.n_departement, depclean.departement_lower, avg_pop_per_etablissement
ORDER BY n_departement