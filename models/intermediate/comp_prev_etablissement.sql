WITH nbre_etablissements AS (
    SELECT 
        departement_lower,
        dept1,
        SUM(nbre_etablissements) AS total_etablissements,  
        SUM(nbre_addicts) AS total_addicts
    FROM {{ ref('nbre_addicts_etablissements_departements') }}
    GROUP BY departement_lower, dept1
) 
SELECT 
    naed.departement_lower,
    naed.total_etablissements,  
    naed.total_addicts,
    SUM(fm.Npop) AS total_population  
FROM nbre_etablissements AS naed  
LEFT JOIN {{ ref('For_mapping') }} AS fm
    ON naed.dept1 = fm.dept
GROUP BY naed.departement_lower , naed.total_etablissements, naed.total_addicts
