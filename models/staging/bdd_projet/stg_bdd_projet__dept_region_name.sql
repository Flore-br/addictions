with 

source as (

    select * from {{ source('bdd_projet', 'dept_region_name') }}

),

renamed as (

    select
        dept1,
        dept_name,
        region_name

    from source

)

select * from renamed
