with 

source as (

    select * from {{ source('bdd_projet', 'Depenses_par_actes') }}

),

renamed as (

    select
        rubrique,
        `2020` AS y_2020
        `2021` AS y_2021
        variation_abs_2021_2020,
        variation_pct_2021_2020,
        `2022` AS y_2022
        variation_abs_2022_2021,
        variation_pct_2022_2021

    from source

)

select * from renamed
