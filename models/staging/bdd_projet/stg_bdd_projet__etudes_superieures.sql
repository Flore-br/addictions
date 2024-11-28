with 

source as (

    select * from {{ source('bdd_projet', 'etudes_superieures') }}

),

renamed as (

    select
        commune,
        regroupement,
        type_formation,
        type_etablissement,
        numeri_sexe,
        sexe,
        nb_total_inscrits,
        nb_dut,
        nb_inge,
        nb_master,
        nb_sts_apprenti,
        region,
        departement,
        date

    from source

)

select * from renamed
