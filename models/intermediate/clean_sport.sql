SELECT*
FROM {{ ref('stg_bdd_projet__etablissements_sportifs') }}
WHERE mise_en_service = "A partir de 2005"