with 

source as (

    select * from {{ source('bdd_projet', 'Analyse_depenses_brutes') }}

),

renamed as (

    select
        year,
        total_hospitalisations,
        total_soins_de_ville,
        total_prestations_especes,
        transports_rembourses

    from source

)

select * from renamed
