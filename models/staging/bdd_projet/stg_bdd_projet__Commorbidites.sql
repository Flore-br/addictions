with 

source as (

    select * from {{ source('bdd_projet', 'Commorbidites') }}

),

renamed as (

    select
        annee,
        patho_niv1,
        patho_niv2,
        patho_niv3,
        comorbidite,
        libelle_comorbidite,
        region,
        dept,
        ncomorb,
        ntop,
        proportion_comorb,
        patho_niv2_comorb,
        patho_niv3_comorb,
        patho_niv1_comorb,
        `niveau prioritaire` AS niveau_prio

    from source

)

select * from renamed
