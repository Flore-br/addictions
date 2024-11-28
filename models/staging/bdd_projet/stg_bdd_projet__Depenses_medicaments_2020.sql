with 

source as (

    select * from {{ source('bdd_projet', 'Depenses_medicaments_2020') }}

),

renamed as (

    select
        cip13,
        nom_court,
        produit,
        code_ephmra,
        classe_ephmra,
        code_atc,
        classe_atc,
        code_atc_2,
        libell___atc_2,
        base_de_remboursement_2020,
        nombre_de_boites_rembours__es__2020,
        montant_rembours____2020

    from source

)

select * from renamed
