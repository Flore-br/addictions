SELECT DISTINCT
LOWER (
    TRANSLATE(
    libelle_departement,
    'àèéêîòôùû',
    'aeeeioouu'
  ))AS libelle_departement,
secteur_conventionnel,
SUM (effectif) as effectif_psychiatres
FROM {{ ref('stg_bdd_projet__repartition_psychiatre') }}
WHERE libelle_departement NOT IN ("Tout département")
AND date_date = '2023-01-01'
GROUP BY libelle_departement, secteur_conventionnel
ORDER BY libelle_departement, secteur_conventionnel ASC