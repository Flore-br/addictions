select distinct
    departement as n_departement,
    lower(
        translate(libelle_departement, 'àèéêîòôùû', 'aeeeioouu')
    ) as libelle_departement,
    secteur_conventionnel,
    sum(effectif) as effectif_psychiatres
from {{ ref("stg_bdd_projet__repartition_psychiatre") }}
where
    libelle_departement not in ("Tout département")
    and date_date = '2023-01-01'
group by libelle_departement, departement, secteur_conventionnel
order by libelle_departement, secteur_conventionnel asc
