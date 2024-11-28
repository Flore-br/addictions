with 

source as (

    select * from {{ source('bdd_projet', 'taux_chomage_region') }}

),

renamed as (

    select
        regon,
        year,
        taux_de_chomage

    from source

)

select * from renamed
