with 

source as (

    select * from {{ source('bdd_projet', 'prev_by_age') }}

),

renamed as (

    select
        cla_age_5,
        ntop,
        npop,
        prevalence_age

    from source

)

select * from renamed
