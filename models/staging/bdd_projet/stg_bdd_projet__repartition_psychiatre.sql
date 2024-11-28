with 

source as (

    select * from {{ source('bdd_projet', 'repartition_psychiatre') }}

),

renamed as (

    select
        date_date,
        profession_sante,
        departement,
        libelle_departement,
        region,
        libelle_region,
        secteur_conventionnel,
        libelle_secteur_conventionnel,
        effectif,
        vision_generale_all,
        vision_generale_prescriptions,
        vision_profession_territoire

    from source

)

select * from renamed
