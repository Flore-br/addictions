with 

source as (

    select * from {{ source('bdd_projet', 'etablissements_sportifs') }}

),

renamed as (

    select
        `accessibilité_de_linstallation_en_faveur_des_personnes_en_situation_de_handicap` AS accessibilite_handi,
        `date_de_lenquête`AS date_enquete,
        observation_installation,
        `accessibilité_de_linstallation_en_transport_en_commun` AS accessibilite_transport,
        `type_de_particularité_de_linstallation` AS type_installation,
        `nom_de_léquipement_sportif` AS nom_equipement,
        `code_du_type_déquipement_sportif` AS code_type_equipement,
        `type_déquipement_sportif` AS type_equipement,
        `famille_déquipement_sportif` AS famille,
        `equipement_daccès_libre` AS acces_libre,
        `période_de_mise_en_service` AS mise_en_service,
        `département_code` AS code_departement,
        `département_code_complet` AS code_complet_dept,
        `département_nom` AS nom_departement

    from source

)

select * from renamed
