with source as (
    select * from {{ source('bdd_projet', 'effectifs') }}
),

renamed as (
    select
        DATE(CAST(annee AS INT), 1, 1) as annee,
        patho_niv1,
        patho_niv2,
        patho_niv3,
        cla_age_5,
        sexe,
        region,
        dept,
        ntop,
        npop,
        prev,
        `niveau prioritaire` AS niveau_prio,
        libelle_classe_age,
        libelle_sexe,
        tri
    from source
)

select * from renamed
WHERE cla_age_5 NOT IN ('00-04','05-sept.', 'oct.-14','5-sept','95et+')
