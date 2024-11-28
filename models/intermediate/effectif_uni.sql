SELECT 
secteur,
departement,
region,
COUNT(libelle) AS nb_etablissement
FROM {{ ref('stg_bdd_projet__universitées') }}
GROUP BY secteur, departement, region