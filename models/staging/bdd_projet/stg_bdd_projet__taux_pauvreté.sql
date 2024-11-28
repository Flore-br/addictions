with 

source as (

    select * from {{ source('bdd_projet', 'taux_pauvreté') }}

),

renamed as (

    select
        code_departement,
        departement,
        taux_pauvrete

    from source

)

select * from renamed
