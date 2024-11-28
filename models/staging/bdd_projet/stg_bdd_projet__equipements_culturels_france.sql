with 

source as (

    select * from {{ source('bdd_projet', 'equipements_culturels_france') }}

),

renamed as (

    select
        code_postal,
        libelle_geographique,
        type_equipement,
        region,
        departement,
        n_departement,
        n_region

    from source

)

select * from renamed
