SELECT
region_name,
departement_lower,
dept1,
CASE WHEN
    numero_type IN (101,106,292,355,365) THEN "hospitalier"
    WHEN numero_type IN (156,178,189,197,425) THEN "associatif"
    WHEN numero_type IN (109,165,214,430) THEN "post_cure"
    ELSE "autre"
END as type_etablissement,
COUNT (nom) as nbre_etablissements
FROM `projet-final-le-wagon-442809`.`dbt_projet_le_wagon`.`join_etablissements_departements`
GROUP BY dept1, departement_lower, type_etablissement, region_name
ORDER BY dept1 ASC