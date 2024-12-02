SELECT 
libelle_sexe,
(sum(ntop)/sum(npop)) AS prevalence_sexe
FROM {{ ref('For_mapping') }}
GROUP BY libelle_sexe
