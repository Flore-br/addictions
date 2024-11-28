with 

source as (

    select * from {{ source('bdd_projet', 'universitées') }}

),

renamed as (

    select
        libelle,
        nom_court,
        sigle,
        type_etablissement,
        secteur,
        geolocalisation,
        commune,
        ville,
        departement,
        region,
        `2010` AS y_2010,
        `2011` AS y_2011,
        `2012` AS y_2012,
        `2013` AS y_2013,
        `2014` AS y_2014,
        `2015` AS y_2015,
        `2016` AS y_2016,
        `2017` AS y_2017,
        `2018` AS y_2018,
        `2019` AS y_2019,
        `2020` AS y_2020,
        `2021` AS y_2021,
        `2022` AS y_2022

    from source

)

select * from renamed
