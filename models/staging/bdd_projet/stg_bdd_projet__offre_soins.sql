with 

source as (

    select * from {{ source('bdd_projet', 'offre_soins') }}

),

renamed as (

    select
        finess,
        etalab_2,
        nom,
        departement,
        numero_type,
        type_1,
        type_2

    from source

)

select * from renamed
