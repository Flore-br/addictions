select
    offre_soin.n_departement,
    offre_soin.libelle_departement,
    offre_soin.type_etablissement,
    offre_soin.nbre_etablissements,
    pop_dpt.pop
from {{ ref("offre_soins_finale_looker") }} as offre_soin
join {{ ref("pop_dpt_2022_V3") }} as pop_dpt using (n_departement)
ORDER BY n_departement ASC