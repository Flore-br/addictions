with 

source as (

    select * from {{ source('bdd_projet', 'pop_france_2023') }}

),

renamed as (

    select
        string_field_0 AS num_departement,
        string_field_1 AS intitule_departement,
        string_field_2 AS total_pop

    from source

)

select * from renamed
