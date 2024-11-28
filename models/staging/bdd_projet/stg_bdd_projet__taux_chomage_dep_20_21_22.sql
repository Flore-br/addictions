with 

source as (

    select * from {{ source('bdd_projet', 'taux_chomage_dep_20_21_22') }}

),

renamed as (

    select
        departement,
        year AS annee,
        taux_de_chomage

    from source

)

select * from renamed
