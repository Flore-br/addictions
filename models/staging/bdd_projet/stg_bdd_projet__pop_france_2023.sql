with 

source as (

    select * from {{ source('bdd_projet', 'pop_france_2023') }}

),

renamed as (

    select
        numero_departement AS num_departement,
        intitule_departement AS intitule_departement,
        population_totale AS total_pop

    from source

)

select * from renamed
