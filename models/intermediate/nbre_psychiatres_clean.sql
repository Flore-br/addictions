SELECT 
CASE 
    WHEN libelle_departement = 'corse-du-sud' THEN '2A'
    WHEN libelle_departement = 'haute-corse' THEN '2B'
    ELSE CAST(n_departement as STRING)
END as n_departement,
libelle_departement,
secteur_conventionnel,
effectif_psychiatres
FROM {{ ref('nbre_psychiatres_departements_2023') }}
