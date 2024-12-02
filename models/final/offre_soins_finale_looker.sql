WITH avg_addicts AS (SELECT *,
SUM(nbre_etablissements) OVER (PARTITION BY n_departement) AS nb_etablissement_per_dpt 
FROM {{ ref('nbre_addicts_offre_de_soins_totale_looker') }}
)
SELECT *
, ROUND(nbre_addicts/avg_addicts.nb_etablissement_per_dpt,0) AS avg_addicts_per_dpt
FROM avg_addicts
ORDER BY libelle_departement ASC