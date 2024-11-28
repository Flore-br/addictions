with 

source as (

    select * from {{ source('bdd_projet', 'effectifs') }}

),

renamed as (

    select
        annee,
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
