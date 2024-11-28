SELECT *
FROM `projet-final-le-wagon-442809`.`dbt_projet_le_wagon`.`etablissements_clean`
LEFT JOIN `projet-final-le-wagon-442809`.`dbt_projet_le_wagon`.`departements_clean`
USING (departement_lower)